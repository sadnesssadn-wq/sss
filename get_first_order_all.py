#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
并行扫描所有系列，找到当天真正的第一条订单
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
                    return tracking
    except:
        pass
    return None

# 并行扫描所有系列的早期号段
RANGES = [
    ('EB', 102880000, 102895000, 1),
    ('EC', 143587000, 143595000, 1),
    ('ED', 121962000, 121968000, 1),
    ('EF', 43571000, 43580000, 1),
    ('EG', 40816000, 40845000, 1),
    ('EJ', 701368000, 701375000, 2),
    ('EK', 42151000, 42158000, 1),
    ('EL', 135247000, 135255000, 2),
    ('EP', 493011000, 493025000, 1),
]

found = []

with ThreadPoolExecutor(max_workers=150) as executor:
    futures = []
    for prefix, start, end, step in RANGES:
        for num in range(start, end, step):
            tracking = f"{prefix}{num:09d}VN"
            futures.append(executor.submit(check_order, tracking))
    
    for future in as_completed(futures):
        result = future.result()
        if result:
            found.append(result)

if found:
    # 排序找到最小的
    found.sort()
    print(found[0])
else:
    print("未找到")
