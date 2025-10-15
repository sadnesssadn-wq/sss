#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
动态代理API版本 - 支持从代理服务商API实时获取代理
适用于: Bright Data, Oxylabs, SmartProxy, IPRoyal 等代理服务
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

# ==================== 代理配置 ====================

class DynamicProxyConfig:
    """动态代理配置"""
    
    # 方案1: Bright Data (Luminati) 旋转代理
    BRIGHTDATA = {
        'host': 'brd.superproxy.io',
        'port': 22225,
        'username': 'your_username',  # 替换为你的用户名
        'password': 'your_password',  # 替换为你的密码
        'session_type': 'random'  # random | sticky
    }
    
    # 方案2: Oxylabs 住宅代理
    OXYLABS = {
        'host': 'pr.oxylabs.io',
        'port': 7777,
        'username': 'your_username',
        'password': 'your_password'
    }
    
    # 方案3: SmartProxy
    SMARTPROXY = {
        'host': 'gate.smartproxy.com',
        'port': 7000,
        'username': 'your_username',
        'password': 'your_password'
    }
    
    # 方案4: IPRoyal
    IPROYAL = {
        'host': 'geo.iproyal.com',
        'port': 12321,
        'username': 'your_username',
        'password': 'your_password'
    }
    
    @staticmethod
    def get_proxy_url(config, session_id=None):
        """生成代理URL"""
        username = config['username']
        if session_id:
            username = f"{username}-session-{session_id}"
        
        return f"http://{username}:{config['password']}@{config['host']}:{config['port']}"

class SessionProxyManager:
    """会话代理管理器 - 每个线程使用独立会话"""
    
    def __init__(self, proxy_config, num_sessions=100):
        self.proxy_config = proxy_config
        self.num_sessions = num_sessions
        self.sessions = {}
        self.lock = threading.Lock()
        self.stats = {'success': 0, 'fail': 0, 'total': 0}
        
        # 预生成会话代理
        self.proxy_urls = []
        for i in range(num_sessions):
            proxy_url = DynamicProxyConfig.get_proxy_url(proxy_config, session_id=i)
            self.proxy_urls.append({
                'http': proxy_url,
                'https': proxy_url
            })
        
        print(f"✅ 创建了 {num_sessions} 个代理会话")
    
    def get_proxy(self, thread_id=None):
        """获取代理"""
        if thread_id is None:
            thread_id = threading.get_ident()
        
        # 根据线程ID分配固定代理会话
        session_id = thread_id % len(self.proxy_urls)
        return self.proxy_urls[session_id]
    
    def mark_success(self):
        with self.lock:
            self.stats['success'] += 1
            self.stats['total'] += 1
    
    def mark_fail(self):
        with self.lock:
            self.stats['fail'] += 1
            self.stats['total'] += 1
    
    def get_stats(self):
        with self.lock:
            total = self.stats['total']
            success_rate = f"{self.stats['success']*100/total:.1f}%" if total > 0 else "0%"
            return {
                'sessions': len(self.proxy_urls),
                'total_requests': total,
                'success': self.stats['success'],
                'fail': self.stats['fail'],
                'success_rate': success_rate
            }

# ==================== 全局变量 ====================
proxy_manager = None
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

def increment_request_count():
    global request_count
    with request_lock:
        request_count += 1
        return request_count

def is_today(date_str):
    if not date_str:
        return False
    return TODAY in str(date_str)

def check_order(tracking, max_retries=2):
    """检查单个订单"""
    increment_request_count()
    
    for retry in range(max_retries):
        proxy = proxy_manager.get_proxy() if proxy_manager else None
        
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
                    
                    if proxy_manager:
                        proxy_manager.mark_success()
                    
                    if is_today(issue_date) or is_today(load_date):
                        order_info = {
                            'tracking': tracking,
                            'IssueDate': issue_date,
                            'LoadDate': load_date,
                            'SenderName': value.get('SenderName', ''),
                            'ReceiverName': value.get('ReceiverName', ''),
                            'ReceiverPhone': value.get('ReceiverPhone', ''),
                            'CollectAmount': value.get('CollectAmount', 0),
                        }
                        
                        with found_lock:
                            found_orders.append(order_info)
                        
                        safe_print(f"✅ {tracking} - 今日订单！")
                        return (True, order_info)
                    
                    return (False, None)
            
            if proxy_manager:
                proxy_manager.mark_fail()
            
        except Exception as e:
            if proxy_manager:
                proxy_manager.mark_fail()
            if retry < max_retries - 1:
                time.sleep(0.2)
                continue
    
    return (False, None)

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
            
            if tested % 100 == 0:
                elapsed = time.time() - start_time
                speed = tested / elapsed if elapsed > 0 else 0
                progress = tested * 100 / total_tasks
                safe_print(f"   进度: {tested}/{total_tasks} ({progress:.1f}%) | {speed:.1f} req/s")
            
            try:
                future.result()
            except:
                pass
    
    elapsed = time.time() - start_time
    speed = tested / elapsed if elapsed > 0 else 0
    safe_print(f"✓ [{prefix}] 完成，耗时 {elapsed:.1f}s，速度 {speed:.1f} req/s\n")

