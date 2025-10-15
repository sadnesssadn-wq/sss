#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
从已知订单往前倒着扫描 - 找EP系列第一条
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
print_lock = threading.Lock()

def sign(text):
    return hashlib.sha256((text + API_KEY).encode()).hexdigest().upper()

def safe_print(msg):
    with print_lock:
        print(msg)

def is_today(date_str):
    return TODAY in str(date_str) if date_str else False

def check_order(tracking):
    """检查订单，返回 (is_today, issue_date)"""
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
                
                order_info = {
                    'tracking': tracking,
                    'IssueDate': issue_date,
                    'ReceiverName': value.get('ReceiverName', ''),
                    'CollectAmount': value.get('CollectAmount', 0),
                }
                
                return (is_today(issue_date), order_info)
        
        return (False, None)
    except:
        return (False, None)

def find_first_backward(known_num):
    """从已知号往前找，直到找到第一个不是今天的"""
    
    safe_print(f"\n🔍 从 EP{known_num:09d}VN 开始往前找...\n")
    
    # 第一阶段：大步往前跳，找到不是今天的大致位置
    step = 500
    current = known_num
    last_today = known_num
    
    while current > 493000000:
        tracking = f"EP{current:09d}VN"
        safe_print(f"检查: {tracking} (向前跳 {step}) ... ", end="", flush=True)
        
        is_today_order, info = check_order(tracking)
        
        if is_today_order:
            safe_print(f"✅ 今天的")
            last_today = current
            current -= step
        else:
            if info:
                safe_print(f"❌ 不是今天 ({info['IssueDate']})")
            else:
                safe_print(f"⚪ 订单不存在")
            # 找到不是今天的了，在这个范围内精确找
            break
        
        time.sleep(0.1)
    
    # 第二阶段：在 current 到 last_today 之间精确找第一条
    safe_print(f"\n🎯 精确扫描范围: EP{current:09d}VN - EP{last_today:09d}VN\n")
    
    # 并发扫描这个范围
    found_orders = []
    
    with ThreadPoolExecutor(max_workers=min(50, len(proxy_pool.proxies) if proxy_pool.proxies else 20)) as executor:
        futures = {}
        for num in range(current, last_today + 1):
            tracking = f"EP{num:09d}VN"
            futures[executor.submit(check_order, tracking)] = num
        
        for future in as_completed(futures):
            num = futures[future]
            try:
                is_today_order, info = future.result()
                if is_today_order:
                    found_orders.append({
                        'number': num,
                        'tracking': f"EP{num:09d}VN",
                        **info
                    })
                    safe_print(f"✅ EP{num:09d}VN - 今天的订单")
            except:
                pass
    
    if found_orders:
        found_orders.sort(key=lambda x: x['number'])
        return found_orders[0]
    
    return None

def main():
    print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║              🎯 倒着扫描 - 找EP系列第一条今日订单                            ║
╚════════════════════════════════════════════════════════════════════════════╝

📅 今天: {TODAY}
🎯 策略: 从已知的 EP493018285VN 往前倒着扫，找到第一条
⚡ 优势: 最快！

""")
    
    # 加载代理
    use_proxy = proxy_pool.load_from_file('proxies.txt')
    if use_proxy:
        print(f"✅ 加载了 {len(proxy_pool.proxies)} 个代理\n")
    else:
        print("⚠️  无代理模式\n")
    
    print("=" * 80)
    print("🔍 开始倒着扫描")
    print("=" * 80)
    
    start_time = datetime.now()
    
    # 已知订单号
    known_num = 493018285
    
    # 往前找第一条
    first_order = find_first_backward(known_num)
    
    # 显示结果
    print("\n" + "=" * 80)
    print("📊 结果")
    print("=" * 80)
    
    if first_order:
        print(f"""
🏆 EP系列今天的第一条订单:

运单号: {first_order['tracking']}
编号: {first_order['number']}
日期: {first_order['IssueDate']}
收件人: {first_order['ReceiverName']}
金额: {first_order['CollectAmount']:,}₫
""")
        
        # 保存
        filename = f"EP_first_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump(first_order, f, ensure_ascii=False, indent=2)
        
        print(f"💾 已保存到: {filename}")
    else:
        print("\n❌ 未找到第一条")
    
    elapsed = (datetime.now() - start_time).total_seconds()
    print(f"\n⏱️  耗时: {elapsed:.1f} 秒")
    print("=" * 80)

if __name__ == "__main__":
    main()
