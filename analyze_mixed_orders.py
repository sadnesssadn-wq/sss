#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
分析多个系列的订单规律
"""

import hashlib
import requests
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
                    'series': tracking[:2],  # EK, EL, EO, EP
                    'number': int(tracking[2:11]),
                    'IssueDate': value.get('IssueDate', 'N/A'),
                    'LoadDate': value.get('LoadDate', 'N/A'),
                    'ReceiverName': value.get('ReceiverName', 'N/A'),
                    'SenderName': value.get('SenderName', 'N/A'),
                    'CollectAmount': value.get('CollectAmount', 0),
                }
    except Exception as e:
        pass
    
    return None

print("""
╔════════════════════════════════════════════════════════════════════════════╗
║              🔍 分析多系列订单规律                                          ║
╚════════════════════════════════════════════════════════════════════════════╝
""")

# 订单列表
orders_list = """EK042227615VN
EK042227822VN
EK042227544VN
EK042227663VN
EK042227898VN
EK042227558VN
EK042227924VN
EK042228142VN
EK043270107VN
EK043269982VN
EK043539177VN
EK043539185VN
EK042228213VN
EK042228227VN
EL135247577VN
EL135248060VN
EL135248100VN
EL135252002VN
EL135725515VN
EL135726003VN
EL135749361VN
EL135753627VN
EL135756433VN
EL136426994VN
EL136426994VN
EL136430755VN
EL136432354VN
EO680926211VN
EP155429738VN
EP155429790VN""".strip().split('\n')

print(f"总共 {len(orders_list)} 个订单\n")
print("查询中...\n")

orders = []
for i, tracking in enumerate(orders_list, 1):
    print(f"{i:2d}. {tracking} ... ", end="", flush=True)
    info = get_order_info(tracking)
    if info:
        print(f"✅ {info['LoadDate']}")
        orders.append(info)
    else:
        print("❌")

if not orders:
    print("\n❌ 无法获取订单信息")
    exit(1)

print(f"\n成功获取 {len(orders)} 条订单信息\n")

# 按系列分组
series_groups = defaultdict(list)
for order in orders:
    series_groups[order['series']].append(order)

# 分析每个系列
print("=" * 80)
print("📊 按系列统计")
print("=" * 80)

for series in sorted(series_groups.keys()):
    orders_in_series = series_groups[series]
    numbers = [o['number'] for o in orders_in_series]
    
    print(f"\n【{series}系列】 共 {len(orders_in_series)} 条")
    print(f"  号码范围: {min(numbers):09d} - {max(numbers):09d}")
    print(f"  号码跨度: {max(numbers) - min(numbers):,}")

# 按系列显示详细信息
print("\n" + "=" * 80)
print("📋 各系列订单详情（按时间排序）")
print("=" * 80)

for series in sorted(series_groups.keys()):
    orders_in_series = series_groups[series]
    orders_in_series.sort(key=lambda x: x['LoadDate'])
    
    print(f"\n【{series}系列】")
    print("-" * 80)
    print("运单号              装载时间              发件人/收件人")
    print("-" * 80)
    
    for order in orders_in_series:
        name = order['ReceiverName'][:30] if order['ReceiverName'] != 'N/A' else order['SenderName'][:30]
        print(f"{order['tracking']}   {order['LoadDate']:20s}  {name}")

# 分析时间规律
print("\n" + "=" * 80)
print("🕐 时间分析")
print("=" * 80)

all_orders_by_time = sorted(orders, key=lambda x: x['LoadDate'])

print("\n按时间排序（所有系列）:")
print("-" * 80)
print("序号  系列  运单号              装载时间")
print("-" * 80)

for i, order in enumerate(all_orders_by_time, 1):
    print(f"{i:2d}.  {order['series']}   {order['tracking']}   {order['LoadDate']}")

# 分析系列和时间的关系
print("\n" + "=" * 80)
print("🎯 规律分析")
print("=" * 80)

# 检查各系列的时间分布
print("\n各系列的时间范围:")
for series in sorted(series_groups.keys()):
    orders_in_series = series_groups[series]
    times = [o['LoadDate'] for o in orders_in_series if o['LoadDate'] != 'N/A']
    
    if times:
        times.sort()
        print(f"\n{series}系列:")
        print(f"  最早: {times[0]}")
        print(f"  最晚: {times[-1]}")

# 检查号码和时间的关系
print("\n" + "=" * 80)
print("🔍 号码 vs 时间 关系检查")
print("=" * 80)

for series in sorted(series_groups.keys()):
    orders_in_series = series_groups[series]
    
    # 按号码排序
    by_number = sorted(orders_in_series, key=lambda x: x['number'])
    # 按时间排序
    by_time = sorted(orders_in_series, key=lambda x: x['LoadDate'])
    
    is_same = True
    for i in range(len(by_number)):
        if by_number[i]['tracking'] != by_time[i]['tracking']:
            is_same = False
            break
    
    print(f"\n{series}系列:")
    if is_same:
        print(f"  ✅ 号码顺序 = 时间顺序（{len(orders_in_series)}条订单）")
    else:
        print(f"  ❌ 号码顺序 ≠ 时间顺序")
        print(f"\n  按号码: ", end="")
        for o in by_number[:3]:
            print(f"{o['number']} ", end="")
        print("...")
        
        print(f"\n  按时间: ", end="")
        for o in by_time[:3]:
            print(f"{o['number']} ", end="")
        print("...")

# 检查日期分布
print("\n" + "=" * 80)
print("📅 日期分布")
print("=" * 80)

date_count = defaultdict(int)
for order in orders:
    date = order['IssueDate']
    date_count[date] += 1

print("\n各日期的订单数:")
for date in sorted(date_count.keys()):
    print(f"  {date}: {date_count[date]} 条")

# 总结
print("\n" + "=" * 80)
print("📌 总结")
print("=" * 80)

print(f"""
1. 系列统计:
   - 共有 {len(series_groups)} 个系列: {', '.join(sorted(series_groups.keys()))}
   - 每个系列的订单数: {', '.join([f'{s}({len(series_groups[s])})' for s in sorted(series_groups.keys())])}

2. 号码特征:
   - 不同系列使用不同号段
   - EK: 042xxx / 043xxx
   - EL: 135xxx / 136xxx
   - EO: 680xxx
   - EP: 155xxx

3. 可能的规律:
   - 不同系列可能对应不同业务类型
   - 不同系列可能对应不同地区/仓库
   - 需要更多数据才能确认规律

""")

print("=" * 80)
