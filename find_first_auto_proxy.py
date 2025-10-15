#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
自动识别代理格式的版本
支持两种格式:
1. IP:PORT:USER:PASS  (你的格式)
2. USER:PASS@IP:PORT  (标准格式)
"""

import hashlib
import requests
import json
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading
import time

# ==================== 配置 ====================
API_URL = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TODAY = datetime.now().strftime("%d/%m/%Y")

# ==================== 代理池管理 ====================

class ProxyPool:
    """代理池管理器 - 自动识别格式"""
    
    def __init__(self):
        self.proxies = []
        self.proxy_stats = {}
        self.lock = threading.Lock()
        self.current_index = 0
        
    def parse_proxy(self, proxy_str):
        """
        自动识别并转换代理格式
        支持:
        1. IP:PORT:USER:PASS → USER:PASS@IP:PORT
        2. USER:PASS@IP:PORT → 保持不变
        3. IP:PORT → 保持不变
        """
        proxy_str = proxy_str.strip()
        
        # 检查是否是 IP:PORT:USER:PASS 格式
        parts = proxy_str.split(':')
        
        if len(parts) == 4:
            # IP:PORT:USER:PASS 格式
            ip, port, username, password = parts
            proxy_url = f"http://{username}:{password}@{ip}:{port}"
        elif '@' in proxy_str:
            # USER:PASS@IP:PORT 格式
            if not proxy_str.startswith('http'):
                proxy_url = f"http://{proxy_str}"
            else:
                proxy_url = proxy_str
        else:
            # IP:PORT 格式 (无认证)
            if not proxy_str.startswith('http'):
                proxy_url = f"http://{proxy_str}"
            else:
                proxy_url = proxy_str
        
        return proxy_url
    
    def load_from_file(self, filename):
        """从文件加载代理"""
        try:
            with open(filename, 'r') as f:
                for line in f:
                    line = line.strip()
                    if line and not line.startswith('#'):
                        self.add_proxy(line)
            print(f"✅ 从 {filename} 加载了 {len(self.proxies)} 个代理")
            return True
        except FileNotFoundError:
            print(f"❌ 代理文件 {filename} 不存在")
            return False
    
    def add_proxy(self, proxy_str):
        """添加代理"""
        proxy_url = self.parse_proxy(proxy_str)
        
        proxy_dict = {
            'http': proxy_url,
            'https': proxy_url
        }
        
        with self.lock:
            self.proxies.append(proxy_dict)
            self.proxy_stats[proxy_url] = {
                'success': 0,
                'fail': 0,
                'total': 0
            }
    
    def get_proxy(self):
        """轮询获取代理"""
        if not self.proxies:
            return None
        
        with self.lock:
            proxy = self.proxies[self.current_index]
            self.current_index = (self.current_index + 1) % len(self.proxies)
            return proxy
    
    def mark_success(self, proxy_dict):
        """标记成功"""
        if not proxy_dict:
            return
        proxy_str = proxy_dict.get('http', '')
        with self.lock:
            if proxy_str in self.proxy_stats:
                self.proxy_stats[proxy_str]['success'] += 1
                self.proxy_stats[proxy_str]['total'] += 1
    
    def mark_fail(self, proxy_dict):
        """标记失败"""
        if not proxy_dict:
            return
        proxy_str = proxy_dict.get('http', '')
        with self.lock:
            if proxy_str in self.proxy_stats:
                self.proxy_stats[proxy_str]['fail'] += 1
                self.proxy_stats[proxy_str]['total'] += 1
    
    def get_stats(self):
        """获取统计"""
        with self.lock:
            total_success = sum(s['success'] for s in self.proxy_stats.values())
            total_fail = sum(s['fail'] for s in self.proxy_stats.values())
            total_requests = sum(s['total'] for s in self.proxy_stats.values())
            
            return {
                'total_proxies': len(self.proxies),
                'total_requests': total_requests,
                'success': total_success,
                'fail': total_fail,
                'success_rate': f"{total_success*100/total_requests:.1f}%" if total_requests > 0 else "0%"
            }

# 全局变量
proxy_pool = ProxyPool()
request_count = 0
request_lock = threading.Lock()
print_lock = threading.Lock()
found_orders = []
found_lock = threading.Lock()

# ==================== 核心函数 ====================

def sign(text):
    return hashlib.sha256((text + API_KEY).encode()).hexdigest().upper()

def safe_print(msg):
    with print_lock:
        print(msg)

def is_today(date_str):
    if not date_str:
        return False
    return TODAY in str(date_str)

def check_order(tracking, use_proxy=True):
    """检查订单"""
    global request_count
    
    with request_lock:
        request_count += 1
    
    proxy = proxy_pool.get_proxy() if use_proxy else None
    
    try:
        sig = sign(tracking)
        headers = {
            "Authorization": f"Basic {BASIC_AUTH}",
            "APIKey": API_KEY,
            "Content-Type": "application/x-www-form-urlencoded"
        }
        
        data = {
            "ParcelCode": tracking,
            "Signature": sig
        }
        
        response = requests.post(
            API_URL,
            headers=headers,
            data=data,
            proxies=proxy,
            timeout=10
        )
        
        if response.status_code == 200:
            result = response.json()
            
            if result.get('Code') == '00' and result.get('Value'):
                value = result['Value']
                issue_date = value.get('IssueDate', '')
                
                proxy_pool.mark_success(proxy)
                
                if is_today(issue_date):
                    order_info = {
                        'tracking': tracking,
                        'IssueDate': issue_date,
                        'LoadDate': value.get('LoadDate', ''),
                        'SenderName': value.get('SenderName', ''),
                        'ReceiverName': value.get('ReceiverName', ''),
                        'CollectAmount': value.get('CollectAmount', 0),
                    }
                    
                    with found_lock:
                        found_orders.append(order_info)
                    
                    safe_print(f"✅ {tracking} - 今日订单！")
                    return True
            else:
                proxy_pool.mark_success(proxy)
        else:
            proxy_pool.mark_fail(proxy)
        
        return False
        
    except Exception as e:
        proxy_pool.mark_fail(proxy)
        return False

def parallel_scan(prefix, start, end, step=1, max_workers=100):
    """并行扫描"""
    safe_print(f"\n🚀 [{prefix}] 扫描: {start:09d} - {end:09d} (步长: {step}, 并发: {max_workers})")
    
    start_time = time.time()
    tested = 0
    
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        futures = []
        
        for num in range(start, end, step):
            tracking = f"{prefix}{num:09d}VN"
            futures.append(executor.submit(check_order, tracking))
        
        total_tasks = len(futures)
        
        for future in as_completed(futures):
            tested += 1
            
            if tested % 500 == 0:
                elapsed = time.time() - start_time
                speed = tested / elapsed if elapsed > 0 else 0
                progress = tested * 100 / total_tasks
                safe_print(f"   进度: {tested}/{total_tasks} ({progress:.1f}%) | {speed:.1f} req/s | 找到: {len(found_orders)}")
            
            try:
                future.result()
            except:
                pass
    
    elapsed = time.time() - start_time
    speed = tested / elapsed if elapsed > 0 else 0
    safe_print(f"✓ [{prefix}] 完成，耗时 {elapsed:.1f}s，速度 {speed:.1f} req/s\n")

# ==================== 主程序 ====================

def main():
    print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║           🚀 自动识别代理格式版 - 查找当天第一条订单                          ║
╚════════════════════════════════════════════════════════════════════════════╝

📅 今天日期: {TODAY}
⚡ 特点: 自动识别代理格式 (IP:PORT:USER:PASS 或 USER:PASS@IP:PORT)
🎯 目标: 使用代理池快速找到第一条订单

""")
    
    print("=" * 80)
    print("📡 加载代理")
    print("=" * 80)
    
    # 加载代理
    if not proxy_pool.load_from_file('proxies.txt'):
        print("\n请创建 proxies.txt 文件并添加代理")
        print("支持格式:")
        print("  1. IP:PORT:USER:PASS")
        print("  2. USER:PASS@IP:PORT")
        print("  3. IP:PORT")
        return
    
    max_workers = min(len(proxy_pool.proxies), 100)
    print(f"✅ 将使用 {max_workers} 并发\n")
    
    time.sleep(2)
    
    # 开始扫描
    start_time = datetime.now()
    
    print("=" * 80)
    print("🔍 开始扫描")
    print("=" * 80)
    
    # 扫描计划
    SCAN_PLANS = [
        ('EP', 493017000, 493020000, 1),
        ('EG', 40816000, 40825000, 2),
        ('EF', 43571000, 43580000, 2),
    ]
    
    for prefix, start, end, step in SCAN_PLANS:
        parallel_scan(prefix, start, end, step, max_workers)
        time.sleep(0.5)
    
    # 显示结果
    print("\n" + "=" * 80)
    print("📊 扫描结果")
    print("=" * 80)
    
    if found_orders:
        found_orders.sort(key=lambda x: x['tracking'])
        
        print(f"\n✅ 找到 {len(found_orders)} 条今天的订单\n")
        
        first = found_orders[0]
        print("🏆 第一条订单:")
        print(f"""
运单号: {first['tracking']}
日期: {first['IssueDate']}
收件人: {first['ReceiverName']}
金额: {first['CollectAmount']:,}₫
""")
    else:
        print("\n❌ 未找到今天的订单")
    
    # 统计
    elapsed = (datetime.now() - start_time).total_seconds()
    stats = proxy_pool.get_stats()
    
    print("=" * 80)
    print("📈 性能统计")
    print("=" * 80)
    print(f"总请求数: {request_count}")
    print(f"总耗时: {elapsed:.1f} 秒")
    print(f"平均速度: {request_count/elapsed:.1f} 请求/秒")
    print(f"\n代理统计:")
    print(f"  代理数: {stats['total_proxies']}")
    print(f"  成功率: {stats['success_rate']}")
    print("\n" + "=" * 80)

if __name__ == "__main__":
    main()
