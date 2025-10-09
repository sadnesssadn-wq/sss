#!/usr/bin/env python3
import argparse
import base64
import csv
import dataclasses
import json
import os
import re
import sys
from typing import Dict, List, Optional, Set, Tuple

import requests


FOFA_API_BASE = "https://fofa.info/api/v1"
SHODAN_API_BASE = "https://api.shodan.io"


@dataclasses.dataclass
class Asset:
    source: str
    host: str
    port: Optional[int]
    ip: Optional[str]
    protocol: Optional[str]
    title: Optional[str]
    service: Optional[str]
    url: Optional[str]
    org: Optional[str]
    region: Optional[str]

    def key(self) -> Tuple[str, Optional[int]]:
        return (self.host.lower(), self.port)


def http_get_json(url: str, params: Dict[str, str], timeout: int = 20) -> Dict:
    resp = requests.get(url, params=params, timeout=timeout)
    resp.raise_for_status()
    return resp.json()


def search_fofa(query: str, email: str, key: str, size: int = 1000) -> List[Asset]:
    # FOFA query string must be base64-encoded
    qbase64 = base64.b64encode(query.encode()).decode()
    url = f"{FOFA_API_BASE}/search/all"
    params = {
        "email": email,
        "key": key,
        "qbase64": qbase64,
        "size": str(size),
        "fields": "host,port,ip,protocol,title,server,domain"
    }
    data = http_get_json(url, params)
    results = []
    for row in data.get("results", []):
        # FOFA fields order: host, port, ip, protocol, title, server, domain
        host, port, ip, protocol, title, server, domain = (row + [None] * 7)[:7]
        # Prefer domain/host for subdomain; FOFA host can be URL
        normalized_host = None
        if isinstance(host, str):
            # strip scheme
            normalized_host = host.replace("http://", "").replace("https://", "").split("/")[0]
        results.append(Asset(
            source="fofa",
            host=normalized_host or domain or host or "",
            port=int(port) if isinstance(port, (int, str)) and str(port).isdigit() else None,
            ip=ip if isinstance(ip, str) else None,
            protocol=protocol if isinstance(protocol, str) else None,
            title=title if isinstance(title, str) else None,
            service=server if isinstance(server, str) else None,
            url=host if isinstance(host, str) else None,
            org=None,
            region=None,
        ))
    return results


def search_shodan(query: str, api_key: str, size: int = 1000) -> List[Asset]:
    url = f"{SHODAN_API_BASE}/shodan/host/search"
    params = {"key": api_key, "query": query, "minify": "true", "page": 1}
    results: List[Asset] = []
    fetched = 0
    while True:
        data = http_get_json(url, params)
        matches = data.get("matches", [])
        for m in matches:
            hostnames = m.get("hostnames") or []
            hostname = hostnames[0] if hostnames else (m.get("domain") or m.get("ip_str"))
            results.append(Asset(
                source="shodan",
                host=str(hostname or ""),
                port=m.get("port"),
                ip=m.get("ip_str"),
                protocol=m.get("_shodan", {}).get("module"),
                title=m.get("http", {}).get("title"),
                service=m.get("product") or m.get("http", {}).get("server"),
                url=None,
                org=m.get("org"),
                region=m.get("location", {}).get("country_name"),
            ))
        fetched += len(matches)
        if fetched >= size or len(matches) == 0:
            break
        params["page"] = params.get("page", 1) + 1
    return results


def dedupe_assets(assets: List[Asset]) -> List[Asset]:
    seen: Set[Tuple[str, Optional[int]]] = set()
    unique: List[Asset] = []
    for a in assets:
        k = a.key()
        if not a.host:
            continue
        if k in seen:
            continue
        seen.add(k)
        unique.append(a)
    return unique


def export_json(path: str, assets: List[Asset]) -> None:
    with open(path, "w", encoding="utf-8") as f:
        json.dump([dataclasses.asdict(a) for a in assets], f, ensure_ascii=False, indent=2)


def export_csv(path: str, assets: List[Asset]) -> None:
    fieldnames = [
        "source", "host", "port", "ip", "protocol", "title", "service", "url", "org", "region"
    ]
    with open(path, "w", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        for a in assets:
            writer.writerow(dataclasses.asdict(a))


def build_domain_query(domain: str) -> Tuple[str, str]:
    # FOFA: domain="example.com" OR host="*.example.com"
    fofa_q = f"(domain=\"{domain}\") || (host_suffix=\".{domain}\") || (cert.subject.CN=\"{domain}\") || (cert.subject.CN_suffix=\".{domain}\") || (cert.issuer.CN=\"{domain}\") || (cert.issuer.O=\"{domain}\")"
    # Shodan supports quotes and wildcards in hostname and ssl cert subject CN
    shodan_q = f"(hostname:\"{domain}\" OR hostname:\"*.{domain}\" OR ssl.cert.subject.cn:\"{domain}\" OR ssl.cert.subject.cn:\"*.{domain}\")"
    return fofa_q, shodan_q


def extract_apex_domain(value: str) -> str:
    # Accept URL or hostname; strip scheme, path, and port
    v = value.strip()
    v = re.sub(r"^https?://", "", v, flags=re.IGNORECASE)
    v = v.split("/")[0]
    v = v.split(":")[0]
    # If it's already an apex, return; otherwise trim to last two labels conservatively
    labels = [p for p in v.split(".") if p]
    if len(labels) <= 2:
        return v
    # naive PSL-less approach: keep last two
    return ".".join(labels[-2:])


def parse_args(argv: List[str]) -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Asset inventory via FOFA and Shodan for authorized domains"
    )
    parser.add_argument("target", help="Target URL/hostname/apex, e.g., https://sub.example.com")
    parser.add_argument("--fofa-email", default=os.getenv("FOFA_EMAIL"), help="FOFA account email or env FOFA_EMAIL")
    parser.add_argument("--fofa-key", default=os.getenv("FOFA_KEY"), help="FOFA API key or env FOFA_KEY")
    parser.add_argument("--shodan-key", default=os.getenv("SHODAN_API_KEY"), help="Shodan API key or env SHODAN_API_KEY")
    parser.add_argument("--size", type=int, default=500, help="Max results per source")
    parser.add_argument("--out", default="assets.json", help="Output file path (.json or .csv)")
    return parser.parse_args(argv)


def main(argv: List[str]) -> int:
    args = parse_args(argv)
    target = args.target.strip()
    if not target:
        print("Invalid target", file=sys.stderr)
        return 2
    domain = extract_apex_domain(target)

    fofa_q, shodan_q = build_domain_query(domain)

    all_assets: List[Asset] = []

    if args.fofa_email and args.fofa_key:
        try:
            all_assets.extend(search_fofa(fofa_q, args.fofa_email, args.fofa_key, size=args.size))
        except Exception as e:
            print(f"FOFA query failed: {e}", file=sys.stderr)

    if args.shodan_key:
        try:
            all_assets.extend(search_shodan(shodan_q, args.shodan_key, size=args.size))
        except Exception as e:
            print(f"Shodan query failed: {e}", file=sys.stderr)

    unique_assets = dedupe_assets(all_assets)

    out_path = args.out
    if out_path.lower().endswith(".csv"):
        export_csv(out_path, unique_assets)
    else:
        export_json(out_path, unique_assets)

    print(f"Collected {len(unique_assets)} unique assets. Saved to {out_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv[1:]))
