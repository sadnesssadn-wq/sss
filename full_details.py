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

def get_journey(parcel):
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    print(f"\n{'='*80}")
    print(f"运单号: {parcel}")
    print(f"{'='*80}")
    
    url = f"{API_URL}api/Delivery/DeliveryLadingJourney"
    r = requests.post(url, headers=headers, data={"ParcelCode": parcel}, timeout=10)
    result = r.json()
    
    print(json.dumps(result, indent=2, ensure_ascii=False))
    
    return result

# 测试"待配送"但实际有配送记录的
parcels = [
    "EL135753627VN",  # CheckLadingCode说"有效"，但Journey有配送时间
    "EL135756433VN",  # 同上
    "EL136426994VN",  # 最新的，看看有没有数据
]

for p in parcels:
    get_journey(p)
    print("\n")

