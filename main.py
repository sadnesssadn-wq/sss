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
from typing import Dict, Iterable, List, Optional, Tuple, Set
import re

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


def sanitize_host(host: str, domain: str) -> str:
    if not host:
        return ""
    host = host.strip().lower().replace("*.", "")
    if host.endswith("." + domain) or host == domain:
        return host
    return ""


def source_crtsh(domain: str) -> List[Finding]:
    url = f"https://crt.sh/?q=%25.{domain}&output=json"
    try:
        r = requests.get(url, timeout=45)
        if not r.ok:
            print(f"crt.sh http {r.status_code}")
            return []
        data = r.json()
        hosts: Set[str] = set()
        for row in data:
            name = row.get("name_value") or ""
            for raw in str(name).split("\n"):
                h = sanitize_host(raw, domain)
                if h:
                    hosts.add(h)
        return [Finding(host=h, source="crt.sh") for h in sorted(hosts)]
    except Exception as e:
        print(f"crt.sh error: {e}")
        return []


def source_bufferover(domain: str) -> List[Finding]:
    url = f"https://dns.bufferover.run/dns?q=.{domain}"
    try:
        r = requests.get(url, timeout=45)
        if not r.ok:
            print(f"bufferover http {r.status_code}")
            return []
        j = r.json()
        hosts: Set[str] = set()
        for key in ("FDNS_A", "RDNS", "FDNS_AAAA", "CNAME"):
            arr = j.get(key) or []
            for item in arr:
                # format "1.2.3.4,host" or just host
                if "," in item:
                    _, h = item.split(",", 1)
                else:
                    h = item
                h = sanitize_host(h, domain)
                if h:
                    hosts.add(h)
        return [Finding(host=h, source="bufferover") for h in sorted(hosts)]
    except Exception as e:
        print(f"bufferover error: {e}")
        return []


def source_threatcrowd(domain: str) -> List[Finding]:
    url = "https://www.threatcrowd.org/searchApi/v2/domain/report/"
    try:
        r = requests.get(url, params={"domain": domain}, timeout=45)
        if not r.ok:
            print(f"threatcrowd http {r.status_code}")
            return []
        j = r.json()
        hosts: Set[str] = set()
        for h in j.get("subdomains", []) or []:
            h = sanitize_host(h, domain)
            if h:
                hosts.add(h)
        return [Finding(host=h, source="threatcrowd") for h in sorted(hosts)]
    except Exception as e:
        print(f"threatcrowd error: {e}")
        return []


def source_sonar(domain: str) -> List[Finding]:
    url = f"https://sonar.omnisint.io/subdomains/{domain}"
    try:
        r = requests.get(url, timeout=45)
        if not r.ok:
            print(f"sonar http {r.status_code}")
            return []
        arr = r.json() or []
        hosts: Set[str] = set()
        for sub in arr:
            h = sanitize_host(f"{sub}.{domain}", domain)
            if h:
                hosts.add(h)
        return [Finding(host=h, source="sonar") for h in sorted(hosts)]
    except Exception as e:
        print(f"sonar error: {e}")
        return []


def source_hackertarget(domain: str) -> List[Finding]:
    url = "https://api.hackertarget.com/hostsearch/"
    try:
        r = requests.get(url, params={"q": domain}, timeout=45)
        if not r.ok:
            print(f"hackertarget http {r.status_code}")
            return []
        hosts: Dict[str, str] = {}
        for line in r.text.splitlines():
            if "," in line:
                h, ip = line.split(",", 1)
                h = sanitize_host(h, domain)
                if h:
                    hosts.setdefault(h, ip.strip())
        return [Finding(host=h, ip=ip, source="hackertarget") for h, ip in hosts.items()]
    except Exception as e:
        print(f"hackertarget error: {e}")
        return []


