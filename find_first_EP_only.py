#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
只扫描EP系列 - 找第一条今日订单
"""

import hashlib
import requests
import json
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading
import time
import os

# ==================== 配置 ====================
API_URL = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TODAY = datetime.now().strftime("%d/%m/%Y")

# 代理池
class ProxyPool:
    def __init__(self):
        self.proxies = []
        self.current_index = 0
        self.lock = threading.Lock()
        
    def parse_proxy(self, proxy_str):
        parts = proxy_str.strip().split(':')
        if len(parts) == 4:
            ip, port, username, password = parts
            return f"http://{username}:{password}@{ip}:{port}"
        return f"http://{proxy_str}"
    
    def load_from_file(self, filename):
        if not os.path.exists(filename):
            return False
        with open(filename, 'r') as f:
            for line in f:
                line = line.strip()
                if line and not line.startswith('#'):
                    proxy_url = self.parse_proxy(line)
                    self.proxies.append({'http': proxy_url, 'https': proxy_url})
        return len(self.proxies) > 0
    
    def get_proxy(self):
        if not self.proxies:
            return None
        with self.lock:
            proxy = self.proxies[self.current_index]
            self.current_index = (self.current_index + 1) % len(self.proxies)
            return proxy

proxy_pool = ProxyPool()
found_orders = []
found_lock = threading.Lock()
print_lock = threading.Lock()
request_count = 0
request_lock = threading.Lock()

def sign(text):
    return hashlib.sha256((text + API_KEY).encode()).hexdigest().upper()

def safe_print(msg):
    with print_lock:
        print(msg)

def is_today(date_str):
    return TODAY in str(date_str) if date_str else False

def check_order(tracking):
    """检查订单"""
    global request_count
    with request_lock:
        request_count += 1
    
    proxy = proxy_pool.get_proxy()
    
    try:
        sig = sign(tracking)
        headers = {
            "Authorization": f"Basic {BASIC_AUTH}",
            "APIKey": API_KEY,
            "Content-Type": "application/x-www-form-urlencoded"
        }
        data = {"ParcelCode": tracking, "Signature": sig}
        
        response = requests.post(API_URL, headers=headers, data=data, proxies=proxy, timeout=10)
        
        if response.status_code == 200:
            result = response.json()
            if result.get('Code') == '00' and result.get('Value'):
                value = result['Value']
                issue_date = value.get('IssueDate', '')
                
                if is_today(issue_date):
                    order_info = {
                        'tracking': tracking,
                        'number': int(tracking[2:11]),
                        'IssueDate': issue_date,
                        'LoadDate': value.get('LoadDate', ''),
                        'ReceiverName': value.get('ReceiverName', ''),
                        'CollectAmount': value.get('CollectAmount', 0),
                    }
                    
                    with found_lock:
                        found_orders.append(order_info)
                    
                    safe_print(f"✅ {tracking} - 今日订单！")
                    return True
        
        return False
    except:
        return False

def scan_range(start, end, step=1, max_workers=100):
    """扫描EP系列"""
    safe_print(f"\n🔍 扫描 EP{start:09d}VN - EP{end:09d}VN (步长: {step})")
    
    start_time = time.time()
    
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        futures = []
        for num in range(start, end, step):
            tracking = f"EP{num:09d}VN"
            futures.append(executor.submit(check_order, tracking))
        
        total = len(futures)
        completed = 0
        
        for future in as_completed(futures):
            completed += 1
            if completed % 1000 == 0:
                elapsed = time.time() - start_time
                speed = completed / elapsed if elapsed > 0 else 0
                safe_print(f"   进度: {completed}/{total} ({completed*100/total:.1f}%) | {speed:.0f} req/s | 找到: {len(found_orders)}")
            future.result()
    
    elapsed = time.time() - start_time
    speed = completed / elapsed if elapsed > 0 else 0
    safe_print(f"✓ 完成，耗时 {elapsed:.1f}s，速度 {speed:.0f} req/s，找到 {len(found_orders)} 条\n")

def main():
    print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║                   🎯 只扫描EP系列 - 找第一条                                ║
╚════════════════════════════════════════════════════════════════════════════╝

📅 今天: {TODAY}
🎯 目标: 只扫描EP系列，找到今天的第一条订单
已知: EP493018285VN 是今天的

""")
    
    # 加载代理
    use_proxy = proxy_pool.load_from_file('proxies.txt')
    if use_proxy:
        print(f"✅ 加载了 {len(proxy_pool.proxies)} 个代理\n")
        max_workers = min(len(proxy_pool.proxies), 100)
    else:
        print("⚠️  无代理模式，并发: 20\n")
        max_workers = 20
    
    start_time = datetime.now()
    
    print("=" * 80)
    print("🔍 开始扫描 EP 系列")
    print("=" * 80)
    
    # 已知 EP493018285VN 是今天的
    # 向前扫描，找第一条
    
    # 策略: 从EP493000000开始扫描到EP493018285
    # 分段扫描，找到今天订单的起始位置
    
    # 第1阶段: 跳跃扫描找大致范围
    print("\n阶段1: 跳跃扫描，定位今日订单起始范围")
    scan_range(493000000, 493018285, step=1000, max_workers=max_workers)
    
    if found_orders:
        # 找到了一些今日订单，缩小范围精确扫描
        min_found = min(order['number'] for order in found_orders)
        
        print(f"\n阶段2: 精确扫描 (最小号: {min_found})")
        # 在最小号前面1000个号范围内精确扫描
        precise_start = max(493000000, min_found - 1000)
        scan_range(precise_start, min_found, step=1, max_workers=max_workers)
    else:
        print("\n阶段2: 未找到今日订单，扩大扫描")
        # 没找到，精确扫描整个范围
        scan_range(493000000, 493018285, step=1, max_workers=max_workers)
    
    # 显示结果
    print("\n" + "=" * 80)
    print("📊 结果")
    print("=" * 80)
    
    if found_orders:
        found_orders.sort(key=lambda x: x['number'])
        
        first = found_orders[0]
        print(f"""
🏆 EP系列今天的第一条订单:

运单号: {first['tracking']}
编号: {first['number']}
日期: {first['IssueDate']}
收件人: {first['ReceiverName']}
金额: {first['CollectAmount']:,}₫

✅ 共找到 {len(found_orders)} 条EP系列今日订单
""")
        
        if len(found_orders) > 1:
            print("其他今日订单:")
            for i, order in enumerate(found_orders[1:6], 2):
                print(f"{i}. {order['tracking']} - {order['ReceiverName']}")
        
        # 保存
        with open(f"EP_first_order_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json", 'w', encoding='utf-8') as f:
            json.dump({'first_order': first, 'all_orders': found_orders}, f, ensure_ascii=False, indent=2)
    else:
        print("\n❌ 未找到EP系列今日订单")
    
    elapsed = (datetime.now() - start_time).total_seconds()
    print(f"""
📈 统计:
   总请求: {request_count}
   耗时: {elapsed:.1f}秒
   速度: {request_count/elapsed:.0f} req/s
""")
    print("=" * 80)

if __name__ == "__main__":
    main()
