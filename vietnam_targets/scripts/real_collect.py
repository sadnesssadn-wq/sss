#!/usr/bin/env python3
# 真实采集越南电商网站

import requests
import time
import re
from urllib.parse import urlparse

# 从真实的越南电商列表网站采集
def collect_from_ecommerce_vietnam():
    """从电商越南网站采集真实商家"""
    sites = []
    
    # 这里应该爬取真实的越南电商目录网站
    # 比如：越南电商协会、商业黄页等
    
    return sites

def verify_alive(domain):
    """验证网站是否真实存活"""
    for protocol in ['https', 'http']:
        try:
            url = f"{protocol}://{domain}"
            resp = requests.get(url, timeout=5, allow_redirects=True)
            if resp.status_code < 500:
                return f"{protocol}://{domain}"
        except:
            continue
    return None

# 验证真实网站列表
with open('raw_data/real_vietnamese_sites.txt') as f:
    domains = [line.strip() for line in f if line.strip()]

print(f"[*] 验证 {len(domains)} 个真实网站...")

alive = []
for domain in domains:
    result = verify_alive(domain)
    if result:
        alive.append(result)
        print(f"[✅] {result}")
    else:
        print(f"[❌] {domain}")
    time.sleep(0.5)

with open('processed/real_verified.txt', 'w') as f:
    for site in alive:
        f.write(site + '\n')

print(f"\n[✅] 验证完成: {len(alive)}/{len(domains)}")
