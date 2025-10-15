#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
查询所有订单的时间，分析规律
"""

import hashlib
import requests
import time
from collections import defaultdict

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
                    'series': tracking[:2],
                    'number': int(tracking[2:11]),
                    'IssueDate': value.get('IssueDate', ''),
                    'LoadDate': value.get('LoadDate', ''),
                    'DeliveryDate': value.get('DeliveryDate', ''),
                    'ReceiverName': value.get('ReceiverName', ''),
                    'SenderName': value.get('SenderName', ''),
                }
    except:
        pass
    
    return None

# 订单列表
orders_list = [
    "EK042227615VN", "EK042227822VN", "EK042227544VN", "EK042227663VN",
    "EK042227898VN", "EK042227558VN", "EK042227924VN", "EK042228142VN",
    "EK043270107VN", "EK043269982VN", "EK043539177VN", "EK043539185VN",
    "EK042228213VN", "EK042228227VN",
    "EL135247577VN", "EL135248060VN", "EL135248100VN", "EL135252002VN",
    "EL135725515VN", "EL135726003VN", "EL135749361VN", "EL135753627VN",
    "EL135756433VN", "EL136426994VN", "EL136426994VN", "EL136430755VN",
    "EL136432354VN",
    "EO680926211VN",
    "EP155429738VN", "EP155429790VN"
]

print("""
╔════════════════════════════════════════════════════════════════════════════╗
║              🕐 查询订单时间 - 分析时间规律                                 ║
╚════════════════════════════════════════════════════════════════════════════╝
""")

print(f"总共 {len(orders_list)} 个订单号")
print("\n查询中...\n")

orders = []
for i, tracking in enumerate(orders_list, 1):
    print(f"{i:2d}. {tracking} ... ", end="", flush=True)
    info = get_order_info(tracking)
    if info:
        print(f"✅ {info['LoadDate']}")
        orders.append(info)
    else:
        print("❌")
    time.sleep(0.1)

print(f"\n成功获取 {len(orders)} 条订单信息\n")

if not orders:
    print("❌ 无法获取订单信息")
    exit(1)

# 按系列分组
series_groups = defaultdict(list)
for order in orders:
    series_groups[order['series']].append(order)

# 显示所有订单的完整信息
print("=" * 120)
print("📋 所有订单详细信息（按号码顺序）")
print("=" * 120)
print()
print(f"{'序号':<4} {'运单号':<18} {'发行日期':<15} {'装载时间':<25} {'收件人':<20}")
print("-" * 120)

orders_sorted = sorted(orders, key=lambda x: (x['series'], x['number']))

for i, order in enumerate(orders_sorted, 1):
    receiver = order['ReceiverName'][:18] if order['ReceiverName'] else 'N/A'
    print(f"{i:<4} {order['tracking']:<18} {order['IssueDate']:<15} {order['LoadDate']:<25} {receiver:<20}")

# 按时间排序
print("\n" + "=" * 120)
print("🕐 按装载时间排序")
print("=" * 120)
print()

orders_by_time = sorted([o for o in orders if o['LoadDate']], key=lambda x: x['LoadDate'])

print(f"{'序号':<4} {'运单号':<18} {'系列':<6} {'装载时间':<25} {'号码':<12}")
print("-" * 120)

for i, order in enumerate(orders_by_time, 1):
    print(f"{i:<4} {order['tracking']:<18} {order['series']:<6} {order['LoadDate']:<25} {order['number']:<12}")

# 分析规律
print("\n" + "=" * 120)
print("🎯 时间规律分析")
print("=" * 120)

# 1. 按系列分析时间
print("\n【各系列的时间范围】")
print("-" * 80)

for series in sorted(series_groups.keys()):
    orders_in_series = [o for o in series_groups[series] if o['LoadDate']]
    
    if orders_in_series:
        times = sorted([o['LoadDate'] for o in orders_in_series])
        print(f"\n{series}系列 ({len(orders_in_series)}条):")
        print(f"  最早: {times[0]}")
        print(f"  最晚: {times[-1]}")

# 2. 号码和时间的对应关系
print("\n【号码 vs 时间关系】")
print("-" * 80)

for series in sorted(series_groups.keys()):
    orders_in_series = [o for o in series_groups[series] if o['LoadDate']]
    
    if len(orders_in_series) > 1:
        # 按号码排序
        by_number = sorted(orders_in_series, key=lambda x: x['number'])
        # 按时间排序
        by_time = sorted(orders_in_series, key=lambda x: x['LoadDate'])
        
        print(f"\n{series}系列:")
        print(f"  按号码顺序: ", end="")
        for o in by_number[:5]:
            print(f"{o['number']} ", end="")
        if len(by_number) > 5:
            print("...")
        else:
            print()
        
        print(f"  按时间顺序: ", end="")
        for o in by_time[:5]:
            print(f"{o['number']} ", end="")
        if len(by_time) > 5:
            print("...")
        else:
            print()
        
        # 检查是否一致
        is_same = all(by_number[i]['tracking'] == by_time[i]['tracking'] for i in range(len(by_number)))
        
        if is_same:
            print(f"  ✅ 号码顺序 = 时间顺序")
        else:
            print(f"  ❌ 号码顺序 ≠ 时间顺序")

# 3. 详细对比（每个系列）
print("\n【详细时间对比】")
print("-" * 120)

for series in sorted(series_groups.keys()):
    orders_in_series = [o for o in series_groups[series] if o['LoadDate']]
    
    if orders_in_series:
        print(f"\n{series}系列详细对比:")
        orders_in_series.sort(key=lambda x: x['number'])
        
        print(f"{'运单号':<18} {'号码':<12} {'装载时间':<25}")
        print("-" * 60)
        
        for order in orders_in_series:
            print(f"{order['tracking']:<18} {order['number']:<12} {order['LoadDate']:<25}")

# 4. 找出关键规律
print("\n" + "=" * 120)
print("💡 关键规律发现")
print("=" * 120)

print("""
分析结果：
""")

# 检查是否号码递增=时间递增
for series in sorted(series_groups.keys()):
    orders_in_series = [o for o in series_groups[series] if o['LoadDate']]
    
    if len(orders_in_series) > 1:
        by_number = sorted(orders_in_series, key=lambda x: x['number'])
        by_time = sorted(orders_in_series, key=lambda x: x['LoadDate'])
        
        if all(by_number[i]['tracking'] == by_time[i]['tracking'] for i in range(len(by_number))):
            print(f"✅ {series}系列: 号码越大，时间越晚（完全一致）")
        else:
            print(f"❌ {series}系列: 号码和时间不一致")
            # 找出不一致的地方
            for i in range(len(by_number)):
                if by_number[i]['tracking'] != by_time[i]['tracking']:
                    print(f"   位置{i+1}: 号码第{i+1}={by_number[i]['tracking']}, 时间第{i+1}={by_time[i]['tracking']}")

print("\n" + "=" * 120)
