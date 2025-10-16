#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
逆向分析EMS API - 找出所有API端点和正确的数据接口
"""
import requests
import json
import hashlib
import re
from bs4 import BeautifulSoup

# EMS相关URL
EMS_WEBSITE = "https://ems.com.vn/"
API_BASE = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

# 测试运单号
TEST_TRACKING = "EP492999365VN"

print("="*80)
print("🔍 EMS API 逆向分析")
print("="*80)

# 步骤1：尝试访问EMS网站，查看前端调用
print("\n📡 步骤1：探测可能的API端点...")

# 常见API端点列表
possible_endpoints = [
    "api/Delivery/Inquiry",
    "api/Delivery/Track",
    "api/Delivery/GetInfo", 
    "api/Delivery/Detail",
    "api/Delivery/GetDetail",
    "api/Delivery/Query",
    "api/Delivery/Search",
    "api/Delivery/GetParcelInfo",
    "api/Parcel/Inquiry",
    "api/Parcel/GetInfo",
    "api/Order/Inquiry",
    "api/Order/GetInfo",
    "api/Tracking/Get",
    "api/Tracking/Query",
]

sig = sign(TEST_TRACKING)

headers_form = {
    "Authorization": f"Basic {BASIC_AUTH}",
    "APIKey": PRIVATE_KEY,
    "Content-Type": "application/x-www-form-urlencoded",
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"
}

headers_json = {
    "Authorization": f"Basic {BASIC_AUTH}",
    "APIKey": PRIVATE_KEY,
    "Content-Type": "application/json",
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"
}

valid_apis = []

for endpoint in possible_endpoints:
    url = f"{API_BASE}{endpoint}"
    
    try:
        # 尝试form格式
        r = requests.post(
            url,
            headers=headers_form,
            data={"ParcelCode": TEST_TRACKING, "Signature": sig},
            timeout=5
        )
        
        if r.status_code == 200:
            try:
                data = r.json()
                if data.get('Code') == '00':
                    print(f"✅ {endpoint}")
                    valid_apis.append({
                        'endpoint': endpoint,
                        'url': url,
                        'method': 'POST',
                        'format': 'form',
                        'response': data
                    })
                    
                    # 保存响应
                    with open(f"api_response_{endpoint.replace('/', '_')}.json", 'w', encoding='utf-8') as f:
                        json.dump(data, f, ensure_ascii=False, indent=2)
                        
                elif data.get('Code'):
                    print(f"⚠️  {endpoint} - Code: {data.get('Code')}")
            except:
                pass
        else:
            # 尝试JSON格式
            r2 = requests.post(
                url,
                headers=headers_json,
                json={"ParcelCode": TEST_TRACKING, "Signature": sig},
                timeout=5
            )
            if r2.status_code == 200:
                try:
                    data = r2.json()
                    if data.get('Code') == '00':
                        print(f"✅ {endpoint} (JSON)")
                        valid_apis.append({
                            'endpoint': endpoint,
                            'url': url,
                            'method': 'POST',
                            'format': 'json',
                            'response': data
                        })
                except:
                    pass
    except:
        pass

print(f"\n找到 {len(valid_apis)} 个有效API")

# 步骤2：对比不同API返回的数据
print("\n📊 步骤2：对比API返回数据...")

for api in valid_apis:
    print(f"\n{'='*80}")
    print(f"API: {api['endpoint']}")
    print(f"格式: {api['format']}")
    
    if api['response'].get('Value'):
        v = api['response']['Value']
        
        print(f"\n发件人信息:")
        for key in ['SenderName', 'SenderPhone', 'SenderAddress', 'Sender', 'ConsignerName', 'ConsignerPhone', 'ShipperName', 'ShipperPhone']:
            if key in v:
                print(f"  {key}: {v[key]}")
        
        print(f"\n收件人信息:")
        for key in ['ReceiverName', 'ReceiverPhone', 'ReceiverAddress', 'Receiver', 'ConsigneeName', 'ConsigneePhone']:
            if key in v:
                print(f"  {key}: {v[key]}")
        
        print(f"\n所有字段: {list(v.keys())}")

# 步骤3：检查是否有组合API
print(f"\n\n📡 步骤3：检查多API组合调用...")
print("（某些系统需要多个API配合获取完整信息）")

# 保存分析结果
with open('reverse_analysis.json', 'w', encoding='utf-8') as f:
    json.dump({
        'test_tracking': TEST_TRACKING,
        'valid_apis': valid_apis,
        'total_found': len(valid_apis)
    }, f, ensure_ascii=False, indent=2)

print(f"\n✅ 分析完成！结果已保存到 reverse_analysis.json")
print("="*80)
