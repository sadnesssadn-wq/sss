#!/usr/bin/env python3
# 深度被动DNS枚举 - 所有可能的源

import subprocess
import requests
import time
import json

existing = set()
try:
    with open('/workspace/ac_th_final.txt', 'r') as f:
        existing = set(line.strip() for line in f)
except:
    pass

print(f"[*] Current: {len(existing)} domains")

all_domains = set(existing)

# 1. VirusTotal被动DNS
print("\n[+] VirusTotal...")
try:
    # 需要API key，尝试公开endpoint
    url = "https://www.virustotal.com/ui/domains/ac.th/subdomains?limit=1000"
    r = requests.get(url, timeout=30)
    if r.status_code == 200:
        data = r.json()
        for item in data.get('data', []):
            domain = item.get('id', '')
            if domain.endswith('.ac.th') and domain.count('.') == 2:
                all_domains.add(domain)
    print(f"    Total: {len(all_domains)}")
except Exception as e:
    print(f"    Error: {e}")

# 2. SecurityTrails
print("\n[+] SecurityTrails...")
try:
    url = "https://securitytrails.com/list/apex_domain/ac.th"
    headers = {'User-Agent': 'Mozilla/5.0'}
    r = requests.get(url, headers=headers, timeout=30)
    # 从HTML提取域名
    import re
    domains = re.findall(r'([a-z0-9-]+)\.ac\.th', r.text)
    for d in domains:
        all_domains.add(f"{d}.ac.th")
    print(f"    Total: {len(all_domains)}")
except Exception as e:
    print(f"    Error: {e}")

# 3. Censys
print("\n[+] Censys...")
try:
    url = "https://search.censys.io/api/v2/certificates/search"
    params = {'q': 'parsed.names: *.ac.th'}
    r = requests.get(url, params=params, timeout=30)
    if r.status_code == 200:
        for cert in r.json().get('result', {}).get('hits', []):
            for name in cert.get('parsed', {}).get('names', []):
                name = name.replace('*.', '').strip()
                if name.endswith('.ac.th') and name.count('.') == 2:
                    all_domains.add(name)
    print(f"    Total: {len(all_domains)}")
except Exception as e:
    print(f"    Error: {e}")

# 4. RapidDNS（多次尝试）
print("\n[+] RapidDNS...")
for page in range(1, 20):
    try:
        url = f"https://rapiddns.io/s/ac.th?page={page}"
        headers = {'User-Agent': 'Mozilla/5.0'}
        r = requests.get(url, headers=headers, timeout=15)
        import re
        domains = re.findall(r'>([a-z0-9-]+\.ac\.th)<', r.text)
        for d in domains:
            if d.count('.') == 2:
                all_domains.add(d)
        time.sleep(1)
    except:
        break
print(f"    Total: {len(all_domains)}")

# 5. DNSDumpster
print("\n[+] DNSDumpster...")
try:
    url = "https://dnsdumpster.com/"
    session = requests.Session()
    r = session.get(url)
    # 获取CSRF token
    import re
    csrf = re.search(r'csrfmiddlewaretoken.*value="([^"]+)"', r.text)
    if csrf:
        data = {
            'csrfmiddlewaretoken': csrf.group(1),
            'targetip': 'ac.th'
        }
        r = session.post(url, data=data, timeout=30)
        domains = re.findall(r'([a-z0-9-]+)\.ac\.th', r.text)
        for d in domains:
            all_domains.add(f"{d}.ac.th")
    print(f"    Total: {len(all_domains)}")
except Exception as e:
    print(f"    Error: {e}")

# 6. Wayback Machine（历史记录）
print("\n[+] Wayback Machine...")
try:
    url = "https://web.archive.org/cdx/search/cdx?url=*.ac.th&matchType=domain&fl=original&collapse=urlkey&output=json&limit=50000"
    r = requests.get(url, timeout=120)
    for line in r.text.split('\n'):
        import re
        found = re.findall(r'([a-z0-9-]+)\.ac\.th', line)
        for d in found:
            all_domains.add(f"{d}.ac.th")
    print(f"    Total: {len(all_domains)}")
except Exception as e:
    print(f"    Error: {e}")

# 7. AlienVault OTX
print("\n[+] AlienVault OTX...")
try:
    url = "https://otx.alienvault.com/api/v1/indicators/domain/ac.th/passive_dns"
    r = requests.get(url, timeout=30)
    for record in r.json().get('passive_dns', []):
        domain = record.get('hostname', '')
        if domain.endswith('.ac.th') and domain.count('.') == 2:
            all_domains.add(domain)
    print(f"    Total: {len(all_domains)}")
except Exception as e:
    print(f"    Error: {e}")

# 8. Shodan
print("\n[+] Shodan (public)...")
try:
    url = "https://www.shodan.io/search?query=hostname:.ac.th"
    headers = {'User-Agent': 'Mozilla/5.0'}
    r = requests.get(url, headers=headers, timeout=30)
    import re
    domains = re.findall(r'([a-z0-9-]+)\.ac\.th', r.text)
    for d in domains:
        all_domains.add(f"{d}.ac.th")
    print(f"    Total: {len(all_domains)}")
except Exception as e:
    print(f"    Error: {e}")

# 9. BGP.he.net
print("\n[+] BGP.he.net...")
try:
    url = "https://bgp.he.net/dns/ac.th"
    r = requests.get(url, timeout=30)
    import re
    domains = re.findall(r'>([a-z0-9-]+\.ac\.th)<', r.text)
    for d in domains:
        if d.count('.') == 2:
            all_domains.add(d)
    print(f"    Total: {len(all_domains)}")
except Exception as e:
    print(f"    Error: {e}")

# 10. Netcraft
print("\n[+] Netcraft...")
try:
    url = "https://searchdns.netcraft.com/?restriction=site+ends+with&host=.ac.th"
    headers = {'User-Agent': 'Mozilla/5.0'}
    r = requests.get(url, headers=headers, timeout=30)
    import re
    domains = re.findall(r'([a-z0-9-]+)\.ac\.th', r.text)
    for d in domains:
        all_domains.add(f"{d}.ac.th")
    print(f"    Total: {len(all_domains)}")
except Exception as e:
    print(f"    Error: {e}")

# 保存新发现的
new_domains = all_domains - existing
if new_domains:
    with open('passive_new_found.txt', 'w') as f:
        for d in sorted(new_domains):
            f.write(d + '\n')
    print(f"\n[+] New domains found: {len(new_domains)}")
    print(f"[+] Saved to: passive_new_found.txt")
else:
    print(f"\n[!] No new domains found")

print(f"\n[+] Total: {len(all_domains)}")
