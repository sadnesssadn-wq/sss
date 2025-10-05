#!/usr/bin/env python3
"""
Service fingerprinting (authorized, non-intrusive).

Input: alive CSV produced by liveness.py (host,port,url,http_ok,http_status,tcp_open,error)
Output: CSV with fingerprint fields and JSON summary under the same folder.
"""
from __future__ import annotations

import csv
import json
import re
import socket
import ssl
import sys
from concurrent.futures import ThreadPoolExecutor, as_completed
from dataclasses import dataclass
from pathlib import Path
from typing import Dict, Iterable, List, Optional, Tuple

import requests


TLS_PORTS = {443, 8443, 2053, 2083, 2087, 2096}
HTTP_PORTS = TLS_PORTS | {80, 8080, 8880, 2052, 2082, 2095, 5000, 5001, 5003, 5004, 5005, 3000, 3001, 1200, 100}


@dataclass
class Alive:
    host: str
    port: int


def load_alive(alive_csv: Path) -> List[Alive]:
    items: List[Alive] = []
    with alive_csv.open(newline="", encoding="utf-8") as f:
        r = csv.DictReader(f)
        for row in r:
            try:
                host = (row.get("host") or "").strip().lower()
                port = int((row.get("port") or "0").strip())
                tcp_open = (row.get("tcp_open") or "0").strip() == "1"
                if not host or not port:
                    continue
                if not tcp_open:
                    continue
                if port not in HTTP_PORTS:
                    # Only fingerprint likely-http ports to keep non-intrusive
                    continue
                items.append(Alive(host=host, port=port))
            except Exception:
                continue
    # de-duplicate
    seen = set()
    uniq: List[Alive] = []
    for it in items:
        key = (it.host, it.port)
        if key not in seen:
            seen.add(key)
            uniq.append(it)
    return uniq


def fetch_title(text: str) -> str:
    try:
        m = re.search(r"<title[^>]*>(.*?)</title>", text, re.IGNORECASE | re.DOTALL)
        if m:
            title = re.sub(r"\s+", " ", m.group(1)).strip()
            return title[:200]
    except Exception:
        pass
    return ""


def http_fingerprint(host: str, port: int, timeout: float = 6.0) -> Dict[str, str]:
    # choose scheme heuristically
    schemes = ["https", "http"] if port in TLS_PORTS or port == 443 else ["http", "https"]
    info: Dict[str, str] = {
        "host": host,
        "port": str(port),
        "scheme": "",
        "status": "",
        "server": "",
        "powered_by": "",
        "title": "",
        "cert_cn": "",
        "cert_sans": "",
        "tls": "",
        "error": "",
    }
    headers = {"User-Agent": "Mozilla/5.0 (fingerprint)"}
    last_err = ""
    for scheme in schemes:
        url = f"{scheme}://{host}:{port}"
        try:
            resp = requests.get(url, headers=headers, timeout=timeout, allow_redirects=True, verify=False)
            info["scheme"] = scheme
            info["status"] = str(resp.status_code)
            info["server"] = resp.headers.get("Server", "")[:120]
            info["powered_by"] = (resp.headers.get("X-Powered-By") or resp.headers.get("X-AspNet-Version") or "")[:120]
            # read small chunk to find title
            text = resp.text[:40000]
            info["title"] = fetch_title(text)
            break
        except requests.exceptions.SSLError as e:
            last_err = f"ssl:{e.__class__.__name__}"
        except Exception as e:
            last_err = e.__class__.__name__
    else:
        info["error"] = last_err

    # If TLS, try to fetch certificate
    if info["scheme"] == "https":
        try:
            ctx = ssl.create_default_context()
            ctx.check_hostname = False
            ctx.verify_mode = ssl.CERT_NONE
            with socket.create_connection((host, port), timeout=timeout) as sock:
                with ctx.wrap_socket(sock, server_hostname=host) as ssock:
                    cert = ssock.getpeercert()
                    info["tls"] = ssock.version() or ""
            # parse CN and SANs
            if cert:
                # subject: ((('commonName', 'example.com'),), ...)
                for tup in cert.get("subject", []):
                    for k, v in tup:
                        if k == "commonName" and not info["cert_cn"]:
                            info["cert_cn"] = str(v)[:200]
                sans = [v for (k, v) in cert.get("subjectAltName", []) if k == "DNS"]
                if sans:
                    info["cert_sans"] = ",".join(sans)[:400]
        except Exception as e:
            if not info["error"]:
                info["error"] = f"tls:{e.__class__.__name__}"

    return info


def run(alive_csv: Path, out_csv: Path, out_json: Path, max_workers: int = 20) -> None:
    items = load_alive(alive_csv)
    results: List[Dict[str, str]] = []
    with ThreadPoolExecutor(max_workers=max_workers) as pool:
        futs = {pool.submit(http_fingerprint, it.host, it.port): it for it in items}
        for fut in as_completed(futs):
            try:
                results.append(fut.result())
            except Exception as e:
                it = futs[fut]
                results.append({
                    "host": it.host, "port": str(it.port), "scheme": "", "status": "", "server": "",
                    "powered_by": "", "title": "", "cert_cn": "", "cert_sans": "", "tls": "",
                    "error": e.__class__.__name__,
                })

    out_csv.parent.mkdir(parents=True, exist_ok=True)
    with out_csv.open("w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=list(results[0].keys()))
        w.writeheader()
        w.writerows(results)

    summary = {
        "targets": len(items),
        "ok": sum(1 for r in results if r.get("status") and r.get("status").isdigit() and int(r["status"]) < 500),
        "tls": sum(1 for r in results if r.get("scheme") == "https"),
    }
    with out_json.open("w", encoding="utf-8") as f:
        json.dump(summary, f, ensure_ascii=False, indent=2)
    print(json.dumps(summary, ensure_ascii=False))


def main(argv: List[str]) -> None:
    if len(argv) < 2:
        print("Usage: fingerprint.py <alive_csv> [out_csv]", file=sys.stderr)
        sys.exit(1)
    alive_csv = Path(argv[1])
    out_csv = Path(argv[2]) if len(argv) >= 3 else alive_csv.with_name("fingerprints_" + alive_csv.name)
    out_json = out_csv.with_suffix(".json")
    run(alive_csv, out_csv, out_json)


if __name__ == "__main__":
    main(sys.argv)
