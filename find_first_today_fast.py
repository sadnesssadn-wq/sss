#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
超快速查找当天第一条订单
基于已知订单 EP493018285VN，使用二分查找向前定位第一条
"""

import hashlib
import requests
import json
from datetime import datetime
import time

# ==================== 配置 ====================
API_URL = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TODAY = datetime.now().strftime("%d/%m/%Y")
request_count = 0

def sign(text):
    return hashlib.sha256((text + API_KEY).encode()).hexdigest().upper()

def check_order(tracking):
    """检查订单，返回 (is_today, is_valid, issue_date)"""
    global request_count
    request_count += 1
    
    try:
        sig = sign(tracking)
        headers = {
            "Authorization": f"Basic {BASIC_AUTH}",
            "APIKey": API_KEY,
            "Content-Type": "application/x-www-form-urlencoded"
        }
        
        data = {"ParcelCode": tracking, "Signature": sig}
        response = requests.post(API_URL, headers=headers, data=data, timeout=5)
        
        if response.status_code == 200:
            result = response.json()
            if result.get('Code') == '00' and result.get('Value'):
                value = result['Value']
                issue_date = value.get('IssueDate', '')
                is_today = TODAY in str(issue_date)
                
                return (is_today, True, issue_date, value)
        
        return (False, False, None, None)
    except:
        return (False, False, None, None)

def find_first_in_series(prefix, known_today_num):
    """
    已知某个今天的订单号，向前二分查找第一条
    """
    print(f"\n🎯 在 {prefix} 系列中查找第一条今日订单")
    print(f"已知今日订单: {prefix}{known_today_num:09d}VN")
    print("=" * 80)
    
    # 向前查找今天订单的起始边界
    left = known_today_num - 100000  # 向前查10万个号
    right = known_today_num
    first_today_num = known_today_num
    
    print(f"🔍 二分查找范围: {left:09d} - {right:09d}\n")
    
    iteration = 0
    while left < right:
        iteration += 1
        mid = (left + right) // 2
        tracking = f"{prefix}{mid:09d}VN"
        
        is_today, is_valid, issue_date, value = check_order(tracking)
        
        print(f"#{iteration:2d} 检查 {tracking} -> ", end="")
        
        if is_today:
            print(f"✅ 今日订单! 日期: {issue_date}")
            first_today_num = mid
            right = mid  # 继续向左找
        else:
            if is_valid:
                print(f"❌ 非今日 ({issue_date})")
            else:
                print(f"⚪ 无效订单")
            left = mid + 1
        
        time.sleep(0.05)  # 避免请求过快
    
    # 验证找到的第一条
    print("\n" + "=" * 80)
    print(f"🔍 验证第一条订单...")
    print("=" * 80)
    
    # 检查前几个号码确认这是第一条
    check_range = range(max(first_today_num - 5, 0), first_today_num + 3)
    results = []
    
    for num in check_range:
        tracking = f"{prefix}{num:09d}VN"
        is_today, is_valid, issue_date, value = check_order(tracking)
        
        status = "✅ 今日" if is_today else ("❌ 非今日" if is_valid else "⚪ 无效")
        print(f"{tracking} -> {status} {f'({issue_date})' if issue_date else ''}")
        
        if is_today:
            results.append({
                'tracking': tracking,
                'number': num,
                'IssueDate': issue_date,
                'LoadDate': value.get('LoadDate', ''),
                'SenderName': value.get('SenderName', ''),
                'ReceiverName': value.get('ReceiverName', ''),
                'CollectAmount': value.get('CollectAmount', 0),
                'full_data': value
            })
        
        time.sleep(0.05)
    
    if results:
        results.sort(key=lambda x: x['number'])
        return results[0]
    
    return None

def batch_check_series(series_configs):
    """
    批量检查多个系列
    series_configs: [(prefix, known_num), ...]
    """
    all_first_orders = []
    
    for prefix, known_num in series_configs:
        result = find_first_in_series(prefix, known_num)
        if result:
            all_first_orders.append(result)
    
    return all_first_orders

def main():
    print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║                  ⚡ 超快速查找当天第一条订单                                  ║
╚════════════════════════════════════════════════════════════════════════════╝

📅 今天日期: {TODAY}
🎯 策略: 基于已知今日订单，二分查找向前定位
⚡ 优势: 最少的请求次数，最快的速度

已知今日订单: EP493018285VN
""")
    
    start_time = datetime.now()
    
    # ==================== EP系列精确查找 ====================
    result = find_first_in_series('EP', 493018285)
    
    print("\n" + "=" * 80)
    print("📊 最终结果")
    print("=" * 80)
    
    if result:
        print(f"""
🏆 找到 EP 系列当天第一条订单:

运单号: {result['tracking']}
发行日期: {result['IssueDate']}
装载日期: {result['LoadDate']}
发件人: {result['SenderName']}
收件人: {result['ReceiverName']}
代收金额: {result['CollectAmount']:,}₫

📊 统计信息:
   总请求数: {request_count}
   耗时: {(datetime.now() - start_time).total_seconds():.1f} 秒
   平均速度: {request_count / (datetime.now() - start_time).total_seconds():.1f} 请求/秒
""")
        
        # 保存结果
        output = {
            'scan_date': TODAY,
            'series': 'EP',
            'first_order': result,
            'total_requests': request_count,
            'elapsed_seconds': (datetime.now() - start_time).total_seconds()
        }
        
        filename = f"first_order_EP_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump(output, f, ensure_ascii=False, indent=2)
        
        print(f"💾 结果已保存: {filename}")
    else:
        print(f"\n❌ 未找到 EP 系列的第一条今日订单")
        print(f"📊 总请求数: {request_count}")
    
    print("\n" + "=" * 80)
    
    # 提示：可以扩展到其他系列
    print("""
💡 提示:
   1. 如果要查找其他系列，需要先在该系列中找到至少一个今日订单
   2. 然后使用 find_first_in_series() 向前定位第一条
   3. 二分查找的复杂度是 O(log n)，比暴力扫描快得多
   
🚀 扩展方法:
   # 假设你知道 EG 系列某个今日订单
   result = find_first_in_series('EG', 40817500)
""")

if __name__ == "__main__":
    main()
