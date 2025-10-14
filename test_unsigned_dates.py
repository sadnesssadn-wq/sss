#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
测试未签收订单的日期信息
"""

import hashlib
import requests
import json

PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
TEST_PROXY = "23.27.184.245:5846:uadkcvtn:uo2rzar814ph"

# 未签收订单
UNSIGNED_CODES = [
    "EB102885483VN",
    "EB102888365VN",
]

def generate_signature(code):
    message = code.upper() + PRIVATE_KEY
    return hashlib.sha256(message.encode('utf-8')).hexdigest().upper()

def query_order(code):
    url = "https://api-dingdong.ems.com.vn/api/TrackTrace/Lading"
    payload = {
        "LadingCode": code.upper(),
        "Signature": generate_signature(code)
    }
    
    ip, port, user, pwd = TEST_PROXY.split(':')
    proxies = {
        'http': f'http://{user}:{pwd}@{ip}:{port}',
        'https': f'http://{user}:{pwd}@{ip}:{port}'
    }
    
    try:
        response = requests.post(url, json=payload, proxies=proxies, timeout=15)
        if response.status_code == 200:
            return response.json()
        return None
    except Exception as e:
        print(f"❌ 错误: {e}")
        return None

if __name__ == "__main__":
    print("="*60)
    print("🔍 检查未签收订单的所有字段")
    print("="*60)
    
    for code in UNSIGNED_CODES:
        result = query_order(code)
        if result and result.get('Code') == '00':
            print(f"\n订单: {code}")
            print(f"{'-'*60}")
            
            # 顶级字段
            print(f"\n【顶级字段】:")
            for key, value in result.items():
                if key not in ['Value', 'Data', 'ListValue']:
                    print(f"  {key}: {value}")
            
            # Value字段
            value_data = result.get('Value', {})
            if value_data:
                print(f"\n【Value字段（订单详情）】:")
                for key, val in value_data.items():
                    print(f"  {key}: {val}")
            
            # 完整JSON
            print(f"\n【完整JSON】:")
            print(json.dumps(result, ensure_ascii=False, indent=2))
            print(f"{'='*60}\n")
    
    print("\n💡 结论：")
    print("="*60)
    print("检查以下可能的日期字段：")
    print("  - Time: API响应时间（不是订单时间）")
    print("  - CreatedDate: ？")
    print("  - OrderDate: ？")
    print("  - ListStatus: 未签收订单通常为空")
    print("="*60)
