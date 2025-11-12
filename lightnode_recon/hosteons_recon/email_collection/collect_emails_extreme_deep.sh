#!/bin/bash
# Hosteons.com 极端深度邮箱收集脚本

TARGET="hosteons.com"
WORK_DIR="/workspace/lightnode_recon/hosteons_recon/email_collection/extreme_deep"
mkdir -p "$WORK_DIR"

log() {
    echo "[+] $1"
}

# ============================================
# 1. GitHub极端深度挖掘
# ============================================

collect_github_extreme_deep() {
    log "=== GitHub极端深度挖掘 ==="
    
    > "$WORK_DIR/github_extreme.txt"
    
    # 1.1 搜索所有可能的查询
    log "搜索所有可能的GitHub查询..."
    queries=(
        "hosteons.com"
        "hosteons"
        "hostEONS"
        "HostEONS"
        "HOSTEONS"
        "hosteons.com email"
        "hosteons.com contact"
        "hosteons.com support"
        "@hosteons.com"
        "hosteons.com mailto"
        "hosteons.com mail"
        "user:hosteons"
        "org:hosteons"
    )
    
    for query in "${queries[@]}"; do
        log "搜索: $query"
        
        # 搜索仓库
        curl -sk "https://api.github.com/search/repositories?q=${query}&per_page=100" 2>/dev/null | \
            jq -r '.items[] | .full_name' | sort -u | while read repo; do
                log "检查仓库: $repo"
                
                # 获取所有贡献者（多页）
                for page in {1..10}; do
                    curl -sk "https://api.github.com/repos/$repo/contributors?per_page=100&page=$page" 2>/dev/null | \
                        jq -r '.[] | .login' | while read user; do
                            if [ -z "$user" ] || [[ "$user" == *"bot"* ]]; then
                                continue
                            fi
                            
                            user_info=$(curl -sk "https://api.github.com/users/$user" 2>/dev/null)
                            email=$(echo "$user_info" | jq -r '.email' 2>/dev/null)
                            name=$(echo "$user_info" | jq -r '.name' 2>/dev/null)
                            company=$(echo "$user_info" | jq -r '.company' 2>/dev/null)
                            bio=$(echo "$user_info" | jq -r '.bio' 2>/dev/null)
                            
                            if [ "$email" != "null" ] && [ -n "$email" ] && [[ ! "$email" == *"noreply"* ]]; then
                                echo "$email|$name|$company|$user" >> "$WORK_DIR/github_extreme.txt"
                                log "发现邮箱: $email ($name)"
                            fi
                            
                            sleep 0.1
                        done
                    sleep 0.3
                done
                
                # 获取所有提交（多页）
                for page in {1..20}; do
                    curl -sk "https://api.github.com/repos/$repo/commits?per_page=100&page=$page" 2>/dev/null | \
                        jq -r '.[] | "\(.commit.author.email)|\(.commit.author.name)|\(.commit.committer.email)|\(.commit.committer.name)"' | \
                        while IFS='|' read -r author_email author_name committer_email committer_name; do
                            for email in "$author_email" "$committer_email"; do
                                if [ "$email" != "null" ] && [ -n "$email" ] && [[ ! "$email" == *"noreply"* ]]; then
                                    echo "$email|$author_name|$committer_name" >> "$WORK_DIR/github_extreme.txt"
                                    log "从提交发现: $email"
                                fi
                            done
                        done
                    sleep 0.3
                done
                
                # 获取所有Issues（多页）
                for page in {1..10}; do
                    curl -sk "https://api.github.com/repos/$repo/issues?state=all&per_page=100&page=$page" 2>/dev/null | \
                        jq -r '.[] | "\(.user.email)|\(.user.login)|\(.user.name)|\(.assignee.email)|\(.assignee.login)"' | \
                        while IFS='|' read -r user_email user_login user_name assignee_email assignee_login; do
                            for email in "$user_email" "$assignee_email"; do
                                if [ "$email" != "null" ] && [ -n "$email" ] && [[ ! "$email" == *"noreply"* ]]; then
                                    echo "$email|$user_name|$user_login" >> "$WORK_DIR/github_extreme.txt"
                                fi
                            done
                        done
                    sleep 0.3
                done
                
                # 获取所有PRs（多页）
                for page in {1..10}; do
                    curl -sk "https://api.github.com/repos/$repo/pulls?state=all&per_page=100&page=$page" 2>/dev/null | \
                        jq -r '.[] | "\(.user.email)|\(.user.login)|\(.user.name)|\(.assignee.email)|\(.assignee.login)|\(.merged_by.login)"' | \
                        while IFS='|' read -r user_email user_login user_name assignee_email assignee_login merged_by; do
                            for email in "$user_email" "$assignee_email"; do
                                if [ "$email" != "null" ] && [ -n "$email" ] && [[ ! "$email" == *"noreply"* ]]; then
                                    echo "$email|$user_name|$user_login" >> "$WORK_DIR/github_extreme.txt"
                                fi
                            done
                            
                            # 获取合并者的邮箱
                            if [ -n "$merged_by" ] && [ "$merged_by" != "null" ]; then
                                merged_info=$(curl -sk "https://api.github.com/users/$merged_by" 2>/dev/null)
                                merged_email=$(echo "$merged_info" | jq -r '.email' 2>/dev/null)
                                if [ "$merged_email" != "null" ] && [ -n "$merged_email" ] && [[ ! "$merged_email" == *"noreply"* ]]; then
                                    echo "$merged_email|$merged_by" >> "$WORK_DIR/github_extreme.txt"
                                fi
                            fi
                        done
                    sleep 0.3
                done
                
                # 获取所有Releases
                curl -sk "https://api.github.com/repos/$repo/releases" 2>/dev/null | \
                    jq -r '.[] | .author.login' | while read author; do
                        author_info=$(curl -sk "https://api.github.com/users/$author" 2>/dev/null)
                        email=$(echo "$author_info" | jq -r '.email' 2>/dev/null)
                        if [ "$email" != "null" ] && [ -n "$email" ] && [[ ! "$email" == *"noreply"* ]]; then
                            echo "$email|$author" >> "$WORK_DIR/github_extreme.txt"
                        fi
                        sleep 0.2
                    done
                
                # 获取所有Stargazers（前100个）
                for page in {1..5}; do
                    curl -sk "https://api.github.com/repos/$repo/stargazers?per_page=100&page=$page" 2>/dev/null | \
                        jq -r '.[] | .login' | while read user; do
                            if [[ "$user" == *"bot"* ]]; then
                                continue
                            fi
                            user_info=$(curl -sk "https://api.github.com/users/$user" 2>/dev/null)
                            email=$(echo "$user_info" | jq -r '.email' 2>/dev/null)
                            company=$(echo "$user_info" | jq -r '.company' 2>/dev/null)
                            if [ "$email" != "null" ] && [ -n "$email" ] && [[ ! "$email" == *"noreply"* ]]; then
                                if (echo "$company" | grep -qi "hosteons") || [[ "$email" == *"hosteons"* ]]; then
                                    echo "$email|$user" >> "$WORK_DIR/github_extreme.txt"
                                    log "从Stargazers发现: $email"
                                fi
                            fi
                            sleep 0.1
                        done
                    sleep 0.3
                done
                
                # 获取所有Forks（前50个）
                for page in {1..2}; do
                    curl -sk "https://api.github.com/repos/$repo/forks?per_page=100&page=$page" 2>/dev/null | \
                        jq -r '.[] | .owner.login' | while read owner; do
                            owner_info=$(curl -sk "https://api.github.com/users/$owner" 2>/dev/null)
                            email=$(echo "$owner_info" | jq -r '.email' 2>/dev/null)
                            company=$(echo "$owner_info" | jq -r '.company' 2>/dev/null)
                            if [ "$email" != "null" ] && [ -n "$email" ] && [[ ! "$email" == *"noreply"* ]]; then
                                if (echo "$company" | grep -qi "hosteons") || [[ "$email" == *"hosteons"* ]]; then
                                    echo "$email|$owner" >> "$WORK_DIR/github_extreme.txt"
                                fi
                            fi
                            sleep 0.1
                        done
                    sleep 0.3
                done
                
                sleep 1
            done
        sleep 2
    done
    
    # 1.2 搜索代码中的邮箱
    log "搜索代码中的邮箱..."
    code_queries=(
        "hosteons.com email"
        "hosteons.com contact"
        "@hosteons.com"
        "hosteons.com mailto"
    )
    
    for query in "${code_queries[@]}"; do
        for page in {1..10}; do
            curl -sk "https://api.github.com/search/code?q=${query}&per_page=100&page=$page" 2>/dev/null | \
                jq -r '.items[] | "\(.repository.full_name)|\(.path)"' | while IFS='|' read -r repo path; do
                    content=$(curl -sk "https://api.github.com/repos/$repo/contents/$path" \
                        -H "Accept: application/vnd.github.v3.raw" 2>/dev/null)
                    echo "$content" | grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
                        grep -iE "hosteons|gmail|outlook|yahoo|qq|163|sina|hotmail" | \
                        sort -u >> "$WORK_DIR/github_extreme.txt" || true
                    sleep 0.2
                done
            sleep 1
        done
    done
}

