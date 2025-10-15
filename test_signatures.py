#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
测试不同的签名算法，找到正确的签名方法
"""

import hashlib
import hmac

parcel_code = "EP493018285VN"
api_key = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
auth = "bG90dG5ldDpkbXM="

# API返回的正确签名（用于对比）
expected_signature = "12720DA73DFC032C0A192EE664E3EB6EAA48677BC68F5C45C8AE341B10B20E99"

print("=" * 70)
print("测试不同的签名算法")
print("=" * 70)
print(f"运单号: {parcel_code}")
print(f"API密钥: {api_key}")
print(f"期望的签名: {expected_signature}")
print("=" * 70)
print()

signatures = {}

# 方法1: 简单SHA256(ParcelCode)
sig1 = hashlib.sha256(parcel_code.encode('utf-8')).hexdigest().upper()
signatures["SHA256(ParcelCode)"] = sig1

# 方法2: SHA256(ParcelCode + APIKey)
sig2 = hashlib.sha256((parcel_code + api_key).encode('utf-8')).hexdigest().upper()
signatures["SHA256(ParcelCode + APIKey)"] = sig2

# 方法3: SHA256(APIKey + ParcelCode)
sig3 = hashlib.sha256((api_key + parcel_code).encode('utf-8')).hexdigest().upper()
signatures["SHA256(APIKey + ParcelCode)"] = sig3

# 方法4: HMAC-SHA256(ParcelCode, key=APIKey)
sig4 = hmac.new(api_key.encode('utf-8'), parcel_code.encode('utf-8'), hashlib.sha256).hexdigest().upper()
signatures["HMAC-SHA256(ParcelCode, key=APIKey)"] = sig4

# 方法5: HMAC-SHA256(APIKey, key=ParcelCode)
sig5 = hmac.new(parcel_code.encode('utf-8'), api_key.encode('utf-8'), hashlib.sha256).hexdigest().upper()
signatures["HMAC-SHA256(APIKey, key=ParcelCode)"] = sig5

# 方法6: SHA256(APIKey)
sig6 = hashlib.sha256(api_key.encode('utf-8')).hexdigest().upper()
signatures["SHA256(APIKey)"] = sig6

# 方法7: MD5(ParcelCode)
import hashlib
sig7 = hashlib.md5(parcel_code.encode('utf-8')).hexdigest().upper()
signatures["MD5(ParcelCode)"] = sig7

# 方法8: MD5(ParcelCode + APIKey)
sig8 = hashlib.md5((parcel_code + api_key).encode('utf-8')).hexdigest().upper()
signatures["MD5(ParcelCode + APIKey)"] = sig8

# 方法9: SHA256(ParcelCode小写)
sig9 = hashlib.sha256(parcel_code.lower().encode('utf-8')).hexdigest().upper()
signatures["SHA256(ParcelCode.lower())"] = sig9

# 方法10: 尝试特殊格式组合
# 可能需要特定的分隔符或格式
sig10 = hashlib.sha256(f"{parcel_code}|{api_key}".encode('utf-8')).hexdigest().upper()
signatures["SHA256(ParcelCode|APIKey)"] = sig10

print("生成的签名对比:")
print("-" * 70)

for method, signature in signatures.items():
    match = "✓ 匹配！" if signature == expected_signature else ""
    print(f"{method:45} {match}")
    print(f"  生成: {signature}")
    if match:
        print(f"  ** 找到正确的签名方法！**")
    print()

print("=" * 70)

# 检查是否有匹配的
matched = [method for method, sig in signatures.items() if sig == expected_signature]
if matched:
    print(f"✓ 找到匹配的签名方法: {matched[0]}")
else:
    print("✗ 没有找到匹配的签名方法")
    print()
    print("可能需要:")
    print("1. 查看API文档中的签名生成规则")
    print("2. 联系API提供方获取签名算法")
    print("3. 尝试其他组合或编码方式")
