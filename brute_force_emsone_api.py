#!/usr/bin/env python3
"""
暴力测试EMS One所有可能的API端点
"""
import requests
import json
import hashlib
from concurrent.futures import ThreadPoolExecutor

# 配置
KEYS = [
    '34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A',
    'A50CD195AF6444C077708D4F6E8DD31898310CB4067F86B687A1D1802EF356E7',
]

APIS = [
    'https://gwmobile.emsone.com.vn',
    'http://pogw.emsone.com.vn',
]

# 可能的路径
PATHS = [
    # 用户相关
    '/Login', '/login', '/User/Login', '/user/login',
    '/Mobile/Login', '/mobile/login', '/Api/Login', '/api/login',
    '/Gateway/Login', '/gateway/login',
    '/Auth', '/auth', '/Mobile/Auth',
    
    # 追踪相关
    '/Track', '/track', '/Mobile/Track', '/mobile/track',
    '/TrackTrace', '/tracktrace', '/Mobile/TrackTrace',
    '/Search', '/search', '/Mobile/Search',
    '/Query', '/query', '/Mobile/Query',
    
    # 订单相关
    '/Order', '/order', '/Mobile/Order', '/mobile/order',
    '/Order/List', '/order/list', '/Mobile/Order/List',
    '/Order/Detail', '/order/detail',
    '/Shipment', '/shipment', '/Mobile/Shipment',
    '/Shipment/List', '/shipment/list',
    '/Shipment/Detail', '/shipment/detail',
    
    # 用户信息
    '/User/Info', '/user/info', '/Mobile/User/Info',
    '/Profile', '/profile', '/Mobile/Profile',
    
    # 其他
    '/Home', '/home', '/Mobile/Home',
    '/Dashboard', '/dashboard',
]

test_code = 'EA044826727VN'

def test_endpoint(api, path):
    """测试单个端点"""
    url = api + path
    results = []
    
    # 测试GET不带参数
    try:
        r = requests.get(url, timeout=3, verify=False)
        if r.status_code not in [404, 500]:
            results.append(('GET', r.status_code, r.text[:100]))
    except:
        pass
    
    # 测试POST带签名
    for key in KEYS:
        signature = hashlib.sha256((test_code.upper() + key).encode()).hexdigest().upper()
        payloads = [
            {'code': test_code, 'signature': signature},
            {'Code': test_code, 'Signature': signature},
            {'LadingCode': test_code, 'Signature': signature},
            {'trackingCode': test_code, 'signature': signature},
        ]
        
        for payload in payloads:
            try:
                r = requests.post(url, json=payload, timeout=3, verify=False)
                if r.status_code not in [404, 500]:
                    results.append(('POST', r.status_code, r.text[:100], payload))
            except:
                pass
    
    return results

print("=" * 80)
print("🔍 暴力测试EMS One API端点")
print("=" * 80)
print(f"\n测试: {len(APIS)} 个API × {len(PATHS)} 个路径 = {len(APIS)*len(PATHS)} 组合")
print()

valid_endpoints = []

# 多线程测试
with ThreadPoolExecutor(max_workers=20) as executor:
    futures = {}
    for api in APIS:
        for path in PATHS:
            futures[executor.submit(test_endpoint, api, path)] = (api, path)
    
    completed = 0
    for future in futures:
        api, path = futures[future]
        results = future.result()
        
        completed += 1
        if completed % 20 == 0:
            print(f"  进度: {completed}/{len(futures)} ({completed*100//len(futures)}%)")
        
        if results:
            for result in results:
                valid_endpoints.append((api, path, result))
                print(f"\n✅ {api}{path}")
                if len(result) == 4:
                    method, status, text, payload = result
                    print(f"   {method} {status}: {text}")
                    print(f"   Payload: {payload}")
                else:
                    method, status, text = result
                    print(f"   {method} {status}: {text}")

print("\n" + "=" * 80)
print(f"📊 结果: 找到 {len(valid_endpoints)} 个可用端点")
print("=" * 80)

if valid_endpoints:
    print("\n✅ 可用的端点:")
    for api, path, _ in valid_endpoints[:10]:
        print(f"  {api}{path}")
else:
    print("\n❌ 没有找到可用端点")
    print("\n💡 可能原因:")
    print("  1. API需要特定的请求头")
    print("  2. 路径不在测试范围内")
    print("  3. 需要特殊的认证方式")