# ============================================
# 2. 网站极端深度爬取
# ============================================

collect_website_extreme_deep() {
    log "=== 网站极端深度爬取 ==="
    
    > "$WORK_DIR/website_extreme.txt"
    
    # 2.1 获取所有sitemap
    log "获取所有sitemap..."
    sitemaps=(
        "https://www.hosteons.com/sitemap.xml"
        "https://hosteons.com/sitemap.xml"
        "https://www.hosteons.com/sitemap_index.xml"
        "https://www.hosteons.com/sitemap1.xml"
        "https://www.hosteons.com/sitemap2.xml"
    )
    
    all_urls=()
    for sitemap in "${sitemaps[@]}"; do
        log "获取sitemap: $sitemap"
        curl -sk "$sitemap" 2>/dev/null | grep -oE '<loc>([^<]+)</loc>' | sed 's/<loc>\(.*\)<\/loc>/\1/' | \
            while read url; do
                echo "$url" >> "$WORK_DIR/all_urls.txt"
            done
        sleep 1
    done
    
    # 2.2 爬取所有URL
    log "爬取所有URL..."
    cat "$WORK_DIR/all_urls.txt" 2>/dev/null | head -500 | while read url; do
        log "爬取: $url"
        curl -sk "$url" 2>/dev/null | \
            grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
            grep -vE "^(admin|info|contact|support|help|sales|marketing|business|tech|dev|hr|jobs|finance|billing|ceo|cto|cfo|webmaster|postmaster|hostmaster|root|service|customer|client|user|account|member|newsletter|system|server|host|domain|dns|network|backup|database|api|webhook|integration|partner|vendor|supplier|provider|reseller)" | \
            sort -u >> "$WORK_DIR/website_extreme.txt" || true
        
        # 解码Cloudflare邮箱
        curl -sk "$url" 2>/dev/null | \
            grep -oE 'data-cfemail="([^"]+)"' | \
            sed 's/.*data-cfemail="\([^"]*\)".*/\1/' | \
            while read enc; do
                if [ -n "$enc" ]; then
                    decoded=$(python3 -c "enc='$enc'; key=int(enc[:2], 16); print(''.join([chr(int(enc[i:i+2], 16) ^ key) for i in range(2, len(enc), 2)]))" 2>/dev/null)
                    if [ -n "$decoded" ] && [[ ! "$decoded" =~ ^(admin|info|contact|support|help|sales|marketing|business|tech|dev|hr|jobs|finance|billing|ceo|cto|cfo|webmaster|postmaster|hostmaster|root|service|customer|client|user|account|member|newsletter|system|server|host|domain|dns|network|backup|database|api|webhook|integration|partner|vendor|supplier|provider|reseller) ]]; then
                        echo "$decoded" >> "$WORK_DIR/website_extreme.txt"
                        log "解码邮箱: $decoded"
                    fi
                fi
            done
        
        sleep 0.3
    done
    
    # 2.3 从所有JavaScript文件提取
    log "从所有JavaScript文件提取..."
    for url in "https://www.hosteons.com" "https://hosteons.com"; do
        curl -sk "$url" 2>/dev/null | \
            grep -oE 'src=["\047]([^"\047]+\.js)' | \
            cut -d'"' -f2 | cut -d"'" -f2 | while read js; do
                if [[ "$js" == http* ]]; then
                    js_url="$js"
                else
                    js_url="${url%/*}/$js"
                fi
                curl -sk "$js_url" 2>/dev/null | \
                    grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
                    grep -vE "^(admin|info|contact|support|help|sales|marketing|business|tech|dev|hr|jobs|finance|billing|ceo|cto|cfo|webmaster|postmaster|hostmaster|root|service|customer|client|user|account|member|newsletter|system|server|host|domain|dns|network|backup|database|api|webhook|integration|partner|vendor|supplier|provider|reseller)" | \
                    sort -u >> "$WORK_DIR/website_extreme.txt" || true
                sleep 0.2
            done
        sleep 1
    done
    
    # 2.4 从API响应提取
    log "从API响应提取..."
    api_paths=(
        "/api"
        "/api/v1"
        "/api/v2"
        "/api/users"
        "/api/contact"
        "/api/support"
    )
    
    for path in "${api_paths[@]}"; do
        curl -sk "https://www.hosteons.com$path" 2>/dev/null | \
            grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
            grep -vE "^(admin|info|contact|support|help|sales|marketing|business|tech|dev|hr|jobs|finance|billing|ceo|cto|cfo|webmaster|postmaster|hostmaster|root|service|customer|client|user|account|member|newsletter|system|server|host|domain|dns|network|backup|database|api|webhook|integration|partner|vendor|supplier|provider|reseller)" | \
            sort -u >> "$WORK_DIR/website_extreme.txt" || true
        sleep 0.5
    done
}

