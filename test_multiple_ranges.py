#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
多号段采样测试 - 检查今天订单是否分布在多个号段
"""

import hashlib, requests, time
from datetime import datetime

API_URL = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="
TODAY = datetime.now().strftime("%d/%m/%Y")

def sign(text):
    return hashlib.sha256((text + API_KEY).encode()).hexdigest().upper()

def check_order(tracking):
    sig = sign(tracking)
    response = requests.post(API_URL, 
        headers={"Authorization": f"Basic {BASIC_AUTH}", "APIKey": API_KEY, "Content-Type": "application/x-www-form-urlencoded"},
        data={"ParcelCode": tracking, "Signature": sig}, timeout=10)
    
    if response.status_code == 200:
        result = response.json()
        if result.get('Code') == '00' and result.get('Value'):
            v = result['Value']
            return v.get('IssueDate'), v.get('LoadDate')
    return None, None

print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║            🔍 EP系列多号段采样 - 检查今天订单分布范围                        ║
╚════════════════════════════════════════════════════════════════════════════╝

📅 今天: {TODAY}
🎯 目标: 检查EP系列不同号段，看今天订单是否只在492-493段

采样策略: 每隔1000万个号采样一次

""")

# 采样不同号段
# EP系列可能的号段范围: 000000000 - 999999999
test_points = []

# 密集采样已知范围附近
for i in range(480, 505, 1):  # 480-504 (每100万采样)
    test_points.append(i * 1000000)

# 稀疏采样其他范围
for i in [100, 200, 300, 400, 550, 600, 700]:  # 其他号段
    test_points.append(i * 1000000)

print("=" * 80)
print("📊 采样测试")
print("=" * 80)
print()

today_ranges = []
old_ranges = []

for base_num in test_points:
    tracking = f"EP{base_num:09d}VN"
    print(f"测试 {tracking} ... ", end="", flush=True)
    
    issue, load = check_order(tracking)
    
    if issue:
        is_today = TODAY in str(issue)
        if is_today:
            print(f"✅ 今天! {load}")
            today_ranges.append(base_num)
        else:
            print(f"📅 {issue}")
            old_ranges.append(base_num)
    else:
        print(f"⚪ 无数据/不存在")
    
    time.sleep(0.2)

print("\n" + "=" * 80)
print("📊 采样结果")
print("=" * 80)

print(f"\n找到今天订单的号段: {len(today_ranges)}个")
if today_ranges:
    for num in today_ranges:
        print(f"  ✅ EP{num:09d}xxx 段")
    
    min_range = min(today_ranges)
    max_range = max(today_ranges)
    
    print(f"\n今天订单的号码范围:")
    print(f"  最小段: EP{min_range:09d}xxx")
    print(f"  最大段: EP{max_range:09d}xxx")
    print(f"  跨度: {max_range - min_range:,}")
    
    if max_range - min_range > 100000000:
        print(f"\n  ⚠️  跨度超过1亿！存在百万级跳跃！")
        print(f"  → 需要多号段扫描才能找全")
    else:
        print(f"\n  ✅ 跨度在合理范围内")
        print(f"  → 扫描 EP{min_range:09d} - EP{max_range + 10000000:09d} 即可")

print(f"\n有历史订单的号段: {len(old_ranges)}个")
if old_ranges:
    for num in old_ranges[:5]:
        print(f"  📅 EP{num:09d}xxx 段")

print("\n" + "=" * 80)
print("💡 结论")
print("=" * 80)

if len(today_ranges) == 0:
    print("\n采样中未发现今天的订单（采样点可能不准）")
elif len(today_ranges) == 1:
    print(f"\n✅ 今天的EP订单集中在单一号段！")
    print(f"扫描范围: EP{today_ranges[0] - 20000:09d} - EP{today_ranges[0] + 20000:09d}")
else:
    print(f"\n⚠️  今天的EP订单分布在 {len(today_ranges)} 个不同号段！")
    print(f"\n要找全部当天订单，需要扫描所有这些号段：")
    for num in today_ranges:
        print(f"  - EP{num - 10000:09d} - EP{num + 10000:09d} (±1万)")

print("\n" + "=" * 80)
EOF
