#!/bin/bash
# 从Bundle提取URL和配置

BUNDLE="/workspace/viettelpost_extracted/main_apk/assets/index.android.bundle"

echo "[🔥] Bundle中的URL和配置"
echo ""

echo "=== Bundle中的完整URL ==="
strings "$BUNDLE" | grep -oE "https?://[a-zA-Z0-9./-]+" | sort -u

echo ""
echo "=== Bundle中的API配置对象 ==="
strings "$BUNDLE" | grep -E "baseURL|apiUrl|BASE_URL" -A 3 | head -50
