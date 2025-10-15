#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
查找当天的第一条订单
策略：从小号段开始扫描，找到今天的第一条订单
"""

import hashlib
import requests
import json
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

API_URL = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TODAY = datetime.now().strftime("%d/%m/%Y")
print_lock = threading.Lock()
found_orders = []
found_lock = threading.Lock()

def sign(text):
    """生成签名：SHA256(运单号 + APIKey)"""
    return hashlib.sha256((text + API_KEY).encode()).hexdigest().upper()

def safe_print(msg):
    with print_lock:
        print(msg)

def is_today(date_str):
    """检查日期是否是今天"""
    if not date_str:
        return False
    return TODAY in str(date_str)

def check_order(tracking):
    """检查单个订单"""
    try:
        sig = sign(tracking)
        headers = {
            "Authorization": f"Basic {BASIC_AUTH}",
            "APIKey": API_KEY,
            "Content-Type": "application/x-www-form-urlencoded"
        }
        
        data = {
            "ParcelCode": tracking,
            "Signature": sig
        }
        
        response = requests.post(API_URL, headers=headers, data=data, timeout=10)
        
        if response.status_code == 200:
            result = response.json()
            
            if result.get('Code') == '00' and result.get('Value'):
                value = result['Value']
                issue_date = value.get('IssueDate', '')
                load_date = value.get('LoadDate', '')
                
                # 检查是否是今天的订单
                if is_today(issue_date) or is_today(load_date):
                    order_info = {
                        'tracking': tracking,
                        'IssueDate': issue_date,
                        'LoadDate': load_date,
                        'SenderName': value.get('SenderName', ''),
                        'ReceiverName': value.get('ReceiverName', ''),
                        'ReceiverPhone': value.get('ReceiverPhone', ''),
                        'CollectAmount': value.get('CollectAmount', 0),
                        'full_data': value
                    }
                    
                    with found_lock:
                        found_orders.append(order_info)
                    
                    safe_print(f"\n✅ 找到当天订单: {tracking}")
                    safe_print(f"   发行日期: {issue_date}")
                    safe_print(f"   装载日期: {load_date}")
                    safe_print(f"   收件人: {value.get('ReceiverName', '')}")
                    safe_print(f"   金额: {value.get('CollectAmount', 0):,}₫\n")
                    
                    return True
        
        return False
        
    except Exception as e:
        return False

def scan_range(prefix, start, end, step=1, max_workers=50):
    """扫描指定号段"""
    safe_print(f"🔍 扫描 {prefix} 系列: {start:09d} - {end:09d} (步长: {step})")
    
    tested = 0
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        futures = []
        
        for num in range(start, end, step):
            tracking = f"{prefix}{num:09d}VN"
            futures.append(executor.submit(check_order, tracking))
        
        for future in as_completed(futures):
            tested += 1
            if tested % 500 == 0:
                safe_print(f"   已测试: {tested}")
            
            try:
                if future.result():
                    # 找到订单后，等待其他正在执行的任务完成
                    pass
            except:
                pass
    
    safe_print(f"✓ 完成 {prefix} 系列扫描 (测试 {tested} 个)\n")

# ==================== 扫描策略 ====================
# 基于 scan_today_max.py 中的密集区间，从小到大扫描

SCAN_PLANS = [
    # EG系列 - 小号段
    ('EG', 40816000, 40820000, 1),
    ('EG', 40830000, 40840000, 2),
    ('EG', 46000000, 46010000, 2),
    ('EG', 47360000, 47365000, 1),
    
    # EK系列 - 小号段
    ('EK', 42150000, 42155000, 1),
    ('EK', 42225000, 42230000, 1),
    
    # ED系列
    ('ED', 121960000, 121965000, 1),
    
    # EB系列
    ('EB', 102880000, 102895000, 1),
    ('EB', 102960000, 102970000, 2),
    
    # EF系列 - 密集区（分段扫描）
    ('EF', 43571000, 43575000, 1),  # 先扫前面一小段
    ('EF', 43575000, 43580000, 2),
    ('EF', 47519000, 47525000, 1),  # 另一个密集区
    ('EF', 47525000, 47530000, 2),
    
    # EC系列
    ('EC', 143587000, 143590000, 1),
    ('EC', 149780000, 149782000, 1),
    
    # EP系列 - 您的测试运单在这个范围
    ('EP', 493018000, 493020000, 1),  # 围绕您的测试号扫描
    ('EP', 493540000, 493545000, 1),
    ('EP', 493550000, 493555000, 2),
    
    # EJ系列
    ('EJ', 701368000, 701372000, 2),
    ('EJ', 701441000, 701445000, 2),
    ('EJ', 711462000, 711465000, 2),
    
    # EL系列
    ('EL', 135247000, 135252000, 2),
    ('EL', 135726000, 135735000, 5),
    ('EL', 155309000, 155311000, 2),
]

print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║                    🔍 查找当天的第一条订单                                  ║
╚════════════════════════════════════════════════════════════════════════════╝

📅 今天日期: {TODAY}
⚡ 扫描策略: 从小号段开始，逐步扫描各个系列
🎯 目标: 找到今天的第一条订单（最小运单号）

扫描系列: EG, EK, ED, EB, EF, EC, EP, EJ, EL
线程数: 50 并发
""")