# ============================================
# 3. 证书透明度极端深度分析
# ============================================

collect_cert_extreme_deep() {
    log "=== 证书透明度极端深度分析 ==="
    
    > "$WORK_DIR/cert_extreme.txt"
    
    # 获取所有证书（不限数量）
    log "获取所有证书..."
    curl -sk "https://crt.sh/?q=%.${TARGET}&output=json" 2>/dev/null | \
        jq -r '.[] | .name_value' 2>/dev/null | \
        sort -u | while read domain; do
            # 从证书详情提取
            curl -sk "https://crt.sh/?q=${domain}&output=json" 2>/dev/null | \
                jq -r '.[] | .issuer_name, .common_name, .name_value, .subject' 2>/dev/null | \
                grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
                sort -u >> "$WORK_DIR/cert_extreme.txt" || true
            
            # 从证书Subject/Issuer提取
            echo | openssl s_client -connect "${domain}:443" -servername "$domain" 2>/dev/null | \
                openssl x509 -noout -text 2>/dev/null | \
                grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
                sort -u >> "$WORK_DIR/cert_extreme.txt" || true
            
            sleep 0.2
        done
}

# ============================================
# 4. DNS极端深度提取
# ============================================

collect_dns_extreme_deep() {
    log "=== DNS极端深度提取 ==="
    
    > "$WORK_DIR/dns_extreme.txt"
    
    # 4.1 所有DNS记录类型
    log "提取所有DNS记录..."
    for record_type in TXT MX A AAAA CNAME NS SOA; do
        dig +short $record_type "$TARGET" 2>/dev/null | \
            grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
            sort -u >> "$WORK_DIR/dns_extreme.txt" || true
    done
    
    # 4.2 SPF记录
    dig +short TXT "$TARGET" 2>/dev/null | \
        grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
        sort -u >> "$WORK_DIR/dns_extreme.txt" || true
    
    # 4.3 DMARC记录
    dig +short TXT "_dmarc.$TARGET" 2>/dev/null | \
        grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
        sort -u >> "$WORK_DIR/dns_extreme.txt" || true
    
    # 4.4 所有子域名DNS记录
    log "提取所有子域名DNS记录..."
    subdomains=(
        "www" "mail" "support" "help" "admin" "api" "test" "dev" "staging" "prod"
        "blog" "forum" "shop" "store" "portal" "dashboard" "console" "panel"
        "cpanel" "whm" "webmail" "ftp" "sftp" "ssh" "vpn" "remote"
        "db" "mysql" "postgres" "redis" "mongodb" "elasticsearch"
        "jenkins" "gitlab" "jira" "confluence" "grafana" "kibana"
        "monitoring" "logs" "backup" "backups" "archive" "old"
    )
    
    for subdomain in "${subdomains[@]}"; do
        for record_type in TXT MX; do
            dig +short $record_type "${subdomain}.${TARGET}" 2>/dev/null | \
                grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
                sort -u >> "$WORK_DIR/dns_extreme.txt" || true
        done
        sleep 0.1
    done
}

