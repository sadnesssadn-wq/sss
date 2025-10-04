#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
被动资产聚合脚本（授权内使用）
- 聚合 FOFA 与 Shodan 的搜索结果
- 目标从环境变量或命令行读取
- 输出 CSV、JSON 到 out/
"""

from __future__ import annotations

import base64
import csv
import json
import os
import sys
from dataclasses import dataclass, asdict
from pathlib import Path
from typing import Dict, Iterable, List, Optional, Tuple

import requests
from dotenv import load_dotenv


def ensure_out_dir(out_dir: Path) -> None:
    out_dir.mkdir(parents=True, exist_ok=True)


def read_target_from_args_or_env() -> str:
    if len(sys.argv) >= 2:
        return sys.argv[1].strip()
    target = os.getenv("TARGET_DOMAIN", "").strip()
    if target:
        return target
    raise SystemExit("请通过参数或环境变量 TARGET_DOMAIN 指定目标域名")


@dataclass
class Finding:
    host: str
    port: int = 0
    ip: str = ""
    source: str = ""
    evidence: str = ""


def _fofa_queries(domain: str) -> List[str]:
    # Prioritize domain and cert queries; host exact as supplement
    return [
        f'domain="{domain}"',
        f'cert="{domain}"',
        f'host="{domain}"',
    ]


def _b64(s: str) -> str:
    return base64.b64encode(s.encode("utf-8")).decode("ascii")


def query_fofa(domain: str, max_pages: int = 20, page_size: int = 1000) -> List[Finding]:
    email = os.getenv("FOFA_EMAIL", "")
    key = os.getenv("FOFA_KEY", "")
    if not (email and key):
        return []
    base_url = "https://fofa.info/api/v1/search/all"
    fields = "host,ip,port,protocol"
    findings: List[Finding] = []
    for q in _fofa_queries(domain):
        page = 1
        while page <= max_pages:
            params = {
                "email": email,
                "key": key,
                "qbase64": _b64(q),
                "fields": fields,
                "size": page_size,
                "page": page,
            }
            try:
                r = requests.get(base_url, params=params, timeout=45)
                if r.status_code != 200:
                    print(f"FOFA page {page} query '{q}' http {r.status_code}")
                    try:
                        print(r.text[:500])
                    except Exception:
                        pass
                    break
                data = r.json()
                results = data.get("results", [])
                if not results:
                    print(f"FOFA page {page} query '{q}' no results")
                    break
                for item in results:
                    # Expected: [host, ip, port, protocol]
                    if not isinstance(item, list) or len(item) < 4:
                        continue
                    host = str(item[0]).strip()
                    ip = str(item[1]).strip()
                    try:
                        port = int(item[2]) if item[2] not in (None, "") else 0
                    except Exception:
                        port = 0
                    protocol = str(item[3]).strip() if item[3] else ""
                    findings.append(
                        Finding(host=host, ip=ip, port=port, source="fofa", evidence=protocol)
                    )
                page += 1
            except Exception as e:
                print(f"FOFA error on page {page} query '{q}': {e}")
                break
    return findings


def _shodan_queries(domain: str) -> List[str]:
    return [
        f'hostname:"{domain}"',
        f'ssl.cert.subject.cn:"{domain}"',
        f'http.html:"{domain}"',
    ]


def query_shodan(domain: str, max_pages: int = 10) -> List[Finding]:
    api_key = os.getenv("SHODAN_API_KEY", "")
    if not api_key:
        return []
    findings: List[Finding] = []
    # 1) Domain listing
    try:
        d = requests.get(
            f"https://api.shodan.io/dns/domain/{domain}",
            params={"key": api_key}, timeout=30
        )
        if d.ok:
            dj = d.json()
            subdomains = dj.get("subdomains", []) or []
            for sub in subdomains:
                fqdn = f"{sub}.{domain}".strip(".")
                findings.append(Finding(host=fqdn, port=0, ip="", source="shodan:dns"))
    except Exception:
        pass

    # 2) Host search across multiple queries
    for q in _shodan_queries(domain):
        page = 1
        while page <= max_pages:
            try:
                s = requests.get(
                    "https://api.shodan.io/shodan/host/search",
                    params={"key": api_key, "query": q, "page": page},
                    timeout=45,
                )
                if not s.ok:
                    print(f"Shodan page {page} query '{q}' http {s.status_code}")
                    try:
                        print(s.text[:500])
                    except Exception:
                        pass
                    break
                sj = s.json()
                matches = sj.get("matches", [])
                if not matches:
                    print(f"Shodan page {page} query '{q}' no results")
                    break
                for m in matches:
                    port = m.get("port")
                    ip = str(m.get("ip_str") or "")
                    hostnames = m.get("hostnames") or []
                    title = ""
                    http = m.get("http") or {}
                    if isinstance(http, dict):
                        title = str(http.get("title") or "")
                    evidence = title or q
                    for hn in hostnames or [""]:
                        host = hn or m.get("dns", {}).get("reverse", "") or ""
                        if not host:
                            continue
                        try:
                            p = int(port) if port is not None else 0
                        except Exception:
                            p = 0
                        findings.append(
                            Finding(host=host, port=p, ip=ip, source="shodan:search", evidence=evidence)
                        )
                page += 1
            except Exception as e:
                print(f"Shodan error on page {page} query '{q}': {e}")
                break
    return findings


def normalize_and_dedupe(items: Iterable[Finding]) -> List[Finding]:
    seen = set()
    out: List[Finding] = []
    for f in items:
        host = (f.host or "").strip().lower()
        port = int(f.port) if f.port else 0
        key = (host, port)
        if host and key not in seen:
            seen.add(key)
            out.append(Finding(host=host, port=port, ip=f.ip, source=f.source, evidence=f.evidence))
    return out


def write_outputs(rows: List[Finding], out_dir: Path, domain: str) -> None:
    ensure_out_dir(out_dir)
    # Simple output (backward-compatible): host,port
    csv_simple = out_dir / f"assets_{domain}.csv"
    with csv_simple.open("w", newline="", encoding="utf-8") as f:
        w = csv.writer(f)
        w.writerow(["host", "port"])
        for r in rows:
            w.writerow([r.host, r.port or ""]) 

    # Detailed output
    csv_path = out_dir / f"assets_{domain}_detailed.csv"
    json_path = out_dir / f"assets_{domain}.json"
    with csv_path.open("w", newline="", encoding="utf-8") as f:
        w = csv.writer(f)
        w.writerow(["host", "port", "ip", "source", "evidence"])
        for r in rows:
            w.writerow([r.host, r.port or "", r.ip, r.source, r.evidence])

    data = [asdict(r) for r in rows]
    with json_path.open("w", encoding="utf-8") as f:
        json.dump(data, f, ensure_ascii=False, indent=2)


def main() -> None:
    load_dotenv()
    domain = read_target_from_args_or_env()
    out_dir = Path("out")

    fofa_rows = query_fofa(domain)
    shodan_rows = query_shodan(domain)

    merged = normalize_and_dedupe([*fofa_rows, *shodan_rows])
    write_outputs(merged, out_dir, domain)
    print(f"收集完成：{len(merged)} 条，已输出到 {out_dir}")


if __name__ == "__main__":
    main()
