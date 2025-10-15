#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
检查运费信息 - 测试不同的API
"""

import hashlib
import requests
import json
from datetime import datetime

API_URL = "https://api-dingdong.ems.com.vn/"
API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def sign(text):
    return hashlib.sha256((text + API_KEY).encode()).hexdigest().upper()

tracking = "EP493006857VN"  # 今天第一条EP订单
sig = sign(tracking)

headers_form = {
    "Authorization": f"Basic {BASIC_AUTH}",
    "APIKey": API_KEY,
    "Content-Type": "application/x-www-form-urlencoded"
}

headers_json = {
    "Authorization": f"Basic {BASIC_AUTH}",
    "APIKey": API_KEY,
    "Content-Type": "application/json"
}

print("=" * 80)
print(f"测试运单: {tracking}")
print("=" * 80)

# API 1: Inquiry
print("\n【API 1: Inquiry】")
print(f"URL: {API_URL}api/Delivery/Inquiry")
data = {"ParcelCode": tracking, "Signature": sig}
r1 = requests.post(f"{API_URL}api/Delivery/Inquiry", headers=headers_form, data=data, timeout=10)
result1 = r1.json()
print(json.dumps(result1, indent=2, ensure_ascii=False))

if result1.get('Value'):
    v = result1['Value']
    print(f"\n运费字段:")
    print(f"  FeeShip (运费): {v.get('FeeShip', 0)}")
    print(f"  FeePPA (PPA费): {v.get('FeePPA', 0)}")
    print(f"  FeeC (C费): {v.get('FeeC', 0)}")
    print(f"  FeeCancelOrder (取消费): {v.get('FeeCancelOrder', 0)}")
    print(f"  FeeCollectLater (稍后收款费): {v.get('FeeCollectLater', 0)}")

# API 2: Journey
print("\n" + "=" * 80)
print("【API 2: DeliveryLadingJourney】")
print(f"URL: {API_URL}api/Delivery/DeliveryLadingJourney")
r2 = requests.post(f"{API_URL}api/Delivery/DeliveryLadingJourney", headers=headers_form, data={"ParcelCode": tracking}, timeout=10)
result2 = r2.json()
print(json.dumps(result2, indent=2, ensure_ascii=False))

# API 3: Gateway
print("\n" + "=" * 80)
print("【API 3: Gateway/Bussiness】")
print(f"URL: {API_URL}api/Gateway/Bussiness")
r3 = requests.post(f"{API_URL}api/Gateway/Bussiness", headers=headers_json, json={"Code": "LDP002", "Data": tracking}, timeout=10)
result3 = r3.json()
print(json.dumps(result3, indent=2, ensure_ascii=False))

print("\n" + "=" * 80)
