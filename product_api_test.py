#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""深入测试商品信息API"""

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
║                   🔥 商品信息API完整测试报告 🔥                            ║
╚════════════════════════════════════════════════════════════════════════════╝
""")

# 测试所有运单号
trackings = [
    "EP492966929VN",  # 已配送
    "EP493183769VN",  # 已配送
    "EP492886647VN",  # 未配送
    "EL135248100VN",  # 旧的EL系列
]

print("\n🔍 使用 Gateway/Bussiness API (Code: LDP002) 获取商品信息")
print("="*80)

for tracking in trackings:
    print(f"\n运单号: {tracking}")
    print("-" * 70)
    
    url = f"{API_URL}api/Gateway/Bussiness"
    payload = {"Code": "LDP002", "Data": tracking}
    
    try:
        r = requests.post(url, headers=headers, json=payload, timeout=10)
        result = r.json()
        
        if result.get("Code") == "00":
            # 解析Data字段（是JSON字符串）
            if result.get("Data"):
                products = json.loads(result["Data"])
                
                print(f"✅ 找到 {len(products)} 个商品")
                
                for idx, product in enumerate(products, 1):
                    print(f"\n  商品 {idx}:")
                    print(f"    • 商品名称: {product.get('ProductName')}")
                    print(f"    • 数量: {product.get('Quantity')}")
                    print(f"    • 单位: {product.get('UnitName')}")
                    print(f"    • 重量: {product.get('Weight')} g")
                    print(f"    • 单价: {product.get('Price'):,} VND")
                    print(f"    • 总金额: {product.get('Amount'):,} VND")
                    print(f"    • 运单号: {product.get('LadingCode')}")
            else:
                print("⚠️ Data字段为空")
        else:
            print(f"❌ 错误: {result.get('Message')}")
            
    except Exception as e:
        print(f"❌ 异常: {e}")

# 现在创建完整的信息获取函数
print("\n\n" + "="*80)
print("🎯 完整信息提取示例")
print("="*80)

def get_complete_parcel_info(tracking):
    """获取包裹的所有信息（包括商品）"""
    
    sig = hashlib.sha256((tracking + PRIVATE_KEY).encode()).hexdigest().upper()
    
    headers_form = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    headers_json = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/json"
    }
    
    info = {"tracking": tracking}
    
    # 1. DeliveryLadingJourney - 配送详情
    r = requests.post(
        f"{API_URL}api/Delivery/DeliveryLadingJourney",
        headers=headers_form,
        data={"ParcelCode": tracking}
    )
    
    journey = r.json()
    if journey.get("ListValue"):
        record = journey["ListValue"][0]
        info["delivery"] = {
            "time": record.get("DeliveryDate"),
            "receiver": record.get("ReceiverName"),
            "address": record.get("ReceiverAddress"),
            "amount": record.get("CollectAmount"),
            "instruction": record.get("Instruction"),  # 🔥 配送指令/商品说明
            "vat_code": record.get("VATCode"),         # 🔥 服务类型
            "signature": record.get("DeliverySignature")
        }
    
    # 2. Inquiry - 基本信息
    r = requests.post(
        f"{API_URL}api/Delivery/Inquiry",
        headers=headers_form,
        data={"ParcelCode": tracking, "Signature": sig}
    )
    
    inquiry = r.json()
    if inquiry.get("Value"):
        value = inquiry["Value"]
        info["basic"] = {
            "sender_phone": value.get("SenderPhone"),
            "receiver_phone": value.get("ReceiverPhone"),
            "weight": value.get("Weigh"),
            "issue_date": value.get("IssueDate"),      # 🔥 发件日期
            "load_date": value.get("LoadDate")          # 🔥 装车日期
        }
    
    # 3. Gateway/Bussiness - 商品列表
    r = requests.post(
        f"{API_URL}api/Gateway/Bussiness",
        headers=headers_json,
        json={"Code": "LDP002", "Data": tracking}
    )
    
    gateway = r.json()
    if gateway.get("Code") == "00" and gateway.get("Data"):
        products = json.loads(gateway["Data"])
        info["products"] = products              # 🔥 商品列表
    
    return info

# 测试
print(f"\n测试运单: EP492966929VN")
print("-" * 70)
complete_info = get_complete_parcel_info("EP492966929VN")
print(json.dumps(complete_info, indent=2, ensure_ascii=False))

