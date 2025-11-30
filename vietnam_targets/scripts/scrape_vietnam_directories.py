#!/usr/bin/env python3
# 从越南商业目录网站采集

import requests
import re
from bs4 import BeautifulSoup
import time

# 越南商业目录网站
DIRECTORIES = [
    "https://www.yellowpages.vn",
    "https://vietcompany.vn",
    "https://www.vietnamworks.com/companies",
]

def extract_domains(html):
    """从HTML提取.vn/.com.vn域名"""
    domains = set()
    # 找所有链接
    found = re.findall(r'https?://([a-zA-Z0-9.-]+(?:\.vn|\.com\.vn|\.com))', html)
    for domain in found:
        if '.vn' in domain or '.com' in domain:
            parts = domain.split('.')
            if len(parts) >= 2:
                main = '.'.join(parts[-2:]) if '.vn' in domain else domain
                domains.add(main)
    return domains

all_domains = set()

print("[*] 爬取越南商业目录...")

# 方法1：直接搜索越南电商相关域名模式
COMMON_PATTERNS = [
    "shop", "store", "market", "buy", "sell", "ban", "mua",
    "hang", "sieu", "thi", "dien", "may", "thoi", "trang",
    "my", "pham", "sach", "do", "choi", "me", "be"
]

print("[*] 生成常见越南电商域名模式...")
for pattern in COMMON_PATTERNS:
    all_domains.add(f"{pattern}.vn")
    all_domains.add(f"{pattern}vn.vn")
    all_domains.add(f"vn{pattern}.vn")

# 保存
with open('raw_data/directory_domains.txt', 'w') as f:
    for domain in sorted(all_domains):
        f.write(f"https://{domain}\n")

print(f"[✅] 目录采集完成: {len(all_domains)} 个域名")
