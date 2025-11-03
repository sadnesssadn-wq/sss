#!/usr/bin/env python3
"""
测试ZOHO API端点（http://pogw.emsone.com.vn）
可能不需要RSA签名！
"""

import requests
import json
import urllib3
urllib3.disable_warnings()

print("="*70)
print(" 测试ZOHO API端点 - http://pogw.emsone.com.vn")
print("="*70)

# ZOHO使用HTTP（不是HTTPS）
ZOHO_URL = "http://pogw.emsone.com.vn"

headers = {
    'X-Client-ID': 'android_app_987654',
    'X-Client-Secret': 'android_s3cr3t_uvwxzy',
    'Content-Type': 'application/json',
    'platform': 'android',
}

# 测试ZOHO相关端点
zoho_tests = [
    {
        "code": "ZOHO_ACCESS_TOKEN_GET",
        "data": {}
    },
    {
        "code": "ZOHO_LEADS_EMAIL_GET",
        "data": {"email": "test@test.com"}
    },
    {
        "code": "ZOHO_LEADS_PHONE_GET",
        "data": {"phone": "0123456789"}
    },
]

for test in zoho_tests:
    request_body = {
        "channel": "ANDROID",
        "code": test["code"],
        "data": json.dumps(test["data"]),
        "signature": ""
    }
    
    print(f"\n{'='*70}")
    print(f"[测试] {test['code']}")
    print(f"{'='*70}")
    
    try:
        r = requests.post(
            f"{ZOHO_URL}/execute",
            json=request_body,
            headers=headers,
            timeout=15
        )
        
        print(f"HTTP {r.status_code}")
        
        try:
            result = r.json()
            print(json.dumps(result, indent=2, ensure_ascii=False))
            
            if result.get('Code') == '00':
                print("\n✅✅✅ 成功！ZOHO API可用！")
            elif result.get('Code') not in ['95', '97', '98']:
                print(f"\n⚠️ 特殊响应: {result.get('Message')}")
                
        except:
            print(r.text[:500])
            
    except Exception as e:
        print(f"错误: {e}")

# 测试主API（gwmobile）对ZOHO命令的响应
print(f"\n\n{'='*70}")
print(" 测试主API对ZOHO命令的响应")
print(f"{'='*70}")

try:
    r = requests.post(
        "https://gwmobile.emsone.com.vn/execute",
        json={
            "channel": "ANDROID",
            "code": "ZOHO_ACCESS_TOKEN_GET",
            "data": "{}",
            "signature": ""
        },
        headers=headers,
        timeout=10,
        verify=False
    )
    
    result = r.json()
    print(f"HTTP {r.status_code}")
    print(json.dumps(result, indent=2, ensure_ascii=False))
    
except Exception as e:
    print(f"错误: {e}")

print("\n" + "="*70)
print(" 结论")
print("="*70)
