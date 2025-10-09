#!/usr/bin/env python3
import argparse
import json
import os
import re
import socket
import ssl
import http.client
from typing import Dict, Any, List, Optional, Tuple

CACHE_DIR = os.path.join(os.getcwd(), ".sec-intel-cache")
DEFAULT_PORTS = [80, 443]
REQUEST_TIMEOUT_SECS = 4
MAX_READ_BYTES = 16384

VENDOR_HINTS: Dict[str, List[str]] = {
    "MikroTik": ["routeros", "mikrotik", "winbox", "ros"],
    "Ubiquiti": ["ubiquiti", "edgeos", "edgerouter", "airmax", "airos"],
    "TP-Link": ["tp-link", "tplink", "archer", "tp-link technologies"],
    "NETGEAR": ["netgear", "wnr", "dgn", "orbi"],
    "D-Link": ["d-link", "dlink", "dir-"],
    "Zyxel": ["zyxel", "emg", "p660", "nebula"],
    "ASUS": ["asus", "asuswrt", "rt-ac", "rt-ax"],
    "Fortinet": ["fortinet", "fortigate", "fortios"],
    "Cisco": ["cisco", "rv series", "ios xe", "isr"],
    "Juniper": ["juniper", "junos"],
    "OpenWrt": ["openwrt", "luci", "uhttpd"],
    "DD-WRT": ["dd-wrt"],
    "Huawei": ["huawei"],
    "ZTE": ["zte"],
    "H3C": ["h3c"],
    "Arcadyan": ["arcadyan"],
    "Sagemcom": ["sagemcom"],
    "Technicolor": ["technicolor"],
}

SERVER_HINTS = ["uhttpd", "boa", "thttpd", "goahead", "micro_httpd", "lighttpd"]

TITLE_PAT = re.compile(rb"<title[^>]*>(.*?)</title>", re.IGNORECASE | re.DOTALL)


def ensure_cache_dir() -> None:
    os.makedirs(CACHE_DIR, exist_ok=True)


def _connect_http(ip: str, port: int, use_https: bool, timeout: int) -> http.client.HTTPConnection:
    if use_https:
        context = ssl.create_default_context()
        context.check_hostname = False
        context.verify_mode = ssl.CERT_NONE
        conn = http.client.HTTPSConnection(ip, port=port, timeout=timeout, context=context)
    else:
        conn = http.client.HTTPConnection(ip, port=port, timeout=timeout)
    return conn


def fetch_http_headers(ip: str, port: int, use_https: bool, timeout: int) -> Dict[str, Any]:
    try:
        conn = _connect_http(ip, port, use_https, timeout)
        conn.request("HEAD", "/", headers={"Host": ip, "User-Agent": "fp/1.0"})
        resp = conn.getresponse()
        headers = {k.lower(): v for k, v in resp.getheaders()}
        status = resp.status
        conn.close()
        return {"ok": True, "status": status, "headers": headers}
    except Exception as e:
        return {"ok": False, "error": str(e)}


def fetch_http_title_and_snippet(ip: str, port: int, use_https: bool, timeout: int) -> Dict[str, Any]:
    try:
        conn = _connect_http(ip, port, use_https, timeout)
        conn.request("GET", "/", headers={"Host": ip, "User-Agent": "fp/1.0"})
        resp = conn.getresponse()
        body = resp.read(MAX_READ_BYTES)
        conn.close()
        title: Optional[str] = None
        m = TITLE_PAT.search(body)
        if m:
            try:
                title = m.group(1).decode(errors="ignore").strip()
            except Exception:
                title = None
        return {
            "ok": True,
            "status": resp.status,
            "title": title,
            "snippet": body[:512].decode(errors="ignore"),
        }
    except Exception as e:
        return {"ok": False, "error": str(e)}


def fetch_tls_cert(ip: str, port: int, timeout: int) -> Dict[str, Any]:
    try:
        context = ssl.create_default_context()
        context.check_hostname = False
        context.verify_mode = ssl.CERT_NONE
        with socket.create_connection((ip, port), timeout=timeout) as sock:
            with context.wrap_socket(sock, server_hostname=ip) as ssock:
                cert = ssock.getpeercert()
                cipher = ssock.cipher()
        # Parse subject and issuer to readable dicts
        def _name_to_dict(name: Tuple[Tuple[Tuple[str, str], ...], ...]) -> Dict[str, str]:
            out: Dict[str, str] = {}
            for rdn in name:
                for (k, v) in rdn:
                    out[k] = v
            return out

        subject = _name_to_dict(tuple(cert.get("subject", ())))
        issuer = _name_to_dict(tuple(cert.get("issuer", ())))
        san = [v for (k, v) in cert.get("subjectAltName", [])]
        return {
            "ok": True,
            "subject": subject,
            "issuer": issuer,
            "sans": san,
            "notBefore": cert.get("notBefore"),
            "notAfter": cert.get("notAfter"),
            "cipher": cipher,
        }
    except Exception as e:
        return {"ok": False, "error": str(e)}


