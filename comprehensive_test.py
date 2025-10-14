#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""全面测试 - 获取商品信息和所有可能的描述"""

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

def get_full_info(tracking):
    """获取包裹的所有可能信息"""
    
    print(f"\n{'='*80}")
    print(f"🔍 全面分析: {tracking}")
    print(f"{'='*80}\n")
    
    sig = sign(tracking)
    info = {
        "tracking": tracking,
        "basic": {},
        "delivery": {},
        "track": {},
        "product_info": {}
    }
    
    # 1. Inquiry API
    print("1️⃣ Inquiry API - 基本信息和时间")
    print("-" * 70)
    url = f"{API_URL}api/Delivery/Inquiry"
    r = requests.post(url, headers=headers, 
                     data={"ParcelCode": tracking, "Signature": sig}, timeout=10)
    inquiry = r.json()
    
    if inquiry.get("Value"):
        v = inquiry["Value"]
        info["basic"] = v
        
        print(f"✅ 发件日期 (IssueDate): {v.get('IssueDate', '无')}")
        print(f"✅ 装车日期 (LoadDate): {v.get('LoadDate', '无')}")
        print(f"✅ 服务类型 (IsCOD): {v.get('IsCOD', '无')}")
        print(f"✅ 指令 (Instruction): {v.get('Instruction', '无')}")
        print(f"✅ VAT代码 (VATCode): {v.get('VATCode', '无')}")
    else:
        print("❌ 无数据")
    
    # 2. DeliveryLadingJourney API
    print("\n2️⃣ DeliveryLadingJourney API - 配送详情")
    print("-" * 70)
    url = f"{API_URL}api/Delivery/DeliveryLadingJourney"
    r = requests.post(url, headers=headers, data={"ParcelCode": tracking}, timeout=10)
    journey = r.json()
    
    if journey.get("ListValue"):
        record = journey["ListValue"][0]
        info["delivery"] = record
        
        print(f"✅ 配送时间: {record.get('DeliveryDate', '无')}")
        print(f"✅ 配送指令 (Instruction): {record.get('Instruction', '无')}")
        print(f"✅ VAT代码 (VATCode): {record.get('VATCode', '无')}")
        print(f"✅ 备注 (Note): {record.get('Note', '无')}")
        print(f"✅ 服务 (Service): {record.get('Service', '无')}")
        
        if record.get("Instruction"):
            print(f"\n   📝 完整指令内容:")
            print(f"   「{record['Instruction']}」")
    else:
        print("❌ 无配送记录")
    
    # 3. TrackTrace API - 状态历史
    print("\n3️⃣ TrackTrace API - 状态历史")
    print("-" * 70)
    url = f"{API_URL}api/TrackTrace/Lading"
    r = requests.post(url, headers=headers,
                     data={"LadingCode": tracking, "Signature": sig}, timeout=10)
    track = r.json()
    
    if track.get("Value"):
        v = track["Value"]
        info["track"] = v
        
        if v.get("ListStatus"):
            print(f"✅ 状态历史记录: {len(v['ListStatus'])}条")
            for idx, status in enumerate(v["ListStatus"], 1):
                print(f"\n   记录 {idx}:")
                print(f"   状态码: {status.get('StatusCode')}")
                print(f"   状态消息: {status.get('StatusMessage', '').strip()}")
                print(f"   日期: {status.get('StatusDate')}")
                print(f"   时间: {status.get('StatusTime')}")
                print(f"   邮局: {status.get('POName')}")
        else:
            print("❌ 无状态历史")
    else:
        print("❌ 无数据")
    
    return info

# 测试所有EP运单
trackings = [
    "EP492966929VN",   # 已配送 - 有Instruction
    "EP493183769VN",   # 已配送
    "EP492886647VN",   # 未配送 - 测试是否有时间
    "EP492940379VN",   # 未配送
]

all_info = []

for tracking in trackings:
    info = get_full_info(tracking)
    all_info.append(info)
    print("\n")

# 汇总分析
print("\n" + "="*80)
print("🎯 关键发现汇总")
print("="*80)

print("\n📦 Instruction 字段 (配送指令/商品描述):")
print("-" * 70)
for info in all_info:
    instruction = info["delivery"].get("Instruction", "")
    if instruction:
        print(f"\n{info['tracking']}:")
        print(f"  {instruction}")

print("\n\n🏷️ VATCode 字段 (服务类型):")
print("-" * 70)
vat_codes = set()
for info in all_info:
    vat = info["delivery"].get("VATCode", "")
    if vat:
        vat_codes.add(vat)
        print(f"{info['tracking']}: {vat}")

print(f"\n发现的服务类型: {', '.join(vat_codes)}")

print("\n\n⏰ 时间信息 (未配送包裹):")
print("-" * 70)
for info in all_info:
    if info["basic"].get("IssueDate") or info["basic"].get("LoadDate"):
        print(f"\n{info['tracking']}:")
        print(f"  发件日期: {info['basic'].get('IssueDate', '无')}")
        print(f"  装车日期: {info['basic'].get('LoadDate', '无')}")

