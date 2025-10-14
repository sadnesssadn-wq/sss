#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
测试API返回的日期信息
"""

import hashlib
import requests
import json
from datetime import datetime

PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
TEST_PROXY = "23.27.184.245:5846:uadkcvtn:uo2rzar814ph"

# 测试不同状态的订单
TEST_CODES = [
    "EB102885483VN",  # 未签收
    "EB102885846VN",  # 已签收
    "EB102888365VN",  # 未签收
]

def generate_signature(code):
    """生成签名"""
    message = code.upper() + PRIVATE_KEY
    return hashlib.sha256(message.encode('utf-8')).hexdigest().upper()

def query_order(code):
    """查询订单"""
    url = "https://api-dingdong.ems.com.vn/api/TrackTrace/Lading"
    
    payload = {
        "LadingCode": code.upper(),
        "Signature": generate_signature(code)
    }
    
    headers = {
        'Content-Type': 'application/json',
        'User-Agent': 'Mozilla/5.0'
    }
    
    # 使用代理
    ip, port, user, pwd = TEST_PROXY.split(':')
    proxies = {
        'http': f'http://{user}:{pwd}@{ip}:{port}',
        'https': f'http://{user}:{pwd}@{ip}:{port}'
    }
    
    try:
        response = requests.post(url, json=payload, headers=headers, proxies=proxies, timeout=15)
        
        if response.status_code == 200:
            data = response.json()
            if data.get('Code') == '00':
                return data.get('Value', {})
        return None
        
    except Exception as e:
        print(f"❌ 错误: {e}")
        return None

def parse_dates(order_data):
    """解析订单中的所有日期"""
    print(f"\n{'='*60}")
    print(f"订单号: {order_data.get('Code', 'N/A')}")
    print(f"{'='*60}")
    
    # 基本信息
    print(f"收件人: {order_data.get('ReceiverName', 'N/A')}")
    print(f"价值: {order_data.get('Value', 0):,}₫")
    print(f"签收状态: {'已签收' if order_data.get('SignatureCapture') else '未签收'}")
    
    # 状态历史（包含日期）
    list_status = order_data.get('ListStatus', [])
    
    if list_status:
        print(f"\n📅 状态历史（共{len(list_status)}条）:")
        print(f"{'-'*60}")
        
        for i, status in enumerate(list_status, 1):
            status_date = status.get('StatusDate', 'N/A')
            status_time = status.get('StatusTime', 'N/A')
            status_code = status.get('StatusCode', 'N/A')
            status_msg = status.get('StatusMessage', 'N/A').strip()
            po_name = status.get('POName', 'N/A')
            
            print(f"\n{i}. {status_msg} ({status_code})")
            print(f"   时间: {status_date} {status_time}")
            print(f"   地点: {po_name}")
            
            # 解析日期
            if status_date != 'N/A':
                try:
                    dt = datetime.strptime(status_date, '%d/%m/%Y')
                    days_ago = (datetime.now() - dt).days
                    print(f"   距今: {days_ago}天")
                except:
                    pass
        
        # 最早和最晚日期
        dates = []
        for status in list_status:
            date_str = status.get('StatusDate', '')
            if date_str:
                try:
                    dt = datetime.strptime(date_str, '%d/%m/%Y')
                    dates.append(dt)
                except:
                    pass
        
        if dates:
            print(f"\n{'='*60}")
            print(f"📊 日期统计:")
            print(f"   最早日期: {min(dates).strftime('%Y-%m-%d')} ({(datetime.now() - min(dates)).days}天前)")
            print(f"   最晚日期: {max(dates).strftime('%Y-%m-%d')} ({(datetime.now() - max(dates)).days}天前)")
            print(f"   时间跨度: {(max(dates) - min(dates)).days}天")
    else:
        print(f"\n❌ 无状态历史（订单可能刚创建或未更新）")
    
    print(f"{'='*60}")

if __name__ == "__main__":
    print("="*60)
    print("🔍 订单日期信息测试")
    print("="*60)
    
    for code in TEST_CODES:
        data = query_order(code)
        if data:
            parse_dates(data)
        else:
            print(f"\n❌ {code} - 查询失败")
    
    print("\n" + "="*60)
    print("💡 结论：")
    print("="*60)
    print("✅ API可以获取以下日期信息：")
    print("   1. StatusDate - 每个状态的日期")
    print("   2. StatusTime - 每个状态的时间")
    print("   3. ListStatus - 完整的物流轨迹（从发货到签收）")
    print("\n⚠️  注意：")
    print("   - 未签收订单可能没有状态历史")
    print("   - 已签收订单会有完整的时间线")
    print("="*60)
