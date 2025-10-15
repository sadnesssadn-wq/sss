#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
快速找到当天的第一条订单（运单号最小）
"""

import hashlib
import requests
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import sys

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

def scan_until_found(prefix, start, end, step=1):
    """扫描直到找到第一条，立即返回"""
    with ThreadPoolExecutor(max_workers=100) as executor:
        futures = {}
        for num in range(start, end, step):
            tracking = f"{prefix}{num:09d}VN"
            future = executor.submit(check_order, tracking)
            futures[future] = tracking
        
        for future in as_completed(futures):
            result = future.result()
            if result:
                # 找到了！取消其他任务
                for f in futures:
                    f.cancel()
                return result
    return None

# 从小到大扫描各系列，找到第一条就停止
RANGES = [
    ('EB', 102880000, 102900000, 1),
    ('EC', 143580000, 143600000, 1),
    ('ED', 121960000, 121970000, 1),
    ('EF', 43570000, 43600000, 1),
    ('EG', 40810000, 40850000, 1),
    ('EJ', 701360000, 701370000, 1),
    ('EK', 42150000, 42160000, 1),
    ('EL', 135240000, 135260000, 1),
    ('EP', 493010000, 493030000, 1),
]

for prefix, start, end, step in RANGES:
    result = scan_until_found(prefix, start, end, step)
    if result:
        print(result)
        sys.exit(0)

print("未找到")
