#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
使用代理池快速查找当天第一条订单
支持100+并发，使用代理池避免IP封禁
"""

import hashlib
import requests
import json
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading
import time
import random
from queue import Queue
import itertools

# ==================== 配置 ====================
API_URL = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TODAY = datetime.now().strftime("%d/%m/%Y")

# ==================== 代理池管理 ====================

class ProxyPool:
    """代理池管理器"""
    
    def __init__(self):
        self.proxies = []
        self.proxy_stats = {}  # 代理统计
        self.lock = threading.Lock()
        self.current_index = 0
        
    def load_from_file(self, filename):
        """从文件加载代理列表"""
        try:
            with open(filename, 'r') as f:
                for line in f:
                    line = line.strip()
                    if line and not line.startswith('#'):
                        self.add_proxy(line)
            print(f"✅ 从 {filename} 加载了 {len(self.proxies)} 个代理")
        except FileNotFoundError:
            print(f"❌ 代理文件 {filename} 不存在")
    
    def load_from_list(self, proxy_list):
        """从列表加载代理"""
        for proxy in proxy_list:
            self.add_proxy(proxy)
        print(f"✅ 加载了 {len(self.proxies)} 个代理")
    
    def add_proxy(self, proxy_str):
        """
        添加代理
        格式: ip:port 或 username:password@ip:port 或 http://ip:port
        """
        if not proxy_str.startswith('http'):
            proxy_str = f"http://{proxy_str}"
        
        proxy_dict = {
            'http': proxy_str,
            'https': proxy_str
        }
        
        with self.lock:
            self.proxies.append(proxy_dict)
            self.proxy_stats[proxy_str] = {
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
    
    def get_random_proxy(self):
        """随机获取代理"""
        if not self.proxies:
            return None
        return random.choice(self.proxies)
    
    def mark_success(self, proxy_dict):
        """标记代理成功"""
        if not proxy_dict:
            return
        proxy_str = proxy_dict.get('http', '')
        with self.lock:
            if proxy_str in self.proxy_stats:
                self.proxy_stats[proxy_str]['success'] += 1
                self.proxy_stats[proxy_str]['total'] += 1
    
    def mark_fail(self, proxy_dict):
        """标记代理失败"""
        if not proxy_dict:
            return
        proxy_str = proxy_dict.get('http', '')
        with self.lock:
            if proxy_str in self.proxy_stats:
                self.proxy_stats[proxy_str]['fail'] += 1
                self.proxy_stats[proxy_str]['total'] += 1
    
    def get_stats(self):
        """获取统计信息"""
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
    
    def show_stats(self):
        """显示详细统计"""
        stats = self.get_stats()
        print(f"\n📊 代理池统计:")
        print(f"   代理总数: {stats['total_proxies']}")
        print(f"   总请求数: {stats['total_requests']}")
        print(f"   成功: {stats['success']}, 失败: {stats['fail']}")
        print(f"   成功率: {stats['success_rate']}")

# 全局代理池
proxy_pool = ProxyPool()
request_count = 0
request_lock = threading.Lock()
print_lock = threading.Lock()
found_orders = []
found_lock = threading.Lock()

# ==================== 核心函数 ====================

def sign(text):
    """生成签名"""
    return hashlib.sha256((text + API_KEY).encode()).hexdigest().upper()

def safe_print(msg):
    with print_lock:
        print(msg)

def increment_request_count():
    global request_count
    with request_lock:
        request_count += 1
        return request_count

def is_today(date_str):
    """检查日期是否是今天"""
    if not date_str:
        return False
    return TODAY in str(date_str)

def check_order(tracking, use_proxy=True, max_retries=2):
    """
    检查单个订单
    use_proxy: 是否使用代理
    max_retries: 最大重试次数
    """
    increment_request_count()
    
    for retry in range(max_retries):
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
                    load_date = value.get('LoadDate', '')
                    
                    proxy_pool.mark_success(proxy)
                    
                    # 检查是否是今天的订单
                    if is_today(issue_date) or is_today(load_date):
                        order_info = {
                            'tracking': tracking,
                            'IssueDate': issue_date,
                            'LoadDate': load_date,
                            'SenderName': value.get('SenderName', ''),
                            'ReceiverName': value.get('ReceiverName', ''),
                            'ReceiverPhone': value.get('ReceiverPhone', ''),
                            'CollectAmount': value.get('CollectAmount', 0),
                            'full_data': value
                        }
                        
                        with found_lock:
                            found_orders.append(order_info)
                        
                        safe_print(f"✅ {tracking} - 今日订单！")
                        return (True, order_info)
                    else:
                        return (False, {'tracking': tracking, 'IssueDate': issue_date})
                else:
                    proxy_pool.mark_success(proxy)
                    return (False, None)
            
            proxy_pool.mark_fail(proxy)
            
        except requests.exceptions.Timeout:
            proxy_pool.mark_fail(proxy)
            if retry < max_retries - 1:
                time.sleep(0.1)
                continue
        except Exception as e:
            proxy_pool.mark_fail(proxy)
            if retry < max_retries - 1:
                time.sleep(0.1)
                continue
    
    return (False, None)

# ==================== 扫描策略 ====================

def parallel_scan(prefix, start, end, step=1, max_workers=100):
    """
    并行扫描指定号段
    max_workers: 并发线程数（匹配代理池数量）
    """
    safe_print(f"\n🚀 [{prefix}] 并行扫描: {start:09d} - {end:09d} (步长: {step}, 并发: {max_workers})")
    
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
            
            # 每100个显示一次进度
            if tested % 100 == 0:
                elapsed = time.time() - start_time
                speed = tested / elapsed if elapsed > 0 else 0
                progress = tested * 100 / total_tasks
                safe_print(f"   进度: {tested}/{total_tasks} ({progress:.1f}%) | 速度: {speed:.1f} 请求/秒")
            
            try:
                future.result()
            except:
                pass
    
    elapsed = time.time() - start_time
    speed = tested / elapsed if elapsed > 0 else 0
    safe_print(f"✓ [{prefix}] 完成扫描 {tested} 个订单，耗时 {elapsed:.1f}秒，速度 {speed:.1f} 请求/秒\n")

def smart_scan_with_binary_search(prefix, min_num, max_num, max_workers=100):
    """
    智能扫描：先快速定位，再精确扫描
    """
    safe_print(f"\n🎯 [{prefix}] 智能扫描: {min_num:09d} - {max_num:09d}")
    
    # 第一阶段：跳跃式粗扫描
    step = 1000
    checkpoints = list(range(min_num, max_num, step))
    
    safe_print(f"   阶段1: 粗扫描 {len(checkpoints)} 个检查点")
    
    hot_zones = []
    
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        futures = {}
        for num in checkpoints:
            tracking = f"{prefix}{num:09d}VN"
            futures[executor.submit(check_order, tracking)] = num
        
        for future in as_completed(futures):
            try:
                is_today_order, order_data = future.result()
                if is_today_order:
                    hot_zones.append(futures[future])
            except:
                pass
    
    if not hot_zones:
        safe_print(f"   ❌ 未找到今日订单热区")
        return
    
    # 第二阶段：精确扫描热区
    safe_print(f"   阶段2: 在 {len(hot_zones)} 个热区精确扫描")
    
    for zone_start in hot_zones:
        zone_end = min(zone_start + step, max_num)
        parallel_scan(prefix, zone_start, zone_end, step=1, max_workers=max_workers)

# ==================== 主程序 ====================

def main():
    print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║              🚀 代理池加速版 - 查找当天第一条订单                             ║
╚════════════════════════════════════════════════════════════════════════════╝

📅 今天日期: {TODAY}
⚡ 策略: 100并发 + 代理池 + 智能扫描
🎯 目标: 最快速度找到当天第一条订单
""")
    
    # ==================== 配置代理池 ====================
    print("=" * 80)
    print("📡 配置代理池")
    print("=" * 80)
    
    # 方式1: 从文件加载（如果文件存在）
    # proxy_pool.load_from_file('proxies.txt')
    
    # 方式2: 手动添加代理列表
    # 这里需要你提供真实的代理IP列表
    sample_proxies = []
    
    # 检查是否有代理文件
    import os
    if os.path.exists('proxies.txt'):
        proxy_pool.load_from_file('proxies.txt')
    else:
        print("\n⚠️  未找到代理文件 'proxies.txt'")
        print("\n请选择运行模式:")
        print("1. 创建示例代理文件模板")
        print("2. 不使用代理直接运行（速度较慢，可能被限制）")
        
        choice = input("\n请选择 (1/2): ").strip()
        
        if choice == '1':
            # 创建代理文件模板
            with open('proxies.txt', 'w') as f:
                f.write("""# 代理列表配置文件
# 格式: ip:port 或 username:password@ip:port
# 每行一个代理，# 开头的行为注释

# 示例:
# 127.0.0.1:8080
# user:pass@192.168.1.100:8080
# http://proxy.example.com:3128

# 在下方添加你的代理列表:

""")
            print(f"\n✅ 已创建代理配置文件 'proxies.txt'")
            print(f"请编辑该文件添加你的代理IP列表，然后重新运行程序")
            return
        else:
            print("\n⚠️  继续不使用代理运行...")
            print("警告: 并发数将限制为10，避免IP被封")
            max_workers = 10
    
    if len(proxy_pool.proxies) > 0:
        max_workers = min(len(proxy_pool.proxies), 100)
        print(f"\n✅ 代理池配置完成，将使用 {max_workers} 并发")
    else:
        max_workers = 10
        print(f"\n⚠️  无代理模式，并发限制为 {max_workers}")
    
    time.sleep(2)
    
    # ==================== 开始扫描 ====================
    start_time = datetime.now()
    
    print("\n" + "=" * 80)
    print("🔍 开始扫描")
    print("=" * 80)
    
    # 扫描计划（基于历史数据的热点区间）
    SCAN_PLANS = [
        # EP系列 - 已知有今日订单
        ('EP', 493018000, 493020000, 1),
        
        # EG系列 - 小号段
        ('EG', 40816000, 40825000, 1),
        ('EG', 46000000, 46010000, 2),
        
        # EF系列 - 密集区
        ('EF', 43571000, 43580000, 1),
        ('EF', 47519000, 47530000, 2),
        
        # EK系列
        ('EK', 42150000, 42160000, 2),
        
        # EB系列
        ('EB', 102880000, 102895000, 2),
        
        # ED系列
        ('ED', 121960000, 121970000, 2),
    ]
    
    for prefix, start, end, step in SCAN_PLANS:
        parallel_scan(prefix, start, end, step, max_workers)
        
        # 每个系列扫描后短暂休息
        time.sleep(0.5)
    
    # ==================== 显示结果 ====================
    print("\n" + "=" * 80)
    print("📊 扫描结果")
    print("=" * 80)
    
    if found_orders:
        # 按运单号排序
        found_orders.sort(key=lambda x: x['tracking'])
        
        print(f"\n✅ 共找到 {len(found_orders)} 条当天订单")
        
        print("\n" + "=" * 80)
        print("🏆 当天的第一条订单（运单号最小）:")
        print("=" * 80)
        
        first_order = found_orders[0]
        print(f"""
运单号: {first_order['tracking']}
发行日期: {first_order['IssueDate']}
装载日期: {first_order['LoadDate']}
发件人: {first_order['SenderName']}
收件人: {first_order['ReceiverName']}
收件电话: {first_order['ReceiverPhone']}
代收金额: {first_order['CollectAmount']:,}₫
""")
        
        if len(found_orders) > 1:
            print("=" * 80)
            print(f"📋 其他找到的当天订单 ({len(found_orders)-1} 条):")
            print("=" * 80)
            
            for i, order in enumerate(found_orders[1:], 2):
                print(f"\n{i}. {order['tracking']}")
                print(f"   日期: {order['IssueDate']}")
                print(f"   收件人: {order['ReceiverName']}")
                print(f"   金额: {order['CollectAmount']:,}₫")
        
        # 保存结果
        output = {
            'scan_date': TODAY,
            'total_found': len(found_orders),
            'total_requests': request_count,
            'first_order': first_order,
            'all_orders': found_orders,
            'proxy_stats': proxy_pool.get_stats()
        }
        
        filename = f"result_proxy_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump(output, f, ensure_ascii=False, indent=2)
        
        print(f"\n💾 结果已保存: {filename}")
    
    else:
        print(f"\n❌ 未找到当天的订单")
    
    # 统计信息
    end_time = datetime.now()
    elapsed = (end_time - start_time).total_seconds()
    
    print("\n" + "=" * 80)
    print("📈 性能统计")
    print("=" * 80)
    print(f"总请求数: {request_count}")
    print(f"总耗时: {elapsed:.1f} 秒 ({elapsed/60:.1f} 分钟)")
    print(f"平均速度: {request_count/elapsed:.1f} 请求/秒")
    
    # 显示代理池统计
    if len(proxy_pool.proxies) > 0:
        proxy_pool.show_stats()
    
    print("\n" + "=" * 80)

if __name__ == "__main__":
    main()
