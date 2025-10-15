#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
测试包含时间戳的签名
"""

import requests
import hashlib
import hmac
from datetime import datetime

base_url = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
headers = {
    "Authorization": "Basic bG90dG5ldDpkbXM=",
    "APIKey": "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A",
    "Content-Type": "application/x-www-form-urlencoded"
}
parcel_code = "EP493018285VN"
api_key = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"

print("=" * 70)
print("测试包含不同组合的签名")
print("=" * 70)
print()

# 尝试多种组合
test_cases = []

# 1. HMAC with different combinations
username = "lottnet"
password = "dms"

# 测试用HMAC-SHA256，key为password
sig1 = hmac.new(password.encode('utf-8'), parcel_code.encode('utf-8'), hashlib.sha256).hexdigest().upper()
test_cases.append(("HMAC-SHA256(ParcelCode, key=password)", sig1))

# 测试用HMAC-SHA256，key为username
sig2 = hmac.new(username.encode('utf-8'), parcel_code.encode('utf-8'), hashlib.sha256).hexdigest().upper()
test_cases.append(("HMAC-SHA256(ParcelCode, key=username)", sig2))

# 测试用HMAC-SHA256，key为username:password
sig3 = hmac.new(f"{username}:{password}".encode('utf-8'), parcel_code.encode('utf-8'), hashlib.sha256).hexdigest().upper()
test_cases.append(("HMAC-SHA256(ParcelCode, key='username:password')", sig3))

# SHA256(username:password:ParcelCode)
sig4 = hashlib.sha256(f"{username}:{password}:{parcel_code}".encode('utf-8')).hexdigest().upper()
test_cases.append(("SHA256('username:password:ParcelCode')", sig4))

# SHA256(ParcelCode:APIKey)
sig5 = hashlib.sha256(f"{parcel_code}:{api_key}".encode('utf-8')).hexdigest().upper()
test_cases.append(("SHA256('ParcelCode:APIKey')", sig5))

# MD5 variants
sig6 = hashlib.md5(f"{parcel_code}:{api_key}".encode('utf-8')).hexdigest().upper()
test_cases.append(("MD5('ParcelCode:APIKey')", sig6))

# SHA1 variants
sig7 = hashlib.sha1(parcel_code.encode('utf-8')).hexdigest().upper()
test_cases.append(("SHA1(ParcelCode)", sig7))

sig8 = hashlib.sha1((parcel_code + api_key).encode('utf-8')).hexdigest().upper()
test_cases.append(("SHA1(ParcelCode + APIKey)", sig8))

# 运行测试
for i, (method, signature) in enumerate(test_cases, 1):
    print(f"测试 {i}: {method}")
    print(f"签名: {signature}")
    print("-" * 70)
    
    data = {
        "ParcelCode": parcel_code,
        "Signature": signature
    }
    
    try:
        response = requests.post(base_url, headers=headers, data=data, timeout=30)
        result = response.json()
        code = result.get('Code', '')
        message = result.get('Message', '')
        
        print(f"Code: {code}, Message: {message}")
        
        if code != '96':
            print("✓✓✓ 成功！找到正确的签名方法！✓✓✓")
            print(f"完整响应: {result}")
            break
        print()
    except Exception as e:
        print(f"错误: {e}\n")

print("=" * 70)
