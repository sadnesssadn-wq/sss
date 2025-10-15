#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import requests

base_url = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
api_key = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"

headers = {
    "Authorization": "Basic bG90dG5ldDpkbXM=",
    "APIKey": api_key,
    "Content-Type": "application/x-www-form-urlencoded"
}

parcel_code = "EP493018285VN"

# 直接用 APIKey 作为 Signature
data = {
    "ParcelCode": parcel_code,
    "Signature": api_key  # 直接使用 APIKey
}

print("使用 APIKey 作为 Signature")
print(f"ParcelCode: {parcel_code}")
print(f"Signature: {api_key}")
print("-" * 70)

response = requests.post(base_url, headers=headers, data=data, timeout=30)
print(f"状态码: {response.status_code}")

import json
result = response.json()
print(json.dumps(result, indent=2, ensure_ascii=False))

if result.get('Code') != '96':
    print("\n✓ 成功！")
    if 'IssueDate' in result:
        print(f"IssueDate: {result['IssueDate']}")
    if 'LoadDate' in result:
        print(f"LoadDate: {result['LoadDate']}")
