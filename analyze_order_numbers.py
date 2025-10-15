#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
分析订单号本身的规律（不查询API）
"""

from collections import defaultdict

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

print("""
╔════════════════════════════════════════════════════════════════════════════╗
║              🔍 订单号规律分析（只分析号码本身）                            ║
╚════════════════════════════════════════════════════════════════════════════╝
""")

# 解析订单
orders = []
for tracking in orders_list:
    series = tracking[:2]
    number = int(tracking[2:11])
    orders.append({
        'tracking': tracking,
        'series': series,
        'number': number,
        'prefix_6': number // 1000,  # 前6位
        'prefix_5': number // 10000,  # 前5位
    })

# 按系列分组
series_groups = defaultdict(list)
for order in orders:
    series_groups[order['series']].append(order)

print(f"总共 {len(orders)} 个订单号")
print(f"系列数: {len(series_groups)}")
print()

# 分析每个系列
print("=" * 80)
print("📊 各系列号码分布")
print("=" * 80)

for series in sorted(series_groups.keys()):
    orders_in_series = sorted(series_groups[series], key=lambda x: x['number'])
    
    print(f"\n【{series}系列】 {len(orders_in_series)} 个订单号")
    print("-" * 80)
    
    # 按号码分段
    segments = defaultdict(list)
    for order in orders_in_series:
        prefix = order['prefix_5']  # 前5位作为段
        segments[prefix].append(order)
    
    print(f"号码段数: {len(segments)}")
    
    for prefix in sorted(segments.keys()):
        numbers_in_segment = [o['number'] for o in segments[prefix]]
        min_num = min(numbers_in_segment)
        max_num = max(numbers_in_segment)
        
        print(f"\n  段 {prefix}xxxx: ({len(numbers_in_segment)}个)")
        print(f"    范围: {min_num:09d} - {max_num:09d}")
        print(f"    订单: ", end="")
        
        for num in sorted(numbers_in_segment):
            print(f"{num:09d} ", end="")
        print()
        
        # 计算号码间隔
        sorted_nums = sorted(numbers_in_segment)
        if len(sorted_nums) > 1:
            gaps = [sorted_nums[i+1] - sorted_nums[i] for i in range(len(sorted_nums)-1)]
            print(f"    间隔: ", end="")
            for gap in gaps:
                print(f"{gap} ", end="")
            print(f"(平均: {sum(gaps)/len(gaps):.0f})")

# 寻找规律
print("\n" + "=" * 80)
print("🎯 规律发现")
print("=" * 80)

print("\n1️⃣ 号码聚类现象：")
print("-" * 80)

for series in sorted(series_groups.keys()):
    orders_in_series = sorted(series_groups[series], key=lambda x: x['number'])
    
    # 找出号码接近的（间隔<1000）
    clusters = []
    current_cluster = [orders_in_series[0]]
    
    for i in range(1, len(orders_in_series)):
        if orders_in_series[i]['number'] - orders_in_series[i-1]['number'] < 1000:
            current_cluster.append(orders_in_series[i])
        else:
            if len(current_cluster) > 1:
                clusters.append(current_cluster)
            current_cluster = [orders_in_series[i]]
    
    if len(current_cluster) > 1:
        clusters.append(current_cluster)
    
    if clusters:
        print(f"\n{series}系列的聚类:")
        for idx, cluster in enumerate(clusters, 1):
            numbers = [o['number'] for o in cluster]
            print(f"  聚类{idx}: {len(cluster)}个订单，号码范围 {min(numbers):09d}-{max(numbers):09d}")

print("\n2️⃣ 号码间隔分析：")
print("-" * 80)

for series in sorted(series_groups.keys()):
    orders_in_series = sorted(series_groups[series], key=lambda x: x['number'])
    
    if len(orders_in_series) > 1:
        gaps = [orders_in_series[i+1]['number'] - orders_in_series[i]['number'] 
                for i in range(len(orders_in_series)-1)]
        
        small_gaps = [g for g in gaps if g < 1000]
        large_gaps = [g for g in gaps if g >= 1000]
        
        print(f"\n{series}系列:")
        print(f"  小间隔(<1000): {len(small_gaps)}个，范围 {min(small_gaps) if small_gaps else 0}-{max(small_gaps) if small_gaps else 0}")
        print(f"  大间隔(>=1000): {len(large_gaps)}个")
        
        if small_gaps:
            print(f"  小间隔平均: {sum(small_gaps)/len(small_gaps):.0f}")

print("\n3️⃣ 推测的规律：")
print("-" * 80)

print("""
根据号码分布特征：

✅ 发现1：同一系列的订单号会聚集在几个号段
   - 不是完全随机的
   - 有明显的聚类现象

✅ 发现2：同一聚类内的订单号间隔很小
   - EK系列聚类内间隔: 几十到几百
   - EL系列聚类内间隔: 几十到几百
   - EP系列只有52的间隔

✅ 发现3：不同聚类之间号码跳跃很大
   - 可能代表不同批次
   - 可能代表不同时间段
   - 可能代表不同业务类型

💡 推测：
   - 同一批次/时间段的订单，号码是连续或接近的
   - 找"第一条"应该在最小的号码聚类中查找
   - 每个系列可能独立编号
""")

print("\n" + "=" * 80)
print("📌 建议策略")
print("=" * 80)

print("""
要找某个系列当天的第一条订单：

方案A：从最小号码聚类开始扫描
   1. 找出最小的号码段（如EK的042227xxx）
   2. 在这个段内密集扫描（每个号都查）
   3. 找出时间最早的

方案B：多点采样确定范围
   1. 在各个号码段都采样几个
   2. 找出哪些是今天的
   3. 在今天的号码段内精确扫描

方案C：基于已知订单向前扫描
   1. 如果知道一个今天的订单
   2. 在同一号码段内向前扫描
   3. 找到最早的
""")

print("=" * 80)
