#!/usr/bin/env python3
import json, os, re, sys
from collections import Counter, defaultdict

CACHE_DIR = os.path.join(os.getcwd(), ".sec-intel-cache")
KEV_PATH = os.path.join(CACHE_DIR, "cisa_kev.json")
OUT_PATH = os.path.join(CACHE_DIR, "kev_routers.json")
SUMMARY_PATH = os.path.join(CACHE_DIR, "kev_routers_summary.json")

ROUTER_VENDORS = {
    "Cisco", "NETGEAR", "D-Link", "TP-Link", "Zyxel", "MikroTik",
    "Ubiquiti", "Juniper", "Fortinet", "ASUS", "DrayTek", "Dasan",
    "Buffalo", "Arcadyan", "H3C", "Huawei", "ZTE",
}

ROUTER_KEYWORDS = [
    r"\brouter\b", r"\brouters\b", r"routeros", r"vpn router",
    r"rv series", r"soho", r"home router", r"winbox",
]

KW_RE = re.compile("|".join(ROUTER_KEYWORDS), re.IGNORECASE)

def is_router_entry(vuln: dict) -> bool:
    vendor = (vuln.get("vendorProject") or "").strip()
    product = (vuln.get("product") or "").strip()
    name = (vuln.get("vulnerabilityName") or "").strip()
    desc = (vuln.get("shortDescription") or "").strip()

    if vendor in ROUTER_VENDORS:
        return True
    text = " ".join([product, name, desc]).lower()
    if KW_RE.search(text):
        return True
    return False


def main():
    with open(KEV_PATH, "r", encoding="utf-8") as f:
        kev = json.load(f)
    vulns = kev.get("vulnerabilities", [])
    filtered = [v for v in vulns if is_router_entry(v)]

    with open(OUT_PATH, "w", encoding="utf-8") as f:
        json.dump({"vulnerabilities": filtered}, f, indent=2, ensure_ascii=False)

    # Build simple summary
    vendor_counts = Counter((v.get("vendorProject") or "UNKNOWN") for v in filtered)
    types = defaultdict(int)
    for v in filtered:
        s = (v.get("shortDescription") or "") + " " + (v.get("vulnerabilityName") or "")
        s_lower = s.lower()
        for k in [
            ("command_injection", ["command injection", "os command", "rce", "execute arbitrary command", "execute system commands"]),
            ("buffer_overflow", ["buffer overflow", "stack-based overflow", "heap overflow", "oob write", "out-of-bounds"]),
            ("path_traversal", ["path traversal", "directory traversal", "../.."]),
            ("auth_bypass", ["authentication bypass", "improper authentication", "bypass authentication"]),
            ("info_disclosure", ["information disclosure", "read arbitrary files", "download the router configuration"]),
            ("deserialization", ["deserialization", "untrusted data"]),
        ]:
            key, kws = k
            if any(kw in s_lower for kw in kws):
                types[key] += 1

    summary = {
        "total_router_entries": len(filtered),
        "by_vendor": vendor_counts.most_common(20),
        "by_type_heuristic": dict(sorted(types.items(), key=lambda x: x[1], reverse=True)),
    }
    with open(SUMMARY_PATH, "w", encoding="utf-8") as f:
        json.dump(summary, f, indent=2, ensure_ascii=False)

    print(json.dumps({"ok": True, "counts": summary["total_router_entries"]}, ensure_ascii=False))

if __name__ == "__main__":
    main()
