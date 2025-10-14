#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""发现！找到了商品描述字段！"""

import hashlib
import requests
import json

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

headers = {
    "Authorization": f"Basic {BASIC_AUTH}",
    "APIKey": PRIVATE_KEY,
    "Content-Type": "application/x-www-form-urlencoded"
}

print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                        🔥 商品信息字段发现报告 🔥                           ║
╚════════════════════════════════════════════════════════════════════════════╝
""")

# 已配送的包裹 - EP492966929VN
tracking = "EP492966929VN"
print(f"\n{'='*80}")
print(f"运单号: {tracking} (已配送)")
print(f"{'='*80}\n")

url = f"{API_URL}api/Delivery/DeliveryLadingJourney"
r = requests.post(url, headers=headers, data={"ParcelCode": tracking}, timeout=10)
result = r.json()

if result.get("ListValue"):
    record = result["ListValue"][0]
    
    print("🎯 发现的描述字段:\n")
    
    # Instruction - 配送指令/商品描述
    if record.get("Instruction"):
        print("📦 Instruction (配送指令/商品说明):")
        print(f"   {record['Instruction']}")
        print()
    
    # VATCode - 服务类型
    if record.get("VATCode"):
        print("🏷️ VATCode (服务类型):")
        print(f"   {record['VATCode']}")
        print()
    
    # Note - 备注
    if record.get("Note"):
        print("📝 Note (备注):")
        print(f"   {record['Note']}")
        print()
    
    # Service/ServiceName
    if record.get("Service"):
        print("📮 Service (服务):")
        print(f"   {record['Service']}")
        print()

# 测试其他已配送的包裹
print("\n" + "="*80)
print("测试第二个已配送包裹")
print("="*80 + "\n")

tracking2 = "EP493183769VN"
url = f"{API_URL}api/Delivery/DeliveryLadingJourney"
r = requests.post(url, headers=headers, data={"ParcelCode": tracking2}, timeout=10)
result = r.json()

if result.get("ListValue"):
    record = result["ListValue"][0]
    print(f"运单号: {tracking2}")
    print(f"Instruction: {record.get('Instruction', '无')}")
    print(f"VATCode: {record.get('VATCode', '无')}")
    print(f"Note: {record.get('Note', '无')}")

# 批量测试所有已配送的EP包裹
print("\n\n" + "="*80)
print("🔍 批量提取所有包裹的 Instruction 字段")
print("="*80)

# 之前查出的所有EP运单
all_ep_trackings = [
    "EP493184248VN", "EP492966929VN", "EP492886647VN", "EP492940379VN",
    "EP492806272VN", "EP492894215VN", "EP492983480VN", "EP492980072VN",
    "EP492983388VN", "EP492968332VN", "EP492969488VN", "EP492895462VN",
    "EP493183769VN"
]

found_instructions = []

for tracking in all_ep_trackings:
    try:
        url = f"{API_URL}api/Delivery/DeliveryLadingJourney"
        r = requests.post(url, headers=headers, data={"ParcelCode": tracking}, timeout=10)
        result = r.json()
        
        if result.get("ListValue"):
            record = result["ListValue"][0]
            instruction = record.get("Instruction", "")
            vat_code = record.get("VATCode", "")
            
            if instruction or vat_code:
                found_instructions.append({
                    "tracking": tracking,
                    "instruction": instruction,
                    "vat_code": vat_code,
                    "receiver": record.get("ReceiverName"),
                    "amount": record.get("CollectAmount")
                })
                
                print(f"\n✅ {tracking}")
                if instruction:
                    print(f"   📦 配送指令: {instruction}")
                if vat_code:
                    print(f"   🏷️ 服务类型: {vat_code}")
        
        time.sleep(0.3)
    except Exception as e:
        pass

print("\n\n" + "="*80)
print("📊 统计结果")
print("="*80)
print(f"找到 Instruction/VATCode 的包裹: {len(found_instructions)}/{len(all_ep_trackings)}")

if found_instructions:
    print("\n详细列表:")
    for item in found_instructions:
        print(f"\n{item['tracking']}")
        print(f"  收件人: {item['receiver']}")
        print(f"  金额: {item['amount']:,} VND")
        if item['instruction']:
            print(f"  指令: {item['instruction']}")
        if item['vat_code']:
            print(f"  服务: {item['vat_code']}")

