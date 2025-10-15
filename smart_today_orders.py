#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
智能获取当天所有订单
策略：跳跃式扫描 + 密集区深挖
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
found_orders = []
found_lock = threading.Lock()

def sign(text):
    return hashlib.sha256((text + API_KEY).encode()).hexdigest().upper()

def safe_print(msg):
    with print_lock:
        print(msg)

def is_today(date_str):
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
                
                if is_today(issue_date):
                    order_info = {
                        'tracking': tracking,
                        'number': int(tracking[2:11]),
                        'LoadDate': value.get('LoadDate', ''),
                        'ReceiverName': value.get('ReceiverName', ''),
                        'CollectAmount': value.get('CollectAmount', 0),
                    }
                    
                    with found_lock:
                        found_orders.append(order_info)
                    
                    return (True, order_info)
        
        return (False, None)
    except:
        return (False, None)

def phase1_rough_scan(start, end, step=1000, max_workers=100):
    """
    阶段1：粗扫描
    大步跳跃，找到今天订单的大致位置
    """
    safe_print(f"\n【阶段1】粗扫描: EP{start:09d}VN - EP{end:09d}VN (步长: {step})")
    
    hot_zones = []  # 找到今天订单的位置
    
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        futures = {}
        for num in range(start, end, step):
            tracking = f"EP{num:09d}VN"
            futures[executor.submit(check_order, tracking)] = num
        
        for future in as_completed(futures):
            num = futures[future]
            try:
                is_today_order, info = future.result()
                if is_today_order:
                    hot_zones.append(num)
                    safe_print(f"  ✅ 发现今日订单热区: EP{num:09d}VN")
            except:
                pass
    
    safe_print(f"  → 发现 {len(hot_zones)} 个热区\n")
    return hot_zones

def phase2_dense_scan(hot_zones, step=1000, radius=500, max_workers=100):
    """
    阶段2：密集扫描
    在热区周围密集扫描，找出所有今日订单
    """
    safe_print(f"【阶段2】在热区周围密集扫描 (半径: {radius})")
    
    scanned = set()  # 避免重复扫描
    
    for zone_center in hot_zones:
        zone_start = zone_center - radius
        zone_end = zone_center + radius
        
        safe_print(f"\n  扫描热区: EP{zone_start:09d}VN - EP{zone_end:09d}VN")
        
        with ThreadPoolExecutor(max_workers=max_workers) as executor:
            futures = []
            for num in range(zone_start, zone_end + 1):
                if num not in scanned:
                    scanned.add(num)
                    tracking = f"EP{num:09d}VN"
                    futures.append(executor.submit(check_order, tracking))
            
            for future in as_completed(futures):
                try:
                    is_today_order, info = future.result()
                    if is_today_order:
                        safe_print(f"    ✅ {info['tracking']} - {info['LoadDate']}")
                except:
                    pass
    
    safe_print(f"\n  → 密集扫描完成\n")

def phase3_expand_search(known_orders, expand_range=100, max_workers=100):
    """
    阶段3：扩展搜索
    在已知订单周围继续查找，挖掘遗漏的订单
    """
    safe_print(f"【阶段3】扩展搜索 (在已知订单±{expand_range}范围)")
    
    scanned = set([o['number'] for o in known_orders])
    
    for order in known_orders:
        center = order['number']
        
        with ThreadPoolExecutor(max_workers=max_workers) as executor:
            futures = []
            for offset in range(-expand_range, expand_range + 1):
                num = center + offset
                if num not in scanned:
                    scanned.add(num)
                    tracking = f"EP{num:09d}VN"
                    futures.append(executor.submit(check_order, tracking))
            
            for future in as_completed(futures):
                try:
                    future.result()
                except:
                    pass
    
    safe_print(f"  → 扩展搜索完成\n")

def main():
    print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║              🎯 智能获取当天所有订单                                        ║
╚════════════════════════════════════════════════════════════════════════════╝

📅 今天: {TODAY}
⚡ 策略: 三阶段智能扫描
   1. 粗扫描 - 大步跳跃找热区
   2. 密集扫描 - 热区周围深挖
   3. 扩展搜索 - 已知订单周围补漏

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
    print("🔍 开始智能扫描")
    print("=" * 80)
    
    start_time = datetime.now()
    
    # 定义扫描范围（基于已知订单）
    known_num = 493018285
    scan_start = known_num - 50000  # 往前5万个号
    scan_end = known_num + 10000    # 往后1万个号
    
    # 阶段1：粗扫描（每1000个号查一次）
    hot_zones = phase1_rough_scan(scan_start, scan_end, step=1000, max_workers=max_workers)
    
    if not hot_zones:
        print("❌ 未发现今日订单热区，尝试缩小步长...")
        hot_zones = phase1_rough_scan(scan_start, scan_end, step=500, max_workers=max_workers)
    
    if hot_zones:
        # 阶段2：密集扫描热区
        phase2_dense_scan(hot_zones, radius=1000, max_workers=max_workers)
        
        # 阶段3：扩展搜索
        if len(found_orders) > 0:
            phase3_expand_search(found_orders, expand_range=200, max_workers=max_workers)
    
    # 显示结果
    print("=" * 80)
    print("📊 扫描结果")
    print("=" * 80)
    
    if found_orders:
        # 按时间排序
        found_orders.sort(key=lambda x: x['LoadDate'])
        
        print(f"\n✅ 共找到 {len(found_orders)} 条今日订单\n")
        
        # 显示按时间排序的前10条
        print("按时间排序（前10条）:")
        print("-" * 80)
        for i, order in enumerate(found_orders[:10], 1):
            print(f"{i:2d}. {order['tracking']} - {order['LoadDate']} - {order['ReceiverName']}")
        
        if len(found_orders) > 10:
            print(f"... 还有 {len(found_orders) - 10} 条")
        
        print("\n" + "=" * 80)
        print("🏆 今天最早的订单:")
        print("=" * 80)
        first = found_orders[0]
        print(f"""
运单号: {first['tracking']}
时间: {first['LoadDate']}
收件人: {first['ReceiverName']}
金额: {first['CollectAmount']:,}₫
""")
        
        # 保存
        filename = f"today_all_orders_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump({
                'scan_date': TODAY,
                'total_found': len(found_orders),
                'first_order': first,
                'all_orders': found_orders
            }, f, ensure_ascii=False, indent=2)
        
        print(f"💾 已保存到: {filename}")
    else:
        print("\n❌ 未找到今日订单")
    
    elapsed = (datetime.now() - start_time).total_seconds()
    print(f"\n⏱️  总耗时: {elapsed:.1f} 秒")
    print("=" * 80)

if __name__ == "__main__":
    main()