# ============================================
# 5. WHOIS极端深度提取
# ============================================

collect_whois_extreme_deep() {
    log "=== WHOIS极端深度提取 ==="
    
    > "$WORK_DIR/whois_extreme.txt"
    
    # 5.1 主域名WHOIS
    log "提取主域名WHOIS..."
    whois "$TARGET" 2>/dev/null | \
        grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
        sort -u >> "$WORK_DIR/whois_extreme.txt" || true
    
    # 5.2 所有子域名WHOIS
    log "提取所有子域名WHOIS..."
    subdomains=(
        "www" "mail" "support" "help" "admin" "api" "test" "dev" "staging" "prod"
        "blog" "forum" "shop" "store" "portal" "dashboard" "console" "panel"
    )
    
    for subdomain in "${subdomains[@]}"; do
        whois "${subdomain}.${TARGET}" 2>/dev/null | \
            grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
            sort -u >> "$WORK_DIR/whois_extreme.txt" || true
        sleep 0.2
    done
}

# ============================================
# 6. 合并所有邮箱
# ============================================

merge_all_emails() {
    log "=== 合并所有邮箱 ==="
    
    > "$WORK_DIR/all_emails_extreme_merged.txt"
    
    # 合并所有来源
    cat "$WORK_DIR/github_extreme.txt" 2>/dev/null | cut -d'|' -f1 >> "$WORK_DIR/all_emails_extreme_merged.txt"
    cat "$WORK_DIR/website_extreme.txt" 2>/dev/null >> "$WORK_DIR/all_emails_extreme_merged.txt"
    cat "$WORK_DIR/cert_extreme.txt" 2>/dev/null >> "$WORK_DIR/all_emails_extreme_merged.txt"
    cat "$WORK_DIR/dns_extreme.txt" 2>/dev/null >> "$WORK_DIR/all_emails_extreme_merged.txt"
    cat "$WORK_DIR/whois_extreme.txt" 2>/dev/null >> "$WORK_DIR/all_emails_extreme_merged.txt"
    
    # 去重并排序
    sort -u "$WORK_DIR/all_emails_extreme_merged.txt" > "$WORK_DIR/all_emails_extreme_final.txt"
    
    # 过滤无效邮箱和变体
    grep -E "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" "$WORK_DIR/all_emails_extreme_final.txt" | \
        grep -vE "^(admin|info|contact|support|help|sales|marketing|business|tech|dev|hr|jobs|finance|billing|ceo|cto|cfo|webmaster|postmaster|hostmaster|root|service|customer|client|user|account|member|newsletter|system|server|host|domain|dns|network|backup|database|api|webhook|integration|partner|vendor|supplier|provider|reseller)" | \
        grep -vE "@(example|test|localhost|invalid|domain|site|website|company|business|corp|inc|llc|com|net|org|us|io)\.(com|net|org|us|io)$" > "$WORK_DIR/all_emails_extreme_valid.txt"
    
    log "总邮箱数: $(wc -l < "$WORK_DIR/all_emails_extreme_valid.txt" 2>/dev/null || echo 0) 个"
    
    echo ""
    echo "所有发现的真实邮箱:"
    cat "$WORK_DIR/all_emails_extreme_valid.txt" 2>/dev/null
}

