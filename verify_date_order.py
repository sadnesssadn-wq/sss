#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
验证日期是否按运单号递增
"""

import json
import os

# 读取刚才的扫描结果
result_files = [f for f in os.listdir('.') if f.startswith('yesterday_last_today_first') and f.endswith('.json')]

if not result_files:
    print("❌ 没有找到扫描结果文件")
    exit(1)

result_files.sort(reverse=True)
latest_file = result_files[0]

print(f"读取文件: {latest_file}\n")

with open(latest_file, 'r', encoding='utf-8') as f:
    data = json.load(f)

yesterday_orders = data.get('all_yesterday', [])
today_orders = data.get('all_today', [])

print("=" * 80)
print("📊 数据统计")
print("=" * 80)
print(f"昨天的订单: {len(yesterday_orders)} 条")
print(f"今天的订单: {len(today_orders)} 条\n")

# 合并所有订单
all_orders = []

for order in yesterday_orders:
    all_orders.append({
        'number': order['number'],
        'tracking': order['tracking'],
        'date': '昨天',
        'time': order['LoadDate']
    })

for order in today_orders:
    all_orders.append({
        'number': order['number'],
        'tracking': order['tracking'],
        'date': '今天',
        'time': order['LoadDate']
    })

# 按运单号排序
all_orders.sort(key=lambda x: x['number'])

print("=" * 80)
print("🔍 按运单号排序，检查日期是否递增:")
print("=" * 80)

print("\n运单号              日期    时间")
print("-" * 80)

is_sorted = True
last_date = None
violations = []

for order in all_orders:
    print(f"{order['tracking']}   {order['date']}   {order['time']}")
    
    # 检查日期顺序
    if last_date == '今天' and order['date'] == '昨天':
        is_sorted = False
        violations.append(order)
        print("   ⚠️  逆序！前面已经出现今天的订单了！")
    
    last_date = order['date']

print("\n" + "=" * 80)
print("📊 结论:")
print("=" * 80)

if is_sorted:
    print("\n✅ 日期是递增的！")
    print("运单号小的都是昨天，运单号大的都是今天")
else:
    print(f"\n❌ 日期不是递增的！")
    print(f"发现 {len(violations)} 个违反递增规则的订单：\n")
    
    for v in violations:
        print(f"⚠️  {v['tracking']} - 昨天的订单，但号码比某些今天的订单还大！")
    
    print("\n详细分析：")
    
    # 找出昨天最大的号和今天最小的号
    yesterday_numbers = [o['number'] for o in all_orders if o['date'] == '昨天']
    today_numbers = [o['number'] for o in all_orders if o['date'] == '今天']
    
    if yesterday_numbers and today_numbers:
        max_yesterday = max(yesterday_numbers)
        min_today = min(today_numbers)
        
        max_yesterday_order = next(o for o in all_orders if o['number'] == max_yesterday)
        min_today_order = next(o for o in all_orders if o['number'] == min_today)
        
        print(f"\n昨天最大号: {max_yesterday_order['tracking']} ({max_yesterday_order['time']})")
        print(f"今天最小号: {min_today_order['tracking']} ({min_today_order['time']})")
        
        if max_yesterday > min_today:
            print(f"\n❌ 昨天最大号 ({max_yesterday}) > 今天最小号 ({min_today})")
            print("说明运单号完全不按日期递增！")
        else:
            print(f"\n✅ 昨天最大号 ({max_yesterday}) < 今天最小号 ({min_today})")
            print("虽然有交叉，但总体趋势是递增的")

print("\n" + "=" * 80)
