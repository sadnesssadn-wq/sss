#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import hashlib
import requests
import json

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

tracking = "EF043571478VN"
sig = sign(tracking)

headers = {
    "Authorization": f"Basic {BASIC_AUTH}",
    "APIKey": PRIVATE_KEY,
    "Content-Type": "application/x-www-form-urlencoded"
}

print(f"\n{'='*70}")
print(f"详细查询: {tracking}")
print(f"{'='*70}\n")

# API 1: CheckLadingCode
print("1️⃣ CheckLadingCode - 验证运单号")
print("-" * 70)
url = f"{API_URL}api/Delivery/CheckLadingCode"
r = requests.post(url, headers=headers, data={"ParcelCode": tracking, "Signature": sig}, timeout=10)
result = r.json()
print(f"状态: {result.get('Message')}")
print(f"Code: {result.get('Code')}")

# API 2: Inquiry
print("\n2️⃣ Inquiry - 查询详细信息")
print("-" * 70)
url = f"{API_URL}api/Delivery/Inquiry"
r = requests.post(url, headers=headers, data={"ParcelCode": tracking, "Signature": sig}, timeout=10)
result = r.json()

if result.get("Code") == "00" and result.get("Value"):
    value = result["Value"]
    print(f"✅ 找到包裹信息！\n")
    print(f"📦 运单号: {value.get('ParcelCode')}")
    print(f"📊 状态: {value.get('Status')} - {value.get('StatusName', '待配送')}")
    print(f"\n👤 发件人:")
    print(f"   姓名: {value.get('SenderName')}")
    print(f"   地址: {value.get('SenderAddress')}")
    print(f"   电话: {value.get('SenderPhone')}")
    print(f"\n👤 收件人:")
    print(f"   姓名: {value.get('ReceiverName')}")
    print(f"   地址: {value.get('ReceiverAddress')}")
    print(f"   电话: {value.get('ReceiverPhone')}")
    print(f"\n💰 金额信息:")
    print(f"   COD金额: {value.get('CollectAmount', 0):,} VND")
    print(f"   重量: {value.get('Weigh')} g")
    print(f"\n⏰ 时间信息:")
    print(f"   发件日期: {value.get('IssueDate') or '无'}")
    print(f"   装车日期: {value.get('LoadDate') or '无'}")
    print(f"   配送日期: {value.get('DeliveryDate') or '未配送'}")
    print(f"\n🏢 邮局信息:")
    print(f"   目的地邮局: {value.get('DeliveryPOCode')}")
else:
    print(f"❌ {result.get('Message')}")

# API 3: DeliveryLadingJourney
print("\n3️⃣ DeliveryLadingJourney - 配送历史")
print("-" * 70)
url = f"{API_URL}api/Delivery/DeliveryLadingJourney"
r = requests.post(url, headers=headers, data={"ParcelCode": tracking}, timeout=10)
result = r.json()

if result.get("ListValue"):
    print("✅ 有配送记录！")
    for idx, record in enumerate(result["ListValue"], 1):
        print(f"\n配送记录 {idx}:")
        print(f"  时间: {record.get('DeliveryDate')}")
        print(f"  状态: {record.get('StatusName')}")
        print(f"  收件人: {record.get('ReceiverName')}")
else:
    print(f"❌ {result.get('Message')} - 无配送历史")

# API 4: TrackTrace
print("\n4️⃣ TrackTrace/Lading - 轨迹追踪")
print("-" * 70)
url = f"{API_URL}api/TrackTrace/Lading"
r = requests.post(url, headers=headers, data={"LadingCode": tracking, "Signature": sig}, timeout=10)
result = r.json()

if result.get("Code") == "00" and result.get("Value"):
    value = result["Value"]
    print(f"✅ 找到轨迹信息")
    print(f"运单ID: {value.get('ID')}")
    print(f"状态历史记录数: {len(value.get('ListStatus', []))}")
    
    if value.get('ListStatus'):
        print("\n状态历史:")
        for status in value['ListStatus']:
            print(f"  • {status}")
    else:
        print("\n状态历史: 空（无任何记录）")
else:
    print(f"❌ {result.get('Message')}")

print("\n" + "="*70)
print("🎯 总结")
print("="*70)

