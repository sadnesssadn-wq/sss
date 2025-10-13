#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import hashlib
import requests
import json
import time
import random

PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"

# 代理池
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
]

# 测试运单号
TEST_CODES = [
    "EP493184248VN",
    "EP492966929VN",
    "EP492886647VN",
    "EP492940379VN",
    "EP492806272VN",
    "EP492892965VN",
    "EP492811462VN",
    "EP492822173VN",
    "EP492894215VN",
    "EP492983480VN",
    "EP493064245VN",
    "EP492669007VN",
    "EP492980072VN",
    "EP492983388VN",
    "EP492972544VN",
    "EP493032551VN",
    "EP493123955VN",
    "EP492968332VN",
    "EP492969488VN",
    "EP492669695VN",
    "EP493110347VN",
    "EP492895462VN",
    "EP493183769VN",
    "EP493155697VN",
]

def parse_proxy(proxy_str):
    """解析代理"""
    parts = proxy_str.split(':')
    if len(parts) == 4:
        ip, port, username, password = parts
        proxy_url = f"http://{username}:{password}@{ip}:{port}"
        return {'http': proxy_url, 'https': proxy_url}, ip
    return None, None

def generate_signature(code):
    """生成签名"""
    data = code.upper() + PRIVATE_KEY
    return hashlib.sha256(data.encode('utf-8')).hexdigest().upper()

def query_order(code, proxy_dict, proxy_ip, max_retries=3):
    """查询订单"""
    url = "https://api-dingdong.ems.com.vn/api/TrackTrace/Lading"
    signature = generate_signature(code)
    payload = {'LadingCode': code.upper(), 'Signature': signature}
    
    for attempt in range(max_retries):
        try:
            response = requests.post(
                url,
                json=payload,
                proxies=proxy_dict,
                timeout=15
            )
            result = response.json()
            api_code = result.get('Code', 'N/A')
            message = result.get('Message', '')
            
            if api_code == '00':
                data = result.get('Value') or result.get('Data')
                if isinstance(data, str):
                    try:
                        data = json.loads(data)
                    except:
                        pass
                
                if isinstance(data, dict):
                    return {
                        'code': code,
                        'api_code': api_code,
                        'status': 'SUCCESS',
                        'receiver': data.get('ReceiverName', ''),
                        'phone': data.get('ReceiverMobile', ''),
                        'value': data.get('Value', 0),
                        'fee': data.get('Fee', 0),
                        'signed': '是' if data.get('SignatureCapture') else '否',
                        'proxy_ip': proxy_ip,
                        'message': message,
                    }
            
            return {
                'code': code,
                'api_code': api_code,
                'status': 'NOT_FOUND' if api_code == '01' else 'ERROR',
                'proxy_ip': proxy_ip,
                'message': message,
            }
            
        except Exception as e:
            if attempt == max_retries - 1:
                return {
                    'code': code,
                    'api_code': 'ERROR',
                    'status': 'EXCEPTION',
                    'proxy_ip': proxy_ip,
                    'message': str(e)[:50],
                }
            time.sleep(0.5)
    
    return None

def main():
    print("="*100)
    print("🧪 代理池测试 - 批量查询运单")
    print("="*100)
    
    print(f"\n📋 测试运单: {len(TEST_CODES)} 个")
    print(f"🔧 代理池: {len(PROXIES)} 个")
    
    print(f"\n🚀 开始测试...\n")
    
    results = []
    success_count = 0
    proxy_index = 0
    
    for i, code in enumerate(TEST_CODES, 1):
        # 轮换使用代理
        proxy_str = PROXIES[proxy_index % len(PROXIES)]
        proxy_dict, proxy_ip = parse_proxy(proxy_str)
        proxy_index += 1
        
        print(f"[{i:2d}/{len(TEST_CODES)}] {code} (代理 {proxy_ip})...", end=' ', flush=True)
        
        result = query_order(code, proxy_dict, proxy_ip)
        
        if result:
            results.append(result)
            
            if result['status'] == 'SUCCESS':
                success_count += 1
                receiver = result.get('receiver', '')[:15]
                phone = result.get('phone', '')
                value = result.get('value', 0)
                fee = result.get('fee', 0)
                signed = result.get('signed', '')
                
                value_str = f"💰{value:,}" if value else ""
                fee_str = f"📦{fee:,}" if fee else ""
                info = f"{value_str} {fee_str}".strip() or "无申报"
                
                print(f"✅ [00] {receiver:15s} | {phone:12s} | {info:20s} | 已签收:{signed}")
            
            elif result['api_code'] == '01':
                print(f"❌ [01] 无数据")
            
            elif result['api_code'] == '98':
                print(f"⚠️  [98] 限流 - {result.get('message', '')[:30]}")
            
            else:
                msg = result.get('message', '')[:30]
                print(f"❌ [{result['api_code']}] {msg}")
        
        time.sleep(0.3)  # 避免太快
    
    # 统计
    print("\n" + "="*100)
    print("📊 测试结果")
    print("="*100)
    
    print(f"\n总测试: {len(TEST_CODES)}")
    print(f"成功查到: {success_count}")
    print(f"失败: {len(TEST_CODES) - success_count}")
    
    # API Code统计
    from collections import Counter
    code_counter = Counter([r['api_code'] for r in results])
    
    print(f"\n📈 API Code 分布:")
    for api_code, count in code_counter.most_common():
        pct = count / len(results) * 100 if results else 0
        code_name = {
            '00': '成功',
            '01': '无数据',
            '98': '限流',
            'ERROR': '错误',
        }.get(api_code, api_code)
        print(f"  {api_code:6s} ({code_name}): {count:2d} ({pct:.1f}%)")
    
    # 成功的订单详情
    if success_count > 0:
        print(f"\n✅ 成功查到的订单:")
        for result in results:
            if result['status'] == 'SUCCESS':
                print(f"  {result['code']} | {result.get('receiver', ''):15s} | {result.get('phone', ''):12s}")
    
    print("\n" + "="*100)

if __name__ == '__main__':
    main()
