#!/usr/bin/env python3
# 真实从Google搜索越南电商网站

import requests
import re
import time
from urllib.parse import urlparse, quote

# Google搜索关键词
KEYWORDS = [
    "mua sắm trực tuyến việt nam",  # 越南在线购物
    "cửa hàng trực tuyến việt nam",  # 越南在线商店
    "thương mại điện tử việt nam",  # 越南电子商务
    "bán hàng online việt nam",  # 越南在线销售
    "shop online việt nam",  # 越南在线商店
    "siêu thị trực tuyến",  # 在线超市
    "mua điện thoại online",  # 在线买手机
    "mua quần áo online",  # 在线买衣服
    "mua mỹ phẩm online",  # 在线买化妆品
    "mua sách online việt nam",  # 越南在线买书
    "chuyển phát nhanh việt nam",  # 越南快递
    "vận chuyển hàng hóa",  # 货运
    "giao hàng tận nơi",  # 送货上门
]

def search_google(keyword):
    """从Google搜索提取.vn域名"""
    domains = set()
    
    # 使用DuckDuckGo（不需要API）
    try:
        url = f"https://html.duckduckgo.com/html/?q={quote(keyword)}+site:.vn"
        headers = {'User-Agent': 'Mozilla/5.0'}
        resp = requests.get(url, headers=headers, timeout=10)
        
        # 提取域名
        found = re.findall(r'https?://([a-zA-Z0-9.-]+\.vn)', resp.text)
        for domain in found:
            # 清理子域名，提取主域名
            parts = domain.split('.')
            if len(parts) >= 2:
                main = '.'.join(parts[-2:])
                domains.add(main)
        
        print(f"[+] {keyword}: {len(found)} 个结果")
        
    except Exception as e:
        print(f"[!] {keyword}: {e}")
    
    return domains

all_domains = set()

print("[*] 开始Google搜索真实采集...")
for i, keyword in enumerate(KEYWORDS, 1):
    print(f"\n[{i}/{len(KEYWORDS)}] 搜索: {keyword}")
    domains = search_google(keyword)
    all_domains.update(domains)
    time.sleep(3)  # 避免被ban

# 保存原始结果
with open('raw_data/google_search_domains.txt', 'w') as f:
    for domain in sorted(all_domains):
        f.write(f"https://{domain}\n")

print(f"\n[✅] Google搜索完成: {len(all_domains)} 个域名")
