#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import hashlib
import requests
import json
import time
import random

PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"

# 100个代理池（完整版）
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

def query_order_with_retry(code, max_retries=10):
    """查询订单 - 遇到98自动换代理重试"""
    proxy_index = 0
    
    for retry in range(max_retries):
        # 轮换使用代理
        proxy_str = PROXIES[proxy_index % len(PROXIES)]
        proxy_dict, proxy_ip = parse_proxy(proxy_str)
        proxy_index += 1
        
        result = query_order(code, proxy_dict, proxy_ip, max_retries=1)
        
        # 如果不是98，返回结果
        if result and result['api_code'] != '98':
            return result
        
        # 如果是98，打印并换代理重试
        if result and result['api_code'] == '98':
            print(f"98..", end='', flush=True)
            time.sleep(0.2)
            continue
    
    return {'code': code, 'api_code': 'MAX_RETRY', 'status': 'FAILED', 'message': '换了10次代理都是98'}

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
        print(f"[{i:2d}/{len(TEST_CODES)}] {code}...", end=' ', flush=True)
        
        result = query_order_with_retry(code)
        
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
