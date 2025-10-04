#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
被动资产聚合脚本（授权内使用）
- 聚合 FOFA 与 Shodan 的搜索结果
- 目标从环境变量或命令行读取
- 输出 CSV、JSON 到 out/
"""

from __future__ import annotations

import csv
import json
import os
import sys
from pathlib import Path
from typing import Dict, List, Tuple

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


def query_fofa(domain: str) -> List[Tuple[str, int]]:
    email = os.getenv("FOFA_EMAIL", "")
    key = os.getenv("FOFA_KEY", "")
    if not (email and key):
        return []
    # FOFA API: https://fofa.info/api
    base = "https://fofa.info/api/v1/search/all"
    qbase = f"domain=\"{domain}\" || host=\"{domain}\""
    params = {
        "email": email,
        "key": key,
        "qbase64": False,
        "q": qbase,
        "fields": "host,port",
        "size": 10000,
    }
    try:
        r = requests.get(base, params=params, timeout=30)
        r.raise_for_status()
        data = r.json()
        results = data.get("results", [])
        out: List[Tuple[str, int]] = []
        for item in results:
            # item like [host, port]
            if isinstance(item, list) and len(item) >= 2:
                host = str(item[0]).strip()
                try:
                    port = int(item[1])
                except Exception:
                    continue
                out.append((host, port))
        return out
    except Exception:
        return []


def query_shodan(domain: str) -> List[Tuple[str, int]]:
    api_key = os.getenv("SHODAN_API_KEY", "")
    if not api_key:
        return []
    # Shodan Domain Info API (passive): https://api.shodan.io/dns/domain/{domain}
    # Service-level data often via search query
    try:
        res: List[Tuple[str, int]] = []
        # 1) DNS domain listing
        d = requests.get(
            f"https://api.shodan.io/dns/domain/{domain}",
            params={"key": api_key}, timeout=30
        )
        if d.ok:
            dj = d.json()
            subdomains = dj.get("subdomains", [])
            for sub in subdomains:
                fqdn = f"{sub}.{domain}".strip(".")
                res.append((fqdn, 0))  # port unknown yet
        # 2) Search for services related to the domain
        q = f"hostname:{domain}"
        page = 1
        while page <= 5:
            s = requests.get(
                "https://api.shodan.io/shodan/host/search",
                params={"key": api_key, "query": q, "page": page},
                timeout=30,
            )
            if not s.ok:
                break
            sj = s.json()
            matches = sj.get("matches", [])
            if not matches:
                break
            for m in matches:
                hostnames = m.get("hostnames", []) or []
                port = m.get("port")
                for hn in hostnames:
                    if port is None:
                        continue
                    res.append((hn, int(port)))
            page += 1
        return res
    except Exception:
        return []


def normalize_and_dedupe(items: List[Tuple[str, int]]) -> List[Tuple[str, int]]:
    seen = set()
    out: List[Tuple[str, int]] = []
    for host, port in items:
        host = host.strip().lower()
        port = int(port) if port else 0
        key = (host, port)
        if host and key not in seen:
            seen.add(key)
            out.append((host, port))
    return out


def write_outputs(rows: List[Tuple[str, int]], out_dir: Path, domain: str) -> None:
    ensure_out_dir(out_dir)
    csv_path = out_dir / f"assets_{domain}.csv"
    json_path = out_dir / f"assets_{domain}.json"

    with csv_path.open("w", newline="", encoding="utf-8") as f:
        w = csv.writer(f)
        w.writerow(["host", "port"])
        for host, port in rows:
            w.writerow([host, port or ""])

    data = [{"host": h, "port": p} for h, p in rows]
    with json_path.open("w", encoding="utf-8") as f:
        json.dump(data, f, ensure_ascii=False, indent=2)


def main() -> None:
    load_dotenv()
    domain = read_target_from_args_or_env()
    out_dir = Path("out")

    fofa_rows = query_fofa(domain)
    shodan_rows = query_shodan(domain)

    merged = normalize_and_dedupe(fofa_rows + shodan_rows)
    write_outputs(merged, out_dir, domain)
    print(f"收集完成：{len(merged)} 条，已输出到 {out_dir}")


if __name__ == "__main__":
    main()
