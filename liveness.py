#!/usr/bin/env python3
"""
Liveness checker for discovered assets (authorized use only).

Reads a detailed assets CSV (host,port,ip,source,evidence) and tests liveness
via HTTP HEAD/GET and TCP connect. Outputs a CSV with results and a JSON summary.
"""
from __future__ import annotations

import csv
import json
import socket
import ssl
import sys
import time
from concurrent.futures import ThreadPoolExecutor, as_completed
from dataclasses import dataclass
from pathlib import Path
from typing import Dict, Iterable, List, Optional, Set, Tuple

import requests


TLS_PORTS = {443, 8443, 2053, 2083, 2087, 2096}
HTTP_PORTS_COMMON = {
    80, 8080, 8880, 2052, 2082, 2095, 5000, 5001, 5003, 5004, 5005, 3000, 3001, 1200, 100
}


@dataclass
class Target:
    host: str
    port: int
    ip: str = ""


def load_targets(input_csv: Path, default_ports: Iterable[int] = (80, 443)) -> List[Target]:
    targets: Dict[Tuple[str, int], Target] = {}
    by_host_ports: Dict[str, Set[int]] = {}
    with input_csv.open(newline="", encoding="utf-8") as f:
        r = csv.DictReader(f)
        for row in r:
            host = (row.get("host") or "").strip().lower()
            if not host:
                continue
            port_str = (row.get("port") or "").strip()
            ip = (row.get("ip") or "").strip()
            port = int(port_str) if port_str else 0
            if port > 0:
                key = (host, port)
                if key not in targets:
                    targets[key] = Target(host=host, port=port, ip=ip)
                by_host_ports.setdefault(host, set()).add(port)

    # Add defaults for hosts with no ports recorded
    hosts_without_ports = {h for h in by_host_ports.keys()} | set()
    # Also include hosts that never appeared with a port by scanning input again
    with input_csv.open(newline="", encoding="utf-8") as f:
        r = csv.DictReader(f)
        for row in r:
            host = (row.get("host") or "").strip().lower()
            if not host:
                continue
            if host not in by_host_ports:
                hosts_without_ports.add(host)
    for host in hosts_without_ports:
        existing = by_host_ports.get(host, set())
        for p in default_ports:
            if p not in existing:
                key = (host, p)
                if key not in targets:
                    targets[key] = Target(host=host, port=p)

    return list(targets.values())


def tcp_connect(host: str, port: int, timeout: float = 2.0) -> bool:
    try:
        with socket.create_connection((host, port), timeout=timeout):
            return True
    except Exception:
        return False


def http_check(host: str, port: int, timeout: float = 5.0) -> Tuple[bool, int, str, str]:
    """Return (http_ok, status_code, scheme, err) using best-guess scheme with fallback."""
    schemes: List[str] = []
    if port in TLS_PORTS:
        schemes = ["https", "http"]
    elif port in HTTP_PORTS_COMMON:
        schemes = ["http", "https"]
    else:
        # Heuristic
        schemes = ["https", "http"] if port == 443 else ["http", "https"]

    for scheme in schemes:
        url = f"{scheme}://{host}:{port}"
        try:
            # HEAD first, fallback to GET on 405
            resp = requests.head(url, timeout=timeout, allow_redirects=True, verify=False)
            if resp.status_code == 405:
                resp = requests.get(url, timeout=timeout, allow_redirects=True, verify=False)
            if 200 <= resp.status_code < 400 or resp.status_code in (401, 403):
                return True, resp.status_code, scheme, ""
            else:
                # not strictly OK; still reports
                return False, resp.status_code, scheme, "non-2xx/3xx"
        except requests.exceptions.SSLError as e:
            # try alternate scheme
            last_err = f"ssl:{e.__class__.__name__}"
        except Exception as e:
            last_err = e.__class__.__name__
        else:
            last_err = ""
        # try next scheme
    return False, 0, schemes[-1], last_err


def check_target(t: Target) -> Dict[str, str]:
    http_ok, code, scheme, err = http_check(t.host, t.port)
    tcp_ok = tcp_connect(t.host, t.port) if not http_ok else True
    return {
        "host": t.host,
        "port": str(t.port),
        "url": f"{scheme}://{t.host}:{t.port}",
        "http_ok": "1" if http_ok else "0",
        "http_status": str(code or ""),
        "tcp_open": "1" if tcp_ok else "0",
        "error": err,
    }


def run(input_csv: Path, out_csv: Path, out_json: Path, max_workers: int = 24) -> None:
    targets = load_targets(input_csv)
    started = time.time()
    results: List[Dict[str, str]] = []
    with ThreadPoolExecutor(max_workers=max_workers) as pool:
        fut_map = {pool.submit(check_target, t): t for t in targets}
        for fut in as_completed(fut_map):
            try:
                results.append(fut.result())
            except Exception as e:
                t = fut_map[fut]
                results.append({
                    "host": t.host, "port": str(t.port), "url": f"http://{t.host}:{t.port}",
                    "http_ok": "0", "http_status": "", "tcp_open": "0", "error": e.__class__.__name__,
                })

    # Write CSV
    out_csv.parent.mkdir(parents=True, exist_ok=True)
    with out_csv.open("w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=list(results[0].keys()))
        w.writeheader()
        w.writerows(results)

    # Summary JSON
    alive_http = sum(1 for r in results if r["http_ok"] == "1")
    open_tcp = sum(1 for r in results if r["tcp_open"] == "1")
    summary = {
        "targets": len(targets),
        "http_alive": alive_http,
        "tcp_open": open_tcp,
        "duration_sec": round(time.time() - started, 2),
    }
    with out_json.open("w", encoding="utf-8") as f:
        json.dump(summary, f, ensure_ascii=False, indent=2)

    print(json.dumps(summary, ensure_ascii=False))


def main(argv: List[str]) -> None:
    if len(argv) < 2:
        print("Usage: liveness.py <input_csv> [output_csv]", file=sys.stderr)
        sys.exit(1)
    input_csv = Path(argv[1])
    output_csv = Path(argv[2]) if len(argv) >= 3 else input_csv.with_name("alive_" + input_csv.name)
    output_json = output_csv.with_suffix(".json")
    run(input_csv, output_csv, output_json)


if __name__ == "__main__":
    main(sys.argv)
