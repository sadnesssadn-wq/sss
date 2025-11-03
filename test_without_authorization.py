#!/usr/bin/env python3
"""
根据代码分析：如果Token为空，Authorization header可能不会被添加
测试不包含Authorization header的请求
"""

import requests
import json
import urllib3
import datetime
urllib3.disable_warnings()

print("="*70)
print(" 测试不带Authorization Header（模拟Token为空）")
print("="*70)

BASE_URL = "https://gwmobile.emsone.com.vn"

# 构造完整Headers（但不包含Authorization）
device_id = "test_001"
device_name = "Python"
device_model = "Test"
date_time = datetime.datetime.now().strftime("%d-%m-%Y %H:%M:%S")
time_zone = "GMT+07:00"

headers = {
    'X-Client-ID': 'android_app_987654',
    'X-Client-Secret': 'android_s3cr3t_uvwxzy',
    'Content-Type': 'application/json; charset=utf-8',
    'Accept': 'application/json',
    'platform': 'android',
    'device_name': device_name,
    'device_model': device_model,
    'device_id': device_id,
    'date_time': date_time,
    'time_zone': time_zone,
    'version': '1.1.5',
    # 故意不包含 Authorization
    # 故意不包含 signature 和 public_key
}

# 测试登录
login_data = {
    "phone": "difoco",
    "password": "43824893"
}

request_body = {
    "channel": "ANDROID",
    "code": "EMPLOYEE_LOGIN_V2",
    "data": json.dumps(login_data, separators=(',', ':')),
    "signature": ""
}

print("\n[测试1] 登录 - 不带Authorization/signature")
print(f"Headers: {list(headers.keys())}")

try:
    r = requests.post(
        f"{BASE_URL}/execute",
        json=request_body,
        headers=headers,
        timeout=15,
        verify=False
    )
    
    result = r.json()
    print(f"\nHTTP {r.status_code}")
    print(json.dumps(result, indent=2, ensure_ascii=False))
    
    code = result.get('Code')
    
    if code == '00':
        print("\n✅✅✅ 成功！不需要签名！")
    elif code == '01':
        print("\n✅ 接口可用！账号密码错误")
    elif code == '95':
        print("\n❌ 需要签名")
    elif code == '97':
        print("\n❌ 需要Token")
    
except Exception as e:
    print(f"错误: {e}")

# 测试2：添加空的Authorization
print("\n\n[测试2] 添加空的Authorization: Bearer ")

headers_with_empty_auth = headers.copy()
headers_with_empty_auth['Authorization'] = 'Bearer '

try:
    r = requests.post(
        f"{BASE_URL}/execute",
        json=request_body,
        headers=headers_with_empty_auth,
        timeout=15,
        verify=False
    )
    
    result = r.json()
    print(f"HTTP {r.status_code}")
    print(json.dumps(result, indent=2, ensure_ascii=False))
    
except Exception as e:
    print(f"错误: {e}")

# 测试3：测试所有已发现的命令代码（寻找不需要签名的）
print("\n\n[测试3] 批量测试API命令（寻找例外）")

all_codes = [
    "EMPLOYEE_COUNT_ACCOUNT",
    "PROVINCE_LIST",
    "DISTRICT_GET_BY_PROVINCE_ID",
    "WARD_GET_BY_DISTRICT_ID",
]

for code in all_codes:
    try:
        r = requests.post(
            f"{BASE_URL}/execute",
            json={"channel": "ANDROID", "code": code, "data": "{}", "signature": ""},
            headers=headers,
            timeout=5,
            verify=False
        )
        
        result = r.json()
        if result.get('Code') not in ['95', '97', '98']:
            print(f"  🎯 {code}: {result.get('Code')} - {result.get('Message')}")
            
    except:
        pass

print("\n" + "="*70)
