#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
EMS Vietnam API 端点发现工具
通过智能扫描发现更多可用的 API 端点
"""

import hashlib
import requests
import json
from concurrent.futures import ThreadPoolExecutor, as_completed
import time

API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="
BASE_URL = "https://api-dingdong.ems.com.vn"

# 测试运单号
TEST_PARCEL = "EP493018285VN"

def sign(text):
    return hashlib.sha256((text.upper() + API_KEY).encode()).hexdigest().upper()

# 可能的 API 端点列表
POTENTIAL_ENDPOINTS = [
    # Delivery 相关
    "/api/Delivery/Inquiry",
    "/api/Delivery/DeliveryLadingJourney",
    "/api/Delivery/Create",
    "/api/Delivery/Update",
    "/api/Delivery/Cancel",
    "/api/Delivery/List",
    "/api/Delivery/Search",
    "/api/Delivery/Track",
    "/api/Delivery/Status",
    "/api/Delivery/Detail",
    "/api/Delivery/History",
    
    # TrackTrace 相关
    "/api/TrackTrace/Lading",
    "/api/TrackTrace/Batch",
    "/api/TrackTrace/Search",
    "/api/TrackTrace/Detail",
    "/api/TrackTrace/History",
    
    # Gateway 相关
    "/api/Gateway/Bussiness",
    "/api/Gateway/Query",
    "/api/Gateway/Service",
    
    # Order 相关
    "/api/Order/Create",
    "/api/Order/Update",
    "/api/Order/Cancel",
    "/api/Order/List",
    "/api/Order/Detail",
    "/api/Order/Status",
    
    # User 相关
    "/api/User/Login",
    "/api/User/Register",
    "/api/User/Profile",
    "/api/User/Update",
    "/api/User/Orders",
    
    # PostOffice 相关
    "/api/PostOffice/List",
    "/api/PostOffice/Search",
    "/api/PostOffice/Detail",
    "/api/PostOffice/Nearby",
    
    # Calculate 相关
    "/api/Calculate/Fee",
    "/api/Calculate/Distance",
    "/api/Calculate/Time",
    "/api/Calculate/Price",
    
    # Upload 相关
    "/api/Upload/Image",
    "/api/Upload/Signature",
    "/api/Upload/Document",
    
    # Report 相关
    "/api/Report/Daily",
    "/api/Report/Monthly",
    "/api/Report/Statistics",
    
    # Service 相关
    "/api/Service/List",
    "/api/Service/Detail",
    "/api/Service/Price",
    
    # Customer 相关
    "/api/Customer/Info",
    "/api/Customer/Address",
    "/api/Customer/History",
    
    # Payment 相关
    "/api/Payment/Create",
    "/api/Payment/Status",
    "/api/Payment/History",
    
    # Notification 相关
    "/api/Notification/List",
    "/api/Notification/Read",
    "/api/Notification/Settings",
]

def test_endpoint(endpoint):
    """测试单个端点是否可用"""
    url = BASE_URL + endpoint
    sig = sign(TEST_PARCEL)
    
    results = {
        'endpoint': endpoint,
        'available': False,
        'methods': [],
        'response_code': None,
        'response_msg': None,
        'requires_auth': None
    }
    
    headers_basic = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": API_KEY,
    }
    
    # 测试不同的请求方式
    test_configs = [
        # JSON with auth
        {
            'headers': {**headers_basic, 'Content-Type': 'application/json'},
            'json': {'ParcelCode': TEST_PARCEL, 'Signature': sig},
            'type': 'JSON+Auth'
        },
        # Form with auth
        {
            'headers': {**headers_basic, 'Content-Type': 'application/x-www-form-urlencoded'},
            'data': {'ParcelCode': TEST_PARCEL, 'Signature': sig},
            'type': 'Form+Auth'
        },
        # JSON for TrackTrace
        {
            'headers': {'Content-Type': 'application/json'},
            'json': {'LadingCode': TEST_PARCEL, 'Signature': sig},
            'type': 'JSON-TrackTrace'
        },
        # JSON for Gateway
        {
            'headers': {**headers_basic, 'Content-Type': 'application/json'},
            'json': {'Code': 'LDP002', 'Data': TEST_PARCEL},
            'type': 'JSON-Gateway'
        },
    ]
    
    for config in test_configs:
        try:
            # POST 请求
            if 'json' in config:
                r = requests.post(url, headers=config['headers'], json=config['json'], timeout=10)
            else:
                r = requests.post(url, headers=config['headers'], data=config['data'], timeout=10)
            
            if r.status_code == 200:
                try:
                    result = r.json()
                    code = result.get('Code', '')
                    msg = result.get('Message', '')
                    
                    # 判断是否可用（非404错误）
                    if code != '404' and 'not found' not in msg.lower():
                        results['available'] = True
                        results['methods'].append(f"POST-{config['type']}")
                        results['response_code'] = code
                        results['response_msg'] = msg
                        return results
                except:
                    pass
            
            # 尝试 GET 请求
            r = requests.get(url, headers=config['headers'], timeout=10)
            if r.status_code == 200:
                results['available'] = True
                results['methods'].append('GET')
                return results
                
        except requests.exceptions.Timeout:
            continue
        except:
            continue
    
    return results

def main():
    print("=" * 80)
    print("EMS Vietnam API 端点发现工具")
    print("=" * 80)
    print(f"\n基础URL: {BASE_URL}")
    print(f"测试运单: {TEST_PARCEL}")
    print(f"总端点数: {len(POTENTIAL_ENDPOINTS)}")
    print("\n开始扫描...\n")
    print("-" * 80)
    
    found_endpoints = []
    tested = 0
    
    with ThreadPoolExecutor(max_workers=10) as executor:
        futures = {executor.submit(test_endpoint, ep): ep for ep in POTENTIAL_ENDPOINTS}
        
        for future in as_completed(futures):
            tested += 1
            result = future.result()
            
            if result['available']:
                found_endpoints.append(result)
                status = "✅ 找到"
                details = f"[{result['response_code']}] {result['methods']}"
            else:
                status = "❌ 无效"
                details = ""
            
            print(f"[{tested}/{len(POTENTIAL_ENDPOINTS)}] {result['endpoint']:50} {status} {details}")
            
            time.sleep(0.1)  # 避免请求过快
    
    print("\n" + "=" * 80)
    print("扫描完成")
    print("=" * 80)
    print(f"\n找到 {len(found_endpoints)} 个可用端点:\n")
    
    if found_endpoints:
        for ep in found_endpoints:
            print(f"✅ {ep['endpoint']}")
            print(f"   方法: {', '.join(ep['methods'])}")
            print(f"   响应: [{ep['response_code']}] {ep['response_msg']}")
            print()
        
        # 保存结果
        with open('discovered_apis.json', 'w', encoding='utf-8') as f:
            json.dump(found_endpoints, f, indent=2, ensure_ascii=False)
        
        print(f"结果已保存到: discovered_apis.json")
    else:
        print("未发现新的 API 端点")
    
    print("\n" + "=" * 80)

if __name__ == '__main__':
    main()
