#!/usr/bin/env python3
"""
测试DingDong APP的所有API端点
尝试不同的认证方式和参数
"""
import hashlib
import hmac
import requests
import json
import time

KEY = '34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A'
BASE_URL = 'https://api-dingdong.ems.com.vn'

# 所有API端点
ENDPOINTS = [
    '/api/Authorized/Login',
    '/api/Authorized/Validation',
    '/api/Authorized/Active',
    '/api/TrackTrace/Lading',
    '/api/Delivery/CheckLadingCode',
    '/api/Delivery/Inquiry',
    '/api/Delivery/InquiryAmount',
    '/api/Delivery/DeliveryPostman',
    '/api/Delivery/DeliveryStatistic',
    '/api/Collect/SearchOrderPostman',
    '/api/Collect/SearchConfirmArrved',
    '/api/Collect/CollectOrderPostman',
    '/api/CallCenter/Search',
    '/api/CallCenter/AddNew',
    '/api/BD13/Search',
    '/api/BD13/AddNew',
    '/api/Dictionary/GetReasons',
    '/api/Dictionary/GetSolutions',
    '/api/Dictionary/GetSupportType',
    '/api/Gateway/Bussiness',
]

test_code = 'EA775900041VN'  # 已知有效的运单号

def generate_signatures(code):
    """生成所有可能的签名方式"""
    timestamp = str(int(time.time()))
    
    return {
        'SHA256(code+key)': hashlib.sha256((code.upper() + KEY).encode()).hexdigest().upper(),
        'SHA256(key+code)': hashlib.sha256((KEY + code.upper()).encode()).hexdigest().upper(),
        'HMAC(code,key)': hmac.new(KEY.encode(), code.upper().encode(), hashlib.sha256).hexdigest().upper(),
        'HMAC(key,code)': hmac.new(code.upper().encode(), KEY.encode(), hashlib.sha256).hexdigest().upper(),
        'timestamp': timestamp,
    }

def test_endpoint(endpoint, code):
    """测试单个端点"""
    url = BASE_URL + endpoint
    sigs = generate_signatures(code)
    
    # 不同的payload组合
    test_payloads = [
        # TrackTrace风格
        {'LadingCode': code, 'Signature': sigs['SHA256(code+key)']},
        {'Code': code, 'Signature': sigs['SHA256(code+key)']},
        
        # HMAC风格
        {'LadingCode': code, 'Signature': sigs['HMAC(code,key)']},
        
        # 带timestamp
        {'LadingCode': code, 'Signature': sigs['SHA256(code+key)'], 'Timestamp': sigs['timestamp']},
        
        # 登录风格
        {'username': 'admin', 'password': 'admin'},
        {'Username': 'admin', 'Password': 'admin'},
        
        # 空参数
        {},
    ]
    
    for payload in test_payloads:
        try:
            # POST
            r = requests.post(url, json=payload, timeout=3)
            result = r.json()
            
            code_val = result.get('Code') or result.get('code') or result.get('status')
            message = result.get('Message') or result.get('message') or ''
            
            # 成功
            if code_val == '00' or code_val == 200:
                return ('success', payload, result)
            
            # 需要参数（不是认证错误）
            elif 'không được để trống' in message or 'required' in message.lower():
                return ('need_params', payload, message)
            
            # 系统错误（接口可能存在但参数不对）
            elif code_val == '99':
                return ('system_error', payload, message)
            
        except:
            pass
    
    return None

print("=" * 80)
print("🔍 深度测试所有DingDong API")
print("=" * 80)
print()

results = {
    'success': [],
    'need_params': [],
    'system_error': [],
}

for endpoint in ENDPOINTS:
    print(f'{endpoint}...', end=' ')
    result = test_endpoint(endpoint, test_code)
    
    if result:
        status, payload, data = result
        results[status].append((endpoint, payload, data))
        
        if status == 'success':
            print(f'✅ 成功！')
        elif status == 'need_params':
            print(f'⚠️  需要参数: {data[:40]}')
        elif status == 'system_error':
            print(f'⚠️  系统错误')
    else:
        print('❌')
    
    time.sleep(0.2)

print()
print("=" * 80)
print("📊 结果统计")
print("=" * 80)
print(f"✅ 成功: {len(results['success'])} 个")
print(f"⚠️  需要参数: {len(results['need_params'])} 个")
print(f"⚠️  系统错误: {len(results['system_error'])} 个")
print("=" * 80)

if results['success']:
    print("\n✅ 成功的API:")
    for endpoint, payload, data in results['success']:
        print(f"  {endpoint}")
        print(f"    Payload: {payload}")

if results['need_params']:
    print("\n⚠️  需要参数的API:")
    for endpoint, payload, message in results['need_params']:
        print(f"  {endpoint}")
        print(f"    提示: {message[:60]}")

if results['system_error']:
    print("\n⚠️  有系统错误的API（接口存在）:")
    for endpoint, payload, message in results['system_error']:
        print(f"  {endpoint}")
