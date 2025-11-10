#!/usr/bin/env python3
# 终极爬虫 - 从多个搜索引擎爬取

import requests
import re
import time
from concurrent.futures import ThreadPoolExecutor

headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
}

domains = set()

def google_scrape():
    """Google搜索爬虫"""
    print("[+] Scraping Google...")
    for page in range(0, 200, 10):
        try:
            url = f"https://www.google.com/search?q=site:ac.th&start={page}"
            r = requests.get(url, headers=headers, timeout=10)
            found = re.findall(r'([a-z0-9-]+)\.ac\.th', r.text)
            for d in found:
                if d.count('-') < 3:  # 过滤过长
                    domains.add(f"{d}.ac.th")
            print(f"  Google page {page//10}: {len(domains)} total")
            time.sleep(2)
        except:
            pass

def bing_scrape():
    """Bing搜索爬虫"""
    print("[+] Scraping Bing...")
    for page in range(1, 100):
        try:
            url = f"https://www.bing.com/search?q=site:ac.th&first={page*10}"
            r = requests.get(url, headers=headers, timeout=10)
            found = re.findall(r'([a-z0-9-]+)\.ac\.th', r.text)
            for d in found:
                if d.count('-') < 3:
                    domains.add(f"{d}.ac.th")
            print(f"  Bing page {page}: {len(domains)} total")
            time.sleep(2)
        except:
            pass

def baidu_scrape():
    """百度搜索"""
    print("[+] Scraping Baidu...")
    for page in range(0, 100):
        try:
            url = f"https://www.baidu.com/s?wd=site:ac.th&pn={page*10}"
            r = requests.get(url, headers=headers, timeout=10)
            found = re.findall(r'([a-z0-9-]+)\.ac\.th', r.text.lower())
            for d in found:
                if d.count('-') < 3:
                    domains.add(f"{d}.ac.th")
            print(f"  Baidu page {page}: {len(domains)} total")
            time.sleep(2)
        except:
            pass

def common_crawl():
    """Common Crawl数据"""
    print("[+] Fetching CommonCrawl...")
    try:
        # Common Crawl Index
        url = "https://index.commoncrawl.org/CC-MAIN-2024-10-index?url=*.ac.th&output=json"
        r = requests.get(url, timeout=30)
        for line in r.text.split('\n'):
            if '.ac.th' in line:
                found = re.findall(r'([a-z0-9-]+)\.ac\.th', line)
                for d in found:
                    if d.count('-') < 3:
                        domains.add(f"{d}.ac.th")
        print(f"  CommonCrawl: {len(domains)} total")
    except Exception as e:
        print(f"  CommonCrawl failed: {e}")

def wayback_cdx():
    """Wayback Machine CDX"""
    print("[+] Fetching Wayback...")
    try:
        url = "https://web.archive.org/cdx/search/cdx?url=*.ac.th&output=json&fl=original&collapse=urlkey"
        r = requests.get(url, timeout=60)
        for line in r.text.split('\n'):
            found = re.findall(r'([a-z0-9-]+)\.ac\.th', line)
            for d in found:
                if d.count('-') < 3:
                    domains.add(f"{d}.ac.th")
        print(f"  Wayback: {len(domains)} total")
    except Exception as e:
        print(f"  Wayback failed: {e}")

def alienvault():
    """AlienVault OTX"""
    print("[+] Fetching AlienVault...")
    try:
        url = "https://otx.alienvault.com/api/v1/indicators/domain/ac.th/passive_dns"
        r = requests.get(url, timeout=30)
        data = r.json()
        for record in data.get('passive_dns', []):
            domain = record.get('hostname', '')
            if domain.endswith('.ac.th') and domain.count('.') == 2:
                domains.add(domain)
        print(f"  AlienVault: {len(domains)} total")
    except Exception as e:
        print(f"  AlienVault failed: {e}")

# 并行执行
with ThreadPoolExecutor(max_workers=6) as executor:
    executor.submit(google_scrape)
    executor.submit(bing_scrape)
    executor.submit(baidu_scrape)
    executor.submit(common_crawl)
    executor.submit(wayback_cdx)
    executor.submit(alienvault)

# 保存
with open('scraped_domains.txt', 'w') as f:
    for d in sorted(domains):
        f.write(d + '\n')

print(f"\n[+] Total scraped: {len(domains)}")
print(f"[+] Saved to scraped_domains.txt")
