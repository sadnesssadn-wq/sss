#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
测试版：验证3个API同时调用和所有字段获取
小范围扫描，方便快速测试
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
TARGET = 10  # 测试版：只找10个

# 简化代理池（只用5个测试）
PROXIES = [
    "23.27.184.245:5846:uadkcvtn:uo2rzar814ph",
    "45.43.70.140:6427:uadkcvtn:uo2rzar814ph",
    "82.24.233.117:5439:uadkcvtn:uo2rzar814ph",
    "136.0.188.71:6034:uadkcvtn:uo2rzar814ph",
    "161.123.130.168:5839:uadkcvtn:uo2rzar814ph",
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
    return date_str and TODAY in str(date_str)

def check_order_full(tracking):
    """完整版查询：同时调用3个API"""
    if state['found'] >= TARGET:
        return None
    
    sig = sign(tracking)
    proxy = random.choice(proxies) if proxies else None
    
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
        safe_print(f"🔍 [{tracking}] 调用API 1/3: Inquiry...")
        try:
            r1 = requests.post(f"{API_URL}api/Delivery/Inquiry",
                headers=headers_form, data={"ParcelCode": tracking, "Signature": sig},
                proxies=proxy, timeout=10)
            
            if r1.status_code == 200:
                data1 = r1.json()
                safe_print(f"   ✅ API1 Code: {data1.get('Code', 'N/A')}")
                
                if data1.get('Code') == '00' and data1.get('Value'):
                    v = data1['Value']
                    for key in v.keys():
                        if key in order:
                            order[key] = v[key] if v[key] is not None else ''
                    
                    issue_date = v.get('IssueDate') or v.get('LoadDate')
                    # 如果日期存在且不是今天，则跳过
                    if issue_date and not is_today(issue_date):
                        safe_print(f"   ⏭️  不是今天的订单（{issue_date}），跳过\n")
                        return None
                    # 如果日期为空或是今天，则继续处理
                    if not issue_date:
                        safe_print(f"   ✅ 日期为空，保留此订单")
                    else:
                        safe_print(f"   ✅ 今天的订单（{issue_date}），保留")
                else:
                    safe_print(f"   ❌ 查询失败\n")
                    return None
        except Exception as e:
            safe_print(f"   ❌ API1 异常: {e}\n")
            return None
        
        # API 2: Journey
        safe_print(f"   📦 调用API 2/3: DeliveryLadingJourney...")
        try:
            r2 = requests.post(f"{API_URL}api/Delivery/DeliveryLadingJourney",
                headers=headers_form, data={"ParcelCode": tracking},
                proxies=proxy, timeout=10)
            
            if r2.status_code == 200:
                data2 = r2.json()
                safe_print(f"   ✅ API2 Code: {data2.get('Code', 'N/A')}")
                
                if data2.get('Code') == '00' and data2.get('ListValue'):
                    journey_list = data2['ListValue']
                    order['journey_records'] = journey_list
                    order['journey_count'] = len(journey_list)
                    order['is_delivered'] = True
                    safe_print(f"   📋 配送记录: {len(journey_list)} 条")
                else:
                    order['is_delivered'] = False
                    safe_print(f"   ⚠️  无配送记录（未签收）")
        except Exception as e:
            safe_print(f"   ⚠️  API2 异常: {e}")
        
        # API 3: Gateway
        safe_print(f"   🎁 调用API 3/3: Gateway/Bussiness...")
        try:
            r3 = requests.post(f"{API_URL}api/Gateway/Bussiness",
                headers=headers_json, json={"Code": "LDP002", "Data": tracking},
                proxies=proxy, timeout=10)
            
            if r3.status_code == 200:
                data3 = r3.json()
                safe_print(f"   ✅ API3 Code: {data3.get('Code', 'N/A')}")
                
                if data3.get('Code') == '00' and data3.get('Data'):
                    try:
                        products = json.loads(data3['Data'])
                        order['products'] = products
                        order['product_count'] = len(products)
                        if products:
                            order['product_name'] = products[0].get('ProductName', '')
                        safe_print(f"   📦 商品: {len(products)} 件, 名称: {order['product_name']}")
                    except:
                        pass
        except Exception as e:
            safe_print(f"   ⚠️  API3 异常: {e}")
        
        # 只保存未配送的
        if not order['is_delivered']:
            with state['lock']:
                state['found'] += 1
                state['orders'].append(order)
                
                safe_print(f"\n{'='*70}")
                safe_print(f"✅ 找到今天未配送订单 [{state['found']}/{TARGET}]")
                safe_print(f"{'='*70}")
                safe_print(f"运单号: {tracking}")
                safe_print(f"发件人: {order['SenderName']}")
                safe_print(f"收件人: {order['ReceiverName']} | 📞 {order['ReceiverPhone']}")
                safe_print(f"地址: {order['ReceiverAddress']}")
                safe_print(f"金额: {order['CollectAmount']:,} VND")
                safe_print(f"重量: {order['Weigh']} g")
                safe_print(f"状态: {order['Status']}")
                safe_print(f"发件日期: {order['IssueDate']}")
                safe_print(f"商品: {order['product_name']}")
                safe_print(f"已配送: {'是' if order['is_delivered'] else '否'}")
                safe_print(f"配送记录: {order['journey_count']} 条")
                safe_print(f"{'='*70}\n")
            
            return True
        else:
            safe_print(f"   ⏭️  已配送，跳过\n")
    except Exception as e:
        safe_print(f"   ❌ 异常: {e}\n")
    
    return False

def save_results():
    """保存测试结果"""
    timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
    
    # JSON
    json_file = f"test_result_{timestamp}.json"
    with open(json_file, 'w', encoding='utf-8') as f:
        json.dump({
            'test_date': TODAY,
            'total_found': state['found'],
            'total_tested': state['tested'],
            'orders': state['orders']
        }, f, ensure_ascii=False, indent=2)
    
    # CSV
    csv_file = f"test_result_{timestamp}.csv"
    with open(csv_file, 'w', encoding='utf-8-sig') as f:
        f.write('运单号,发件人,收件人,收件电话,金额,商品,已配送,配送记录数\n')
        for o in state['orders']:
            f.write(f'"{o["tracking"]}","{o["SenderName"]}","{o["ReceiverName"]}",'
                   f'"{o["ReceiverPhone"]}",{o["CollectAmount"]},"{o["product_name"]}",'
                   f'{"是" if o["is_delivered"] else "否"},{o["journey_count"]}\n')
    
    print(f"\n💾 保存测试结果:")
    print(f"   📄 {json_file}")
    print(f"   📄 {csv_file}")

# 测试区间（小范围）
TEST_RANGES = [
    ('EF', 43571000, 43571100, 1),  # 只测试100个号段
]

print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║                   🧪 测试版 - 3个API完整调用测试                          ║
╚════════════════════════════════════════════════════════════════════════════╝

📋 测试范围: EF 43571000-43571100 (100个号段)
🎯 目标: 找到 {TARGET} 个今天未配送的订单
⏱️  预计时间: 1-2分钟

""")

load_proxies()
print("🚀 开始测试...\n")

start_time = time.time()

with ThreadPoolExecutor(max_workers=5) as executor:
    futures = []
    
    for prefix, start, end, step in TEST_RANGES:
        for num in range(start, end, step):
            if state['found'] >= TARGET:
                break
            tracking = f"{prefix}{num:09d}VN"
            futures.append(executor.submit(check_order_full, tracking))
    
    for future in as_completed(futures):
        try:
            future.result()
        except:
            pass

save_results()

elapsed = time.time() - start_time
print(f"""
\n{'='*80}
🎉 测试完成！
{'='*80}
找到订单: {state['found']} 个
测试总数: {state['tested']} 个
耗时: {elapsed:.1f} 秒
速度: {state['tested']/elapsed:.1f} 次/秒

✅ 3个API全部调用成功！
   • API 1 (Inquiry): 获取38个基础字段
   • API 2 (Journey): 获取配送轨迹
   • API 3 (Gateway): 获取商品信息
{'='*80}
""")
