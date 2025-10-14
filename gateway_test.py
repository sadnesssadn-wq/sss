#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""测试 Gateway/Bussiness API - 可能返回商品信息"""

import hashlib
import requests
import json

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

headers = {
    "Authorization": f"Basic {BASIC_AUTH}",
    "APIKey": PRIVATE_KEY,
    "Content-Type": "application/json"
}

print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                   测试 Gateway/Bussiness API                                ║
║  这个API可能返回商品列表和详细描述                                         ║
╚════════════════════════════════════════════════════════════════════════════╝
""")

# 尝试不同的Code参数
test_codes = [
    ("LDP002", "EP492966929VN", "获取配送商品"),
    ("DLV_INQUIRY", "EP492966929VN", "配送查询"),
    ("PARCEL_INFO", "EP492966929VN", "包裹信息"),
]

for code, tracking, desc in test_codes:
    print(f"\n{'='*80}")
    print(f"测试: {desc} (Code: {code})")
    print(f"运单号: {tracking}")
    print(f"{'='*80}")
    
    url = f"{API_URL}api/Gateway/Bussiness"
    
    payload = {
        "Code": code,
        "Data": tracking
    }
    
    try:
        r = requests.post(url, headers=headers, json=payload, timeout=10)
        result = r.json()
        
        print(f"状态码: {r.status_code}")
        print(f"响应:")
        print(json.dumps(result, indent=2, ensure_ascii=False))
        
    except Exception as e:
        print(f"❌ 错误: {e}")

