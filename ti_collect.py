#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from __future__ import annotations

import argparse
import json
import os
import sys
from collections import Counter, defaultdict
from typing import Any, Dict, List

from ti_clients import FofaClient, ShodanClient


def parse_args() -> argparse.Namespace:
    p = argparse.ArgumentParser(description="Authorized asset collector for FOFA/Shodan")
    p.add_argument("--domain", required=True, help="Authorized root domain, e.g. example.com")
    p.add_argument("--max", type=int, default=1000, help="Max total records per source")
    p.add_argument("--page-size", type=int, default=100, help="Page size per request")
    p.add_argument("--raw", action="store_true", help="Include raw records in output files")
    p.add_argument("--shodan-only", action="store_true", help="Only collect from Shodan")
    p.add_argument("--fofa-only", action="store_true", help="Only collect from FOFA")
    p.add_argument("--out", default="out", help="Output directory")
    return p.parse_args()


def read_env(name: str) -> str | None:
    return os.environ.get(name)


def main() -> None:
    args = parse_args()
    os.makedirs(args.out, exist_ok=True)

    shodan_key = read_env("SHODAN_API_KEY")
    fofa_email = read_env("FOFA_EMAIL")
    fofa_key = read_env("FOFA_KEY") or read_env("FOFA_API_KEY")

    results: Dict[str, List[Dict[str, Any]]] = {"fofa": [], "shodan": []}

    # Shodan paginated queries
    if shodan_key and not args.fofa_only:
        sclient = ShodanClient(api_key=shodan_key)
        queries = [
            f"hostname:{args.domain}",
            f"ssl.cert.subject.CN:{args.domain}",
        ]
        shodan_collected: List[Dict[str, Any]] = []
        for q in queries:
            batch = sclient.search_paginated(query=q, total_limit=args.max, page_size=args.page_size, raw=False)
            shodan_collected.extend(batch)
        results["shodan"] = shodan_collected
        with open(os.path.join(args.out, f"shodan_{args.domain}.json"), "w", encoding="utf-8") as f:
            json.dump(shodan_collected if args.raw else shodan_collected, f, ensure_ascii=False, indent=2)

    # FOFA paginated query
    if fofa_email and fofa_key and not args.shodan_only:
        fclient = FofaClient(email=fofa_email, key=fofa_key)
        fquery = f'domain="{args.domain}"'
        fields = ["host", "port", "title", "ip"]
        try:
            fofa_collected = fclient.search_paginated(query=fquery, total_limit=args.max, page_size=args.page_size, fields=fields)
        except Exception as e:
            # Graceful handling for FOFA errors (e.g., 429 rate limit)
            sys.stderr.write(f"FOFA error: {e}\n")
            fofa_collected = []
        results["fofa"] = fofa_collected
        with open(os.path.join(args.out, f"fofa_{args.domain}.json"), "w", encoding="utf-8") as f:
            json.dump(fofa_collected, f, ensure_ascii=False, indent=2)

    # Summary (non-sensitive)
    summary: Dict[str, Any] = {}
    for source in ("shodan", "fofa"):
        rows = results.get(source, [])
        ports = Counter(str(r.get("port", "")) for r in rows if r.get("port") is not None)
        products = Counter(str(r.get("product", "")) for r in rows if r.get("product"))
        orgs = Counter(str(r.get("org", "")) for r in rows if r.get("org"))
        summary[source] = {
            "count": len(rows),
            "topPorts": ports.most_common(10),
            "topProducts": products.most_common(10),
            "topOrgs": orgs.most_common(10),
        }

    with open(os.path.join(args.out, f"summary_{args.domain}.json"), "w", encoding="utf-8") as f:
        json.dump(summary, f, ensure_ascii=False, indent=2)

    print(json.dumps({"ok": True, "summary": summary}, ensure_ascii=False))


if __name__ == "__main__":
    main()

