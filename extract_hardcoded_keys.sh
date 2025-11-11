#!/bin/bash
BUNDLE="/workspace/viettelpost_extracted/main_apk/assets/index.android.bundle"

echo "[+] 提取硬编码密钥和签名算法..."

# 1. 查找完整的config对象
cat "$BUNDLE" | grep -oE 'config[^;]{50,200}apiKey[^;]{50,200}' | head -5 > /tmp/firebase_configs.txt

# 2. 查找签名函数
cat "$BUNDLE" | grep -E "function.*(sign|hash|encrypt)" | head -10 > /tmp/sign_functions.txt

# 3. 查找硬编码的header
cat "$BUNDLE" | grep -E 'headers.*:.*\{[^}]+\}' | head -10 > /tmp/api_headers.txt

# 4. 查找token生成逻辑
cat "$BUNDLE" | grep -E '(getToken|generateToken|createToken)' | head -10 > /tmp/token_gen.txt

# 5. 查找base URL和endpoint组合
cat "$BUNDLE" | grep -oE 'baseURL.*https?://[^"]+' | head -10 > /tmp/base_urls.txt

echo "[+] 结果已保存到 /tmp/"
cat /tmp/firebase_configs.txt 2>/dev/null | head -5
cat /tmp/base_urls.txt 2>/dev/null
