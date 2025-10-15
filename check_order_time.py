#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
查看订单的详细时间
"""

import hashlib
import requests
import sys

API_URL = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def sign(text):
    return hashlib.sha256((text + API_KEY).encode()).hexdigest().upper()

def check_order_time(tracking):
    """查看订单详细时间"""
    sig = sign(tracking)
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": API_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    data = {"ParcelCode": tracking, "Signature": sig}
    
    response = requests.post(API_URL, headers=headers, data=data, timeout=10)
    
    if response.status_code == 200:
        result = response.json()
        if result.get('Code') == '00' and result.get('Value'):
            value = result['Value']
            print(f"\n运单号: {tracking}")
            print(f"发行日期: {value.get('IssueDate', 'N/A')}")
            print(f"装载时间: {value.get('LoadDate', 'N/A')}")
            print(f"收件人: {value.get('ReceiverName', 'N/A')}")
            print(f"金额: {value.get('CollectAmount', 0):,}₫")
            return value.get('LoadDate', value.get('IssueDate'))
        else:
            print(f"❌ {tracking} - 订单不存在或查询失败")
    else:
        print(f"❌ HTTP错误: {response.status_code}")
    
    return None

if __name__ == "__main__":
    print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                     🕐 查看订单详细时间                                     ║
╚════════════════════════════════════════════════════════════════════════════╝
""")
    
    # 查看已找到的订单
    orders = [
        "EP492999365VN",
        "EP493005750VN", 
        "EP493006018VN",
        "EP493006211VN",
        "EP493006857VN"
    ]
    
    print("查询已找到的订单详细时间:\n")
    
    times = []
    for tracking in orders:
        time_str = check_order_time(tracking)
        if time_str:
            times.append((tracking, time_str))
    
    # 按时间排序
    if times:
        print("\n" + "=" * 80)
        print("按装载时间排序:")
        print("=" * 80)
        
        times.sort(key=lambda x: x[1])
        
        for i, (tracking, time_str) in enumerate(times, 1):
            print(f"{i}. {tracking} - {time_str}")
        
        print(f"\n🏆 时间最早的: {times[0][0]} ({times[0][1]})")
