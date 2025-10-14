#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""测试真正未配送的包裹能获取什么时间信息"""

import hashlib
import requests
import json

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def test_all_apis(tracking_number):
    """测试所有API获取未配送包裹的信息"""
    
    print(f"\n{'='*80}")
    print(f"测试运单号: {tracking_number}")
    print(f"{'='*80}\n")
    
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    sig = sign(tracking_number)
    
    # ==================== API 1: Inquiry ====================
    print("="*80)
    print("📡 API 1: Inquiry - 查询包裹详细信息")
    print("="*80)
    url = f"{API_URL}api/Delivery/Inquiry"
    data = {"ParcelCode": tracking_number, "Signature": sig}
    
    try:
        r = requests.post(url, headers=headers, data=data, timeout=10)
        result = r.json()
        print(json.dumps(result, indent=2, ensure_ascii=False))
        
        # 提取时间信息
        if result.get("Value"):
            value = result["Value"]
            print("\n⏰ 提取的时间信息:")
            for key in ["IssueDate", "LoadDate", "DeliveryDate", "CreateDate", "AssignDateTime"]:
                if key in value and value[key]:
                    print(f"  • {key}: {value[key]}")
    except Exception as e:
        print(f"❌ 错误: {e}")
    
    # ==================== API 2: DeliveryLadingJourney ====================
    print("\n" + "="*80)
    print("📡 API 2: DeliveryLadingJourney - 配送历史")
    print("="*80)
    url = f"{API_URL}api/Delivery/DeliveryLadingJourney"
    data = {"ParcelCode": tracking_number}
    
    try:
        r = requests.post(url, headers=headers, data=data, timeout=10)
        result = r.json()
        print(json.dumps(result, indent=2, ensure_ascii=False))
    except Exception as e:
        print(f"❌ 错误: {e}")
    
    # ==================== API 3: CheckLadingCode ====================
    print("\n" + "="*80)
    print("📡 API 3: CheckLadingCode - 检查运单号")
    print("="*80)
    url = f"{API_URL}api/Delivery/CheckLadingCode"
    data = {"ParcelCode": tracking_number, "Signature": sig}
    
    try:
        r = requests.post(url, headers=headers, data=data, timeout=10)
        result = r.json()
        print(json.dumps(result, indent=2, ensure_ascii=False))
    except Exception as e:
        print(f"❌ 错误: {e}")
    
    # ==================== API 4: TrackTrace/Lading ====================
    print("\n" + "="*80)
    print("📡 API 4: TrackTrace/Lading - 追踪轨迹（需要签名）")
    print("="*80)
    url = f"{API_URL}api/TrackTrace/Lading"
    data = {"LadingCode": tracking_number, "Signature": sig}
    
    try:
        r = requests.post(url, headers=headers, data=data, timeout=10)
        result = r.json()
        print(json.dumps(result, indent=2, ensure_ascii=False))
        
        # 检查是否有状态列表
        if result.get("Value") and isinstance(result["Value"], dict):
            if "ListStatus" in result["Value"]:
                print("\n📋 状态历史:")
                for status in result["Value"]["ListStatus"]:
                    print(f"  • {status}")
    except Exception as e:
        print(f"❌ 错误: {e}")

# 测试真正未配送的包裹
print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                   测试未配送包裹的时间信息获取                              ║
║  目标: 查看未配送包裹能获取哪些时间（发件、揽收、入库等）                  ║
╚════════════════════════════════════════════════════════════════════════════╝
""")

# 测试的运单号
test_cases = [
    "EL136426994VN",  # 之前测试过，真正未配送
]

for tracking in test_cases:
    test_all_apis(tracking)

print("\n\n" + "="*80)
print("🎯 总结")
print("="*80)
print("""
对于真正未配送的包裹：

1. Inquiry API - 可能包含：
   - IssueDate: 发件日期
   - LoadDate: 装车日期
   - CreateDate: 创建日期
   - Status: 当前状态码

2. DeliveryLadingJourney API - 返回"未找到数据"

3. CheckLadingCode API - 仅返回"有效包裹"

4. TrackTrace/Lading API - 可能包含状态历史
""")

