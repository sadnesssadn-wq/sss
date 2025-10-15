#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
对比昨天和今天的订单号分布
验证是否有规律
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
                
                return {
                    'tracking': tracking,
                    'number': int(tracking[2:11]),
                    'IssueDate': issue_date,
                    'LoadDate': load_date,
                    'ReceiverName': value.get('ReceiverName', ''),
                }
        
        return None
    except:
        return None

def scan_range(start, end, max_workers=100):
    """扫描范围，收集所有订单"""
    yesterday_orders = []
    today_orders = []
    
    safe_print(f"扫描 EP{start:09d}VN - EP{end:09d}VN")
    
    start_time = time.time()
    
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        futures = {}
        for num in range(start, end + 1):
            tracking = f"EP{num:09d}VN"
            futures[executor.submit(check_order, tracking)] = num
        
        total = len(futures)
        completed = 0
        
        for future in as_completed(futures):
            completed += 1
            
            if completed % 2000 == 0:
                elapsed = time.time() - start_time
                speed = completed / elapsed if elapsed > 0 else 0
                progress = completed * 100 / total
                safe_print(f"进度: {completed}/{total} ({progress:.1f}%) | {speed:.0f} req/s | 昨天: {len(yesterday_orders)} | 今天: {len(today_orders)}")
            
            try:
                info = future.result()
                if info:
                    if YESTERDAY in info['IssueDate']:
                        yesterday_orders.append(info)
                    elif TODAY in info['IssueDate']:
                        today_orders.append(info)
            except:
                pass
    
    elapsed = time.time() - start_time
    safe_print(f"完成，耗时 {elapsed:.1f}秒\n")
    
    return yesterday_orders, today_orders

def analyze_pattern(yesterday_orders, today_orders):
    """分析规律"""
    
    print("\n" + "=" * 80)
    print("📊 数据统计")
    print("=" * 80)
    
    print(f"\n昨天订单数: {len(yesterday_orders)}")
    print(f"今天订单数: {len(today_orders)}")
    
    if not yesterday_orders or not today_orders:
        print("\n❌ 数据不足，无法分析")
        return
    
    # 统计号码范围
    yesterday_numbers = [o['number'] for o in yesterday_orders]
    today_numbers = [o['number'] for o in today_orders]
    
    yesterday_min = min(yesterday_numbers)
    yesterday_max = max(yesterday_numbers)
    today_min = min(today_numbers)
    today_max = max(today_numbers)
    
    print("\n" + "=" * 80)
    print("📏 运单号范围")
    print("=" * 80)
    
    print(f"\n昨天:")
    print(f"  最小: EP{yesterday_min:09d}VN")
    print(f"  最大: EP{yesterday_max:09d}VN")
    print(f"  范围: {yesterday_max - yesterday_min:,}")
    
    print(f"\n今天:")
    print(f"  最小: EP{today_min:09d}VN")
    print(f"  最大: EP{today_max:09d}VN")
    print(f"  范围: {today_max - today_min:,}")
    
    # 检查重叠
    print("\n" + "=" * 80)
    print("🔍 重叠分析")
    print("=" * 80)
    
    overlap_count = 0
    yesterday_in_today_range = 0
    today_in_yesterday_range = 0
    
    for num in yesterday_numbers:
        if today_min <= num <= today_max:
            overlap_count += 1
    
    for num in yesterday_numbers:
        if num > today_max:
            yesterday_in_today_range += 1
    
    for num in today_numbers:
        if num < yesterday_min:
            today_in_yesterday_range += 1
    
    print(f"\n昨天的订单在今天范围内: {overlap_count} / {len(yesterday_orders)} ({overlap_count*100/len(yesterday_orders):.1f}%)")
    print(f"昨天订单号 > 今天最大号: {yesterday_in_today_range} 条")
    print(f"今天订单号 < 昨天最小号: {today_in_yesterday_range} 条")
    
    # 判断规律
    print("\n" + "=" * 80)
    print("🎯 规律判断")
    print("=" * 80)
    
    if yesterday_max < today_min:
        print("\n✅ 有明确规律！")
        print(f"昨天最大号 ({yesterday_max}) < 今天最小号 ({today_min})")
        print("订单号按日期递增！")
    elif overlap_count > len(yesterday_orders) * 0.5:
        print("\n❌ 完全没规律！")
        print(f"昨天和今天的订单号大量重叠 ({overlap_count*100/len(yesterday_orders):.0f}%)")
        print("订单号分布混乱，不按日期递增！")
    else:
        print("\n⚠️  部分规律")
        print(f"有 {overlap_count*100/len(yesterday_orders):.1f}% 的昨天订单在今天范围内")
        print("订单号大致递增，但有交叉")
    
    # 按时间排序对比
    print("\n" + "=" * 80)
    print("🕐 时间对比")
    print("=" * 80)
    
    yesterday_orders.sort(key=lambda x: x['LoadDate'])
    today_orders.sort(key=lambda x: x['LoadDate'])
    
    print("\n昨天最晚5条订单:")
    for i, order in enumerate(yesterday_orders[-5:], 1):
        print(f"{i}. {order['tracking']} - {order['LoadDate']}")
    
    print("\n今天最早5条订单:")
    for i, order in enumerate(today_orders[:5], 1):
        print(f"{i}. {order['tracking']} - {order['LoadDate']}")
    
    last_yesterday = yesterday_orders[-1]
    first_today = today_orders[0]
    
    print(f"\n时间衔接:")
    print(f"昨天最后: {last_yesterday['tracking']} - {last_yesterday['LoadDate']}")
    print(f"今天第一: {first_today['tracking']} - {first_today['LoadDate']}")
    print(f"号码差距: {first_today['number'] - last_yesterday['number']:,}")

def main():
    print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║              🔍 对比昨天和今天 - 验证规律性                                  ║
╚════════════════════════════════════════════════════════════════════════════╝

📅 昨天: {YESTERDAY}
📅 今天: {TODAY}
🎯 目标: 验证订单号是否按日期递增

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
    print("🔍 开始扫描（扫描更大范围以获取足够数据）")
    print("=" * 80)
    print()
    
    # 扫描范围：往前30000个号
    known_num = 493018285
    start_num = known_num - 30000
    end_num = known_num
    
    yesterday_orders, today_orders = scan_range(start_num, end_num, max_workers)
    
    # 分析规律
    analyze_pattern(yesterday_orders, today_orders)
    
    # 保存数据
    filename = f"compare_result_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
    with open(filename, 'w', encoding='utf-8') as f:
        json.dump({
            'yesterday': YESTERDAY,
            'today': TODAY,
            'yesterday_orders': yesterday_orders,
            'today_orders': today_orders
        }, f, ensure_ascii=False, indent=2)
    
    print(f"\n💾 已保存到: {filename}")
    print("\n" + "=" * 80)

if __name__ == "__main__":
    main()
