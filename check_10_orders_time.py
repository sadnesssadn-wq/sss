#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
查询10条订单的详细时间并对比
"""

import hashlib
import requests
from datetime import datetime

API_URL = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def sign(text):
    return hashlib.sha256((text + API_KEY).encode()).hexdigest().upper()

def get_order_time(tracking):
    """获取订单时间"""
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
                }
    except:
        pass
    
    return None

print("""
╔════════════════════════════════════════════════════════════════════════════╗
║              🕐 查询10条订单详细时间 - 验证顺序                              ║
╚════════════════════════════════════════════════════════════════════════════╝
""")

# 10条订单
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
    "EP493018285VN",
]

print("查询订单详细时间...\n")

orders = []
for i, tracking in enumerate(orders_list, 1):
    print(f"{i:2d}. 查询 {tracking} ... ", end="", flush=True)
    info = get_order_time(tracking)
    if info:
        print("✅")
        orders.append(info)
    else:
        print("❌")

if not orders:
    print("\n❌ 无法获取订单信息")
    exit(1)

# 显示按号码顺序
print("\n" + "=" * 80)
print("📊 按运单号顺序（从小到大）:")
print("=" * 80)
print()
print("序号  运单号              装载时间              收件人")
print("-" * 80)

for i, order in enumerate(orders, 1):
    print(f"{i:2d}.  {order['tracking']}   {order['LoadDate']:20s}  {order['ReceiverName'][:20]}")

# 按时间排序
print("\n" + "=" * 80)
print("🕐 按装载时间顺序（从早到晚）:")
print("=" * 80)
print()

orders_by_time = sorted(orders, key=lambda x: x['LoadDate'])

print("序号  运单号              装载时间              收件人                 原序号")
print("-" * 90)

for i, order in enumerate(orders_by_time, 1):
    original_index = orders.index(order) + 1
    print(f"{i:2d}.  {order['tracking']}   {order['LoadDate']:20s}  {order['ReceiverName'][:20]:20s}  #{original_index}")

# 分析
print("\n" + "=" * 80)
print("📊 顺序对比分析:")
print("=" * 80)

is_same_order = True
mismatches = []

for i in range(len(orders)):
    original_order = orders[i]
    time_sorted_order = orders_by_time[i]
    
    if original_order['tracking'] != time_sorted_order['tracking']:
        is_same_order = False
        mismatches.append({
            'position': i + 1,
            'by_number': original_order['tracking'],
            'by_time': time_sorted_order['tracking']
        })

print()
if is_same_order:
    print("✅ 运单号顺序 = 时间顺序")
    print("这10条订单按号码递增，时间也递增！")
else:
    print(f"❌ 运单号顺序 ≠ 时间顺序")
    print(f"发现 {len(mismatches)} 处不一致：\n")
    
    for m in mismatches:
        print(f"位置 {m['position']}:")
        print(f"  按号码: {m['by_number']}")
        print(f"  按时间: {m['by_time']}")
        print()

# 详细时间对比
print("=" * 80)
print("⏰ 详细时间对比:")
print("=" * 80)
print()

print("运单号              号码差距    时间                   时间差")
print("-" * 80)

for i in range(len(orders) - 1):
    current = orders[i]
    next_order = orders[i + 1]
    
    number_diff = next_order['number'] - current['number']
    
    print(f"{current['tracking']}   →")
    print(f"                   +{number_diff:6d}    {current['LoadDate']}")
    print(f"{next_order['tracking']}")
    print()

print("\n" + "=" * 80)
print("🎯 结论:")
print("=" * 80)

if is_same_order:
    print("""
✅ 在这10条订单中，运单号顺序和时间顺序一致！
说明：在某个小范围内，订单可能是按顺序的。

但注意：
- 这只是10条订单的结果
- 不代表所有订单都按顺序
- 可能只是巧合
""")
else:
    print("""
❌ 这10条订单中，运单号顺序和时间顺序不一致！
证明：即使在同一天的订单中，号码也不是按时间递增的。

原因：
- 多渠道并行生成订单
- 预分配号段
- 补录订单
""")

print("=" * 80)
