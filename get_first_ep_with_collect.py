#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
找到 EP 系列今天第一条有代收金额的订单
"""

import hashlib
import requests
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed

API_URL = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="
TODAY = datetime.now().strftime("%d/%m/%Y")

def sign(text):
    return hashlib.sha256((text + API_KEY).encode()).hexdigest().upper()

def is_today(date_str):
    return date_str and TODAY in str(date_str)

def check_order(tracking):
    try:
        sig = sign(tracking)
        headers = {
            "Authorization": f"Basic {BASIC_AUTH}",
            "APIKey": API_KEY,
            "Content-Type": "application/x-www-form-urlencoded"
        }
        data = {"ParcelCode": tracking, "Signature": sig}
        r = requests.post(API_URL, headers=headers, data=data, timeout=10)
        
        if r.status_code == 200:
            result = r.json()
            if result.get('Code') == '00' and result.get('Value'):
                v = result['Value']
                if is_today(v.get('IssueDate')) or is_today(v.get('LoadDate')):
                    collect_amount = v.get('CollectAmount', 0)
                    if collect_amount > 0:
                        return tracking
    except:
        pass
    return None

found = []

ranges = [
    (493000000, 493030000, 1),
    (493030000, 493060000, 2),
]

for start, end, step in ranges:
    with ThreadPoolExecutor(max_workers=100) as executor:
        futures = []
        for num in range(start, end, step):
            tracking = f"EP{num:09d}VN"
            futures.append(executor.submit(check_order, tracking))
        
        for future in as_completed(futures):
            result = future.result()
            if result:
                found.append(result)
    
    if found:
        break

if found:
    found.sort()
    print(found[0])
else:
    print("未找到")
