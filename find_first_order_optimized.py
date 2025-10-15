#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
智能查找当天第一条订单
策略：二分查找 + 渐进扫描
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
print_lock = threading.Lock()
request_count = 0
request_lock = threading.Lock()

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

def check_order(tracking, show_details=False):
    """检查单个订单，返回 (is_today, order_data)"""
    increment_request_count()
    
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
        
        response = requests.post(API_URL, headers=headers, data=data, timeout=5)
        
        if response.status_code == 200:
            result = response.json()
            
            if result.get('Code') == '00' and result.get('Value'):
                value = result['Value']
                issue_date = value.get('IssueDate', '')
                load_date = value.get('LoadDate', '')
                
                # 检查是否是今天的订单
                if is_today(issue_date) or is_today(load_date):
                    order_info = {
                        'tracking': tracking,
                        'IssueDate': issue_date,
                        'LoadDate': load_date,
                        'SenderName': value.get('SenderName', ''),
                        'ReceiverName': value.get('ReceiverName', ''),
                        'CollectAmount': value.get('CollectAmount', 0),
                    }
                    
                    if show_details:
                        safe_print(f"✅ {tracking} - 今日订单！日期: {issue_date}")
                    
                    return (True, order_info)
                else:
                    if show_details:
                        safe_print(f"   {tracking} - 非今日 ({issue_date})")
                    return (False, {'tracking': tracking, 'IssueDate': issue_date})
        
        return (False, None)
        
    except Exception as e:
        return (False, None)

# ==================== 策略1: 二分查找法 ====================

def binary_search_first(prefix, min_num, max_num):
    """
    二分查找当天的第一条订单
    假设运单号是递增的，今天的订单在某个连续区间
    """
    safe_print(f"\n🔍 [{prefix}] 二分查找范围: {min_num:09d} - {max_num:09d}")
    
    first_today = None
    left, right = min_num, max_num
    
    while left <= right:
        mid = (left + right) // 2
        tracking = f"{prefix}{mid:09d}VN"
        
        is_today_order, order_data = check_order(tracking, show_details=True)
        
        if is_today_order:
            # 找到今天的订单，继续向左查找更小的
            first_today = order_data
            right = mid - 1
            safe_print(f"   ⬅️  找到今日订单，向左继续: {tracking}")
        else:
            # 不是今天的订单，检查日期判断方向
            if order_data and order_data.get('IssueDate'):
                # 如果有日期，判断是在今天之前还是之后
                # 这里简单处理：向右查找
                left = mid + 1
            else:
                # 没有数据，向右查找
                left = mid + 1
        
        time.sleep(0.1)  # 避免请求过快
    
    return first_today

# ==================== 策略2: 渐进扫描法 ====================

def progressive_scan(prefix, start, end, step=100, batch_size=20):
    """
    渐进扫描：每次跳跃式检查，找到今天的区间后精确扫描
    """
    safe_print(f"\n🔍 [{prefix}] 渐进扫描: {start:09d} - {end:09d} (步长: {step})")
    
    # 第一阶段：粗扫描，找到今天订单的大致范围
    rough_range = []
    current = start
    
    with ThreadPoolExecutor(max_workers=10) as executor:
        futures = []
        positions = []
        
        while current <= end:
            tracking = f"{prefix}{current:09d}VN"
            futures.append(executor.submit(check_order, tracking, False))
            positions.append(current)
            current += step
        
        for i, future in enumerate(as_completed(futures)):
            try:
                is_today_order, order_data = future.result()
                if is_today_order:
                    rough_range.append(positions[i])
                    safe_print(f"   ✅ 发现今日区间附近: {positions[i]:09d}")
            except:
                pass
    
    if not rough_range:
        safe_print(f"   ❌ 未找到今日订单")
        return None
    
    # 第二阶段：在找到的区间精确扫描
    min_range = min(rough_range) - step
    max_range = max(rough_range) + step
    
    safe_print(f"   🎯 精确扫描范围: {min_range:09d} - {max_range:09d}")
    
    found_orders = []
    
    with ThreadPoolExecutor(max_workers=batch_size) as executor:
        futures = []
        
        for num in range(min_range, max_range):
            tracking = f"{prefix}{num:09d}VN"
            futures.append(executor.submit(check_order, tracking, False))
        
        for future in as_completed(futures):
            try:
                is_today_order, order_data = future.result()
                if is_today_order:
                    found_orders.append(order_data)
            except:
                pass
    
    if found_orders:
        # 返回运单号最小的
        found_orders.sort(key=lambda x: x['tracking'])
        return found_orders[0]
    
    return None