# ============================================
# 主执行
# ============================================

main() {
    log "=== 开始 hosteons.com 极端深度邮箱收集 ==="
    
    collect_github_extreme_deep
    collect_website_extreme_deep
    collect_cert_extreme_deep
    collect_dns_extreme_deep
    collect_whois_extreme_deep
    merge_all_emails
    
    log "=== 极端深度邮箱收集完成 ==="
    log "结果保存在: $WORK_DIR/"
    
    # 生成汇总
    echo "=== 极端深度邮箱收集汇总 ===" > "$WORK_DIR/EMAIL_EXTREME_SUMMARY.txt"
    echo "GitHub: $(wc -l < "$WORK_DIR/github_extreme.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_EXTREME_SUMMARY.txt"
    echo "网站: $(wc -l < "$WORK_DIR/website_extreme.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_EXTREME_SUMMARY.txt"
    echo "证书: $(wc -l < "$WORK_DIR/cert_extreme.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_EXTREME_SUMMARY.txt"
    echo "DNS: $(wc -l < "$WORK_DIR/dns_extreme.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_EXTREME_SUMMARY.txt"
    echo "WHOIS: $(wc -l < "$WORK_DIR/whois_extreme.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_EXTREME_SUMMARY.txt"
    echo "总计: $(wc -l < "$WORK_DIR/all_emails_extreme_valid.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_EXTREME_SUMMARY.txt"
    
    cat "$WORK_DIR/EMAIL_EXTREME_SUMMARY.txt"
}

main "$@"
