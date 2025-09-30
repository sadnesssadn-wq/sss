#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
验证备份文件的真实性
"""

import requests
import urllib3
import hashlib

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

print("验证备份文件...\n")

# 测试几个备份文件
test_files = [
    'http://222.255.250.234/index.php.bak',
    'http://222.255.250.234/config.php.old',
    'http://222.255.250.234/database.php.backup',
    'http://222.255.250.234/nonexistent.php.bak'  # 不存在的文件作为对比
]

hashes = []

for url in test_files:
    try:
        resp = requests.get(url, verify=False, timeout=3)
        content_hash = hashlib.md5(resp.content).hexdigest()
        
        print(f"URL: {url}")
        print(f"  状态码: {resp.status_code}")
        print(f"  大小: {len(resp.content)} 字节")
        print(f"  MD5: {content_hash}")
        print(f"  标题: {resp.text[resp.text.find('<title>')+7:resp.text.find('</title>')] if '<title>' in resp.text else 'N/A'}")
        print(f"  前100字符: {resp.text[:100]}")
        print()
        
        hashes.append(content_hash)
    except Exception as e:
        print(f"URL: {url}")
        print(f"  错误: {e}\n")

# 检查是否所有响应都相同
if len(set(hashes)) == 1:
    print("[!] 所有文件返回相同内容 - 这是默认错误页面，不是真实备份文件!")
else:
    print("[+] 文件内容不同，可能包含真实备份文件")

# 检查真实的内容特征
print("\n检查一个'备份文件'的详细内容...")
try:
    resp = requests.get('http://222.255.250.234/config.php.old', verify=False, timeout=3)
    content = resp.text
    
    # 检查是否包含 PHP 代码
    if '<?php' in content or 'function' in content or '$' in content:
        print("[!] 发现 PHP 代码特征")
        print(f"内容预览:\n{content[:500]}")
    else:
        print("[-] 未发现 PHP 代码特征")
        print(f"实际内容:\n{content[:500]}")
except:
    pass