def source_otx(domain: str) -> List[Finding]:
    url = f"https://otx.alienvault.com/api/v1/indicators/domain/{domain}/passive_dns"
    try:
        r = requests.get(url, timeout=45)
        if not r.ok:
            print(f"otx http {r.status_code}")
            return []
        j = r.json()
        hosts: Dict[str, str] = {}
        for rec in j.get("passive_dns", []) or []:
            h = sanitize_host(str(rec.get("hostname") or ""), domain)
            ip = str(rec.get("address") or "")
            if h:
                hosts.setdefault(h, ip)
        return [Finding(host=h, ip=ip, source="otx") for h, ip in hosts.items()]
    except Exception as e:
        print(f"otx error: {e}")
        return []


def source_certspotter(domain: str) -> List[Finding]:
    token = os.getenv("CERTSPOTTER_KEY", "").strip()
    if not token:
        return []
    url = "https://api.certspotter.com/v1/issuances"
    params = {
        "domain": domain,
        "include_subdomains": "true",
        "match_wildcards": "true",
        "expand": "dns_names",
    }
    headers = {"Authorization": f"Bearer {token}"}
    try:
        r = requests.get(url, params=params, headers=headers, timeout=45)
        if not r.ok:
            print(f"certspotter http {r.status_code}")
            try:
                print(r.text[:500])
            except Exception:
                pass
            return []
        data = r.json() or []
        hosts: Set[str] = set()
        for row in data:
            for h in row.get("dns_names", []) or []:
                h = sanitize_host(h, domain)
                if h:
                    hosts.add(h)
        return [Finding(host=h, source="certspotter") for h in sorted(hosts)]
    except Exception as e:
        print(f"certspotter error: {e}")
        return []


def resolve_via_public_dns(host: str) -> List[str]:
    ips: Set[str] = set()
    try:
        r = requests.get("https://dns.google/resolve", params={"name": host, "type": "A"}, timeout=20)
        if r.ok:
            j = r.json()
            for ans in j.get("Answer", []) or []:
                if ans.get("type") == 1 and ans.get("data"):
                    ips.add(str(ans.get("data")))
    except Exception:
        pass
    try:
        r6 = requests.get("https://dns.google/resolve", params={"name": host, "type": "AAAA"}, timeout=20)
        if r6.ok:
            j6 = r6.json()
            for ans in j6.get("Answer", []) or []:
                if ans.get("type") == 28 and ans.get("data"):
                    ips.add(str(ans.get("data")))
    except Exception:
        pass
    return sorted(ips)


def source_rapiddns(domain: str) -> List[Finding]:
    url = f"https://rapiddns.io/subdomain/{domain}?full=1"
    try:
        r = requests.get(url, headers={"User-Agent": "Mozilla/5.0"}, timeout=45)
        if not r.ok:
            print(f"rapiddns http {r.status_code}")
            return []
        html = r.text
        pattern = re.compile(r">([a-zA-Z0-9_.-]+\.%s)<" % re.escape(domain))
        hosts = set(pattern.findall(html))
        return [Finding(host=h.lower(), source="rapiddns") for h in sorted(hosts)]
    except Exception as e:
        print(f"rapiddns error: {e}")
        return []


def source_urlscan(domain: str, max_pages: int = 5, size: int = 100) -> List[Finding]:
    base = "https://urlscan.io/api/v1/search/"
    findings: Set[str] = set()
    try:
        page = 1
        while page <= max_pages:
            r = requests.get(base, params={"q": f"domain:{domain}", "page": page, "size": size}, timeout=45)
            if not r.ok:
                print(f"urlscan http {r.status_code}")
                break
            j = r.json()
            results = j.get("results", [])
            if not results:
                break
            for it in results:
                page_data = it.get("page") or {}
                # pull hostname from page.domain and from URL
                d = page_data.get("domain")
                if isinstance(d, str):
                    h = sanitize_host(d, domain)
                    if h:
                        findings.add(h)
                url = page_data.get("url") or ""
                m = re.search(r"https?://([^/]+)", str(url))
                if m:
                    h2 = sanitize_host(m.group(1), domain)
                    if h2:
                        findings.add(h2)
            page += 1
    except Exception as e:
        print(f"urlscan error: {e}")
    return [Finding(host=h, source="urlscan") for h in sorted(findings)]


