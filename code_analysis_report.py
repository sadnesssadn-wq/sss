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

def comprehensive_code_analysis():
    """全面分析EMS API的Code类型"""
    
    print("🔍 EMS API Code类型全面分析报告")
    print("=" * 80)
    
    # 测试各种场景
    test_scenarios = [
        # 成功场景
        ("EF047530814VN", "正常运单号", "正常签名"),
        ("EB102968925VN", "存在但无电话", "正常签名"),
        
        # 失败场景
        ("EF999999999VN", "不存在的运单号", "正常签名"),
        ("EF000000000VN", "全零运单号", "正常签名"),
        ("INVALID123", "无效格式", "正常签名"),
        
        # 签名错误场景
        ("EF047530814VN", "正常运单号", "错误签名"),
        ("EF047530814VN", "正常运单号", "空签名"),
        
        # 格式错误场景
        ("EF047530814VN", "正常运单号", "错误Content-Type"),
    ]
    
    code_analysis = {}
    
    for code, description, signature_type in test_scenarios:
        print(f"\n📦 测试: {description}")
        print(f"   运单号: {code}")
        print(f"   签名类型: {signature_type}")
        print("-" * 60)
        
        # 生成签名
        if signature_type == "正常签名":
            signature = generate_signature(code)
        elif signature_type == "错误签名":
            signature = "WRONG_SIGNATURE_12345"
        elif signature_type == "空签名":
            signature = ""
        else:
            signature = generate_signature(code)
        
        # 测试TrackTrace API
        url1 = "https://api-dingdong.ems.com.vn/api/TrackTrace/Lading"
        payload1 = {'LadingCode': code, 'Signature': signature}
        
        headers = {}
        if signature_type == "错误Content-Type":
            headers['Content-Type'] = 'application/xml'
        
        try:
            response1 = requests.post(url1, json=payload1, headers=headers, timeout=10)
            
            if response1.status_code == 200:
                data1 = response1.json()
                code1 = data1.get('Code', 'N/A')
                message1 = data1.get('Message', 'N/A')
                print(f"TrackTrace API:")
                print(f"  Code: {code1}")
                print(f"  Message: {message1}")
                
                # 分析Code含义
                if code1 == '00':
                    print(f"  ✅ 成功查询 - 运单号存在且有数据")
                elif code1 == '01':
                    print(f"  ❌ 运单号不存在 - 数据库中找不到该运单号")
                elif code1 == '96':
                    print(f"  🔐 签名错误 - API签名验证失败")
                elif code1 == '98':
                    print(f"  🔄 需要重试 - 服务器繁忙或临时错误")
                elif code1 == '99':
                    print(f"  ⚠️  系统错误 - 服务器内部错误")
                else:
                    print(f"  ❓ 未知Code: {code1}")
                
                # 统计
                if code1 not in code_analysis:
                    code_analysis[code1] = {
                        'count': 0,
                        'scenarios': [],
                        'meaning': ''
                    }
                code_analysis[code1]['count'] += 1
                code_analysis[code1]['scenarios'].append(f"{description} ({signature_type})")
                
            else:
                print(f"TrackTrace API: HTTP {response1.status_code}")
                http_code = f"HTTP_{response1.status_code}"
                if http_code not in code_analysis:
                    code_analysis[http_code] = {
                        'count': 0,
                        'scenarios': [],
                        'meaning': f'HTTP {response1.status_code} 错误'
                    }
                code_analysis[http_code]['count'] += 1
                code_analysis[http_code]['scenarios'].append(f"{description} ({signature_type})")
                
        except requests.exceptions.Timeout:
            print("TrackTrace API: 请求超时")
            if "TIMEOUT" not in code_analysis:
                code_analysis["TIMEOUT"] = {
                    'count': 0,
                    'scenarios': [],
                    'meaning': '请求超时'
                }
            code_analysis["TIMEOUT"]['count'] += 1
            code_analysis["TIMEOUT"]['scenarios'].append(f"{description} ({signature_type})")
            
        except Exception as e:
            print(f"TrackTrace API: 网络错误 - {e}")
            if "NETWORK_ERROR" not in code_analysis:
                code_analysis["NETWORK_ERROR"] = {
                    'count': 0,
                    'scenarios': [],
                    'meaning': '网络连接错误'
                }
            code_analysis["NETWORK_ERROR"]['count'] += 1
            code_analysis["NETWORK_ERROR"]['scenarios'].append(f"{description} ({signature_type})")
        
        time.sleep(0.5)
    
    # 生成分析报告
    print("\n" + "=" * 80)
    print("📊 Code类型分析报告")
    print("=" * 80)
    
    # 设置Code含义
    code_meanings = {
        '00': '成功查询 - 运单号存在且有数据',
        '01': '运单号不存在 - 数据库中找不到该运单号',
        '96': '签名错误 - API签名验证失败',
        '98': '需要重试 - 服务器繁忙或临时错误',
        '99': '系统错误 - 服务器内部错误',
        'TIMEOUT': '请求超时 - 网络连接超时',
        'NETWORK_ERROR': '网络错误 - 连接失败或其他网络问题'
    }
    
    for code, info in sorted(code_analysis.items()):
        meaning = code_meanings.get(code, f'未知Code: {code}')
        print(f"\nCode {code}: {meaning}")
        print(f"  出现次数: {info['count']}")
        print(f"  触发场景: {', '.join(info['scenarios'])}")
    
    print("\n" + "=" * 80)
    print("📋 总结")
    print("=" * 80)
    print("EMS API主要返回以下Code类型:")
    print("• Code 00: 成功查询，有数据返回")
    print("• Code 01: 运单号不存在，无数据返回")
    print("• Code 96: 签名错误，需要检查签名生成逻辑")
    print("• Code 98: 需要重试，通常换代理可以解决")
    print("• Code 99: 系统错误，服务器内部问题")
    print("• 其他: HTTP状态码、网络错误等")
    
    print(f"\n当前脚本处理逻辑:")
    print(f"• Code=00: 保存数据（不管有没有电话）")
    print(f"• Code≠00: 丢弃数据（不保存）")
    print(f"• Code=98: 自动换代理重试")
    print(f"• 网络错误: 自动重试")

if __name__ == "__main__":
    comprehensive_code_analysis()