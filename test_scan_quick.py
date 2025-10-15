#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
快速验证版本 - 只扫描已知有订单的核心区域
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
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": API_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    try:
        r = requests.post(API_URL, 
            headers=headers,
            data={"ParcelCode": tracking, "Signature": sig}, 
            timeout=10)
        
        if r.status_code == 200:
            result = r.json()
            if result.get('Code') == '00' and result.get('Value'):
                v = result['Value']
                
                issue_date = v.get('IssueDate', '')
                load_date = v.get('LoadDate', '')
                delivery_date = v.get('DeliveryDate', '')
                
                # 判断：今天的订单 且 未配送
                is_today = TODAY in str(issue_date) or TODAY in str(load_date)
                is_undelivered = not delivery_date
                
                if is_today and is_undelivered:
                    return {
                        'tracking': tracking,
                        'issue_date': issue_date,
                        'load_date': load_date,
                        'receiver': v.get('ReceiverName', ''),
                        'phone': v.get('ReceiverPhone', ''),
                        'cod': v.get('CollectAmount', 0),
                    }
    except:
        pass
    
    return None

print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║                   🧪 快速验证 - 扫描核心区域                              ║
╚════════════════════════════════════════════════════════════════════════════╝

📅 今天: {TODAY}
🎯 目标: 验证脚本能否找到已知的4个未配送订单

测试范围:
  🔵 EP493011000 - EP493011200 (包含 EP493011083)
  🔵 EP493018200 - EP493018400 (包含 EP493018285)
  🟢 EF047530700 - EF047530900 (包含 EF047530814)
  🟢 EF047535000 - EF047535100 (包含 EF047535034)

开始验证...
""")

test_ranges = [
    ('EP', 493011000, 493011200),
    ('EP', 493018200, 493018400),
    ('EF', 47530700, 47530900),
    ('EF', 47535000, 47535100),
]

found = []
tested = 0
start_time = time.time()

for series, start, end in test_ranges:
    print(f"\n🔍 扫描 {series}{start:09d} - {series}{end:09d} ...")
    
    for num in range(start, end):
        tracking = f"{series}{num:09d}VN"
        tested += 1
        
        result = check_order(tracking)
        if result:
            found.append(result)
            print(f"✅ 找到: {result['tracking']} - {result['receiver'][:20]} - {result['cod']:,}₫ - {result['load_date']}")
        
        if tested % 50 == 0:
            elapsed = time.time() - start_time
            speed = tested / elapsed if elapsed > 0 else 0
            print(f"   进度: {tested} | 找到: {len(found)} | {speed:.1f}/s")

elapsed = time.time() - start_time

print(f"""
\n{'='*80}
🎉 验证完成！
{'='*80}
测试数量: {tested}
找到订单: {len(found)}
耗时: {elapsed:.1f}秒
速度: {tested/elapsed:.1f} 次/秒

找到的未配送订单:
""")

for order in found:
    print(f"  ✅ {order['tracking']}")
    print(f"     收件人: {order['receiver']}")
    print(f"     电话: {order['phone']}")
    print(f"     COD: {order['cod']:,}₫")
    print(f"     时间: {order['load_date']}")
    print()

print("=" * 80)

if len(found) >= 2:
    print("✅ 验证成功！脚本能够正确找到未配送订单！")
else:
    print("⚠️  找到的订单少于预期，可能需要检查代理或API状态")

print("=" * 80)