def build_hints(headers: Dict[str, str], title: Optional[str], snippet: str, cert: Dict[str, Any]) -> List[str]:
    hints: List[str] = []
    text_blobs: List[str] = []
    if headers:
        # Common headers used for fingerprinting
        for k in ["server", "www-authenticate", "x-powered-by", "set-cookie"]:
            v = headers.get(k)
            if v:
                text_blobs.append(v)
    if title:
        text_blobs.append(title)
    if snippet:
        text_blobs.append(snippet)
    # TLS certificate names
    if cert and cert.get("ok"):
        subj_vals = list((cert.get("subject") or {}).values())
        iss_vals = list((cert.get("issuer") or {}).values())
        text_blobs.extend([str(x) for x in subj_vals + iss_vals])
        for san in cert.get("sans", []) or []:
            text_blobs.append(str(san))

    blob = " ".join(text_blobs).lower()

    # Generic server hints
    for s in SERVER_HINTS:
        if s in blob:
            hints.append(f"server:{s}")

    # Vendor hints
    for vendor, kws in VENDOR_HINTS.items():
        if any(kw in blob for kw in kws):
            hints.append(f"vendor:{vendor}")

    # Auth realm quick patterns
    realm = headers.get("www-authenticate", "") if headers else ""
    if "basic" in realm.lower():
        # Try to extract realm name
        m = re.search(r'realm="?([^"\\]+)"?', realm, re.IGNORECASE)
        if m:
            hints.append(f"auth-realm:{m.group(1)}")

    # Router keywords
    for kw in ["router", "routeros", "edgerouter", "gateway"]:
        if kw in blob:
            hints.append(f"keyword:{kw}")

    # Deduplicate while preserving order
    seen = set()
    uniq: List[str] = []
    for h in hints:
        if h not in seen:
            uniq.append(h)
            seen.add(h)
    return uniq


def fingerprint_ip(ip: str, ports: List[int], timeout: int) -> Dict[str, Any]:
    result: Dict[str, Any] = {"ip": ip, "ports": ports, "results": {}}
    for port in ports:
        is_https = (port == 443 or port == 8443)
        headers_res = fetch_http_headers(ip, port, is_https, timeout)
        title_res = fetch_http_title_and_snippet(ip, port, is_https, timeout)
        cert_res = fetch_tls_cert(ip, port, timeout) if is_https else {"ok": False}

        headers = headers_res.get("headers") if headers_res.get("ok") else {}
        title = title_res.get("title") if title_res.get("ok") else None
        snippet = title_res.get("snippet") if title_res.get("ok") else ""
        hints = build_hints(headers or {}, title, snippet or "", cert_res)

        result["results"][str(port)] = {
            "https": is_https,
            "headers": headers,
            "status": headers_res.get("status") if headers_res.get("ok") else None,
            "title": title,
            "tls": cert_res if is_https else None,
            "hints": hints,
            "error_head": None if headers_res.get("ok") else headers_res.get("error"),
            "error_get": None if title_res.get("ok") else title_res.get("error"),
        }
    # Overall likely vendors
    all_hints = []
    for port_info in result["results"].values():
        all_hints.extend(port_info.get("hints") or [])
    likely_vendors = sorted({h.split(":", 1)[1] for h in all_hints if h.startswith("vendor:")})
    result["likelyVendors"] = likely_vendors
    # Router likelihood
    router_keywords = any("keyword:router" in all_hints or "vendor:" in h.lower() for h in all_hints)
    result["maybeRouter"] = router_keywords or any(
        v in likely_vendors for v in [
            "MikroTik", "Ubiquiti", "TP-Link", "NETGEAR", "D-Link", "Zyxel", "ASUS",
            "Fortinet", "Cisco", "Juniper", "OpenWrt", "DD-WRT", "Huawei", "ZTE", "H3C"
        ]
    )
    return result


def save_result(ip: str, data: Dict[str, Any], outdir: Optional[str] = None) -> str:
    ensure_cache_dir()
    target_dir = outdir or CACHE_DIR
    os.makedirs(target_dir, exist_ok=True)
    path = os.path.join(target_dir, f"fp_{ip.replace(':', '_').replace('/', '_')}.json")
    with open(path, "w", encoding="utf-8") as f:
        json.dump(data, f, indent=2, ensure_ascii=False)
    return path


def parse_args() -> argparse.Namespace:
    p = argparse.ArgumentParser(description="Safe IP fingerprint (HTTP/HTTPS minimal requests)")
    g = p.add_mutually_exclusive_group(required=True)
    g.add_argument("--ip", help="Single IP or hostname")
    g.add_argument("--file", help="File with IPs (one per line)")
    p.add_argument("--ports", default=",".join(map(str, DEFAULT_PORTS)), help="Comma-separated ports, default: 80,443")
    p.add_argument("--timeout", type=int, default=REQUEST_TIMEOUT_SECS, help="Per-request timeout seconds")
    p.add_argument("--outdir", default=CACHE_DIR, help="Output directory for JSON results")
    return p.parse_args()


def main() -> None:
    args = parse_args()
    ports = [int(x.strip()) for x in args.ports.split(",") if x.strip()]

    targets: List[str] = []
    if args.ip:
        targets = [args.ip.strip()]
    elif args.file:
        with open(args.file, "r", encoding="utf-8") as f:
            targets = [line.strip() for line in f if line.strip() and not line.strip().startswith("#")]

    os.makedirs(args.outdir, exist_ok=True)

    summary: List[Dict[str, Any]] = []
    for ip in targets:
        fp = fingerprint_ip(ip, ports, args.timeout)
        path = save_result(ip, fp, args.outdir)
        summary.append({"ip": ip, "maybeRouter": fp.get("maybeRouter"), "likelyVendors": fp.get("likelyVendors"), "out": path})
        print(json.dumps(summary[-1], ensure_ascii=False))

    # Also write a combined index for convenience
    with open(os.path.join(args.outdir, "fp_index.json"), "w", encoding="utf-8") as f:
        json.dump({"targets": summary}, f, indent=2, ensure_ascii=False)


if __name__ == "__main__":
    main()
