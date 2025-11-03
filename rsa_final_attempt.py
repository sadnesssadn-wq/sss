#!/usr/bin/env python3
"""
最终死磕：根据完整反编译代码构造精确的RSA签名
"""

import requests
import json
import urllib3
import base64
import datetime
import platform as platform_module
from cryptography.hazmat.primitives.asymmetric import rsa, padding
from cryptography.hazmat.primitives import hashes, serialization
from cryptography.hazmat.backends import default_backend

urllib3.disable_warnings()

print("="*70)
print(" 最终死磕：精确模拟Android Interceptor")
print("="*70)

# 生成RSA密钥对
print("\n[1] 生成RSA-2048密钥对...")
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

# 精确模拟Android设备信息
device_manufacturer = "samsung"  # Build.MANUFACTURER
device_model = "SM-G973F"  # Build.MODEL  
device_id = "test_device_12345"
date_time = datetime.datetime.now().strftime("%d-%m-%Y %H:%M:%S")
time_zone = "GMT+07:00"

print(f"✓ 设备信息:")
print(f"  Manufacturer: {device_manufacturer}")
print(f"  Model: {device_model}")
print(f"  ID: {device_id}")
print(f"  Time: {date_time}")

# 根据反编译代码构造签名字符串
# filled-new-array/range {v2 .. v10}
# v2=platform, v3=client_id, v4=client_secret, v5=manufacturer, 
# v6=model, v7=device_id, v8=date_time, v9=time_zone, v10=version

sign_params_no_token = [
    "android",                      # platform
    "android_app_987654",          # client_id
    "android_s3cr3t_uvwxzy",       # client_secret
    device_manufacturer,           # device_name (MANUFACTURER)
    device_model,                  # device_model (MODEL)
    device_id,                     # device_id
    date_time,                     # date_time
    time_zone,                     # time_zone
    "1.1.5"                        # version
]

sign_string = " | ".join(sign_params_no_token)

print(f"\n[2] 签名字符串（9参数，无Token）:")
print(f"    {sign_string[:120]}...")

# 生成RSA签名
signature_bytes = private_key.sign(
    sign_string.encode('utf-8'),
    padding.PKCS1v15(),
    hashes.SHA256()
)
signature_b64 = base64.b64encode(signature_bytes).decode('utf-8')

print(f"\n[3] RSA签名生成成功")
print(f"    Signature: {signature_b64[:50]}...")

# 构造请求
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

# 完整Headers（精确匹配Interceptor）
headers = {
    'Content-Type': 'application/json; charset=utf-8',
    'Accept': 'application/json',
    'Authorization': 'Bearer ',  # Token为空时 = "Bearer " + ""
    'platform': 'android',
    'X-Client-ID': 'android_app_987654',
    'X-Client-Secret': 'android_s3cr3t_uvwxzy',
    'device_name': device_manufacturer,  # 注意：使用MANUFACTURER
    'device_model': device_model,
    'device_id': device_id,
    'date_time': date_time,
    'time_zone': time_zone,
    'signature': signature_b64,
    'public_key': public_key_b64,
    'version': '1.1.5',
}

print(f"\n[4] 发送请求...")
print(f"    URL: https://gwmobile.emsone.com.vn/execute")
print(f"    Code: {request_body['code']}")

try:
    r = requests.post(
        "https://gwmobile.emsone.com.vn/execute",
        json=request_body,
        headers=headers,
        timeout=15,
        verify=False
    )
    
    result = r.json()
    
    print(f"\n[5] 响应:")
    print(f"    HTTP {r.status_code}")
    print(json.dumps(result, indent=2, ensure_ascii=False))
    
    code = result.get('Code')
    
    print(f"\n{'='*70}")
    
    if code == '00':
        print("🎉🎉🎉 成功登录！")
        print(f"Token: {result.get('Token', 'N/A')}")
        
        if 'Token' in result:
            with open('/workspace/emsone_token.txt', 'w') as f:
                f.write(result['Token'])
            print("✓ Token已保存到 /workspace/emsone_token.txt")
            
    elif code == '01':
        print("✅✅ 签名验证通过！但账号密码错误")
        print("🎯 现在可以尝试其他凭证或注册！")
        
    elif code == '95':
        print("❌ 签名验证仍然失败")
        print("\n可能的原因：")
        print("  1. 服务器强制验证公钥来自特定设备")
        print("  2. 公钥需要预先注册")
        print("  3. 签名算法有其他参数")
        
    elif code == '97':
        print("❌ 仍然要求Token（不应该发生）")
        
    print("="*70)
    
except Exception as e:
    print(f"\n[!] 错误: {e}")
    import traceback
    traceback.print_exc()

# 额外测试：省略公钥
print("\n\n" + "="*70)
print(" 额外测试：省略public_key header")
print("="*70)

headers_no_pubkey = headers.copy()
del headers_no_pubkey['public_key']

try:
    r = requests.post(
        "https://gwmobile.emsone.com.vn/execute",
        json=request_body,
        headers=headers_no_pubkey,
        timeout=10,
        verify=False
    )
    
    result = r.json()
    print(json.dumps(result, indent=2, ensure_ascii=False))
    
except Exception as e:
    print(f"错误: {e}")

print("\n" + "="*70)
print(" 最终结论")
print("="*70)