# ==================== 主程序 ====================

def main():
    global proxy_manager
    
    print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║           🌐 动态代理API版 - 查找当天第一条订单                              ║
╚════════════════════════════════════════════════════════════════════════════╝

📅 今天日期: {TODAY}
⚡ 特点: 使用代理服务商API，自动旋转IP
🎯 支持: Bright Data, Oxylabs, SmartProxy, IPRoyal 等
""")
    
    print("=" * 80)
    print("🔧 代理配置")
    print("=" * 80)
    
    print("\n请选择代理服务商:")
    print("1. Bright Data (推荐)")
    print("2. Oxylabs")
    print("3. SmartProxy")
    print("4. IPRoyal")
    print("5. 不使用代理（测试模式）")
    
    choice = input("\n请选择 (1-5): ").strip()
    
    proxy_config = None
    if choice == '1':
        proxy_config = DynamicProxyConfig.BRIGHTDATA
        print("\n⚠️  请修改脚本中的 BRIGHTDATA 配置，填入你的真实账号密码")
    elif choice == '2':
        proxy_config = DynamicProxyConfig.OXYLABS
        print("\n⚠️  请修改脚本中的 OXYLABS 配置")
    elif choice == '3':
        proxy_config = DynamicProxyConfig.SMARTPROXY
        print("\n⚠️  请修改脚本中的 SMARTPROXY 配置")
    elif choice == '4':
        proxy_config = DynamicProxyConfig.IPROYAL
        print("\n⚠️  请修改脚本中的 IPROYAL 配置")
    else:
        print("\n⚠️  测试模式：不使用代理，并发限制为10")
    
    if proxy_config:
        num_sessions = 100
        proxy_manager = SessionProxyManager(proxy_config, num_sessions)
        max_workers = num_sessions
        
        # 测试代理连接
        print(f"\n🔍 测试代理连接...")
        test_proxy = proxy_manager.get_proxy()
        try:
            test_response = requests.get(
                'http://ip-api.com/json',
                proxies=test_proxy,
                timeout=10
            )
            if test_response.status_code == 200:
                ip_info = test_response.json()
                print(f"✅ 代理连接成功！")
                print(f"   IP: {ip_info.get('query')}")
                print(f"   地区: {ip_info.get('country')}, {ip_info.get('city')}")
            else:
                print(f"❌ 代理连接失败")
                return
        except Exception as e:
            print(f"❌ 代理测试失败: {e}")
            print(f"请检查代理配置是否正确")
            return
    else:
        max_workers = 10
    
    time.sleep(2)
    
    # ==================== 开始扫描 ====================
    start_time = datetime.now()
    
    print("\n" + "=" * 80)
    print("🔍 开始扫描")
    print("=" * 80)
    
    # 扫描计划
    SCAN_PLANS = [
        ('EP', 493018000, 493020000, 1),
        ('EG', 40816000, 40825000, 1),
        ('EF', 43571000, 43580000, 1),
        ('EK', 42150000, 42160000, 2),
    ]
    
    for prefix, start, end, step in SCAN_PLANS:
        parallel_scan(prefix, start, end, step, max_workers)
        time.sleep(0.5)
    
    # ==================== 显示结果 ====================
    print("\n" + "=" * 80)
    print("📊 扫描结果")
    print("=" * 80)
    
    if found_orders:
        found_orders.sort(key=lambda x: x['tracking'])
        
        print(f"\n✅ 找到 {len(found_orders)} 条当天订单")
        print("\n🏆 第一条订单:")
        
        first = found_orders[0]
        print(f"""
运单号: {first['tracking']}
发行日期: {first['IssueDate']}
发件人: {first['SenderName']}
收件人: {first['ReceiverName']}
金额: {first['CollectAmount']:,}₫
""")
    else:
        print("\n❌ 未找到当天订单")
    
    # 统计
    elapsed = (datetime.now() - start_time).total_seconds()
    print("=" * 80)
    print("📈 性能统计")
    print("=" * 80)
    print(f"总请求数: {request_count}")
    print(f"总耗时: {elapsed:.1f} 秒")
    print(f"平均速度: {request_count/elapsed:.1f} 请求/秒")
    
    if proxy_manager:
        stats = proxy_manager.get_stats()
        print(f"\n代理统计:")
        print(f"  会话数: {stats['sessions']}")
        print(f"  成功率: {stats['success_rate']}")
    
    print("\n" + "=" * 80)

if __name__ == "__main__":
    main()
