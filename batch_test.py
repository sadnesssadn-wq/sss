#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""批量测试运单号"""

import hashlib
import requests
import json
import time

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def sign(text):
    """生成签名"""
    full = text + PRIVATE_KEY
    return hashlib.sha256(full.encode()).hexdigest().upper()

def query_parcel(parcel_code):
    """查询运单"""
    print(f"\n{'='*70}")
    print(f"查询运单: {parcel_code}")
    print(f"{'='*70}")
    
    sig = sign(parcel_code)
    
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded",
        "User-Agent": "DingDong/3.3.2 (Android)"
    }
    
    # 尝试多个API
    apis = [
        ("CheckLadingCode", {
            "ParcelCode": parcel_code,
            "Signature": sig
        }),
        ("Inquiry", {
            "ParcelCode": parcel_code,
            "Signature": sig
        }),
        ("DeliveryLadingJourney", {
            "ParcelCode": parcel_code
        }),
        ("InquiryAmount", {
            "ParcelCode": parcel_code,
            "Signature": sig
        })
    ]
    
    results = {}
    
    for api_name, data in apis:
        if "Check" in api_name:
            url = f"{API_URL}api/Delivery/{api_name}"
        elif "Inquiry" in api_name and "Amount" in api_name:
            url = f"{API_URL}api/Delivery/{api_name}"
        elif "Inquiry" in api_name:
            url = f"{API_URL}api/Delivery/{api_name}"
        else:
            url = f"{API_URL}api/Delivery/{api_name}"
        
        try:
            print(f"\n尝试 API: {api_name}")
            response = requests.post(url, headers=headers, data=data, timeout=10)
            
            if response.status_code == 200:
                result = response.json()
                results[api_name] = result
                
                print(f"✓ 状态码: {response.status_code}")
                print(f"✓ 错误码: {result.get('ErrorCode', 'N/A')}")
                print(f"✓ 消息: {result.get('Message', 'N/A')}")
                
                # 显示关键信息
                if result.get('ErrorCode') == '00':
                    print(f"✓ 成功获取数据！")
                    if 'Data' in result:
                        data_obj = result['Data']
                        if isinstance(data_obj, dict):
                            print(f"\n  📦 包裹信息:")
                            for key, value in data_obj.items():
                                if value and key not in ['Signature']:
                                    print(f"    • {key}: {value}")
                        elif isinstance(data_obj, list):
                            print(f"\n  📦 找到 {len(data_obj)} 条记录")
                            for idx, item in enumerate(data_obj[:3], 1):
                                print(f"\n  记录 {idx}:")
                                if isinstance(item, dict):
                                    for key, value in item.items():
                                        if value:
                                            print(f"    • {key}: {value}")
                else:
                    print(f"✗ 查询失败: {result.get('Message', '未知错误')}")
            else:
                print(f"✗ HTTP错误: {response.status_code}")
                print(f"  响应: {response.text[:200]}")
        
        except Exception as e:
            print(f"✗ 请求异常: {str(e)}")
        
        time.sleep(0.5)  # 避免请求过快
    
    return results

# 测试运单号列表
parcels = [
    "EL135248100VN",
    "EL135252002VN",
    "EL135725515VN",
    "EL135726003VN",
    "EL135749361VN",
    "EL135753627VN",
    "EL135756433VN",
    "EL136426994VN"
]

print("""
╔════════════════════════════════════════════════════════════════════╗
║              批量测试越南邮政运单号                                ║
║  测试 API: CheckLadingCode, Inquiry, DeliveryLadingJourney       ║
╚════════════════════════════════════════════════════════════════════╝
""")

print(f"共 {len(parcels)} 个运单号待测试\n")

all_results = {}

for parcel in parcels:
    results = query_parcel(parcel)
    all_results[parcel] = results
    print("\n" + "-"*70)
    time.sleep(1)  # 请求间隔

print("\n" + "="*70)
print("测试汇总")
print("="*70)

for parcel, results in all_results.items():
    print(f"\n运单号: {parcel}")
    for api_name, result in results.items():
        if result and result.get('ErrorCode') == '00':
            print(f"  ✓ {api_name}: 成功")
        elif result:
            print(f"  ✗ {api_name}: {result.get('Message', '失败')}")
        else:
            print(f"  ✗ {api_name}: 请求失败")

print("\n" + "="*70)
print("测试完成！")
print("="*70)
