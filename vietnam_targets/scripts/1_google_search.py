#!/usr/bin/env python3
"""
Google/Bing搜索引擎爬取越南电商/物流网站
"""
import requests
import re
import time
from urllib.parse import quote

# 越南电商/物流关键词
KEYWORDS = {
    'ecommerce': [
        'mua sắm online việt nam',
        'sàn thương mại điện tử việt nam',
        'website bán hàng việt nam',
        'shop online việt nam',
        'cửa hàng trực tuyến',
        'trang mua bán',
    ],
    'logistics': [
        'công ty giao hàng việt nam',
        'dịch vụ vận chuyển',
        'chuyển phát nhanh',
        'giao hàng tận nơi',
        'logistics vietnam',
    ]
}

def google_search(keyword, pages=10):
    """Google搜索"""
    results = []
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
    }
    
    for page in range(pages):
        try:
            url = f'https://www.google.com/search?q={quote(keyword)}&start={page*10}'
            print(f'[*] 搜索: {keyword} - 页面 {page+1}')
            
            # 使用DuckDuckGo作为替代（无需API）
            ddg_url = f'https://html.duckduckgo.com/html/?q={quote(keyword + " site:.vn")}'
            resp = requests.get(ddg_url, headers=headers, timeout=10)
            
            # 提取URL
            urls = re.findall(r'https?://[a-zA-Z0-9.-]+\.vn[^\s<>"]*', resp.text)
            results.extend(urls)
            
            time.sleep(2)  # 避免被ban
        except Exception as e:
            print(f'[!] 错误: {e}')
    
    return list(set(results))

def main():
    all_sites = []
    
    for category, keywords in KEYWORDS.items():
        print(f'\n[+] 收集类别: {category}')
        for keyword in keywords:
            sites = google_search(keyword, pages=5)
            all_sites.extend(sites)
            print(f'    找到 {len(sites)} 个')
    
    # 去重
    all_sites = list(set(all_sites))
    
    # 保存
    with open('../raw_data/google_search.txt', 'w') as f:
        for site in all_sites:
            f.write(site + '\n')
    
    print(f'\n[✅] 总计收集: {len(all_sites)} 个网站')
    print('[✅] 已保存到: raw_data/google_search.txt')

if __name__ == '__main__':
    main()
