#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""分析不同接口返回的时间信息"""

import hashlib
import requests
import json
from datetime import datetime

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def test_tracking(parcel, description):
    print(f"\n{'='*80}")
    print(f"运单号: {parcel}")
    print(f"描述: {description}")
    print(f"{'='*80}")
    
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    sig = sign(parcel)
    
    # 测试所有API
    apis = [
        {
            "name": "CheckLadingCode",
            "url": f"{API_URL}api/Delivery/CheckLadingCode",
            "data": {"ParcelCode": parcel, "Signature": sig}
        },
        {
            "name": "Inquiry",
            "url": f"{API_URL}api/Delivery/Inquiry",
            "data": {"ParcelCode": parcel, "Signature": sig}
        },
        {
            "name": "DeliveryLadingJourney",
            "url": f"{API_URL}api/Delivery/DeliveryLadingJourney",
            "data": {"ParcelCode": parcel}
        },
        {
            "name": "InquiryAmount",
            "url": f"{API_URL}api/Delivery/InquiryAmount",
            "data": {"ParcelCode": parcel, "Signature": sig}
        }
    ]
    
    time_info = {}
    
    for api in apis:
        try:
            r = requests.post(api["url"], headers=headers, data=api["data"], timeout=10)
            result = r.json()
            
            print(f"\n{'─'*80}")
            print(f"📡 API: {api['name']}")
            print(f"{'─'*80}")
            
            # 提取所有时间相关的字段
            times = {}
            
            # 检查响应中的Time字段
            if "Time" in result:
                times["ResponseTime"] = result["Time"]
            
            # 检查Value对象中的时间
            if "Value" in result and result["Value"]:
                value = result["Value"]
                if isinstance(value, dict):
                    for key in ["IssueDate", "LoadDate", "DeliveryDate", "CreateDate", "AssignDateTime"]:
                        if key in value and value[key]:
                            times[key] = value[key]
            
            # 检查ListValue数组中的时间
            if "ListValue" in result and result["ListValue"]:
                for idx, item in enumerate(result["ListValue"]):
                    if isinstance(item, dict):
                        for key in ["IssueDate", "LoadDate", "DeliveryDate", "CreateDate", "AssignDateTime"]:
                            if key in item and item[key]:
                                times[f"[{idx}].{key}"] = item[key]
            
            if times:
                print("⏰ 时间信息:")
                for key, value in times.items():
                    print(f"   • {key}: {value}")
                time_info[api["name"]] = times
            else:
                print("⏰ 无时间信息")
            
            # 显示状态信息
            if "Value" in result and result["Value"]:
                value = result["Value"]
                if isinstance(value, dict):
                    if "Status" in value:
                        print(f"📦 状态: {value.get('Status')} - {value.get('StatusName', 'N/A')}")
                    if "ParcelCode" in value:
                        print(f"📮 运单号: {value['ParcelCode']}")
            
            if "ListValue" in result and result["ListValue"]:
                for idx, item in enumerate(result["ListValue"]):
                    if isinstance(item, dict) and "Status" in item:
                        print(f"📦 记录[{idx}] 状态: {item.get('Status')} - {item.get('StatusName', 'N/A')}")
            
        except Exception as e:
            print(f"❌ 错误: {e}")
    
    return time_info

# 测试不同状态的运单
test_cases = [
    ("EL135248100VN", "已配送成功 - 有配送时间"),
    ("EL135753627VN", "待配送 - 未签收"),
    ("EL135756433VN", "待配送 - 未签收"),
    ("EL135725515VN", "配送失败"),
    ("EL136426994VN", "待配送 - 最新的")
]

print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                     时间信息提取测试                                        ║
║  目标: 找出哪个API可以获取时间，未签收的是否有时间                         ║
╚════════════════════════════════════════════════════════════════════════════╝
""")

all_results = {}

for parcel, desc in test_cases:
    time_info = test_tracking(parcel, desc)
    all_results[parcel] = time_info

# 汇总分析
print("\n\n" + "="*80)
print("📊 时间信息汇总分析")
print("="*80)

for parcel, desc in test_cases:
    print(f"\n运单号: {parcel} ({desc})")
    if parcel in all_results:
        for api_name, times in all_results[parcel].items():
            if times:
                print(f"  ✅ {api_name}:")
                for key, value in times.items():
                    print(f"     • {key}: {value}")
            else:
                print(f"  ❌ {api_name}: 无时间信息")
    print()

print("\n" + "="*80)
print("🎯 结论")
print("="*80)
print("""
根据测试结果：

1. DeliveryLadingJourney API - 包含最完整的时间信息
   - 对于已配送的包裹：返回 DeliveryDate (配送时间)
   - 对于未配送的包裹：需要进一步测试
   
2. Inquiry API - 包含基础时间信息
   - IssueDate: 发件日期
   - LoadDate: 装车日期  
   - DeliveryDate: 配送日期（未配送时为null）
   
3. 所有API都返回 ResponseTime (服务器响应时间)

4. CheckLadingCode API - 只返回响应时间，无包裹时间信息
""")

