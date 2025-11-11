#!/bin/bash
# 测试生成的JWT Token

BASE="https://gw.vtpglobal.com.vn"

echo "[🔥] 测试生成的JWT Token"
echo ""

# 使用Python生成的token进行测试
python3 << 'PYTHON'
import base64
import json
import hmac
import hashlib
import subprocess

def generate_jwt(payload, secret=""):
    header = {"alg": "HS256", "typ": "JWT"}
    header_b64 = base64.urlsafe_b64encode(json.dumps(header).encode()).decode().rstrip('=')
    payload_b64 = base64.urlsafe_b64encode(json.dumps(payload).encode()).decode().rstrip('=')
    
    message = f"{header_b64}.{payload_b64}"
    signature = base64.urlsafe_b64encode(
        hmac.new(secret.encode(), message.encode(), hashlib.sha256).digest()
    ).decode().rstrip('=')
    
    return f"{header_b64}.{payload_b64}.{signature}"

# 测试不同的payload和secret组合
tests = [
    ({"sub": "1", "username": "test", "tenantCode": "vtp"}, ""),
    ({"sub": "1", "username": "test", "tenantCode": "vtp"}, "secret"),
    ({"sub": "1", "username": "test", "tenantCode": "vtp"}, "vtp"),
    ({"userId": "1", "role": "user", "tenant": "vtp"}, ""),
    ({"id": "1", "name": "test", "tenantCode": "viettelpost"}, ""),
]

base = "https://gw.vtpglobal.com.vn"

for payload, secret in tests:
    token = generate_jwt(payload, secret)
    print(f"\n[+] 测试 Payload: {payload}")
    print(f"[+] Secret: '{secret}'")
    print(f"[+] Token: {token[:60]}...")
    
    # 测试users/me端点
    result = subprocess.run(
        ["curl", "-sk", f"{base}/vtp-user/api/v1/users/me",
         "-H", f"Authorization: Bearer {token}"],
        capture_output=True, text=True, timeout=5
    )
    
    response = result.stdout[:200]
    if "401" not in response and "Unauthorized" not in response and "EXPIRED_TOKEN" not in response:
        print(f"[!!!] 可能有效！响应: {response}")
    else:
        print(f"[*] 无效: {response[:100]}")
PYTHON
