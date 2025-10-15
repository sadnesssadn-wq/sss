#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
从已知订单往前倒着扫描 - 找EP系列第一条
V2版本: 添加重试机制和换代理功能
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
        self.stats = {'success': 0, 'fail': 0, 'retry': 0}
        
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
    
    def mark_success(self):
        with self.lock:
            self.stats['success'] += 1
    
    def mark_fail(self):
        with self.lock:
            self.stats['fail'] += 1
    
    def mark_retry(self):
        with self.lock:
            self.stats['retry'] += 1

proxy_pool = ProxyPool()
print_lock = threading.Lock()

def sign(text):
    return hashlib.sha256((text + API_KEY).encode()).hexdigest().upper()

def safe_print(msg):
    with print_lock:
        print(msg)

def is_today(date_str):
    return TODAY in str(date_str) if date_str else False

def check_order(tracking, max_retries=3):
    """
    检查订单 - 带重试和换代理功能
    max_retries: 最大重试次数
    """
    
    for attempt in range(max_retries):
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
                    
                    proxy_pool.mark_success()
                    
                    load_date = value.get('LoadDate', '')
                    
                    order_info = {
                        'tracking': tracking,
                        'IssueDate': issue_date,
                        'LoadDate': load_date,
                        'ReceiverName': value.get('ReceiverName', ''),
                        'CollectAmount': value.get('CollectAmount', 0),
                    }
                    
                    return (is_today(issue_date), order_info)
                elif result.get('Code') == '01':
                    # 订单不存在，不需要重试
                    proxy_pool.mark_success()
                    return (False, None)
                else:
                    # API错误，可能需要重试
                    proxy_pool.mark_fail()
                    if attempt < max_retries - 1:
                        proxy_pool.mark_retry()
                        time.sleep(0.1)
                        continue
            else:
                # HTTP错误，换代理重试
                proxy_pool.mark_fail()
                if attempt < max_retries - 1:
                    proxy_pool.mark_retry()
                    time.sleep(0.1)
                    continue
            
            return (False, None)
            
        except requests.exceptions.Timeout:
            # 超时，换代理重试
            proxy_pool.mark_fail()
            if attempt < max_retries - 1:
                proxy_pool.mark_retry()
                time.sleep(0.1)
                continue
        except Exception as e:
            # 其他错误，换代理重试
            proxy_pool.mark_fail()
            if attempt < max_retries - 1:
                proxy_pool.mark_retry()
                time.sleep(0.1)
                continue
    
    # 重试3次都失败了
    return (False, None)

def find_first_backward(known_num, backward_count=20000):
    """从已知号往前扫描20000个号"""
    
    start_num = known_num - backward_count
    end_num = known_num
    
    safe_print(f"\n🔍 扫描范围: EP{start_num:09d}VN - EP{end_num:09d}VN")
    safe_print(f"📊 总共: {backward_count} 个订单号")
    safe_print(f"⚡ 重试机制: 每个订单失败后最多重试3次，自动换代理\n")
    
    # 并发扫描
    found_orders = []
    request_count = 0
    
    max_workers = min(100, len(proxy_pool.proxies) if proxy_pool.proxies else 20)
    
    start_time = time.time()
    
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        futures = {}
        for num in range(start_num, end_num + 1):
            tracking = f"EP{num:09d}VN"
            futures[executor.submit(check_order, tracking, max_retries=3)] = num
        
        total = len(futures)
        completed = 0
        
        for future in as_completed(futures):
            num = futures[future]
            completed += 1
            request_count += 1
            
            # 每1000个显示进度
            if completed % 1000 == 0:
                elapsed = time.time() - start_time
                speed = completed / elapsed if elapsed > 0 else 0
                progress = completed * 100 / total
                stats = proxy_pool.stats
                safe_print(f"进度: {completed}/{total} ({progress:.1f}%) | {speed:.0f} req/s | 找到: {len(found_orders)} | 重试: {stats['retry']}")
            
            try:
                is_today_order, info = future.result()
                if is_today_order:
                    found_orders.append({
                        'number': num,
                        'tracking': f"EP{num:09d}VN",
                        **info
                    })
                    # 显示详细时间
                    time_info = info.get('LoadDate', info.get('IssueDate', ''))
                    safe_print(f"✅ EP{num:09d}VN - 今天的订单！时间: {time_info}")
            except:
                pass
    
    elapsed = time.time() - start_time
    speed = request_count / elapsed if elapsed > 0 else 0
    stats = proxy_pool.stats
    
    safe_print(f"\n✓ 扫描完成，耗时 {elapsed:.1f}秒，速度 {speed:.0f} req/s")
    safe_print(f"📊 成功: {stats['success']}, 失败: {stats['fail']}, 重试: {stats['retry']}")
    
    if found_orders:
        found_orders.sort(key=lambda x: x['number'])
        safe_print(f"✅ 共找到 {len(found_orders)} 条今日订单\n")
        return found_orders
    
    return None

def main():
    print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║        🎯 往前扫描20000个号 - 找EP第一条 (V2 重试版)                        ║
╚════════════════════════════════════════════════════════════════════════════╝

📅 今天: {TODAY}
🎯 策略: 从 EP493018285VN 往前扫描 20000 个号
⚡ 范围: EP492998285VN - EP493018285VN
🔄 新功能: 失败自动重试3次 + 自动换代理

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
    
    # 往前扫描20000个号
    found_orders = find_first_backward(known_num, backward_count=20000)
    
    # 显示结果
    print("\n" + "=" * 80)
    print("📊 结果")
    print("=" * 80)
    
    if found_orders:
        first_order = found_orders[0]
        
        print(f"""
🏆 EP系列今天的第一条订单:

运单号: {first_order['tracking']}
编号: {first_order['number']}
发行日期: {first_order['IssueDate']}
装载时间: {first_order.get('LoadDate', 'N/A')}
收件人: {first_order['ReceiverName']}
金额: {first_order['CollectAmount']:,}₫

📊 共找到 {len(found_orders)} 条EP系列今日订单
""")
        
        # 显示前10条（按时间排序）
        if len(found_orders) > 1:
            print("前10条今日订单（按时间排序）:")
            for i, order in enumerate(found_orders[:10], 1):
                time_info = order.get('LoadDate', order.get('IssueDate', 'N/A'))
                print(f"{i:2d}. {order['tracking']} - {time_info} - {order['ReceiverName']}")
        
        # 保存
        filename = f"EP_first_v2_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump({
                'first_order': first_order,
                'all_orders': found_orders,
                'total_found': len(found_orders),
                'stats': proxy_pool.stats
            }, f, ensure_ascii=False, indent=2)
        
        print(f"\n💾 已保存到: {filename}")
    else:
        print("\n❌ 在往前20000个号范围内未找到今日订单")
    
    elapsed = (datetime.now() - start_time).total_seconds()
    print(f"\n⏱️  耗时: {elapsed:.1f} 秒")
    print("=" * 80)

if __name__ == "__main__":
    main()
