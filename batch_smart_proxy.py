#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
智能批量查询工具 - 完整版
特点：
1. 实时显示HTTP和API状态码
2. 检测限流(Code 98)自动换代理
3. 包含发件人信息
4. 包含运费信息
5. 持续重试直到成功
"""

import hashlib
import requests
import json
import time
import random
import os
from datetime import datetime

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

proxies = []
proxy_blacklist = set()
proxy_stats = {}

RATE_LIMIT_CODES = ["98", "429", "503"]

def load_proxies():
    """加载代理列表"""
    global proxies, proxy_stats
    try:
        with open("proxy_list.txt", 'r') as f:
            for line in f:
                line = line.strip()
                if line and not line.startswith('#'):
                    parts = line.split(':')
                    if len(parts) == 4:
                        ip, port, user, pwd = parts
                        proxy_key = f"{ip}:{port}"
                        proxy = {
                            'key': proxy_key,
                            'http': f'http://{user}:{pwd}@{ip}:{port}',
                            'https': f'http://{user}:{pwd}@{ip}:{port}'
                        }
                        proxies.append(proxy)
                        proxy_stats[proxy_key] = {"success": 0, "fail": 0, "rate_limit": 0}
        print(f"✅ 加载 {len(proxies)} 个代理\n")
        return True
    except:
        print("⚠️  无代理文件，使用直连\n")
        return False

def get_working_proxy():
    """获取可用代理"""
    if not proxies:
        return None
    working = [p for p in proxies if p['key'] not in proxy_blacklist]
    if not working:
        proxy_blacklist.clear()
        working = proxies
    return random.choice(working)

def mark_proxy_status(proxy_key, status_type):
    """标记代理状态"""
    if proxy_key and proxy_key in proxy_stats:
        proxy_stats[proxy_key][status_type] += 1
        stats = proxy_stats[proxy_key]
        if stats['rate_limit'] >= 3 or stats['fail'] >= 5:
            proxy_blacklist.add(proxy_key)

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def check_rate_limit(response_data):
    """检查是否被限流"""
    if isinstance(response_data, dict):
        code = str(response_data.get('Code', ''))
        if code in RATE_LIMIT_CODES:
            return True
        message = str(response_data.get('Message', '')).lower()
        if any(k in message for k in ['limit', 'too many', 'rate']):
            return True
    return False

def call_api_with_status(url, headers, data=None, json_data=None, api_name="API"):
    """调用API并实时显示状态，遇到限流自动换代理"""
    max_attempts = 20
    
    for attempt in range(max_attempts):
        proxy = get_working_proxy()
        proxy_key = proxy['key'] if proxy else "直连"
        
        try:
            print(f"      [{api_name}] 代理:{proxy_key[:20]}... ", end="")
            
            if json_data:
                r = requests.post(url, headers=headers, json=json_data,
                                proxies=proxy if proxy else None, timeout=15)
            else:
                r = requests.post(url, headers=headers, data=data,
                                proxies=proxy if proxy else None, timeout=15)
            
            print(f"HTTP:{r.status_code}", end=" ")
            
            if r.status_code == 200:
                response_data = r.json()
                api_code = response_data.get('Code', 'N/A')
                api_message = response_data.get('Message', '')[:20]
                
                print(f"Code:{api_code} {api_message}", end=" ")
                
                if check_rate_limit(response_data):
                    print(f"⚠️  限流！换代理")
                    if proxy:
                        mark_proxy_status(proxy_key, 'rate_limit')
                    time.sleep(1)
                    continue
                
                print(f"✅")
                if proxy:
                    mark_proxy_status(proxy_key, 'success')
                return response_data
            else:
                print(f"❌")
                if proxy:
                    mark_proxy_status(proxy_key, 'fail')
                time.sleep(0.5)
                continue
        
        except requests.exceptions.Timeout:
            print(f"⏱️  超时")
            if proxy:
                mark_proxy_status(proxy_key, 'fail')
            continue
        except Exception as e:
            print(f"❌ {str(e)[:20]}")
            if proxy:
                mark_proxy_status(proxy_key, 'fail')
            time.sleep(0.5)
            continue
    
    print(f"      [{api_name}] ❌ 尝试{max_attempts}次失败")
    return None

def query_tracking_smart(tracking):
    """智能查询 - 实时显示状态"""
    
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
        "delivered": False,
        "sender_name": "",
        "sender_address": "",
        "sender_phone": "",
        "receiver": "",
        "receiver_address": "",
        "phone": "",
        "amount": 0,
        "weight": "",
        "fee_ship": 0,
        "fee_ppa": 0,
        "fee_c": 0,
        "product": "",
        "delivery_date": "",
        "signature": "",
        "instruction": "",
        "issue_date": "",
        "load_date": ""
    }
    
    # API 1: Inquiry
    inquiry = call_api_with_status(
        f"{API_URL}api/Delivery/Inquiry",
        headers_form,
        data={"ParcelCode": tracking, "Signature": sig},
        api_name="Inquiry"
    )
    
    if inquiry and inquiry.get('Value'):
        v = inquiry['Value']
        result['valid'] = True
        result['sender_name'] = v.get('SenderName', '')
        result['sender_address'] = v.get('SenderAddress', '')
        result['sender_phone'] = v.get('SenderPhone', '')
        result['receiver'] = v.get('ReceiverName', '')
        result['receiver_address'] = v.get('ReceiverAddress', '')
        result['phone'] = v.get('ReceiverPhone', '')
        result['amount'] = v.get('CollectAmount', 0)
        result['weight'] = v.get('Weigh', '')
        result['fee_ship'] = v.get('FeeShip', 0)
        result['fee_ppa'] = v.get('FeePPA', 0)
        result['fee_c'] = v.get('FeeC', 0)
        result['issue_date'] = v.get('IssueDate', '')
        result['load_date'] = v.get('LoadDate', '')
    
    # API 2: Journey
    journey = call_api_with_status(
        f"{API_URL}api/Delivery/DeliveryLadingJourney",
        headers_form,
        data={"ParcelCode": tracking},
        api_name="Journey"
    )
    
    if journey and journey.get('ListValue'):
        rec = journey['ListValue'][0]
        result['delivered'] = True
        result['delivery_date'] = rec.get('DeliveryDate', '')
        result['signature'] = rec.get('DeliverySignature', '')
        result['instruction'] = rec.get('Instruction', '')
    
    # API 3: Gateway
    gateway = call_api_with_status(
        f"{API_URL}api/Gateway/Bussiness",
        headers_json,
        json_data={"Code": "LDP002", "Data": tracking},
        api_name="Gateway"
    )
    
    if gateway and gateway.get('Data'):
        try:
            products = json.loads(gateway['Data'])
            if products:
                result['product'] = products[0].get('ProductName', '')
        except:
            pass
    
    return result

def batch_query_smart():
    """智能批量查询"""
    
    print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                  🔥 智能批量查询工具 - 完整版 🔥                           ║
║                                                                            ║
║  ✅ 实时显示HTTP和API状态码                                               ║
║  ✅ 检测限流自动换代理                                                    ║
║  ✅ 包含发件人完整信息                                                    ║
║  ✅ 包含运费和所有费用                                                    ║
║  ✅ 持续重试直到成功                                                      ║
╚════════════════════════════════════════════════════════════════════════════╝
    """)
    
    load_proxies()
    
    if not os.path.exists("key.txt"):
        print("❌ key.txt 不存在")
        return
    
    with open("key.txt", 'r') as f:
        trackings = [line.strip() for line in f 
                    if line.strip() and not line.startswith('#')]
    
    if not trackings:
        print("❌ key.txt 为空")
        return
    
    print(f"📋 运单数: {len(trackings)}\n")
    print("="*80)
    print("开始查询...\n")
    
    results = []
    start_time = time.time()
    
    for idx, tracking in enumerate(trackings, 1):
        print(f"\n{'='*80}")
        print(f"[{idx}/{len(trackings)}] 🔍 {tracking}")
        print(f"{'='*80}")
        
        info = query_tracking_smart(tracking)
        results.append(info)
        
        print(f"\n    📊 结果: ", end="")
        if info['valid']:
            status = "✅ 已配送" if info['delivered'] else "⏳ 未配送"
            print(f"{status}")
            
            if info['sender_name']:
                print(f"    📤 发件人: {info['sender_name']}")
            if info['sender_address']:
                print(f"    📍 发件地址: {info['sender_address']}")
            if info['sender_phone']:
                print(f"    ☎️  发件电话: {info['sender_phone']}")
            
            print(f"    👤 收件人: {info['receiver']}")
            if info['receiver_address']:
                print(f"    📍 收件地址: {info['receiver_address']}")
            if info['phone']:
                print(f"    📞 收件电话: {info['phone']}")
            
            if info['amount']:
                print(f"    💰 COD金额: {info['amount']:,} VND")
            print(f"    🚚 运费: {info['fee_ship']} VND")
            if info['fee_ppa']:
                print(f"    💵 PPA费: {info['fee_ppa']} VND")
            if info['weight']:
                print(f"    ⚖️  重量: {info['weight']} g")
            
            if info['product'] and info['product'] != "***":
                print(f"    📦 商品: {info['product']}")
            
            if info['delivery_date']:
                print(f"    ⏰ 配送时间: {info['delivery_date']}")
            if info['issue_date']:
                print(f"    📅 发件日期: {info['issue_date']}")
        else:
            print(f"❌ 运单无效")
        
        time.sleep(0.3)
    
    elapsed = time.time() - start_time
    
    print("\n\n" + "="*80)
    print(" "*30 + "📊 统计")
    print("="*80)
    
    valid = sum(1 for r in results if r['valid'])
    delivered = sum(1 for r in results if r['delivered'])
    has_product = sum(1 for r in results if r['product'] and r['product'] != "***")
    
    print(f"\n总数: {len(trackings)}")
    print(f"✅ 有效: {valid} ({valid/len(trackings)*100:.1f}%)")
    print(f"✅ 已配送: {delivered}")
    print(f"⏳ 未配送: {valid - delivered}")
    print(f"📦 商品信息: {has_product}")
    print(f"⏱️  耗时: {elapsed:.1f}秒")
    
    if proxies:
        print(f"\n代理统计:")
        print(f"  总数: {len(proxies)}")
        print(f"  黑名单: {len(proxy_blacklist)}")
    
    # 保存CSV
    timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
    csv_file = f"results_{timestamp}.csv"
    
    with open(csv_file, 'w', encoding='utf-8') as f:
        f.write("运单号,状态,发件人,发件地址,发件电话,收件人,收件地址,收件电话,"
                "COD金额,重量,运费,PPA费,C费,商品名称,发件日期,装车日期,配送时间,签名照片,配送指令\n")
        for r in results:
            if r['valid']:
                f.write(f'"{r["tracking"]}",')
                f.write(f'"{"已配送" if r["delivered"] else "未配送"}",')
                f.write(f'"{r["sender_name"]}",')
                f.write(f'"{r["sender_address"]}",')
                f.write(f'"{r["sender_phone"]}",')
                f.write(f'"{r["receiver"]}",')
                f.write(f'"{r["receiver_address"]}",')
                f.write(f'"{r["phone"]}",')
                f.write(f'"{r["amount"]}",')
                f.write(f'"{r["weight"]}",')
                f.write(f'"{r["fee_ship"]}",')
                f.write(f'"{r["fee_ppa"]}",')
                f.write(f'"{r["fee_c"]}",')
                f.write(f'"{r["product"]}",')
                f.write(f'"{r["issue_date"]}",')
                f.write(f'"{r["load_date"]}",')
                f.write(f'"{r["delivery_date"]}",')
                f.write(f'"{r["signature"]}",')
                f.write(f'"{r["instruction"]}"\n')
    
    print(f"\n✅ CSV已保存: {csv_file}")
    
    json_file = f"results_{timestamp}.json"
    with open(json_file, 'w', encoding='utf-8') as f:
        json.dump({"results": results, "proxy_stats": proxy_stats}, 
                 f, indent=2, ensure_ascii=False)
    print(f"✅ JSON已保存: {json_file}")

if __name__ == "__main__":
    batch_query_smart()
