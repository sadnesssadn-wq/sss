#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
无代理版本 - 先测试能否找到订单
并发降低到20，避免被封
"""

import hashlib
import requests
import json
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading
import time

# ==================== 配置 ====================
API_URL = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TODAY = datetime.now().strftime("%d/%m/%Y")
print_lock = threading.Lock()
request_lock = threading.Lock()
found_lock = threading.Lock()

request_count = 0
found_orders = []
failed_count = 0

def sign(text):
    return hashlib.sha256((text + API_KEY).encode()).hexdigest().upper()

def safe_print(msg):
    with print_lock:
        print(msg)

def is_today(date_str):
    if not date_str:
        return False
    return TODAY in str(date_str)

def check_order(tracking):
    """检查订单，返回详细信息用于诊断"""
    global request_count, failed_count
    
    with request_lock:
        request_count += 1
        current_count = request_count
    
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
                
                # 检查是否是今天
                if is_today(issue_date) or is_today(load_date):
                    order_info = {
                        'tracking': tracking,
                        'IssueDate': issue_date,
                        'LoadDate': load_date,
                        'SenderName': value.get('SenderName', ''),
                        'ReceiverName': value.get('ReceiverName', ''),
                        'CollectAmount': value.get('CollectAmount', 0),
                    }
                    
                    with found_lock:
                        found_orders.append(order_info)
                    
                    safe_print(f"✅ #{current_count} {tracking} - 今日订单！日期: {issue_date}")
                    return ('today', order_info)
                else:
                    # 显示前几个非今日订单，用于确认API工作
                    if current_count <= 5:
                        safe_print(f"📅 #{current_count} {tracking} - 非今日 ({issue_date})")
                    return ('not_today', issue_date)
            else:
                # API返回但没有数据
                if current_count <= 5:
                    safe_print(f"⚪ #{current_count} {tracking} - 订单不存在 (Code: {result.get('Code')})")
                return ('not_exist', None)
        else:
            with request_lock:
                failed_count += 1
            if failed_count <= 3:
                safe_print(f"❌ #{current_count} {tracking} - HTTP {response.status_code}")
            return ('failed', None)
            
    except requests.exceptions.Timeout:
        with request_lock:
            failed_count += 1
        if failed_count <= 3:
            safe_print(f"⏱️  #{current_count} {tracking} - 超时")
        return ('timeout', None)
    except Exception as e:
        with request_lock:
            failed_count += 1
        if failed_count <= 3:
            safe_print(f"❌ #{current_count} {tracking} - 错误: {e}")
        return ('error', None)

def parallel_scan(prefix, start, end, step=1, max_workers=20):
    """并发扫描"""
    safe_print(f"\n🔍 [{prefix}] 扫描: {start:09d} - {end:09d} (步长: {step})")
    
    start_time = time.time()
    tested = 0
    
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        futures = []
        
        for num in range(start, end, step):
            tracking = f"{prefix}{num:09d}VN"
            futures.append(executor.submit(check_order, tracking))
            
            # 每提交100个任务，暂停一下避免过载
            if len(futures) % 100 == 0:
                time.sleep(0.1)
        
        total_tasks = len(futures)
        
        for future in as_completed(futures):
            tested += 1
            
            if tested % 200 == 0:
                elapsed = time.time() - start_time
                speed = tested / elapsed if elapsed > 0 else 0
                progress = tested * 100 / total_tasks
                safe_print(f"   进度: {tested}/{total_tasks} ({progress:.1f}%) | {speed:.1f} req/s | 成功: {len(found_orders)}")
            
            try:
                future.result()
            except:
                pass
    
    elapsed = time.time() - start_time
    speed = tested / elapsed if elapsed > 0 else 0
    safe_print(f"✓ [{prefix}] 完成，耗时 {elapsed:.1f}s，速度 {speed:.1f} req/s，找到 {len(found_orders)} 条\n")

def main():
    print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║                  🔍 无代理测试版 - 诊断问题                                  ║
╚════════════════════════════════════════════════════════════════════════════╝

📅 今天日期: {TODAY}
⚡ 策略: 无代理，低并发(20)，先确认API是否正常
🎯 目标: 找到今天的订单

""")
    
    start_time = datetime.now()
    
    print("=" * 80)
    print("📡 测试连接")
    print("=" * 80)
    
    # 先测试你知道的那个订单
    print("\n测试已知订单: EP493018285VN")
    result_type, data = check_order("EP493018285VN")
    
    if result_type == 'failed' or result_type == 'error' or result_type == 'timeout':
        print(f"\n❌ 连接失败！")
        print(f"可能原因：")
        print(f"1. API地址或密钥已失效")
        print(f"2. 网络连接问题")
        print(f"3. API服务器拒绝连接")
        return
    elif result_type == 'today':
        print(f"✅ 连接正常！这个订单确实是今天的")
    elif result_type == 'not_today':
        print(f"✅ 连接正常，但这个订单不是今天的 (日期: {data})")
    else:
        print(f"⚪ 连接正常，但订单不存在")
    
    time.sleep(2)
    
    print("\n" + "=" * 80)
    print("🔍 开始扫描（范围较小，避免被封）")
    print("=" * 80)
    
    # 缩小扫描范围，快速测试
    SCAN_PLANS = [
        # EP系列 - 围绕你测试的订单
        ('EP', 493018200, 493018400, 1),  # 只扫200个号
        
        # 如果上面找到了，再扩大范围
        # ('EP', 493017000, 493019000, 2),
    ]
    
    for prefix, start, end, step in SCAN_PLANS:
        parallel_scan(prefix, start, end, step, max_workers=20)
        time.sleep(1)  # 每个范围之间暂停
    
    # ==================== 显示结果 ====================
    print("\n" + "=" * 80)
    print("📊 扫描结果")
    print("=" * 80)
    
    if found_orders:
        found_orders.sort(key=lambda x: x['tracking'])
        
        print(f"\n✅ 找到 {len(found_orders)} 条今天的订单！\n")
        
        for i, order in enumerate(found_orders, 1):
            print(f"{i}. {order['tracking']}")
            print(f"   日期: {order['IssueDate']}")
            print(f"   收件人: {order['ReceiverName']}")
            print(f"   金额: {order['CollectAmount']:,}₫\n")
        
        print("=" * 80)
        print("🏆 第一条订单（编号最小）:")
        print("=" * 80)
        first = found_orders[0]
        print(f"""
运单号: {first['tracking']}
日期: {first['IssueDate']}
收件人: {first['ReceiverName']}
金额: {first['CollectAmount']:,}₫
""")
        
        # 保存结果
        output = {
            'scan_date': TODAY,
            'total_found': len(found_orders),
            'first_order': first,
            'all_orders': found_orders
        }
        
        filename = f"result_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump(output, f, ensure_ascii=False, indent=2)
        
        print(f"💾 结果已保存: {filename}")
        
    else:
        print(f"\n❌ 在扫描范围内未找到今天的订单")
        print(f"\n可能的原因：")
        print(f"1. 扫描范围不对（今天的订单不在这个范围）")
        print(f"2. 今天这个时间段还没有新订单")
        print(f"3. 需要扫描其他系列（EG, EF, EK...）")
    
    elapsed = (datetime.now() - start_time).total_seconds()
    
    print("\n" + "=" * 80)
    print("📈 统计信息")
    print("=" * 80)
    print(f"总请求数: {request_count}")
    print(f"失败请求: {failed_count}")
    print(f"成功率: {(request_count-failed_count)*100/request_count:.1f}%" if request_count > 0 else "0%")
    print(f"总耗时: {elapsed:.1f} 秒")
    print(f"平均速度: {request_count/elapsed:.1f} 请求/秒" if elapsed > 0 else "N/A")
    print("\n" + "=" * 80)

if __name__ == "__main__":
    main()
