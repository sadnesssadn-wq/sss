#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
简化版批量查询 - 支持代理池
稳定、快速、不死机
"""

import hashlib
import requests
import json
import time
import random
import os

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

proxies = []

def load_proxies():
    """加载代理"""
    global proxies
    try:
        with open("proxy_list.txt", 'r') as f:
            for line in f:
                line = line.strip()
                if line and not line.startswith('#'):
                    parts = line.split(':')
                    if len(parts) == 4:
                        ip, port, user, pwd = parts
                        proxy = {
                            'http': f'http://{user}:{pwd}@{ip}:{port}',
                            'https': f'http://{user}:{pwd}@{ip}:{port}'
                        }
                        proxies.append(proxy)
        print(f"✅ 加载 {len(proxies)} 个代理\n")
    except:
        print("⚠️  无代理文件，使用直连\n")

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def query_with_retry(tracking, max_retry=3):
    """查询运单 - 支持重试和代理"""
    
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
        "receiver": "",
        "phone": "",
        "amount": 0,
        "product": "",
        "delivery_date": "",
        "signature": ""
    }
    
    for attempt in range(max_retry):
        try:
            proxy = random.choice(proxies) if proxies else None
            
            # Inquiry
            r = requests.post(f"{API_URL}api/Delivery/Inquiry",
                            headers=headers_form,
                            data={"ParcelCode": tracking, "Signature": sig},
                            proxies=proxy, timeout=10)
            
            if r.status_code == 200:
                data = r.json()
                if data.get('Value'):
                    v = data['Value']
                    result['valid'] = True
                    result['receiver'] = v.get('ReceiverName', '')
                    result['phone'] = v.get('ReceiverPhone', '')
                    result['amount'] = v.get('CollectAmount', 0)
            
            # Journey
            r = requests.post(f"{API_URL}api/Delivery/DeliveryLadingJourney",
                            headers=headers_form,
                            data={"ParcelCode": tracking},
                            proxies=proxy, timeout=10)
            
            if r.status_code == 200:
                data = r.json()
                if data.get('ListValue'):
                    rec = data['ListValue'][0]
                    result['delivered'] = True
                    result['delivery_date'] = rec.get('DeliveryDate', '')
                    result['signature'] = rec.get('DeliverySignature', '')
            
            # Gateway - 商品
            r = requests.post(f"{API_URL}api/Gateway/Bussiness",
                            headers=headers_json,
                            json={"Code": "LDP002", "Data": tracking},
                            proxies=proxy, timeout=10)
            
            if r.status_code == 200:
                data = r.json()
                if data.get('Data'):
                    products = json.loads(data['Data'])
                    if products:
                        result['product'] = products[0].get('ProductName', '')
            
            return result
            
        except Exception as e:
            if attempt < max_retry - 1:
                time.sleep(1)
                continue
            else:
                return result
    
    return result

def batch_query():
    """批量查询主函数"""
    
    print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                    🚀 批量查询工具 - 代理池版 🚀                           ║
╚════════════════════════════════════════════════════════════════════════════╝
    """)
    
    # 加载代理
    load_proxies()
    
    # 读取运单
    if not os.path.exists("key.txt"):
        print("❌ key.txt 不存在")
        return
    
    with open("key.txt", 'r') as f:
        trackings = [line.strip() for line in f 
                    if line.strip() and not line.startswith('#')]
    
    print(f"📋 运单数: {len(trackings)}\n")
    print("="*60)
    
    results = []
    
    for idx, tracking in enumerate(trackings, 1):
        print(f"[{idx}/{len(trackings)}] {tracking} ...", end=" ")
        
        info = query_with_retry(tracking)
        results.append(info)
        
        if info['valid']:
            status = "✅ 已配送" if info['delivered'] else "⏳ 未配送"
            print(f"{status}")
            if info['product'] and info['product'] != "***":
                print(f"    商品: {info['product']}")
        else:
            print("❌ 无效")
        
        time.sleep(0.2)  # 避免过快
    
    # 统计
    print("\n" + "="*60)
    print("📊 统计")
    print("="*60)
    
    valid = sum(1 for r in results if r['valid'])
    delivered = sum(1 for r in results if r['delivered'])
    has_product = sum(1 for r in results if r['product'] and r['product'] != "***")
    
    print(f"总数: {len(trackings)}")
    print(f"有效: {valid} ({valid/len(trackings)*100:.0f}%)")
    print(f"已配送: {delivered}")
    print(f"商品信息: {has_product}")
    
    # 保存CSV
    csv_file = f"results_{int(time.time())}.csv"
    with open(csv_file, 'w', encoding='utf-8') as f:
        f.write("运单号,状态,收件人,电话,金额,商品,配送时间,签名\n")
        for r in results:
            if r['valid']:
                f.write(f'"{r["tracking"]}",')
                f.write(f'"{"已配送" if r["delivered"] else "未配送"}",')
                f.write(f'"{r["receiver"]}",')
                f.write(f'"{r["phone"]}",')
                f.write(f'"{r["amount"]}",')
                f.write(f'"{r["product"]}",')
                f.write(f'"{r["delivery_date"]}",')
                f.write(f'"{r["signature"]}"\n')
    
    print(f"\n✅ CSV已保存: {csv_file}")
    
    # JSON
    json_file = f"results_{int(time.time())}.json"
    with open(json_file, 'w', encoding='utf-8') as f:
        json.dump(results, f, indent=2, ensure_ascii=False)
    
    print(f"✅ JSON已保存: {json_file}")

if __name__ == "__main__":
    batch_query()
