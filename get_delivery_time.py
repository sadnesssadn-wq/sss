#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""快速获取配送时间的脚本"""

import requests
import sys

def get_delivery_time(tracking_number):
    """获取配送时间 - 最简单直接的方法"""
    
    url = "https://api-dingdong.ems.com.vn/api/Delivery/DeliveryLadingJourney"
    
    headers = {
        "Authorization": "Basic bG90dG5ldDpkbXM=",
        "APIKey": "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A",
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    data = {"ParcelCode": tracking_number}
    
    try:
        response = requests.post(url, headers=headers, data=data, timeout=10)
        result = response.json()
        
        print(f"\n运单号: {tracking_number}")
        print("=" * 60)
        
        if result.get("Code") == "00" and result.get("ListValue"):
            for idx, record in enumerate(result["ListValue"], 1):
                print(f"\n记录 {idx}:")
                print(f"  ⏰ 配送时间: {record.get('DeliveryDate', 'N/A')}")
                print(f"  📦 状态: {record.get('StatusName', 'N/A')}")
                print(f"  👤 收件人: {record.get('ReceiverName', 'N/A')}")
                print(f"  📍 地址: {record.get('ReceiverAddress', 'N/A')}")
                print(f"  💰 金额: {record.get('CollectAmount', 0):,} VND")
                print(f"  📝 备注: {record.get('Note', 'N/A')}")
                
                if record.get('DeliverySignature'):
                    print(f"  ✍️  签名: {record['DeliverySignature']}")
        else:
            print("  ❌ 暂无配送记录")
            print(f"  消息: {result.get('Message', 'N/A')}")
        
        return result
        
    except Exception as e:
        print(f"❌ 错误: {e}")
        return None

if __name__ == "__main__":
    if len(sys.argv) > 1:
        tracking = sys.argv[1]
    else:
        # 默认测试
        tracking = "EL135753627VN"
    
    get_delivery_time(tracking)
    
    print("\n" + "=" * 60)
    print("使用方法: python get_delivery_time.py <运单号>")
    print("示例: python get_delivery_time.py EL135753627VN")
