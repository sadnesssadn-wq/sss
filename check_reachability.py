#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from __future__ import annotations

import concurrent.futures
import socket
import ssl
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import List, Tuple


@dataclass
class CheckResult:
    host: str
    port: int
    reachable: bool
    reason: str


def check_tcp(host: str, port: int, timeout: float = 3.0) -> Tuple[bool, str]:
    try:
        with socket.create_connection((host, port), timeout=timeout) as sock:
            return True, "ok"
    except socket.gaierror:
        return False, "dns_error"
    except TimeoutError:
        return False, "timeout"
    except ConnectionRefusedError:
        return False, "refused"
    except Exception as e:
        return False, type(e).__name__


def worker(line: str) -> CheckResult:
    line = line.strip()
    if not line or ":" not in line:
        return CheckResult(line, 0, False, "bad_line")
    host, p = line.rsplit(":", 1)
    try:
        port = int(p)
    except Exception:
        return CheckResult(host, 0, False, "bad_port")
    ok, reason = check_tcp(host, port)
    return CheckResult(host, port, ok, reason)


def main() -> None:
    src = Path("/workspace/out/subdomains_with_ports.txt")
    lines: List[str] = src.read_text(encoding="utf-8").splitlines()
    results: List[CheckResult] = []
    with concurrent.futures.ThreadPoolExecutor(max_workers=32) as ex:
        for res in ex.map(worker, lines):
            results.append(res)
    ok = [r for r in results if r.reachable]
    bad = [r for r in results if not r.reachable]
    # Write outputs
    Path("/workspace/out/reachable.txt").write_text(
        "\n".join(f"{r.host}:{r.port}" for r in sorted(ok, key=lambda x: (x.host, x.port))),
        encoding="utf-8",
    )
    Path("/workspace/out/unreachable.txt").write_text(
        "\n".join(f"{r.host}:{r.port} #{r.reason}" for r in sorted(bad, key=lambda x: (x.host, x.port))),
        encoding="utf-8",
    )
    # Summary to stdout
    from collections import Counter

    reasons = Counter(r.reason for r in bad)
    print(
        {
            "total": len(results),
            "reachable": len(ok),
            "unreachable": len(bad),
            "failReasons": reasons.most_common(10),
        }
    )


if __name__ == "__main__":
    main()

