#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
DingDong API调用示例 - 3个API完整调用方式
"""
import requests
import hashlib
import json

# ==================== 配置 ====================
API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

# ==================== 签名函数 ====================
def sign(text):
    """生成API签名"""
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

# ==================== API 1: 查询订单信息（包含发件日期） ====================
def api_delivery_inquiry(tracking_number):
    """
    API 1: 查询订单详细信息
    返回字段包括：
    - IssueDate: 发件日期 ✅
    - LoadDate: 装载日期 ✅
    - DeliveryDate: 配送日期
    - 发件人、收件人信息
    - COD金额等
    """
    sig = sign(tracking_number)
    
    url = f"{API_URL}api/Delivery/Inquiry"
    
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    data = {
        "ParcelCode": tracking_number,
        "Signature": sig
    }
    
    response = requests.post(url, headers=headers, data=data, timeout=10)
    
    return response.json()

# ==================== API 2: 查询配送记录（有配送时间） ====================
def api_delivery_journey(tracking_number):
    """
    API 2: 查询配送轨迹记录
    返回配送过程中的所有记录，每条记录包括：
    - RecDate: 记录日期时间 ✅
    - Status: 状态
    - Note: 备注
    等等
    """
    url = f"{API_URL}api/Delivery/DeliveryLadingJourney"
    
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    data = {
        "ParcelCode": tracking_number
    }
    
    response = requests.post(url, headers=headers, data=data, timeout=10)
    
    return response.json()

# ==================== API 3: 查询商品信息 ====================
def api_gateway_business(tracking_number):
    """
    API 3: 查询商品详细信息
    返回商品名称、数量等
    """
    url = f"{API_URL}api/Gateway/Bussiness"
    
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/json"
    }
    
    json_data = {
        "Code": "LDP002",
        "Data": tracking_number
    }
    
    response = requests.post(url, headers=headers, json=json_data, timeout=10)
    
    return response.json()

# ==================== 测试示例 ====================
if __name__ == "__main__":
    # 测试运单号
    test_tracking = "EP493018285VN"
    
    print("="*80)
    print(f"测试运单号: {test_tracking}")
    print("="*80)
    
    # 调用API 1
    print("\n【API 1: 订单查询 - 包含发件日期】")
    print("-"*80)
    result1 = api_delivery_inquiry(test_tracking)
    print(json.dumps(result1, ensure_ascii=False, indent=2))
    
    if result1.get('Code') == '00' and result1.get('Value'):
        v = result1['Value']
        print("\n📅 关键日期字段:")
        print(f"  IssueDate (发件日期): {v.get('IssueDate', '空')}")
        print(f"  LoadDate (装载日期): {v.get('LoadDate', '空')}")
        print(f"  DeliveryDate (配送日期): {v.get('DeliveryDate', '空')}")
    
    # 调用API 2
    print("\n" + "="*80)
    print("【API 2: 配送记录查询 - 包含配送时间】")
    print("-"*80)
    result2 = api_delivery_journey(test_tracking)
    print(json.dumps(result2, ensure_ascii=False, indent=2))
    
    if result2.get('Code') == '00' and result2.get('ListValue'):
        print("\n📦 配送记录:")
        for record in result2['ListValue']:
            print(f"  {record.get('RecDate', '')}: {record.get('Status', '')} - {record.get('Note', '')}")
    
    # 调用API 3
    print("\n" + "="*80)
    print("【API 3: 商品信息查询】")
    print("-"*80)
    result3 = api_gateway_business(test_tracking)
    print(json.dumps(result3, ensure_ascii=False, indent=2))
    
    print("\n" + "="*80)
    print("✅ 完成！")
    print("="*80)