start_time = datetime.now()
print(f"⏰ 开始时间: {start_time.strftime('%H:%M:%S')}\n")
print("=" * 80)

# 按顺序扫描各个号段
for prefix, start, end, step in SCAN_PLANS:
    scan_range(prefix, start, end, step)
    
    # 如果找到订单，可以选择继续扫描或停止
    # 这里继续扫描以找到所有可能的"第一条"

print("=" * 80)
print("\n🎉 扫描完成！\n")

if found_orders:
    # 按运单号排序，找出最小的（第一条）
    found_orders.sort(key=lambda x: x['tracking'])
    
    print(f"✅ 共找到 {len(found_orders)} 条当天订单\n")
    print("=" * 80)
    print("📋 当天的第一条订单（运单号最小）:")
    print("=" * 80)
    
    first_order = found_orders[0]
    print(f"\n运单号: {first_order['tracking']}")
    print(f"发行日期: {first_order['IssueDate']}")
    print(f"装载日期: {first_order['LoadDate']}")
    print(f"发件人: {first_order['SenderName']}")
    print(f"收件人: {first_order['ReceiverName']}")
    print(f"收件电话: {first_order['ReceiverPhone']}")
    print(f"代收金额: {first_order['CollectAmount']:,}₫")
    
    print("\n" + "=" * 80)
    print("📋 所有找到的当天订单:")
    print("=" * 80)
    
    for i, order in enumerate(found_orders, 1):
        print(f"\n{i}. {order['tracking']}")
        print(f"   发行日期: {order['IssueDate']}")
        print(f"   收件人: {order['ReceiverName']}")
        print(f"   金额: {order['CollectAmount']:,}₫")
    
    # 保存到JSON文件
    output_file = f"first_today_order_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
    with open(output_file, 'w', encoding='utf-8') as f:
        json.dump({
            'scan_date': TODAY,
            'total_found': len(found_orders),
            'first_order': first_order,
            'all_orders': found_orders
        }, f, ensure_ascii=False, indent=2)
    
    print(f"\n💾 结果已保存到: {output_file}")
    
else:
    print("❌ 未找到当天的订单")
    print("\n可能的原因:")
    print("1. 扫描的号段范围不够大")
    print("2. 当天还没有新订单生成")
    print("3. 需要扫描更多的系列和号段")

end_time = datetime.now()
elapsed = (end_time - start_time).total_seconds()
print(f"\n⏰ 结束时间: {end_time.strftime('%H:%M:%S')}")
print(f"⏱️  总耗时: {elapsed:.1f} 秒 ({elapsed/60:.1f} 分钟)")
print("\n" + "=" * 80)
