#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""批量查询EP系列运单号"""

import hashlib
import requests
import json
import time
from datetime import datetime

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def query_tracking(tracking_number):
    """查询单个运单号（使用最详细的API组合）"""
    
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    sig = sign(tracking_number)
    
    result = {
        "tracking": tracking_number,
        "status": "未知",
        "delivered": False,
        "info": {}
    }
    
    try:
        # 1. DeliveryLadingJourney - 最详细
        url = f"{API_URL}api/Delivery/DeliveryLadingJourney"
        r = requests.post(url, headers=headers, data={"ParcelCode": tracking_number}, timeout=10)
        journey = r.json()
        
        if journey.get("Code") == "00" and journey.get("ListValue"):
            # 已配送
            record = journey["ListValue"][0]
            result["delivered"] = True
            result["status"] = record.get("StatusName", "已配送")
            result["info"] = {
                "delivery_date": record.get("DeliveryDate"),
                "receiver": record.get("ReceiverName"),
                "address": record.get("ReceiverAddress"),
                "amount": record.get("CollectAmount"),
                "status": record.get("StatusName"),
                "payment_status": record.get("IsPaypostName"),
                "signature": record.get("DeliverySignature"),
                "route": record.get("RouteCode"),
                "reason": record.get("ReasonName") if record.get("ReasonName") else None
            }
            return result
        
        # 2. 如果没有配送记录，使用 Inquiry
        url = f"{API_URL}api/Delivery/Inquiry"
        r = requests.post(url, headers=headers, 
                         data={"ParcelCode": tracking_number, "Signature": sig}, timeout=10)
        inquiry = r.json()
        
        if inquiry.get("Code") == "00" and inquiry.get("Value"):
            value = inquiry["Value"]
            result["status"] = "未配送"
            result["delivered"] = False
            result["info"] = {
                "sender": value.get("SenderName"),
                "sender_phone": value.get("SenderPhone"),
                "receiver": value.get("ReceiverName"),
                "receiver_phone": value.get("ReceiverPhone"),
                "address": value.get("ReceiverAddress"),
                "amount": value.get("CollectAmount"),
                "weight": value.get("Weigh"),
                "status_code": value.get("Status")
            }
        else:
            result["status"] = "未找到"
            
    except Exception as e:
        result["status"] = f"错误: {e}"
    
    return result

# 运单号列表
tracking_numbers = [
    "EP493184248VN",
    "EP492966929VN",
    "EP492886647VN",
    "EP492940379VN",
    "EP492806272VN",
    "EP492892965VN",
    "EP492811462VN",
    "EP492822173VN",
    "EP492894215VN",
    "EP492983480VN",
    "EP493064245VN",
    "EP492669007VN",
    "EP492980072VN",
    "EP492983388VN",
    "EP492972544VN",
    "EP493032551VN",
    "EP493123955VN",
    "EP492968332VN",
    "EP492969488VN",
    "EP492669695VN",
    "EP493110347VN",
    "EP492895462VN",
    "EP493183769VN",
    "EP493155697VN"
]

print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║                        批量查询 EP 系列运单                                 ║
║  共 {len(tracking_numbers)} 个运单号                                                    ║
╚════════════════════════════════════════════════════════════════════════════╝
""")

results = []
delivered_count = 0
undelivered_count = 0
not_found_count = 0

for idx, tracking in enumerate(tracking_numbers, 1):
    print(f"\n[{idx}/{len(tracking_numbers)}] 查询: {tracking}")
    print("-" * 70)
    
    result = query_tracking(tracking)
    results.append(result)
    
    if result["delivered"]:
        delivered_count += 1
        print(f"✅ 已配送")
        print(f"   配送时间: {result['info'].get('delivery_date')}")
        print(f"   收件人: {result['info'].get('receiver')}")
        print(f"   金额: {result['info'].get('amount', 0):,} VND")
        if result['info'].get('signature'):
            print(f"   签名: 有")
    elif result["status"] == "未配送":
        undelivered_count += 1
        print(f"⏳ 未配送")
        print(f"   收件人: {result['info'].get('receiver')}")
        print(f"   电话: {result['info'].get('receiver_phone')}")
        print(f"   金额: {result['info'].get('amount', 0):,} VND")
    else:
        not_found_count += 1
        print(f"❌ {result['status']}")
    
    time.sleep(0.3)  # 避免请求过快

# 统计汇总
print("\n\n" + "="*80)
print("📊 查询统计")
print("="*80)
print(f"总计: {len(tracking_numbers)} 个运单")
print(f"✅ 已配送: {delivered_count} 个")
print(f"⏳ 未配送: {undelivered_count} 个")
print(f"❌ 未找到: {not_found_count} 个")

# 详细列表
print("\n" + "="*80)
print("📦 已配送列表")
print("="*80)
for r in results:
    if r["delivered"]:
        print(f"\n{r['tracking']}")
        print(f"  时间: {r['info'].get('delivery_date')}")
        print(f"  收件人: {r['info'].get('receiver')}")
        print(f"  地址: {r['info'].get('address', '')[:50]}...")
        print(f"  金额: {r['info'].get('amount', 0):,} VND")
        print(f"  状态: {r['info'].get('status')}")
        if r['info'].get('signature'):
            print(f"  签名: {r['info']['signature']}")

print("\n" + "="*80)
print("⏳ 未配送列表")
print("="*80)
for r in results:
    if not r["delivered"] and r["status"] == "未配送":
        print(f"\n{r['tracking']}")
        print(f"  收件人: {r['info'].get('receiver')}")
        print(f"  电话: {r['info'].get('receiver_phone')}")
        print(f"  地址: {r['info'].get('address', '')[:50]}...")
        print(f"  金额: {r['info'].get('amount', 0):,} VND")
        print(f"  重量: {r['info'].get('weight')} g")

# 保存结果
output_file = f"/workspace/ep_tracking_results_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
with open(output_file, "w", encoding="utf-8") as f:
    json.dump(results, f, indent=2, ensure_ascii=False)

print(f"\n✅ 详细结果已保存到: {output_file}")

