#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""对比所有API接口返回的信息详细程度"""

import hashlib
import requests
import json

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def count_fields(obj, prefix=""):
    """递归统计对象中的字段数量"""
    count = 0
    fields = []
    
    if isinstance(obj, dict):
        for key, value in obj.items():
            if value is not None and value != "" and value != []:
                count += 1
                fields.append(f"{prefix}{key}")
                if isinstance(value, (dict, list)):
                    sub_count, sub_fields = count_fields(value, f"{prefix}{key}.")
                    count += sub_count
                    fields.extend(sub_fields)
    elif isinstance(obj, list) and len(obj) > 0:
        if isinstance(obj[0], dict):
            sub_count, sub_fields = count_fields(obj[0], prefix)
            count += sub_count
            fields.extend(sub_fields)
    
    return count, fields

tracking = "EL135248100VN"  # 使用已配送的包裹测试
sig = sign(tracking)

headers = {
    "Authorization": f"Basic {BASIC_AUTH}",
    "APIKey": PRIVATE_KEY,
    "Content-Type": "application/x-www-form-urlencoded"
}

print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                        API 接口信息详细度对比                               ║
║  测试运单: EL135248100VN (已配送)                                          ║
╚════════════════════════════════════════════════════════════════════════════╝
""")

results = {}

# ==================== API 1: CheckLadingCode ====================
print("\n" + "="*80)
print("1️⃣ CheckLadingCode")
print("="*80)
url = f"{API_URL}api/Delivery/CheckLadingCode"
r = requests.post(url, headers=headers, data={"ParcelCode": tracking, "Signature": sig}, timeout=10)
result = r.json()

count, fields = count_fields(result)
results["CheckLadingCode"] = {
    "count": count,
    "fields": fields,
    "data": result
}

print(f"返回字段数: {count}")
print(f"主要字段: Code, Message, Time, Signature")
print(f"数据详细度: ⭐ (最简单，仅验证)")

# ==================== API 2: Inquiry ====================
print("\n" + "="*80)
print("2️⃣ Inquiry")
print("="*80)
url = f"{API_URL}api/Delivery/Inquiry"
r = requests.post(url, headers=headers, data={"ParcelCode": tracking, "Signature": sig}, timeout=10)
result = r.json()

count, fields = count_fields(result)
results["Inquiry"] = {
    "count": count,
    "fields": fields,
    "data": result
}

print(f"返回字段数: {count}")
if result.get("Value"):
    value_keys = list(result["Value"].keys())
    print(f"Value对象字段: {len(value_keys)}个")
    print(f"包含: 发件人、收件人、金额、重量、状态等")
print(f"数据详细度: ⭐⭐⭐ (详细的基本信息)")

# ==================== API 3: DeliveryLadingJourney ====================
print("\n" + "="*80)
print("3️⃣ DeliveryLadingJourney")
print("="*80)
url = f"{API_URL}api/Delivery/DeliveryLadingJourney"
r = requests.post(url, headers=headers, data={"ParcelCode": tracking}, timeout=10)
result = r.json()

count, fields = count_fields(result)
results["DeliveryLadingJourney"] = {
    "count": count,
    "fields": fields,
    "data": result
}

print(f"返回字段数: {count}")
if result.get("ListValue"):
    print(f"配送记录数: {len(result['ListValue'])}条")
    if len(result["ListValue"]) > 0:
        record_keys = list(result["ListValue"][0].keys())
        print(f"每条记录字段: {len(record_keys)}个")
        print(f"包含: 配送时间、状态、签名照片、金额、路线等")
print(f"数据详细度: ⭐⭐⭐⭐⭐ (最详细！包含配送历史和签名)")

# ==================== API 4: TrackTrace/Lading ====================
print("\n" + "="*80)
print("4️⃣ TrackTrace/Lading")
print("="*80)
url = f"{API_URL}api/TrackTrace/Lading"
r = requests.post(url, headers=headers, data={"LadingCode": tracking, "Signature": sig}, timeout=10)
result = r.json()

count, fields = count_fields(result)
results["TrackTrace"] = {
    "count": count,
    "fields": fields,
    "data": result
}

print(f"返回字段数: {count}")
if result.get("Value"):
    value = result["Value"]
    print(f"包含字段: ID, Code, Value, Fee, 发件人, 收件人, 签名等")
    print(f"状态历史数: {len(value.get('ListStatus', []))}条")
print(f"数据详细度: ⭐⭐⭐ (有状态历史但不如DeliveryLadingJourney详细)")

# ==================== API 5: InquiryAmount ====================
print("\n" + "="*80)
print("5️⃣ InquiryAmount")
print("="*80)
url = f"{API_URL}api/Delivery/InquiryAmount"
r = requests.post(url, headers=headers, data={"ParcelCode": tracking, "Signature": sig}, timeout=10)
result = r.json()

count, fields = count_fields(result)
results["InquiryAmount"] = {
    "count": count,
    "fields": fields,
    "data": result
}

print(f"返回字段数: {count}")
print(f"主要用途: 查询金额信息")
print(f"数据详细度: ⭐⭐ (仅金额相关)")

# ==================== 总结对比 ====================
print("\n\n" + "="*80)
print("📊 详细度排名")
print("="*80)

ranking = sorted(results.items(), key=lambda x: x[1]["count"], reverse=True)

for idx, (api_name, data) in enumerate(ranking, 1):
    print(f"\n{idx}. {api_name}")
    print(f"   字段数量: {data['count']}")
    
    # 显示独特的字段
    if api_name == "DeliveryLadingJourney" and data['data'].get("ListValue"):
        record = data['data']["ListValue"][0]
        print(f"   🌟 独特优势:")
        print(f"      • DeliveryDate: {record.get('DeliveryDate')}")
        print(f"      • DeliverySignature: {'✅ 有签名照片URL' if record.get('DeliverySignature') else '❌'}")
        print(f"      • StatusName: {record.get('StatusName')}")
        print(f"      • RouteCode: {record.get('RouteCode')}")
        print(f"      • IsPaypostName: {record.get('IsPaypostName')}")

print("\n" + "="*80)
print("🎯 推荐使用")
print("="*80)
print("""
根据需求选择：

1. 获取配送时间和历史 → DeliveryLadingJourney ⭐⭐⭐⭐⭐
   - 最详细的配送信息
   - 包含签名照片URL
   - 支持多次配送记录
   - 不需要签名！

2. 获取包裹基本信息 → Inquiry ⭐⭐⭐⭐
   - 发件人和收件人完整信息
   - 包裹金额、重量
   - 当前状态
   - 需要签名

3. 验证运单号 → CheckLadingCode ⭐
   - 仅验证有效性
   - 最简单
   - 需要签名

4. 查询状态历史 → TrackTrace/Lading ⭐⭐⭐
   - 有状态历史列表
   - 但实测常为空
   - 需要签名
""")

# 保存详细对比数据
print("\n保存详细数据到文件...")
with open("/workspace/api_comparison_detail.json", "w", encoding="utf-8") as f:
    json.dump(results, f, indent=2, ensure_ascii=False)
print("✅ 已保存到: api_comparison_detail.json")

