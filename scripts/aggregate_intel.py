#!/usr/bin/env python3
import json, sys, os, datetime
from collections import Counter

CACHE_DIR = os.path.join(os.getcwd(), ".sec-intel-cache")


def read_json(path):
    try:
        with open(path, "r", encoding="utf-8") as f:
            return json.load(f)
    except FileNotFoundError:
        return None


def nvd_stats():
    data = read_json(os.path.join(CACHE_DIR, "nvd_recent.json"))
    if not data or "vulnerabilities" not in data:
        return {}
    vulns = data.get("vulnerabilities", [])
    severity = []
    cwes = []
    for v in vulns:
        cve = v.get("cve", {})
        metrics = cve.get("metrics", {})
        cvss = metrics.get("cvssMetricV31") or metrics.get("cvssMetricV30") or metrics.get("cvssMetricV2") or []
        for m in cvss:
            sev = (m.get("cvssData", {}) or m).get("baseSeverity")
            if sev:
                severity.append(sev.upper())
        for w in cve.get("weaknesses", []) or []:
            for desc in w.get("description", []) or []:
                val = desc.get("value")
                if val and val.startswith("CWE-"):
                    cwes.append(val)
    sev_counts = Counter(severity)
    cwe_top10 = Counter(cwes).most_common(10)
    return {
        "total": len(vulns),
        "severity": sev_counts,
        "cweTop10": [{"cwe": c, "count": n} for c, n in cwe_top10],
    }


def kev_stats():
    data = read_json(os.path.join(CACHE_DIR, "cisa_kev.json"))
    if not data or "vulnerabilities" not in data:
        return {}
    vulns = data.get("vulnerabilities", [])
    now = datetime.datetime.utcnow()
    last30 = 0
    vendor_counter = Counter()
    for v in vulns:
        date_added = v.get("dateAdded")
        vendor = v.get("vendorProject")
        if vendor:
            vendor_counter[vendor] += 1
        if date_added:
            try:
                dt = datetime.datetime.fromisoformat(date_added.replace("Z", "+00:00")).replace(tzinfo=None)
                if (now - dt).days <= 30:
                    last30 += 1
            except Exception:
                pass
    top_vendors = vendor_counter.most_common(10)
    return {
        "total": len(vulns),
        "last30": last30,
        "topVendors": [{"vendor": v, "count": n} for v, n in top_vendors],
    }


def main():
    nvd = nvd_stats()
    kev = kev_stats()
    out = {
        "nvd": nvd,
        "kev": kev,
        "generatedAt": datetime.datetime.utcnow().isoformat() + "Z",
    }
    print(json.dumps(out, indent=2, ensure_ascii=False))


if __name__ == "__main__":
    main()