def source_wayback(domain: str) -> List[Finding]:
    url = "http://web.archive.org/cdx/search/cdx"
    try:
        r = requests.get(url, params={
            "url": f"*.{domain}/*",
            "output": "json",
            "fl": "original",
            "collapse": "urlkey",
        }, timeout=60)
        if not r.ok:
            print(f"wayback http {r.status_code}")
            return []
        data = r.json()
        if not data or len(data) <= 1:
            return []
        hosts: Set[str] = set()
        for row in data[1:]:
            if not row:
                continue
            url_val = row[0] if isinstance(row, list) else str(row)
            m = re.search(r"https?://([^/]+)", str(url_val))
            if m:
                h = sanitize_host(m.group(1), domain)
                if h:
                    hosts.add(h)
        return [Finding(host=h, source="wayback") for h in sorted(hosts)]
    except Exception as e:
        print(f"wayback error: {e}")
        return []


def gather_passive(domain: str) -> List[Finding]:
    findings: List[Finding] = []
    for fn in (
        source_crtsh,
        source_rapiddns,
        source_bufferover,
        source_threatcrowd,
        source_sonar,
        source_hackertarget,
        source_otx,
        source_certspotter,
        source_urlscan,
        source_wayback,
    ):
        part = fn(domain)
        print(f"{fn.__name__} -> {len(part)}")
        findings.extend(part)
    # enrich IPs for those missing
    enriched: List[Finding] = []
    for f in findings:
        if not f.ip:
            ips = resolve_via_public_dns(f.host)
            if ips:
                enriched.append(Finding(host=f.host, port=f.port, ip=ips[0], source=f.source, evidence=f.evidence))
            else:
                enriched.append(f)
        else:
            enriched.append(f)
    return enriched


def detect_wildcard(domain: str) -> Optional[str]:
    import random, string
    rnd = ''.join(random.choice(string.ascii_lowercase) for _ in range(16))
    test = f"{rnd}.{domain}"
    ips = resolve_via_public_dns(test)
    return ips[0] if ips else None


def brute_dns(domain: str, wordlist: Optional[List[str]] = None, limit: int = 5000) -> List[Finding]:
    if not wordlist:
        # a compact built-in list; can be extended
        wordlist = [
            "www","api","app","dev","test","stage","staging","pre","preprod","prod","mail","smtp","imap","pop","cdn","static","img","assets","files","admin","portal","vpn","git","jira","jenkins","grafana","kibana","sso","auth","login","office","intra","intranet","ns1","ns2","mx","redis","db","mysql","postgres","mongo","k8s","eks","aks","ops","monitor","status","health","shop","store","pay","payment","billing"
        ]
    wordlist = wordlist[:limit]
    wildcard_ip = detect_wildcard(domain)
    findings: List[Finding] = []
    for sub in wordlist:
        host = f"{sub}.{domain}"
        ips = resolve_via_public_dns(host)
        if not ips:
            continue
        if wildcard_ip and ips and all(ip == wildcard_ip for ip in ips):
            # wildcard likely; skip
            continue
        findings.append(Finding(host=host, ip=ips[0], source="dns-brute"))
    print(f"dns-brute -> {len(findings)} (wildcard={'yes' if wildcard_ip else 'no'})")
    return findings


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
    passive_rows = gather_passive(domain)
    brute_rows = brute_dns(domain)

    merged = normalize_and_dedupe([*fofa_rows, *shodan_rows, *passive_rows, *brute_rows])
    write_outputs(merged, out_dir, domain)
    print(f"收集完成：{len(merged)} 条，已输出到 {out_dir}")


if __name__ == "__main__":
    main()
