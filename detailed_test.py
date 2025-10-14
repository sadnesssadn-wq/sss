#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import hashlib
import requests
import json

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

# 测试第一个运单号，显示完整JSON
parcel = "EL135248100VN"
sig = sign(parcel)

headers = {
    "Authorization": f"Basic {BASIC_AUTH}",
    "APIKey": PRIVATE_KEY,
    "Content-Type": "application/x-www-form-urlencoded"
}

print(f"\n{'='*70}")
print(f"详细测试运单: {parcel}")
print(f"{'='*70}\n")

# API 1: CheckLadingCode
print("=" * 70)
print("API 1: CheckLadingCode - 检查运单号")
print("=" * 70)
url = f"{API_URL}api/Delivery/CheckLadingCode"
data = {"ParcelCode": parcel, "Signature": sig}
r = requests.post(url, headers=headers, data=data, timeout=10)
result = r.json()
print(json.dumps(result, indent=2, ensure_ascii=False))

# API 2: Inquiry  
print("\n" + "=" * 70)
print("API 2: Inquiry - 查询包裹详情")
print("=" * 70)
url = f"{API_URL}api/Delivery/Inquiry"
data = {"ParcelCode": parcel, "Signature": sig}
r = requests.post(url, headers=headers, data=data, timeout=10)
result = r.json()
print(json.dumps(result, indent=2, ensure_ascii=False))

# API 3: DeliveryLadingJourney
print("\n" + "=" * 70)
print("API 3: DeliveryLadingJourney - 配送历史")
print("=" * 70)
url = f"{API_URL}api/Delivery/DeliveryLadingJourney"
data = {"ParcelCode": parcel}
r = requests.post(url, headers=headers, data=data, timeout=10)
result = r.json()
print(json.dumps(result, indent=2, ensure_ascii=False))

# 测试一个已配送成功的
print("\n\n" + "="*70)
print("测试已配送成功的运单: EL135252002VN")
print("="*70 + "\n")

parcel2 = "EL135252002VN"
sig2 = sign(parcel2)

print("=" * 70)
print("CheckLadingCode - EL135252002VN")
print("=" * 70)
url = f"{API_URL}api/Delivery/CheckLadingCode"
data = {"ParcelCode": parcel2, "Signature": sig2}
r = requests.post(url, headers=headers, data=data, timeout=10)
result = r.json()
print(json.dumps(result, indent=2, ensure_ascii=False))

