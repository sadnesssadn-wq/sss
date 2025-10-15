#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
扫描当天的第一条订单
策略：从已知订单号向前扫描，找到当天最早的订单
"""
import hashlib
import requests
import time
import random
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TODAY = datetime.now().strftime("%d/%m/%Y")
print(f"🎯 目标日期: {TODAY}")

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def is_today(date_str):
    """检查是否是今天的日期"""
    return date_str and TODAY in str(date_str)

def call_api_with_retry(tracking, max_retries=3):
    """调用API查询订单"""
    sig = sign(tracking)
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    for attempt in range(max_retries):
        try:
            r = requests.post(
                f"{API_URL}api/Delivery/Inquiry",
                headers=headers,
                data={"ParcelCode": tracking, "Signature": sig},
                timeout=5
            )
            
            if r.status_code == 200:
                data = r.json()
                if data.get('Code') == '00' and data.get('Value'):
                    return data['Value']
                elif data.get('Code') in ['98', '429']:
                    time.sleep(0.1 + random.uniform(0, 0.1))
                    continue
            
            return None
        except:
            if attempt < max_retries - 1:
                time.sleep(0.1)
                continue
            return None
    
    return None

def scan_range(prefix, start_num, end_num, step=1):
    """扫描指定范围的订单号"""
    today_orders = []
    
    print(f"\n🔍 扫描 {prefix} 系列: {start_num:,} → {end_num:,} (步长:{step})")
    
    for num in range(start_num, end_num, step):
        tracking = f"{prefix}{num:09d}VN"
        
        order_data = call_api_with_retry(tracking)
        if order_data:
            issue_date = order_data.get('IssueDate', '')
            load_date = order_data.get('LoadDate', '')
            
            # 检查是否是今天的订单
            if is_today(issue_date) or is_today(load_date):
                today_orders.append({
                    'tracking': tracking,
                    'number': num,
                    'issue_date': issue_date,
                    'load_date': load_date,
                    'receiver': order_data.get('ReceiverName', ''),
                    'amount': order_data.get('CollectAmount', 0)
                })
                
                print(f"✅ 找到: {tracking} | {load_date} | {order_data.get('ReceiverName', '')[:20]} | {order_data.get('CollectAmount', 0):,}₫")
            
            # 如果找到今天的订单，继续向前扫描一段距离确保找到第一条
            if today_orders and len(today_orders) >= 5:
                print(f"   已找到{len(today_orders)}条，继续扫描确认...")
        
        # 每100个号码显示进度
        if (num - start_num) % 100 == 0:
            print(f"   进度: {num:,}")
    
    return today_orders

def main():
    print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║                    🔍 寻找当天第一条订单                                   ║
╚════════════════════════════════════════════════════════════════════════════╝

📋 已知当天订单:
  • EF047530814VN - LoadDate: 10/15/2025 10:10:03 (最早)
  • EP493018285VN - LoadDate: 10/15/2025 13:10:47
  • EF047535034VN - LoadDate: 10/15/2025 16:10:13

🎯 策略: 从EF047530814向前扫描，找到当天真正的第一条订单
""")
    
    all_today_orders = []
    
    # 扫描策略：从已知最早订单向前扫描
    scan_ranges = [
        # EF系列 - 从已知订单向前扫描
        ('EF', 47525000, 47530814, 1),    # 向前扫描5814个号码
        ('EF', 47520000, 47525000, 5),    # 再向前扫描1000个号码（步长5）
        ('EF', 47500000, 47520000, 10),   # 再向前扫描2000个号码（步长10）
        
        # EP系列 - 也检查一下
        ('EP', 493010000, 493018285, 10), # EP系列向前扫描
        
        # 其他可能的系列
        ('EB', 102880000, 102890000, 50), # EB系列
        ('EC', 149770000, 149780000, 50), # EC系列
    ]
    
    for prefix, start, end, step in scan_ranges:
        orders = scan_range(prefix, start, end, step)
        all_today_orders.extend(orders)
        
        # 如果在某个范围找到了很多订单，可以提前结束
        if len(all_today_orders) > 20:
            print(f"\n✋ 已找到{len(all_today_orders)}条订单，停止扫描")
            break
    
    # 分析结果
    if all_today_orders:
        print(f"\n{'='*80}")
        print(f"📊 找到 {len(all_today_orders)} 条当天订单")
        print(f"{'='*80}")
        
        # 按号码排序找到第一条
        all_today_orders.sort(key=lambda x: x['number'])
        
        print(f"\n🏆 当天订单列表 (按号码排序):")
        for i, order in enumerate(all_today_orders[:10]):  # 只显示前10条
            marker = "🥇" if i == 0 else f"{i+1:2d}."
            print(f"{marker} {order['tracking']} | {order['load_date']} | {order['receiver'][:30]} | {order['amount']:,}₫")
        
        if len(all_today_orders) > 10:
            print(f"    ... 还有 {len(all_today_orders)-10} 条订单")
        
        # 第一条订单
        first_order = all_today_orders[0]
        print(f"\n🎯 当天第一条订单:")
        print(f"   📦 运单号: {first_order['tracking']}")
        print(f"   📅 发件日期: {first_order['issue_date']}")
        print(f"   ⏰ 装载时间: {first_order['load_date']}")
        print(f"   👤 收件人: {first_order['receiver']}")
        print(f"   💰 金额: {first_order['amount']:,}₫")
        
    else:
        print(f"\n❌ 未找到当天的订单，可能需要扩大扫描范围")

if __name__ == "__main__":
    main()