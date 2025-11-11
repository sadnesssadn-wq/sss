#!/bin/bash
# 完整提取所有URL、Key、硬编码

DEX_DIR="/workspace/viettelpost_extracted/main_apk"
BUNDLE="/workspace/viettelpost_extracted/main_apk/assets/index.android.bundle"

echo "[🔥] 完整URL、Key、硬编码提取报告"
echo ""

echo "=== 1. 完整API URL列表 ==="
cd "$DEX_DIR" && strings classes*.dex | grep -E "https?://[a-zA-Z0-9.-]+\.(com|vn|mm|net|io)" | sort -u

echo ""
echo "=== 2. API端点路径 ==="
cd "$DEX_DIR" && strings classes*.dex | grep -E "/api/v[0-9]/" | sort -u | head -100

echo ""
echo "=== 3. Firebase配置 ==="
cd "$DEX_DIR" && strings classes*.dex | grep -iE "firebase|google-services" | grep -E "api|key|id|project" | head -30

echo ""
echo "=== 4. API Key模式 ==="
cd "$DEX_DIR" && strings classes*.dex | grep -E "AIza[A-Za-z0-9_-]{35}" | head -10

echo ""
echo "=== 5. 长哈希值（可能是密钥）==="
cd "$DEX_DIR" && strings classes*.dex | grep -E "^[a-f0-9]{32,128}$" | head -20

echo ""
echo "=== 6. Base64编码的可能密钥 ==="
cd "$DEX_DIR" && strings classes*.dex | grep -E "^[A-Za-z0-9+/]{40,}={0,2}$" | head -20

echo ""
echo "=== 7. 证书/密钥标识 ==="
cd "$DEX_DIR" && strings classes*.dex | grep -iE "private.?key|public.?key|certificate|keystore" | head -20

echo ""
echo "=== 8. AppCenter/第三方服务 ==="
cd "$DEX_DIR" && strings classes*.dex | grep -E "appcenter|microsoft|facebook|google" | grep -iE "key|id|secret" | head -20
