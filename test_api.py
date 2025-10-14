#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
API验证脚本 - 测试EMS API是否还能用
"""

import hashlib
import requests
import json

PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"

# 测试用代理（随机选1个）
TEST_PROXY = "23.27.184.245:5846:uadkcvtn:uo2rzar814ph"

# 已知存在的订单号（从你之前提供的列表中选的）
TEST_CODES = [
    "EB102885483VN",
    "EB102885846VN", 
    "EB102888365VN",
    "EA248939367VN",  # 你之前测试过的
    "EB102890228VN",
]

def generate_signature(code):
    """生成签名"""
    message = code.upper() + PRIVATE_KEY
    return hashlib.sha256(message.encode('utf-8')).hexdigest().upper()

def test_api(code, use_proxy=True):
    """测试API"""
    url = "https://api-dingdong.ems.com.vn/api/TrackTrace/Lading"
    
    payload = {
        "LadingCode": code.upper(),
        "Signature": generate_signature(code)
    }
    
    headers = {
        'Content-Type': 'application/json',
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
    }
    
    proxies = None
    if use_proxy:
        ip, port, user, pwd = TEST_PROXY.split(':')
        proxies = {
            'http': f'http://{user}:{pwd}@{ip}:{port}',
            'https': f'http://{user}:{pwd}@{ip}:{port}'
        }
    
    try:
        print(f"\n{'='*60}")
        print(f"测试: {code}")
        print(f"代理: {'使用' if use_proxy else '不使用'} - {TEST_PROXY.split(':')[0] if use_proxy else 'Direct'}")
        print(f"{'='*60}")
        
        response = requests.post(
            url,
            json=payload,
            headers=headers,
            proxies=proxies,
            timeout=15
        )
        
        print(f"状态码: {response.status_code}")
        
        if response.status_code == 200:
            try:
                data = response.json()
                print(f"响应: {json.dumps(data, ensure_ascii=False, indent=2)}")
                
                # 分析结果
                code_value = data.get('Code', '')
                if code_value == '00':
                    result_data = data.get('Data', {})
                    receiver = result_data.get('ReceiverName', 'N/A')
                    value = result_data.get('Value', 0)
                    fee = result_data.get('Fee', 0)
                    signed = result_data.get('SignatureCapture', '')
                    
                    print(f"\n✅ 成功！")
                    print(f"   收件人: {receiver}")
                    print(f"   价值: {value}₫")
                    print(f"   运费: {fee}₫")
                    print(f"   签收: {'是' if signed else '否'}")
                    return True
                    
                elif code_value == '98':
                    print(f"\n⚠️  Code:98 - 限流/代理被封")
                    return False
                    
                elif code_value == '01':
                    print(f"\n❌ Code:01 - 无数据")
                    return False
                    
                else:
                    print(f"\n❓ Code:{code_value} - {data.get('Message', '')}")
                    return False
                    
            except json.JSONDecodeError:
                print(f"❌ JSON解析失败")
                print(f"响应内容: {response.text[:500]}")
                return False
        else:
            print(f"❌ HTTP错误: {response.status_code}")
            print(f"响应: {response.text[:500]}")
            return False
            
    except Exception as e:
        print(f"❌ 异常: {e}")
        return False

if __name__ == "__main__":
    print("="*60)
    print("🧪 EMS API 验证测试")
    print("="*60)
    
    # 1. 先测试不用代理
    print("\n【第1步】测试直连API（不用代理）")
    success_direct = 0
    for code in TEST_CODES[:2]:  # 先测2个
        if test_api(code, use_proxy=False):
            success_direct += 1
    
    # 2. 再测试用代理
    print("\n\n【第2步】测试使用代理")
    success_proxy = 0
    for code in TEST_CODES[:3]:  # 测3个
        if test_api(code, use_proxy=True):
            success_proxy += 1
    
    # 3. 结果
    print("\n\n" + "="*60)
    print("📊 测试结果汇总")
    print("="*60)
    print(f"直连成功: {success_direct}/2")
    print(f"代理成功: {success_proxy}/3")
    
    if success_direct > 0 or success_proxy > 0:
        print("\n✅ API正常工作！可以使用！")
    else:
        print("\n❌ API可能失效或网络问题！")
    
    print("="*60)
