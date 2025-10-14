#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""深入分析商品信息和描述字段"""

import hashlib
import requests
import json

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def deep_analyze(tracking):
    """深入分析单个运单的所有字段"""
    
    print(f"\n{'='*80}")
    print(f"深入分析: {tracking}")
    print(f"{'='*80}\n")
    
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    sig = sign(tracking)
    
    # 测试所有API，显示完整原始数据
    apis = [
        ("Inquiry", f"{API_URL}api/Delivery/Inquiry", 
         {"ParcelCode": tracking, "Signature": sig}),
        ("DeliveryLadingJourney", f"{API_URL}api/Delivery/DeliveryLadingJourney",
         {"ParcelCode": tracking}),
        ("TrackTrace", f"{API_URL}api/TrackTrace/Lading",
         {"LadingCode": tracking, "Signature": sig}),
    ]
    
    for api_name, url, data in apis:
        print("="*80)
        print(f"📡 {api_name} API - 完整原始数据")
        print("="*80)
        
        try:
            r = requests.post(url, headers=headers, data=data, timeout=10)
            result = r.json()
            
            # 显示完整JSON
            print(json.dumps(result, indent=2, ensure_ascii=False))
            
            # 特别标注可能包含商品信息的字段
            print("\n🔍 商品/描述相关字段:")
            
            def find_product_fields(obj, prefix=""):
                """查找可能包含商品信息的字段"""
                found = []
                
                if isinstance(obj, dict):
                    for key, value in obj.items():
                        if key in ["Products", "Description", "Instruction", "Note", 
                                  "Content", "Items", "Goods", "Info", "Service",
                                  "ServiceName", "VATCode", "ReferenceCode"]:
                            if value:
                                found.append(f"{prefix}{key}: {value}")
                        
                        if isinstance(value, (dict, list)):
                            found.extend(find_product_fields(value, f"{prefix}{key}."))
                
                elif isinstance(obj, list):
                    for idx, item in enumerate(obj):
                        found.extend(find_product_fields(item, f"{prefix}[{idx}]."))
                
                return found
            
            product_fields = find_product_fields(result)
            if product_fields:
                for field in product_fields:
                    print(f"  • {field}")
            else:
                print("  ❌ 未发现商品/描述字段")
                
        except Exception as e:
            print(f"❌ 错误: {e}")
        
        print("\n")

# 测试多个不同的运单号
test_trackings = [
    "EP492966929VN",  # 已配送
    "EP492886647VN",  # 未配送
    "EL135248100VN",  # 之前的EL系列
]

print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                    深入挖掘商品信息和描述字段                               ║
║  目标: 查找 Products, Description, Instruction, Note 等字段                ║
╚════════════════════════════════════════════════════════════════════════════╝
""")

for tracking in test_trackings:
    deep_analyze(tracking)

