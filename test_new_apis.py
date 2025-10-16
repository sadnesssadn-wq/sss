#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
测试新发现的API端点功能
"""

import hashlib
import requests
import json

API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="
BASE_URL = "https://api-dingdong.ems.com.vn"
TEST_TRACKING = "EP493018285VN"

def sign(text):
    return hashlib.sha256((text.upper() + API_KEY).encode()).hexdigest().upper()

headers_form = {
    "Authorization": f"Basic {BASIC_AUTH}",
    "APIKey": API_KEY,
    "Content-Type": "application/x-www-form-urlencoded"
}

headers_json = {
    "Authorization": f"Basic {BASIC_AUTH}",
    "APIKey": API_KEY,
    "Content-Type": "application/json"
}

print("=" * 80)
print("测试新发现的API端点")
print("=" * 80)
print(f"测试运单: {TEST_TRACKING}\n")

# 新端点1: TrackTrace/Batch
print("\n" + "=" * 80)
print("【新端点 1】/api/TrackTrace/Batch - 批量追踪")
print("=" * 80)
try:
    # 尝试GET
    r = requests.get(f"{BASE_URL}/api/TrackTrace/Batch", headers=headers_json, timeout=10)
    print(f"GET 状态码: {r.status_code}")
    print(f"响应: {r.text[:500]}")
    
    # 尝试POST - 多个运单号
    sig1 = sign(TEST_TRACKING)
    sig2 = sign("EP493006857VN")
    
    payload = [
        {"LadingCode": TEST_TRACKING, "Signature": sig1},
        {"LadingCode": "EP493006857VN", "Signature": sig2}
    ]
    
    r = requests.post(f"{BASE_URL}/api/TrackTrace/Batch", headers=headers_json, json=payload, timeout=10)
    print(f"\nPOST 状态码: {r.status_code}")
    try:
        result = r.json()
        print(f"响应: {json.dumps(result, indent=2, ensure_ascii=False)[:800]}")
    except:
        print(f"响应: {r.text[:500]}")
except Exception as e:
    print(f"错误: {e}")

# 新端点2: TrackTrace/Search
print("\n" + "=" * 80)
print("【新端点 2】/api/TrackTrace/Search - 搜索")
print("=" * 80)
try:
    # GET 请求
    r = requests.get(f"{BASE_URL}/api/TrackTrace/Search", headers=headers_json, timeout=10)
    print(f"GET 状态码: {r.status_code}")
    print(f"响应: {r.text[:500]}")
    
    # GET 带参数
    params = {'query': TEST_TRACKING}
    r = requests.get(f"{BASE_URL}/api/TrackTrace/Search", headers=headers_json, params=params, timeout=10)
    print(f"\nGET with params 状态码: {r.status_code}")
    try:
        result = r.json()
        print(f"响应: {json.dumps(result, indent=2, ensure_ascii=False)[:800]}")
    except:
        print(f"响应: {r.text[:500]}")
    
    # POST 请求
    sig = sign(TEST_TRACKING)
    payload = {"Query": TEST_TRACKING, "Signature": sig}
    r = requests.post(f"{BASE_URL}/api/TrackTrace/Search", headers=headers_json, json=payload, timeout=10)
    print(f"\nPOST 状态码: {r.status_code}")
    try:
        result = r.json()
        print(f"响应: {json.dumps(result, indent=2, ensure_ascii=False)[:800]}")
    except:
        print(f"响应: {r.text[:500]}")
except Exception as e:
    print(f"错误: {e}")

# 新端点3: TrackTrace/Detail
print("\n" + "=" * 80)
print("【新端点 3】/api/TrackTrace/Detail - 详情")
print("=" * 80)
try:
    # GET 请求
    r = requests.get(f"{BASE_URL}/api/TrackTrace/Detail", headers=headers_json, timeout=10)
    print(f"GET 状态码: {r.status_code}")
    print(f"响应: {r.text[:500]}")
    
    # GET 带参数
    params = {'code': TEST_TRACKING}
    r = requests.get(f"{BASE_URL}/api/TrackTrace/Detail", headers=headers_json, params=params, timeout=10)
    print(f"\nGET with params 状态码: {r.status_code}")
    try:
        result = r.json()
        print(f"响应: {json.dumps(result, indent=2, ensure_ascii=False)[:800]}")
    except:
        print(f"响应: {r.text[:500]}")
    
    # POST 请求
    sig = sign(TEST_TRACKING)
    payload = {"LadingCode": TEST_TRACKING, "Signature": sig}
    r = requests.post(f"{BASE_URL}/api/TrackTrace/Detail", headers=headers_json, json=payload, timeout=10)
    print(f"\nPOST 状态码: {r.status_code}")
    try:
        result = r.json()
        print(f"响应: {json.dumps(result, indent=2, ensure_ascii=False)[:800]}")
    except:
        print(f"响应: {r.text[:500]}")
except Exception as e:
    print(f"错误: {e}")

# 新端点4: TrackTrace/History
print("\n" + "=" * 80)
print("【新端点 4】/api/TrackTrace/History - 历史记录")
print("=" * 80)
try:
    # GET 请求
    r = requests.get(f"{BASE_URL}/api/TrackTrace/History", headers=headers_json, timeout=10)
    print(f"GET 状态码: {r.status_code}")
    print(f"响应: {r.text[:500]}")
    
    # GET 带参数
    params = {'code': TEST_TRACKING}
    r = requests.get(f"{BASE_URL}/api/TrackTrace/History", headers=headers_json, params=params, timeout=10)
    print(f"\nGET with params 状态码: {r.status_code}")
    try:
        result = r.json()
        print(f"响应: {json.dumps(result, indent=2, ensure_ascii=False)[:800]}")
    except:
        print(f"响应: {r.text[:500]}")
    
    # POST 请求
    sig = sign(TEST_TRACKING)
    payload = {"LadingCode": TEST_TRACKING, "Signature": sig}
    r = requests.post(f"{BASE_URL}/api/TrackTrace/History", headers=headers_json, json=payload, timeout=10)
    print(f"\nPOST 状态码: {r.status_code}")
    try:
        result = r.json()
        print(f"响应: {json.dumps(result, indent=2, ensure_ascii=False)[:800]}")
    except:
        print(f"响应: {r.text[:500]}")
except Exception as e:
    print(f"错误: {e}")

print("\n" + "=" * 80)
print("测试完成")
print("=" * 80)
