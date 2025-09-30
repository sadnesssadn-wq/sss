#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
验证之前的发现是否为误报
"""

import requests
import urllib3

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

TARGET = "222.255.250.228"

print("验证之前的发现...\n")

# 1. 验证 Laravel 调试端点
print("[1] 验证 Laravel 调试端点:")
debug_urls = [
    f"https://{TARGET}/_debugbar",
    f"https://{TARGET}/telescope", 
    f"https://{TARGET}/horizon",
    f"https://{TARGET}/storage/logs/laravel.log"
]

for url in debug_urls:
    try:
        resp = requests.get(url, verify=False, timeout=5, allow_redirects=False)
        print(f"\n{url}")
        print(f"  状态码: {resp.status_code}")
        print(f"  响应大小: {len(resp.text)} 字节")
        
        # 检查是否真的是调试页面
        if resp.status_code == 200:
            # 检查是否是登录重定向
            if 'login' in resp.text.lower() and len(resp.text) < 5000:
                print(f"  [!] 实际是登录页面重定向")
            
            # 检查响应内容
            if 'telescope' in url and 'telescope' not in resp.text.lower():
                print(f"  [!] 响应中没有 Telescope 相关内容")
                
            # 打印前200个字符
            print(f"  内容预览: {resp.text[:200].strip()}")
            
        elif resp.status_code in [301, 302]:
            print(f"  重定向到: {resp.headers.get('Location', 'Unknown')}")
            
    except Exception as e:
        print(f"  错误: {str(e)}")

# 2. 验证 Swagger
print("\n\n[2] 验证 Swagger API 文档:")
swagger_url = f"http://{TARGET}/swagger/v1/swagger.json"
try:
    resp = requests.get(swagger_url, verify=False, timeout=5)
    print(f"URL: {swagger_url}")
    print(f"状态码: {resp.status_code}")
    
    if resp.status_code == 200:
        # 检查是否真的是 JSON
        try:
            import json
            data = json.loads(resp.text)
            print(f"[✓] 确实是 JSON 格式")
            print(f"内容预览: {json.dumps(data, ensure_ascii=False)[:300]}...")
        except:
            print(f"[!] 不是有效的 JSON")
            print(f"内容预览: {resp.text[:200]}")
            
except Exception as e:
    print(f"错误: {str(e)}")

# 3. 实际测试一些路径的响应
print("\n\n[3] 测试实际响应内容:")
test_urls = [
    (f"https://{TARGET}/login", "Laravel 登录页"),
    (f"http://{TARGET}/admin", "ASP.NET 登录页"),
    (f"https://{TARGET}/api/test", "测试 API")
]

for url, desc in test_urls:
    try:
        resp = requests.get(url, verify=False, timeout=5, allow_redirects=True)
        print(f"\n{desc} - {url}")
        print(f"  最终 URL: {resp.url}")
        print(f"  状态码: {resp.status_code}")
        
        # 检查是否包含特定内容
        if '<title>' in resp.text:
            import re
            title = re.search(r'<title>([^<]+)</title>', resp.text)
            if title:
                print(f"  页面标题: {title.group(1)}")
                
    except Exception as e:
        print(f"  错误: {str(e)}")

print("\n[+] 验证完成！")