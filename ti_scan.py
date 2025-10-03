#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
TI scan helper for authorized intelligence queries against FOFA and Shodan.

Usage example:
  export FOFA_EMAIL=you@example.com
  export FOFA_KEY=fofa_xxx
  export SHODAN_API_KEY=shodan_xxx
  python ti_scan.py --fofa-query 'app="nginx" country="CN"' --fofa-size 20
  python ti_scan.py --shodan-query 'product:"nginx" country:CN' --shodan-limit 20

Only use against assets you own or have explicit authorization to assess.
"""

from __future__ import annotations

import argparse
import json
import os
import sys
from typing import Any, Dict, List

from ti_clients import FofaClient, ShodanClient, HttpError


def parse_args() -> argparse.Namespace:
    p = argparse.ArgumentParser(description="Authorized FOFA/Shodan query tool")
    p.add_argument("--fofa-query", dest="fofa_query", default="", help="FOFA dork query")
    p.add_argument("--fofa-size", dest="fofa_size", type=int, default=50, help="FOFA result size")
    p.add_argument("--fofa-fields", dest="fofa_fields", default="host,port,ip,title", help="FOFA fields csv")

    p.add_argument("--shodan-query", dest="shodan_query", default="", help="Shodan dork query")
    p.add_argument("--shodan-limit", dest="shodan_limit", type=int, default=50, help="Shodan result limit")

    p.add_argument("--timeout", dest="timeout", type=int, default=15, help="HTTP timeout seconds")
    p.add_argument("--json", dest="as_json", action="store_true", help="Print JSON output")
    return p.parse_args()


def env_or_exit(name: str) -> str:
    v = os.environ.get(name)
    if not v:
        print(f"Missing required environment variable: {name}", file=sys.stderr)
        sys.exit(2)
    return v


def main() -> None:
    args = parse_args()
    have_task = bool(args.fofa_query) or bool(args.shodan_query)
    if not have_task:
        print("No query provided. Use --fofa-query or --shodan-query.")
        sys.exit(1)

    output: Dict[str, List[Dict[str, Any]]] = {"fofa": [], "shodan": []}

    if args.fofa_query:
        email = env_or_exit("FOFA_EMAIL")
        key = env_or_exit("FOFA_KEY")
        client = FofaClient(email=email, key=key, timeout_seconds=args.timeout)
        fields = [f.strip() for f in args.fofa_fields.split(",") if f.strip()]
        try:
            output["fofa"] = client.search(query=args.fofa_query, size=args.fofa_size, fields=fields)
        except HttpError as he:
            print(str(he), file=sys.stderr)
            sys.exit(3)

    if args.shodan_query:
        api_key = env_or_exit("SHODAN_API_KEY")
        sclient = ShodanClient(api_key=api_key, timeout_seconds=args.timeout)
        try:
            output["shodan"] = sclient.search(query=args.shodan_query, limit=args.shodan_limit)
        except HttpError as he:
            print(str(he), file=sys.stderr)
            sys.exit(4)

    if args.as_json:
        print(json.dumps(output, ensure_ascii=False, indent=2))
        return

    # Pretty print minimal table-like output
    def print_section(title: str, rows: List[Dict[str, Any]], columns: List[str]) -> None:
        print("\n" + title)
        print("-" * len(title))
        if not rows:
            print("(no results)")
            return
        # header
        print(" | ".join(columns))
        print("-" * (sum(len(c) for c in columns) + 3 * (len(columns) - 1)))
        for r in rows:
            values = [str(r.get(c, "")) for c in columns]
            print(" | ".join(values))

    if output["fofa"]:
        fcols = list(output["fofa"][0].keys())[:4]
        print_section("FOFA Results", output["fofa"], fcols)

    if output["shodan"]:
        scols = ["ip", "port", "org", "product"]
        print_section("Shodan Results", output["shodan"], scols)


if __name__ == "__main__":
    main()

