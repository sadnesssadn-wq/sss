#!/usr/bin/env python3
import argparse
import datetime as dt
import json
import socket
import ssl
from typing import Any, Dict, List, Optional, Tuple
from urllib.parse import urlparse

import requests


def get_tls_info(hostname: str, port: int = 443, timeout: int = 10) -> Dict[str, Any]:
    context = ssl.create_default_context()
    # Prefer modern TLS; allow server to negotiate
    try:
        with socket.create_connection((hostname, port), timeout=timeout) as sock:
            with context.wrap_socket(sock, server_hostname=hostname) as ssock:
                protocol = ssock.version()
                cipher = ssock.cipher()
                peercert = ssock.getpeercert()
    except Exception as e:
        return {
            "ok": False,
            "error": str(e),
            "hostname": hostname,
            "port": port,
        }

    not_before = peercert.get("notBefore")
    not_after = peercert.get("notAfter")

    def parse_cert_time(value: Optional[str]) -> Optional[dt.datetime]:
        if not value:
            return None
        # Example: 'Oct  5 12:00:00 2025 GMT'
        for fmt in ("%b %d %H:%M:%S %Y %Z", "%b %e %H:%M:%S %Y %Z"):
            try:
                return dt.datetime.strptime(value, fmt)
            except Exception:
                continue
        return None

    nb = parse_cert_time(not_before)
    na = parse_cert_time(not_after)
    days_to_expiry = None
    if na:
        days_to_expiry = (na - dt.datetime.utcnow()).days

    san_entries = []
    for t, v in peercert.get("subjectAltName", []) or []:
        san_entries.append({"type": t, "value": v})

    return {
        "ok": True,
        "hostname": hostname,
        "port": port,
        "protocol": protocol,
        "cipher": cipher,
        "cert_subject": peercert.get("subject"),
        "issuer": peercert.get("issuer"),
        "not_before": not_before,
        "not_after": not_after,
        "days_to_expiry": days_to_expiry,
        "san": san_entries,
    }


def fetch_headers(url: str, timeout: int = 15) -> Tuple[Dict[str, str], str, int, List[str]]:
    session = requests.Session()
    try:
        # First try HEAD to be minimally invasive
        resp = session.head(url, allow_redirects=True, timeout=timeout)
        final_url = resp.url
        status = resp.status_code
        headers = {k.lower(): v for k, v in resp.headers.items()}
        history = [r.url for r in resp.history] + [final_url]
        # Some servers don't support HEAD properly; fall back to GET (streamed)
        if status >= 400 or not headers:
            resp = session.get(url, allow_redirects=True, timeout=timeout, stream=True)
            final_url = resp.url
            status = resp.status_code
            headers = {k.lower(): v for k, v in resp.headers.items()}
            history = [r.url for r in resp.history] + [final_url]
        return headers, final_url, status, history
    except Exception as e:
        return {"error": str(e)}, url, 0, []


def has_flag(value: str, flag: str) -> bool:
    parts = [p.strip().lower() for p in value.split(";")]
    return flag.lower() in parts


