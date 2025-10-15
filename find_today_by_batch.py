#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
利用批次规律找当天订单
策略：跳跃定位批次 + 批次内密集扫描
"""

import hashlib
import requests
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading
import time
import os
import json

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
                    }
                    return (True, order_info)
        
        return (False, None)
    except:
        return (False, None)

def phase1_jump_scan(series, start, end, jump_step=1000, max_workers=50):
    """
    阶段1：跳跃扫描，找到今天订单所在的批次
    """
    safe_print(f"\n【阶段1】跳跃扫描 {series}系列 (每{jump_step}个号查一次)")
    safe_print(f"范围: {series}{start:09d}VN - {series}{end:09d}VN\n")
    
    batch_centers = []
    
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        futures = {}
        for num in range(start, end, jump_step):
            tracking = f"{series}{num:09d}VN"
            futures[executor.submit(check_order, tracking)] = num
        
        for future in as_completed(futures):
            num = futures[future]
            try:
                is_today_order, info = future.result()
                if is_today_order:
                    batch_centers.append(num)
                    safe_print(f"  ✅ 发现今日订单批次: {series}{num:09d}VN")
                    
                    with found_lock:
                        found_orders.append(info)
            except:
                pass
    
    safe_print(f"  → 发现 {len(batch_centers)} 个批次\n")
    return batch_centers

def phase2_dense_scan(series, batch_centers, radius=500, max_workers=100):
    """
    阶段2：在批次中心±radius范围内密集扫描
    """
    safe_print(f"【阶段2】批次密集扫描 (每个批次±{radius})")
    
    scanned = set([o['number'] for o in found_orders])
    
    for center in batch_centers:
        batch_start = center - radius
        batch_end = center + radius
        
        safe_print(f"\n  扫描批次: {series}{batch_start:09d}VN - {series}{batch_end:09d}VN")
        
        batch_count = 0
        
        with ThreadPoolExecutor(max_workers=max_workers) as executor:
            futures = []
            for num in range(batch_start, batch_end + 1):
                if num not in scanned:
                    scanned.add(num)
                    tracking = f"{series}{num:09d}VN"
                    futures.append(executor.submit(check_order, tracking))
            
            for future in as_completed(futures):
                try:
                    is_today_order, info = future.result()
                    if is_today_order:
                        with found_lock:
                            found_orders.append(info)
                        batch_count += 1
                        safe_print(f"    ✅ {info['tracking']} - {info['LoadDate']}")
                except:
                    pass
        
        safe_print(f"  → 该批次找到 {batch_count} 条")
    
    safe_print(f"\n  → 密集扫描完成\n")

def main():
    print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║            🎯 利用批次规律找当天订单                                        ║
╚════════════════════════════════════════════════════════════════════════════╝

📅 今天: {TODAY}
💡 策略: 
   1. 跳跃扫描找批次（每1000个号查1次）
   2. 批次内密集扫描（±500范围）
   3. 利用"同批次号码接近"的规律

优势: 比暴力扫描效率高10-100倍！

""")
    
    # 加载代理
    use_proxy = proxy_pool.load_from_file('proxies.txt')
    if use_proxy:
        print(f"✅ 加载了 {len(proxy_pool.proxies)} 个代理\n")
        max_workers = min(100, len(proxy_pool.proxies))
    else:
        print("⚠️  无代理模式，并发: 20\n")
        max_workers = 20
    
    print("=" * 80)
    print("🔍 开始智能扫描")
    print("=" * 80)
    
    start_time = datetime.now()
    
    # 扫描EP系列（你已知有今天的订单）
    series = 'EP'
    
    # 基于已知订单 EP493018285VN，扫描范围
    known_num = 493018285
    scan_start = known_num - 20000
    scan_end = known_num + 5000
    
    # 阶段1：跳跃扫描找批次
    batch_centers = phase1_jump_scan(series, scan_start, scan_end, jump_step=1000, max_workers=max_workers)
    
    if batch_centers:
        # 阶段2：批次密集扫描
        phase2_dense_scan(series, batch_centers, radius=500, max_workers=max_workers)
    else:
        print("\n❌ 未发现今日订单批次")
        print("提示: 可能需要调整扫描范围或减小跳跃步长")
    
    # 显示结果
    print("\n" + "=" * 80)
    print("📊 扫描结果")
    print("=" * 80)
    
    if found_orders:
        # 按时间排序
        found_orders.sort(key=lambda x: x['LoadDate'])
        
        print(f"\n✅ 共找到 {len(found_orders)} 条今日{series}系列订单\n")
        
        # 分析批次分布
        found_orders_sorted = sorted(found_orders, key=lambda x: x['number'])
        
        print("订单号分布:")
        print(f"  最小号: {found_orders_sorted[0]['tracking']}")
        print(f"  最大号: {found_orders_sorted[-1]['tracking']}")
        print(f"  号码跨度: {found_orders_sorted[-1]['number'] - found_orders_sorted[0]['number']:,}")
        
        # 计算号码间隔
        if len(found_orders_sorted) > 1:
            gaps = [found_orders_sorted[i+1]['number'] - found_orders_sorted[i]['number'] 
                   for i in range(len(found_orders_sorted)-1)]
            small_gaps = [g for g in gaps if g < 1000]
            
            print(f"\n号码间隔分析:")
            print(f"  小间隔(<1000): {len(small_gaps)} 个")
            if small_gaps:
                print(f"  平均间隔: {sum(small_gaps)/len(small_gaps):.0f}")
                print(f"  → 说明订单高度聚集，批次策略有效！")
        
        print("\n" + "=" * 80)
        print("🏆 时间最早的订单:")
        print("=" * 80)
        
        first = found_orders[0]
        print(f"""
运单号: {first['tracking']}
装载时间: {first['LoadDate']}
收件人: {first['ReceiverName']}
""")
        
        # 显示前10条
        print("按时间排序（前10条）:")
        print("-" * 80)
        for i, order in enumerate(found_orders[:10], 1):
            print(f"{i:2d}. {order['tracking']} - {order['LoadDate']}")
        
        # 保存
        filename = f"{series}_batch_scan_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump({
                'series': series,
                'scan_date': TODAY,
                'total_found': len(found_orders),
                'first_order': first,
                'all_orders': found_orders,
                'batch_centers': batch_centers
            }, f, ensure_ascii=False, indent=2)
        
        print(f"\n💾 已保存到: {filename}")
    else:
        print("\n❌ 未找到今日订单")
    
    elapsed = (datetime.now() - start_time).total_seconds()
    print(f"\n⏱️  总耗时: {elapsed:.1f} 秒")
    
    # 效率对比
    if found_orders:
        total_range = scan_end - scan_start
        estimated_full_scan_time = (total_range / 100) * elapsed / len(batch_centers) if batch_centers else 0
        
        print(f"\n📊 效率对比:")
        print(f"  批次扫描: {elapsed:.1f}秒")
        print(f"  暴力扫描（估算）: {estimated_full_scan_time:.1f}秒")
        if estimated_full_scan_time > 0:
            print(f"  效率提升: {estimated_full_scan_time/elapsed:.1f}倍")
    
    print("\n" + "=" * 80)

if __name__ == "__main__":
    main()
