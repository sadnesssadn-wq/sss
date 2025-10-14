#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""详细字段对比"""

import hashlib
import requests
import json

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

tracking = "EL135248100VN"
sig = sign(tracking)
headers = {
    "Authorization": f"Basic {BASIC_AUTH}",
    "APIKey": PRIVATE_KEY,
    "Content-Type": "application/x-www-form-urlencoded"
}

print("="*100)
print(" "*30 + "API 接口字段详细对比")
print("="*100)

# 获取所有API数据
apis_data = {}

# Inquiry
url = f"{API_URL}api/Delivery/Inquiry"
r = requests.post(url, headers=headers, data={"ParcelCode": tracking, "Signature": sig}, timeout=10)
apis_data["Inquiry"] = r.json()

# DeliveryLadingJourney
url = f"{API_URL}api/Delivery/DeliveryLadingJourney"
r = requests.post(url, headers=headers, data={"ParcelCode": tracking}, timeout=10)
apis_data["DeliveryLadingJourney"] = r.json()

# TrackTrace
url = f"{API_URL}api/TrackTrace/Lading"
r = requests.post(url, headers=headers, data={"LadingCode": tracking, "Signature": sig}, timeout=10)
apis_data["TrackTrace"] = r.json()

# 对比字段
print("\n" + "="*100)
print("📋 字段对比表 (✅=有数据 ❌=无/null)")
print("="*100)

# 收集所有可能的字段
all_fields = set()
for api_name, data in apis_data.items():
    if api_name == "Inquiry" and data.get("Value"):
        all_fields.update(data["Value"].keys())
    elif api_name == "DeliveryLadingJourney" and data.get("ListValue"):
        all_fields.update(data["ListValue"][0].keys())
    elif api_name == "TrackTrace" and data.get("Value"):
        all_fields.update(data["Value"].keys())

# 重要字段分类
categories = {
    "基本信息": ["ParcelCode", "Code", "Status", "StatusName"],
    "发件人": ["SenderName", "SenderAddress", "SenderPhone", "SenderMobile"],
    "收件人": ["ReceiverName", "ReceiverAddress", "ReceiverPhone", "ReceiverMobile", 
              "ReceiverIDNumber", "RealReceiverName"],
    "金额费用": ["CollectAmount", "AmountCOD", "Value", "Fee", "FeeShip", "FeeC", 
               "FeePPA", "FeeCollectLater", "FeeCancelOrder"],
    "时间信息": ["IssueDate", "LoadDate", "DeliveryDate", "DeliveryTime"],
    "配送详情": ["DeliveryPOCode", "RouteCode", "PostmanCode", "ReasonName", 
               "SolutionName", "Note"],
    "签名照片": ["SignatureCapture", "DeliverySignature", "DeliveryImage", 
               "DeliveryImageAuthen"],
    "其他": ["Weigh", "IsCOD", "IsPaypost", "IsPaypostName", "Instruction", 
            "VATCode", "Quantity"]
}

for category, fields in categories.items():
    print(f"\n【{category}】")
    print("-" * 100)
    print(f"{'字段名':<30} | {'Inquiry':<15} | {'DeliveryJourney':<20} | {'TrackTrace':<15}")
    print("-" * 100)
    
    for field in fields:
        inquiry_val = "❌"
        journey_val = "❌"
        track_val = "❌"
        
        # Check Inquiry
        if apis_data["Inquiry"].get("Value"):
            val = apis_data["Inquiry"]["Value"].get(field)
            if val is not None and val != "" and val != []:
                inquiry_val = "✅"
                if len(str(val)) < 20:
                    inquiry_val = f"✅ {val}"
        
        # Check DeliveryLadingJourney
        if apis_data["DeliveryLadingJourney"].get("ListValue"):
            val = apis_data["DeliveryLadingJourney"]["ListValue"][0].get(field)
            if val is not None and val != "" and val != []:
                journey_val = "✅"
                if len(str(val)) < 15:
                    journey_val = f"✅ {val}"
        
        # Check TrackTrace
        if apis_data["TrackTrace"].get("Value"):
            val = apis_data["TrackTrace"]["Value"].get(field)
            if val is not None and val != "" and val != []:
                track_val = "✅"
                if len(str(val)) < 20:
                    track_val = f"✅ {val}"
        
        print(f"{field:<30} | {inquiry_val:<15} | {journey_val:<20} | {track_val:<15}")

print("\n" + "="*100)
print("🏆 最详细的API接口")
print("="*100)

print("""
🥇 第一名: DeliveryLadingJourney
   • 配送时间 ✅
   • 签名照片URL ✅
   • 路线代码 ✅
   • 支付状态 ✅
   • 详细状态名称 ✅
   • 失败原因 ✅
   • 解决方案 ✅
   • 不需要签名 ✅
   
   特点: 对于已配送的包裹，这个API返回最完整的信息！

🥈 第二名: Inquiry
   • 发件人完整信息 ✅
   • 收件人完整信息 ✅
   • 所有费用信息 ✅
   • 当前状态 ✅
   • 包裹重量 ✅
   
   特点: 对于未配送的包裹，这个API最有用！

🥉 第三名: TrackTrace/Lading
   • 基本信息 ✅
   • 状态历史列表（但常为空）
   • 运单ID ✅
   
   特点: 有状态历史功能，但实测数据不完整
""")