def evaluate_headers(headers: Dict[str, str]) -> List[Dict[str, Any]]:
    findings: List[Dict[str, Any]] = []

    def add(name: str, ok: bool, detail: str, severity: str = "medium", recommendation: Optional[str] = None):
        findings.append({
            "check": name,
            "passed": bool(ok),
            "severity": severity,
            "detail": detail,
            "recommendation": recommendation,
        })

    hsts = headers.get("strict-transport-security")
    if hsts:
        max_age = 0
        include_sd = "includesubdomains" in hsts.lower()
        preload = "preload" in hsts.lower()
        for token in hsts.split(";"):
            token = token.strip().lower()
            if token.startswith("max-age="):
                try:
                    max_age = int(token.split("=", 1)[1])
                except Exception:
                    pass
        ok = max_age >= 15552000  # 180 days
        rec = "Set HSTS with max-age>=15552000; includeSubDomains; consider preload"
        add("HSTS", ok and include_sd, f"present, max-age={max_age}, includeSubDomains={include_sd}, preload={preload}", "high", rec)
    else:
        add("HSTS", False, "missing", "high", "Add Strict-Transport-Security with long max-age and includeSubDomains")

    csp = headers.get("content-security-policy")
    if csp:
        unsafe = "'unsafe-inline'" in csp or "'unsafe-eval'" in csp
        add("CSP", not unsafe, f"present{' with unsafe directives' if unsafe else ''}", "high", "Define strong CSP; avoid 'unsafe-*'")
    else:
        add("CSP", False, "missing", "high", "Add Content-Security-Policy with default-src 'none' + explicit allowlists")

    xfo = headers.get("x-frame-options")
    add("X-Frame-Options", xfo in ("DENY", "SAMEORIGIN", "deny", "sameorigin"), f"{xfo!r}", "medium", "Set X-Frame-Options to DENY or SAMEORIGIN")

    xcto = headers.get("x-content-type-options")
    add("X-Content-Type-Options", xcto and xcto.lower() == "nosniff", f"{xcto!r}", "medium", "Set X-Content-Type-Options: nosniff")

    refpol = headers.get("referrer-policy")
    good_ref = {"no-referrer", "strict-origin-when-cross-origin", "same-origin"}
    add("Referrer-Policy", bool(refpol and refpol.lower() in good_ref), f"{refpol!r}", "low", "Set Referrer-Policy to strict-origin-when-cross-origin or no-referrer")

    perm = headers.get("permissions-policy") or headers.get("feature-policy")
    add("Permissions-Policy", bool(perm), f"{perm!r}", "low", "Set Permissions-Policy to limit powerful APIs")

    coop = headers.get("cross-origin-opener-policy")
    coep = headers.get("cross-origin-embedder-policy")
    corp = headers.get("cross-origin-resource-policy")
    add("COOP", coop == "same-origin", f"{coop!r}", "low", "Set Cross-Origin-Opener-Policy: same-origin")
    add("COEP", coep in ("require-corp", "credentialless"), f"{coep!r}", "low", "Set COEP: require-corp or credentialless if feasible")
    add("CORP", corp in ("same-site", "same-origin", "cross-origin"), f"{corp!r}", "low", "Consider Cross-Origin-Resource-Policy: same-site for private apps")

    # CORS - flag risky wildcard with credentials
    acao = headers.get("access-control-allow-origin")
    acad = headers.get("access-control-allow-credentials")
    if acao:
        risky = (acao.strip() == "*" and (acad or "").lower() == "true")
        add("CORS", not risky, f"ACAO={acao!r}, ACAC={acad!r}", "medium", "Avoid ACAO '*' with credentials; prefer explicit origin allowlist")
    else:
        add("CORS", True, "no ACAO header (safe default)", "low")

    # Cache control
    cache = headers.get("cache-control")
    pragma = headers.get("pragma")
    if cache:
        add("Cache-Control", True, f"{cache!r}", "low")
    else:
        add("Cache-Control", False, "missing", "low", "Set Cache-Control; disable caching for authenticated pages")
    if pragma and "no-cache" in pragma.lower():
        add("Pragma", True, f"{pragma!r}", "low")

    # Cookies
    set_cookie = headers.get("set-cookie", "")
    cookie_findings = []
    if set_cookie:
        # There may be multiple Set-Cookie; requests folds them by comma. We can split conservatively on ', ' before a token that looks like a cookie name=value
        raw = [c.strip() for c in set_cookie.split(", ")]
        for c in raw:
            # Heuristic: cookie pairs contain '=' and not start with 'expires='
            if "=" not in c or c.lower().startswith("expires="):
                continue
            name = c.split("=", 1)[0]
            has_secure = " secure" in (" " + c.lower())
            has_httponly = " httponly" in (" " + c.lower())
            same_site = None
            for part in c.split(";"):
                if part.strip().lower().startswith("samesite="):
                    same_site = part.split("=", 1)[1].strip()
            cookie_findings.append({
                "cookie": name,
                "secure": has_secure,
                "httponly": has_httponly,
                "samesite": same_site,
            })
        findings.append({
            "check": "Cookies",
            "passed": all(cf["secure"] and cf["httponly"] for cf in cookie_findings) if cookie_findings else True,
            "severity": "high" if cookie_findings else "low",
            "detail": cookie_findings,
            "recommendation": "Set Secure, HttpOnly, and SameSite=Lax/Strict for session cookies",
        })
    else:
        findings.append({
            "check": "Cookies",
            "passed": True,
            "severity": "low",
            "detail": "no Set-Cookie in this response",
            "recommendation": None,
        })

    return findings


def run_audit(target_url: str) -> Dict[str, Any]:
    parsed = urlparse(target_url)
    hostname = parsed.hostname or target_url

    tls = None
    if parsed.scheme == "https" or parsed.scheme == "" or parsed.scheme is None:
        tls = get_tls_info(hostname, 443)

    headers, final_url, status, history = fetch_headers(target_url)
    header_findings = evaluate_headers(headers if isinstance(headers, dict) else {})

    return {
        "target": target_url,
        "final_url": final_url,
        "status": status,
        "redirect_chain": history,
        "tls": tls,
        "headers": headers,
        "findings": header_findings,
    }


def main(argv: Optional[List[str]] = None) -> int:
    parser = argparse.ArgumentParser(description="Safe HTTP/TLS security header audit (authorized targets only)")
    parser.add_argument("url", help="Target URL (e.g., https://example.com)")
    parser.add_argument("--out", help="Output JSON file path", default=None)
    args = parser.parse_args(argv)

    report = run_audit(args.url)

    text_summary = {
        "target": report["target"],
        "final": report["final_url"],
        "status": report["status"],
        "tls_protocol": (report.get("tls") or {}).get("protocol"),
        "tls_cipher": (report.get("tls") or {}).get("cipher"),
        "cert_days_to_expiry": (report.get("tls") or {}).get("days_to_expiry"),
    }
    print(json.dumps(text_summary, ensure_ascii=False))

    if args.out:
        with open(args.out, "w", encoding="utf-8") as f:
            json.dump(report, f, ensure_ascii=False, indent=2)
        print(f"Saved detailed report to {args.out}")

    # Print concise failed checks
    failed = [f for f in report["findings"] if not f.get("passed")]
    if failed:
        print("Failed checks:")
        for f in failed:
            print(f"- {f['check']}: {f['detail']} | rec: {f.get('recommendation')}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
