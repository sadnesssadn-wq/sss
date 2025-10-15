#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
找到 EP 系列今天第一条有商品价格（Price > 0）的订单
"""

import hashlib
import requests
import json
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed

API_URL = "https://api-dingdong.ems.com.vn/"
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
        
        # 先检查是否是今天的订单
        data = {"ParcelCode": tracking, "Signature": sig}
        r1 = requests.post(f"{API_URL}api/Delivery/Inquiry", headers=headers_form, data=data, timeout=10)
        
        if r1.status_code == 200:
            result1 = r1.json()
            if result1.get('Code') == '00' and result1.get('Value'):
                v = result1['Value']
                if is_today(v.get('IssueDate')) or is_today(v.get('LoadDate')):
                    # 是今天的订单，检查商品价格
                    r2 = requests.post(f"{API_URL}api/Gateway/Bussiness", headers=headers_json, json={"Code": "LDP002", "Data": tracking}, timeout=10)
                    
                    if r2.status_code == 200:
                        result2 = r2.json()
                        if result2.get('Code') == '00' and result2.get('Data'):
                            try:
                                products = json.loads(result2['Data'])
                                if products:
                                    for product in products:
                                        price = product.get('Price', 0)
                                        if price > 0:
                                            return tracking
                            except:
                                pass
    except:
        pass
    return None

found = []

# 扩大扫描范围
ranges = [
    (493000000, 493050000, 1),
    (493050000, 493100000, 2),
    (493100000, 493200000, 5),
    (493200000, 493300000, 10),
]

for start, end, step in ranges:
    with ThreadPoolExecutor(max_workers=80) as executor:
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
