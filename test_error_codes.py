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

def test_error_scenarios():
    """测试可能导致不同Code类型的错误场景"""
    
    print("🔍 测试错误场景和可能的Code类型...")
    print("=" * 60)
    
    # 测试各种错误场景
    test_cases = [
        # 正常测试
        ("EF047530814VN", "正常运单号"),
        
        # 测试错误的签名
        ("EF047530814VN", "错误签名测试"),
        
        # 测试错误的API Key
        ("EF047530814VN", "错误API Key测试"),
        
        # 测试错误的Content-Type
        ("EF047530814VN", "错误Content-Type测试"),
    ]
    
    code_types = {}
    
    for code, description in test_cases:
        print(f"\n📦 {description}: {code}")
        print("-" * 50)
        
        signature = generate_signature(code)
        
        if "错误签名" in description:
            # 使用错误的签名
            signature = "WRONG_SIGNATURE_12345"
        elif "错误API Key" in description:
            # 使用错误的API Key
            signature = generate_signature(code + "WRONG")
        
        # 测试TrackTrace API
        url1 = "https://api-dingdong.ems.com.vn/api/TrackTrace/Lading"
        payload1 = {'LadingCode': code, 'Signature': signature}
        
        headers = {}
        if "错误Content-Type" in description:
            headers['Content-Type'] = 'application/xml'  # 错误的Content-Type
        
        try:
            response1 = requests.post(url1, json=payload1, headers=headers, timeout=10)
            if response1.status_code == 200:
                data1 = response1.json()
                code1 = data1.get('Code', 'N/A')
                message1 = data1.get('Message', 'N/A')
                print(f"TrackTrace: Code={code1}, Message={message1}")
                
                # 统计Code类型
                if code1 not in code_types:
                    code_types[code1] = 0
                code_types[code1] += 1
                
            else:
                print(f"TrackTrace: HTTP {response1.status_code}")
                if response1.status_code not in code_types:
                    code_types[f"HTTP_{response1.status_code}"] = 0
                code_types[f"HTTP_{response1.status_code}"] += 1
                
        except requests.exceptions.Timeout:
            print("TrackTrace: 超时")
            if "TIMEOUT" not in code_types:
                code_types["TIMEOUT"] = 0
            code_types["TIMEOUT"] += 1
        except Exception as e:
            print(f"TrackTrace: 错误 - {e}")
            if "ERROR" not in code_types:
                code_types["ERROR"] = 0
            code_types["ERROR"] += 1
        
        time.sleep(0.5)
    
    # 测试其他API端点
    print(f"\n📦 测试其他API端点")
    print("-" * 50)
    
    # 测试不存在的API端点
    try:
        response = requests.post("https://api-dingdong.ems.com.vn/api/NonExistent", 
                               json={'test': 'data'}, timeout=5)
        print(f"不存在的API: HTTP {response.status_code}")
        if response.status_code not in code_types:
            code_types[f"HTTP_{response.status_code}"] = 0
        code_types[f"HTTP_{response.status_code}"] += 1
    except Exception as e:
        print(f"不存在的API: 错误 - {e}")
        if "ERROR" not in code_types:
            code_types["ERROR"] = 0
        code_types["ERROR"] += 1
    
    print("\n" + "=" * 60)
    print("📊 所有Code类型统计:")
    print("=" * 60)
    for code_type, count in sorted(code_types.items()):
        print(f"Code {code_type}: {count} 次")
    
    print("\n📋 EMS API可能的Code类型:")
    print("00: 成功查询")
    print("01: 运单号不存在")
    print("96: 签名错误")
    print("98: 需要重试")
    print("99: 系统错误")
    print("其他: HTTP状态码、网络错误等")

if __name__ == "__main__":
    test_error_scenarios()