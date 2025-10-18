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

def test_special_cases():
    """测试特殊情况和可能的Code类型"""
    
    print("🔍 测试特殊情况和可能的Code类型...")
    print("=" * 60)
    
    # 测试各种可能的Code情况
    test_cases = [
        # 正常情况
        ("EF047530814VN", "正常存在的运单号"),
        ("EB102968925VN", "存在但无电话的运单号"),
        
        # 不存在的运单号
        ("EF999999999VN", "不存在的运单号"),
        ("EF000000000VN", "全零运单号"),
        ("EF123456789VN", "随机运单号"),
        
        # 格式错误
        ("INVALID123", "无效格式"),
        ("EF123", "格式不完整"),
        ("", "空字符串"),
        
        # 特殊字符
        ("EF047530814VN'", "带单引号"),
        ("EF047530814VN\"", "带双引号"),
        ("EF047530814VN;", "带分号"),
        ("EF047530814VN--", "带注释符"),
        
        # 超长字符串
        ("EF047530814VN" + "A" * 100, "超长运单号"),
    ]
    
    code_types = {}
    
    for code, description in test_cases:
        print(f"\n📦 {description}: {code}")
        print("-" * 50)
        
        if not code:
            print("跳过空字符串测试")
            continue
            
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
        
        time.sleep(0.5)  # 避免请求过快
    
    print("\n" + "=" * 60)
    print("📊 Code类型统计:")
    print("=" * 60)
    for code_type, count in sorted(code_types.items()):
        print(f"Code {code_type}: {count} 次")
    
    print("\n📋 已知Code类型说明:")
    print("00: 成功查询")
    print("01: 运单号不存在")
    print("96: 签名错误")
    print("98: 需要重试")
    print("99: 系统错误")

if __name__ == "__main__":
    test_special_cases()