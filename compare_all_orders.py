#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
对比所有找到的订单时间
"""

import hashlib
import requests
from datetime import datetime

API_URL = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def sign(text):
    return hashlib.sha256((text + API_KEY).encode()).hexdigest().upper()

def get_order_info(tracking):
    """获取订单详细信息"""
    sig = sign(tracking)
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": API_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    data = {"ParcelCode": tracking, "Signature": sig}
    
    try:
        response = requests.post(API_URL, headers=headers, data=data, timeout=10)
        
        if response.status_code == 200:
            result = response.json()
            if result.get('Code') == '00' and result.get('Value'):
                value = result['Value']
                return {
                    'tracking': tracking,
                    'number': int(tracking[2:11]),
                    'IssueDate': value.get('IssueDate', 'N/A'),
                    'LoadDate': value.get('LoadDate', 'N/A'),
                    'ReceiverName': value.get('ReceiverName', 'N/A'),
                    'CollectAmount': value.get('CollectAmount', 0),
                }
    except:
        pass
    
    return None

print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                   🔍 对比所有订单 - 找真正的第一条                           ║
╚════════════════════════════════════════════════════════════════════════════╝
""")

# 所有找到的订单
orders_list = [
    "EP492999365VN",
    "EP493005750VN",
    "EP493006018VN",
    "EP493006211VN",
    "EP493006857VN",
    "EP493009045VN",
    "EP493009425VN",
    "EP493011083VN",
    "EP493011415VN",
]

print(f"查询 {len(orders_list)} 个订单的详细信息...\n")

orders = []
for tracking in orders_list:
    print(f"查询: {tracking} ... ", end="", flush=True)
    info = get_order_info(tracking)
    if info:
        print("✅")
        orders.append(info)
    else:
        print("❌")

if not orders:
    print("\n❌ 无法获取订单信息")
    exit(1)

print("\n" + "=" * 80)
print("📊 按运单号排序（从小到大）:")
print("=" * 80)

orders_by_number = sorted(orders, key=lambda x: x['number'])

for i, order in enumerate(orders_by_number, 1):
    print(f"\n{i}. {order['tracking']} (编号: {order['number']})")
    print(f"   装载时间: {order['LoadDate']}")
    print(f"   收件人: {order['ReceiverName']}")

print("\n" + "=" * 80)
print("🕐 按装载时间排序（从早到晚）:")
print("=" * 80)

# 按装载时间排序
orders_by_time = sorted(orders, key=lambda x: x['LoadDate'])

for i, order in enumerate(orders_by_time, 1):
    print(f"\n{i}. {order['tracking']}")
    print(f"   装载时间: {order['LoadDate']}")
    print(f"   运单号码: {order['number']}")
    print(f"   收件人: {order['ReceiverName']}")

print("\n" + "=" * 80)
print("🏆 结论:")
print("=" * 80)

first_by_number = orders_by_number[0]
first_by_time = orders_by_time[0]

print(f"""
按运单号最小: {first_by_number['tracking']} (编号: {first_by_number['number']})
              装载时间: {first_by_number['LoadDate']}

按时间最早:   {first_by_time['tracking']} (编号: {first_by_time['number']})
              装载时间: {first_by_time['LoadDate']}
""")

if first_by_number['tracking'] == first_by_time['tracking']:
    print(f"✅ 两者一致！第一条是: {first_by_number['tracking']}")
else:
    print(f"⚠️  两者不一致！")
    print(f"\n你需要选择:")
    print(f"1. 运单号最小: {first_by_number['tracking']}")
    print(f"2. 时间最早:   {first_by_time['tracking']}")

print("\n" + "=" * 80)
