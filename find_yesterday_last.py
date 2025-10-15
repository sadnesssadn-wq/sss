#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
找昨天的最后一条订单
然后就能确定今天的第一条
"""

import hashlib
import requests
import json
from datetime import datetime, timedelta
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading
import time
import os

# ==================== 配置 ====================
API_URL = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TODAY = datetime.now().strftime("%d/%m/%Y")
YESTERDAY = (datetime.now() - timedelta(days=1)).strftime("%d/%m/%Y")

print(f"今天: {TODAY}")
print(f"昨天: {YESTERDAY}")

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

def is_yesterday(date_str):
    """检查是否是昨天"""
    return YESTERDAY in str(date_str) if date_str else False

def is_today(date_str):
    """检查是否是今天"""
    return TODAY in str(date_str) if date_str else False

def check_order(tracking):
    """检查订单"""
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
                load_date = value.get('LoadDate', '')
                
                order_info = {
                    'tracking': tracking,
                    'number': int(tracking[2:11]),
                    'IssueDate': issue_date,
                    'LoadDate': load_date,
                    'ReceiverName': value.get('ReceiverName', ''),
                    'CollectAmount': value.get('CollectAmount', 0),
                }
                
                if is_yesterday(issue_date):
                    return ('yesterday', order_info)
                elif is_today(issue_date):
                    return ('today', order_info)
                else:
                    return ('other', order_info)
        
        return ('none', None)
    except:
        return ('error', None)

def scan_range(start, end, max_workers=100):
    """扫描范围，找出昨天和今天的订单"""
    
    safe_print(f"\n🔍 扫描 EP{start:09d}VN - EP{end:09d}VN")
    
    yesterday_orders = []
    today_orders = []
    
    start_time = time.time()
    
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        futures = {}
        for num in range(start, end + 1):
            tracking = f"EP{num:09d}VN"
            futures[executor.submit(check_order, tracking)] = num
        
        total = len(futures)
        completed = 0
        
        for future in as_completed(futures):
            num = futures[future]
            completed += 1
            
            if completed % 1000 == 0:
                elapsed = time.time() - start_time
                speed = completed / elapsed if elapsed > 0 else 0
                progress = completed * 100 / total
                safe_print(f"进度: {completed}/{total} ({progress:.1f}%) | {speed:.0f} req/s | 昨天: {len(yesterday_orders)} | 今天: {len(today_orders)}")
            
            try:
                day_type, info = future.result()
                if day_type == 'yesterday':
                    yesterday_orders.append(info)
                    safe_print(f"📅 {info['tracking']} - 昨天的订单！时间: {info['LoadDate']}")
                elif day_type == 'today':
                    today_orders.append(info)
                    safe_print(f"✅ {info['tracking']} - 今天的订单！时间: {info['LoadDate']}")
            except:
                pass
    
    elapsed = time.time() - start_time
    safe_print(f"\n✓ 完成，耗时 {elapsed:.1f}秒\n")
    
    return yesterday_orders, today_orders

def main():
    print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║            🎯 找昨天最后一条 → 确定今天第一条                                ║
╚════════════════════════════════════════════════════════════════════════════╝

📅 今天: {TODAY}
📅 昨天: {YESTERDAY}
🎯 策略: 找昨天时间最晚的订单，它后面就是今天第一条

""")
    
    # 加载代理
    use_proxy = proxy_pool.load_from_file('proxies.txt')
    if use_proxy:
        print(f"✅ 加载了 {len(proxy_pool.proxies)} 个代理\n")
        max_workers = min(100, len(proxy_pool.proxies))
    else:
        print("⚠️  无代理模式\n")
        max_workers = 20
    
    print("=" * 80)
    print("🔍 开始扫描")
    print("=" * 80)
    
    # 扫描范围：往前20000个号
    known_num = 493018285
    start_num = known_num - 20000
    end_num = known_num
    
    yesterday_orders, today_orders = scan_range(start_num, end_num, max_workers)
    
    # 显示结果
    print("\n" + "=" * 80)
    print("📊 结果")
    print("=" * 80)
    
    print(f"\n找到昨天的订单: {len(yesterday_orders)} 条")
    print(f"找到今天的订单: {len(today_orders)} 条\n")
    
    if yesterday_orders:
        # 按时间排序，找最后一条
        yesterday_orders.sort(key=lambda x: x['LoadDate'])
        
        last_yesterday = yesterday_orders[-1]
        
        print("=" * 80)
        print("📅 昨天的最后一条订单:")
        print("=" * 80)
        print(f"""
运单号: {last_yesterday['tracking']}
编号: {last_yesterday['number']}
装载时间: {last_yesterday['LoadDate']}
收件人: {last_yesterday['ReceiverName']}
金额: {last_yesterday['CollectAmount']:,}₫
""")
        
        # 显示昨天最后几条
        if len(yesterday_orders) > 1:
            print("昨天最后5条订单（按时间）:")
            for i, order in enumerate(yesterday_orders[-5:], 1):
                print(f"{i}. {order['tracking']} - {order['LoadDate']}")
    
    if today_orders:
        # 按时间排序，找第一条
        today_orders.sort(key=lambda x: x['LoadDate'])
        
        first_today = today_orders[0]
        
        print("\n" + "=" * 80)
        print("✅ 今天的第一条订单:")
        print("=" * 80)
        print(f"""
运单号: {first_today['tracking']}
编号: {first_today['number']}
装载时间: {first_today['LoadDate']}
收件人: {first_today['ReceiverName']}
金额: {first_today['CollectAmount']:,}₫
""")
        
        # 显示今天最早几条
        print("今天最早5条订单（按时间）:")
        for i, order in enumerate(today_orders[:5], 1):
            print(f"{i}. {order['tracking']} - {order['LoadDate']}")
        
        # 保存
        filename = f"yesterday_last_today_first_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump({
                'yesterday_last': last_yesterday if yesterday_orders else None,
                'today_first': first_today,
                'all_yesterday': yesterday_orders,
                'all_today': today_orders
            }, f, ensure_ascii=False, indent=2)
        
        print(f"\n💾 已保存到: {filename}")
    
    # 对比
    if yesterday_orders and today_orders:
        print("\n" + "=" * 80)
        print("🔍 时间线对比:")
        print("=" * 80)
        
        last_yesterday = yesterday_orders[-1]
        first_today = today_orders[0]
        
        print(f"\n昨天最后: {last_yesterday['tracking']} - {last_yesterday['LoadDate']}")
        print(f"今天第一: {first_today['tracking']} - {first_today['LoadDate']}")
        
        print(f"\n运单号差距: {first_today['number']} - {last_yesterday['number']} = {first_today['number'] - last_yesterday['number']}")
    
    print("\n" + "=" * 80)

if __name__ == "__main__":
    main()
