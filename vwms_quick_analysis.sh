#!/bin/bash
# VWMS APP快速分析

APK_DIR="/workspace/vwms_extracted/main_apk"

echo "[🔥] Viettel Post VWMS APP 快速分析"
echo ""

echo "=== 1. 提取所有URL ==="
cd "$APK_DIR" && strings classes*.dex 2>/dev/null | grep -E "https?://[a-zA-Z0-9.-]+\.(com|vn|mm|net)" | sort -u

echo ""
echo "=== 2. API端点 ==="
cd "$APK_DIR" && strings classes*.dex 2>/dev/null | grep -E "/api/v[0-9]" | sort -u | head -50

echo ""
echo "=== 3. 配置文件 ==="
cd "$APK_DIR/assets" && find . -name "*.json" -o -name "*.config" 2>/dev/null | xargs cat 2>/dev/null

echo ""
echo "=== 4. 哈希值和密钥 ==="
cd "$APK_DIR" && strings classes*.dex 2>/dev/null | grep -E "^[a-f0-9]{32,64}$" | head -10

echo ""
echo "=== 5. JWT/Token相关 ==="
cd "$APK_DIR" && strings classes*.dex 2>/dev/null | grep -iE "jwt|token|bearer|authorization" | head -30