# ==================== 策略3: 快速定点扫描 ====================

def quick_spot_check(prefix, checkpoints):
    """
    在已知的热点区间快速检查
    """
    safe_print(f"\n🔍 [{prefix}] 定点检查 {len(checkpoints)} 个位置")
    
    found_orders = []
    
    with ThreadPoolExecutor(max_workers=20) as executor:
        futures = {}
        
        for num in checkpoints:
            tracking = f"{prefix}{num:09d}VN"
            futures[executor.submit(check_order, tracking, False)] = num
        
        for future in as_completed(futures):
            try:
                is_today_order, order_data = future.result()
                if is_today_order:
                    found_orders.append(order_data)
                    safe_print(f"   ✅ 找到: {order_data['tracking']}")
            except:
                pass
    
    if found_orders:
        found_orders.sort(key=lambda x: x['tracking'])
        return found_orders[0]
    
    return None

# ==================== 主程序 ====================

def main():
    print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║                    🚀 智能查找当天第一条订单                                 ║
╚════════════════════════════════════════════════════════════════════════════╝

📅 今天日期: {TODAY}
⚡ 策略: 智能组合（二分查找 + 渐进扫描 + 定点检查）
🎯 目标: 用最少请求找到当天第一条订单

""")
    
    start_time = datetime.now()
    all_found = []
    
    # ==================== 基于历史数据的热点区间 ====================
    # EP系列：您的测试订单在这里
    safe_print("=" * 80)
    safe_print("阶段1: EP系列 - 基于已知订单 EP493018285VN")
    safe_print("=" * 80)
    
    # 围绕已知订单扫描
    ep_result = progressive_scan('EP', 493018000, 493019000, step=50, batch_size=30)
    if ep_result:
        all_found.append(ep_result)
    
    # EG系列 - 根据脚本中的热点
    safe_print("\n" + "=" * 80)
    safe_print("阶段2: EG系列 - 小号段扫描")
    safe_print("=" * 80)
    
    eg_result = progressive_scan('EG', 40816000, 40820000, step=50, batch_size=30)
    if eg_result:
        all_found.append(eg_result)
    
    # EF系列 - 密集区
    safe_print("\n" + "=" * 80)
    safe_print("阶段3: EF系列 - 密集区")
    safe_print("=" * 80)
    
    ef_result = progressive_scan('EF', 43571000, 43576000, step=50, batch_size=30)
    if ef_result:
        all_found.append(ef_result)
    
    # 显示结果
    print("\n" + "=" * 80)
    print("📊 扫描结果")
    print("=" * 80)
    
    if all_found:
        all_found.sort(key=lambda x: x['tracking'])
        
        print(f"\n✅ 找到 {len(all_found)} 个系列的当天订单")
        print(f"📊 总请求数: {request_count}")
        
        print("\n" + "=" * 80)
        print("🏆 当天第一条订单（运单号最小）:")
        print("=" * 80)
        
        first = all_found[0]
        print(f"""
运单号: {first['tracking']}
发行日期: {first['IssueDate']}
装载日期: {first['LoadDate']}
发件人: {first['SenderName']}
收件人: {first['ReceiverName']}
代收金额: {first['CollectAmount']:,}₫
""")
        
        if len(all_found) > 1:
            print("=" * 80)
            print("📋 其他找到的订单:")
            print("=" * 80)
            for i, order in enumerate(all_found[1:], 2):
                print(f"\n{i}. {order['tracking']}")
                print(f"   收件人: {order['ReceiverName']}")
                print(f"   金额: {order['CollectAmount']:,}₫")
        
        # 保存结果
        output = {
            'scan_date': TODAY,
            'total_found': len(all_found),
            'total_requests': request_count,
            'first_order': first,
            'all_orders': all_found,
            'scan_time': str(datetime.now() - start_time)
        }
        
        filename = f"first_order_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump(output, f, ensure_ascii=False, indent=2)
        
        print(f"\n💾 结果已保存: {filename}")
    
    else:
        print(f"\n❌ 未找到当天订单")
        print(f"📊 总请求数: {request_count}")
    
    elapsed = (datetime.now() - start_time).total_seconds()
    print(f"\n⏱️  总耗时: {elapsed:.1f} 秒")
    print(f"📈 平均速度: {request_count/elapsed:.1f} 请求/秒")
    print("\n" + "=" * 80)

if __name__ == "__main__":
    main()
