#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import hashlib
import requests
import json
import time
from typing import Dict, Any

PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def generate_signature(code):
    """生成签名：SHA256(运单号 + APIKey)"""
    data = code.upper() + PRIVATE_KEY
    return hashlib.sha256(data.encode('utf-8')).hexdigest().upper()

def test_api_codes():
    """测试各种Code类型"""
    
    # 测试用的运单号
    test_codes = [
        "EF047530814VN",  # 存在的运单号
        "EF999999999VN",  # 不存在的运单号
        "EB102968925VN",  # 存在的运单号（无电话）
        "INVALID123",     # 无效格式
        "EF000000000VN",  # 可能不存在的运单号
    ]
    
    print("🔍 分析EMS API返回的Code类型...")
    print("=" * 60)
    
    for code in test_codes:
        print(f"\n📦 测试运单号: {code}")
        print("-" * 40)
        
        signature = generate_signature(code)
        
        # 测试TrackTrace API
        url1 = "https://api-dingdong.ems.com.vn/api/TrackTrace/Lading"
        payload1 = {'LadingCode': code, 'Signature': signature}
        
        try:
            response1 = requests.post(url1, json=payload1, timeout=10)
            if response1.status_code == 200:
                data1 = response1.json()
                code1 = data1.get('Code', 'N/A')
                message1 = data1.get('Message', 'N/A')
                print(f"TrackTrace API: Code={code1}, Message={message1}")
                
                # 分析Code类型
                if code1 == '00':
                    print("  ✅ 成功查询")
                elif code1 == '01':
                    print("  ❌ 运单号不存在")
                elif code1 == '96':
                    print("  🔐 签名错误")
                elif code1 == '98':
                    print("  🔄 需要重试")
                elif code1 == '99':
                    print("  ⚠️  系统错误")
                else:
                    print(f"  ❓ 未知Code: {code1}")
            else:
                print(f"TrackTrace API: HTTP {response1.status_code}")
        except Exception as e:
            print(f"TrackTrace API: 错误 - {e}")
        
        # 测试Inquiry API
        url2 = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
        headers2 = {
            'Authorization': f'Basic {BASIC_AUTH}',
            'APIKey': 'LOTNET',
            'Content-Type': 'application/x-www-form-urlencoded'
        }
        data2 = {"ParcelCode": code, "Signature": signature}
        
        try:
            response2 = requests.post(url2, headers=headers2, data=data2, timeout=10)
            if response2.status_code == 200:
                data2 = response2.json()
                code2 = data2.get('Code', 'N/A')
                message2 = data2.get('Message', 'N/A')
                print(f"Inquiry API:   Code={code2}, Message={message2}")
            else:
                print(f"Inquiry API:   HTTP {response2.status_code}")
        except Exception as e:
            print(f"Inquiry API:   错误 - {e}")
        
        time.sleep(1)  # 避免请求过快

if __name__ == "__main__":
    test_api_codes()