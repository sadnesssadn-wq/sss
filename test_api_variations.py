#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
测试不同的签名方式
"""

import requests

base_url = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
headers = {
    "Authorization": "Basic bG90dG5ldDpkbXM=",
    "APIKey": "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A",
    "Content-Type": "application/x-www-form-urlencoded"
}
parcel_code = "EP493018285VN"

print("=" * 70)
print("测试不同的 Signature 参数")
print("=" * 70)
print()

# 测试1: 空签名
print("测试1: Signature 为空字符串")
print("-" * 70)
data1 = {
    "ParcelCode": parcel_code,
    "Signature": ""
}
try:
    response = requests.post(base_url, headers=headers, data=data1, timeout=30)
    print(f"状态码: {response.status_code}")
    result = response.json()
    print(f"响应: {result}")
    if result.get('Code') != '96':
        print("✓ 成功！这个方法可行！")
    print()
except Exception as e:
    print(f"错误: {e}\n")

# 测试2: 使用 APIKey 作为签名
print("测试2: Signature = APIKey")
print("-" * 70)
data2 = {
    "ParcelCode": parcel_code,
    "Signature": "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
}
try:
    response = requests.post(base_url, headers=headers, data=data2, timeout=30)
    print(f"状态码: {response.status_code}")
    result = response.json()
    print(f"响应: {result}")
    if result.get('Code') != '96':
        print("✓ 成功！这个方法可行！")
    print()
except Exception as e:
    print(f"错误: {e}\n")

# 测试3: 不传 Signature 参数
print("测试3: 不传 Signature 参数")
print("-" * 70)
data3 = {
    "ParcelCode": parcel_code
}
try:
    response = requests.post(base_url, headers=headers, data=data3, timeout=30)
    print(f"状态码: {response.status_code}")
    result = response.json()
    print(f"响应: {result}")
    if result.get('Code') != '96':
        print("✓ 成功！这个方法可行！")
    print()
except Exception as e:
    print(f"错误: {e}\n")

# 测试4: 使用 API 返回的签名（看看是否固定）
print("测试4: Signature = API返回的签名")
print("-" * 70)
data4 = {
    "ParcelCode": parcel_code,
    "Signature": "12720DA73DFC032C0A192EE664E3EB6EAA48677BC68F5C45C8AE341B10B20E99"
}
try:
    response = requests.post(base_url, headers=headers, data=data4, timeout=30)
    print(f"状态码: {response.status_code}")
    result = response.json()
    print(f"响应: {result}")
    if result.get('Code') != '96':
        print("✓ 成功！这个方法可行！")
    print()
except Exception as e:
    print(f"错误: {e}\n")

print("=" * 70)
