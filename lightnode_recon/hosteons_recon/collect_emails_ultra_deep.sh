#!/bin/bash
# Hosteons.com 超深度邮箱收集脚本

TARGET="hosteons.com"
WORK_DIR="/workspace/lightnode_recon/hosteons_recon/email_collection"
mkdir -p "$WORK_DIR"

log() {
    echo "[+] $1"
}

# ============================================
# 1. GitHub超深度挖掘（所有相关仓库）
# ============================================

collect_github_ultra_deep() {
    log "=== GitHub超深度挖掘 ==="
    
    > "$WORK_DIR/github_ultra_deep.txt"
    
    # 1.1 搜索所有相关仓库（扩大搜索范围）
    log "搜索所有相关仓库..."
    queries=(
        "hosteons.com"
        "hosteons"
        "hostEONS"
        "hosteons.com email"
        "hosteons.com contact"
    )
    
    for query in "${queries[@]}"; do
        log "搜索: $query"
        curl -sk "https://api.github.com/search/repositories?q=${query}&per_page=100" 2>/dev/null | \
            jq -r '.items[] | .full_name' | sort -u | while read repo; do
                log "检查仓库: $repo"
                
                # 获取所有贡献者（不限数量）
                curl -sk "https://api.github.com/repos/$repo/contributors?per_page=100" 2>/dev/null | \
                    jq -r '.[] | .login' | while read user; do
                        if [ -z "$user" ] || [[ "$user" == *"bot"* ]] || [[ "$user" == *"Bot"* ]]; then
                            continue
                        fi
                        
                        user_info=$(curl -sk "https://api.github.com/users/$user" 2>/dev/null)
                        email=$(echo "$user_info" | jq -r '.email' 2>/dev/null)
                        name=$(echo "$user_info" | jq -r '.name' 2>/dev/null)
                        company=$(echo "$user_info" | jq -r '.company' 2>/dev/null)
                        bio=$(echo "$user_info" | jq -r '.bio' 2>/dev/null)
                        
                        if [ "$email" != "null" ] && [ -n "$email" ] && [[ ! "$email" == *"noreply"* ]]; then
                            echo "$email|$name|$company|$user" >> "$WORK_DIR/github_ultra_deep.txt"
                            log "发现邮箱: $email ($name)"
                        fi
                        
                        # 如果公司或bio包含hosteons，生成邮箱变体
                        if (echo "$company" | grep -qi "hosteons") || (echo "$bio" | grep -qi "hosteons"); then
                            if [ -n "$name" ] && [ "$name" != "null" ]; then
                                first_name=$(echo "$name" | awk '{print $1}' | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z]//g')
                                last_name=$(echo "$name" | awk '{print $NF}' | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z]//g')
                                
                                if [ -n "$first_name" ] && [ -n "$last_name" ]; then
                                    echo "${first_name}.${last_name}@${TARGET}" >> "$WORK_DIR/github_ultra_deep.txt"
                                    echo "${first_name}@${TARGET}" >> "$WORK_DIR/github_ultra_deep.txt"
                                    echo "${first_name}${last_name}@${TARGET}" >> "$WORK_DIR/github_ultra_deep.txt"
                                    log "生成邮箱变体: ${first_name}.${last_name}@${TARGET}"
                                fi
                            fi
                        fi
                        
                        sleep 0.2
                    done
                
                sleep 0.5
            done
        sleep 1
    done
    
    # 1.2 从所有提交历史提取（不限数量）
    log "从所有提交历史提取..."
    curl -sk "https://api.github.com/search/repositories?q=hosteons.com&per_page=100" 2>/dev/null | \
        jq -r '.items[] | .full_name' | while read repo; do
            # 获取所有提交（分页）
            for page in {1..10}; do
                curl -sk "https://api.github.com/repos/$repo/commits?per_page=100&page=$page" 2>/dev/null | \
                    jq -r '.[] | "\(.commit.author.email)|\(.commit.author.name)|\(.author.login)"' | \
                    while IFS='|' read -r email name login; do
                        if [ "$email" != "null" ] && [ -n "$email" ] && [[ ! "$email" == *"noreply"* ]]; then
                            echo "$email|$name|$login" >> "$WORK_DIR/github_ultra_deep.txt"
                            log "从提交发现: $email ($name)"
                        fi
                    done
                sleep 0.5
            done
            sleep 1
        done
    
    # 1.3 从所有Issues和PRs提取
    log "从所有Issues和PRs提取..."
    curl -sk "https://api.github.com/search/repositories?q=hosteons.com&per_page=50" 2>/dev/null | \
        jq -r '.items[] | .full_name' | while read repo; do
            # Issues
            for page in {1..5}; do
                curl -sk "https://api.github.com/repos/$repo/issues?state=all&per_page=100&page=$page" 2>/dev/null | \
                    jq -r '.[] | "\(.user.email)|\(.user.login)|\(.user.name)"' | \
                    while IFS='|' read -r email login name; do
                        if [ "$email" != "null" ] && [ -n "$email" ]; then
                            echo "$email|$name|$login" >> "$WORK_DIR/github_ultra_deep.txt"
                        fi
                    done
                sleep 0.5
            done
            
            # Pull Requests
            for page in {1..5}; do
                curl -sk "https://api.github.com/repos/$repo/pulls?state=all&per_page=100&page=$page" 2>/dev/null | \
                    jq -r '.[] | "\(.user.email)|\(.user.login)|\(.user.name)"' | \
                    while IFS='|' read -r email login name; do
                        if [ "$email" != "null" ] && [ -n "$email" ]; then
                            echo "$email|$name|$login" >> "$WORK_DIR/github_ultra_deep.txt"
                        fi
                    done
                sleep 0.5
            done
            sleep 1
        done
    
    # 1.4 从GitHub Gists提取
    log "从GitHub Gists提取..."
    curl -sk "https://api.github.com/search/code?q=hosteons.com+email&per_page=100" 2>/dev/null | \
        jq -r '.items[] | .repository.full_name' | sort -u | head -50 | while read repo; do
            curl -sk "https://api.github.com/repos/$repo/contents" 2>/dev/null | \
                jq -r '.[] | select(.name | test("email|contact|config|env|readme|gist"; "i")) | .path' | \
                head -20 | while read file_path; do
                    content=$(curl -sk "https://api.github.com/repos/$repo/contents/$file_path" \
                        -H "Accept: application/vnd.github.v3.raw" 2>/dev/null)
                    echo "$content" | grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
                        grep -iE "hosteons|gmail|outlook|yahoo|qq|163|sina" | \
                        sort -u >> "$WORK_DIR/github_ultra_deep.txt" || true
                done
            sleep 1
        done
    
    # 1.5 从GitHub Releases提取
    log "从GitHub Releases提取..."
    curl -sk "https://api.github.com/search/repositories?q=hosteons.com&per_page=20" 2>/dev/null | \
        jq -r '.items[] | .full_name' | while read repo; do
            curl -sk "https://api.github.com/repos/$repo/releases" 2>/dev/null | \
                jq -r '.[] | "\(.author.login)|\(.author.html_url)"' | \
                while IFS='|' read -r login url; do
                    user_info=$(curl -sk "https://api.github.com/users/$login" 2>/dev/null)
                    email=$(echo "$user_info" | jq -r '.email' 2>/dev/null)
                    if [ "$email" != "null" ] && [ -n "$email" ] && [[ ! "$email" == *"noreply"* ]]; then
                        echo "$email|$login" >> "$WORK_DIR/github_ultra_deep.txt"
                    fi
                    sleep 0.3
                done
            sleep 1
        done
    
    # 1.6 从GitHub Stargazers提取
    log "从GitHub Stargazers提取..."
    curl -sk "https://api.github.com/search/repositories?q=hosteons.com&per_page=10" 2>/dev/null | \
        jq -r '.items[] | .full_name' | while read repo; do
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
                                echo "$email|$user" >> "$WORK_DIR/github_ultra_deep.txt"
                                log "从Stargazers发现: $email"
                            fi
                        fi
                        sleep 0.2
                    done
                sleep 0.5
            done
            sleep 1
        done
}

# ============================================
# 2. 网站超深度爬取
# ============================================

collect_website_ultra_deep() {
    log "=== 网站超深度爬取 ==="
    
    > "$WORK_DIR/website_ultra_deep.txt"
    
    # 2.1 获取sitemap.xml中的所有URL
    log "从sitemap.xml获取所有URL..."
    sitemap_urls=(
        "https://www.hosteons.com/sitemap.xml"
        "https://hosteons.com/sitemap.xml"
        "https://www.hosteons.com/sitemap_index.xml"
    )
    
    all_urls=()
    for sitemap in "${sitemap_urls[@]}"; do
        log "获取sitemap: $sitemap"
        curl -sk "$sitemap" 2>/dev/null | grep -oE '<loc>([^<]+)</loc>' | sed 's/<loc>\(.*\)<\/loc>/\1/' | \
            while read url; do
                all_urls+=("$url")
                echo "$url" >> "$WORK_DIR/all_urls.txt"
            done
        sleep 1
    done
    
    # 2.2 爬取所有发现的URL
    log "爬取所有URL提取邮箱..."
    cat "$WORK_DIR/all_urls.txt" 2>/dev/null | head -200 | while read url; do
        log "爬取: $url"
        curl -sk "$url" 2>/dev/null | \
            grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
            sort -u >> "$WORK_DIR/website_ultra_deep.txt" || true
        
        # 解码Cloudflare邮箱
        curl -sk "$url" 2>/dev/null | \
            grep -oE 'data-cfemail="([^"]+)"' | \
            sed 's/.*data-cfemail="\([^"]*\)".*/\1/' | \
            while read enc; do
                if [ -n "$enc" ]; then
                    decoded=$(python3 -c "enc='$enc'; key=int(enc[:2], 16); print(''.join([chr(int(enc[i:i+2], 16) ^ key) for i in range(2, len(enc), 2)]))" 2>/dev/null)
                    if [ -n "$decoded" ]; then
                        echo "$decoded" >> "$WORK_DIR/website_ultra_deep.txt"
                        log "解码邮箱: $decoded"
                    fi
                fi
            done
        
        sleep 0.5
    done
    
    # 2.3 从JavaScript文件提取
    log "从JavaScript文件提取..."
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
                    sort -u >> "$WORK_DIR/website_ultra_deep.txt" || true
                sleep 0.3
            done
        sleep 1
    done
}

# ============================================
# 3. 证书透明度超深度分析
# ============================================

collect_cert_ultra_deep() {
    log "=== 证书透明度超深度分析 ==="
    
    > "$WORK_DIR/cert_ultra_deep.txt"
    
    # 获取所有证书（不限数量）
    log "获取所有证书..."
    curl -sk "https://crt.sh/?q=%.${TARGET}&output=json" 2>/dev/null | \
        jq -r '.[] | .name_value' 2>/dev/null | \
        sort -u | while read domain; do
            # 从证书详情提取
            curl -sk "https://crt.sh/?q=${domain}&output=json" 2>/dev/null | \
                jq -r '.[] | .issuer_name, .common_name, .name_value' 2>/dev/null | \
                grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
                sort -u >> "$WORK_DIR/cert_ultra_deep.txt" || true
            
            # 从证书Subject/Issuer提取
            echo | openssl s_client -connect "${domain}:443" -servername "$domain" 2>/dev/null | \
                openssl x509 -noout -text 2>/dev/null | \
                grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
                sort -u >> "$WORK_DIR/cert_ultra_deep.txt" || true
            
            sleep 0.3
        done
}

# ============================================
# 4. DNS超深度提取
# ============================================

collect_dns_ultra_deep() {
    log "=== DNS超深度提取 ==="
    
    > "$WORK_DIR/dns_ultra_deep.txt"
    
    # 4.1 所有DNS记录类型
    log "提取所有DNS记录..."
    for record_type in TXT MX A AAAA CNAME NS SOA; do
        dig +short $record_type "$TARGET" 2>/dev/null | \
            grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
            sort -u >> "$WORK_DIR/dns_ultra_deep.txt" || true
    done
    
    # 4.2 SPF记录
    dig +short TXT "$TARGET" 2>/dev/null | \
        grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
        sort -u >> "$WORK_DIR/dns_ultra_deep.txt" || true
    
    # 4.3 DMARC记录
    dig +short TXT "_dmarc.$TARGET" 2>/dev/null | \
        grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
        sort -u >> "$WORK_DIR/dns_ultra_deep.txt" || true
    
    # 4.4 MX记录分析
    dig +short MX "$TARGET" 2>/dev/null | \
        awk '{print $2}' | while read mx; do
            dig +short TXT "$mx" 2>/dev/null | \
                grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
                sort -u >> "$WORK_DIR/dns_ultra_deep.txt" || true
        done
    
    # 4.5 子域名DNS记录
    log "提取子域名DNS记录..."
    for subdomain in www mail support help admin api test dev staging prod; do
        dig +short TXT "${subdomain}.${TARGET}" 2>/dev/null | \
            grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
            sort -u >> "$WORK_DIR/dns_ultra_deep.txt" || true
        sleep 0.2
    done
}

# ============================================
# 5. WHOIS超深度提取
# ============================================

collect_whois_ultra_deep() {
    log "=== WHOIS超深度提取 ==="
    
    > "$WORK_DIR/whois_ultra_deep.txt"
    
    # 5.1 主域名WHOIS
    log "提取主域名WHOIS..."
    whois "$TARGET" 2>/dev/null | \
        grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
        sort -u >> "$WORK_DIR/whois_ultra_deep.txt" || true
    
    # 5.2 所有子域名WHOIS
    log "提取所有子域名WHOIS..."
    for subdomain in www mail support help admin api test dev staging prod blog forum shop store; do
        whois "${subdomain}.${TARGET}" 2>/dev/null | \
            grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
            sort -u >> "$WORK_DIR/whois_ultra_deep.txt" || true
        sleep 0.3
    done
}

# ============================================
# 6. 生成更多邮箱变体
# ============================================

generate_more_variants() {
    log "=== 生成更多邮箱变体 ==="
    
    > "$WORK_DIR/email_variants_extended.txt"
    
    # 已知名字
    names=(
        "kapil"
        "Kapil"
        "KAPIL"
    )
    
    # 扩展的邮箱格式
    formats=(
        "{name}@{domain}"
        "{name}.{name}@{domain}"
        "{name}_{name}@{domain}"
        "{name}{name}@{domain}"
        "{name}1@{domain}"
        "{name}2@{domain}"
        "{name}123@{domain}"
        "{name}.admin@{domain}"
        "{name}.support@{domain}"
        "admin.{name}@{domain}"
        "support.{name}@{domain}"
    )
    
    for name in "${names[@]}"; do
        name_lower=$(echo "$name" | tr '[:upper:]' '[:lower:]')
        for fmt in "${formats[@]}"; do
            email=$(echo "$fmt" | sed "s/{name}/$name_lower/g" | sed "s/{domain}/$TARGET/g")
            echo "$email" >> "$WORK_DIR/email_variants_extended.txt"
        done
    done
    
    # 更多常见前缀
    extended_prefixes=(
        "webmaster" "postmaster" "hostmaster" "root" "service" "services"
        "customerservice" "customer" "clients" "client" "users" "user"
        "accounts" "account" "members" "member" "subscribers" "subscriber"
        "newsletter" "notifications" "alerts" "system" "systems" "server"
        "servers" "hosting" "host" "domain" "domains" "dns" "network"
        "networks" "infrastructure" "operations" "ops" "monitoring"
        "backup" "backups" "database" "databases" "db" "mysql" "postgres"
        "redis" "cache" "cdn" "api" "apis" "webhook" "webhooks"
        "integration" "integrations" "partner" "partners" "vendor" "vendors"
        "supplier" "suppliers" "provider" "providers" "reseller" "resellers"
    )
    
    for prefix in "${extended_prefixes[@]}"; do
        echo "${prefix}@${TARGET}" >> "$WORK_DIR/email_variants_extended.txt"
    done
}

# ============================================
# 7. 合并所有邮箱
# ============================================

merge_all_emails() {
    log "=== 合并所有邮箱 ==="
    
    > "$WORK_DIR/all_emails_ultra_merged.txt"
    
    # 合并所有来源
    cat "$WORK_DIR/github_ultra_deep.txt" 2>/dev/null | cut -d'|' -f1 >> "$WORK_DIR/all_emails_ultra_merged.txt"
    cat "$WORK_DIR/website_ultra_deep.txt" 2>/dev/null >> "$WORK_DIR/all_emails_ultra_merged.txt"
    cat "$WORK_DIR/cert_ultra_deep.txt" 2>/dev/null >> "$WORK_DIR/all_emails_ultra_merged.txt"
    cat "$WORK_DIR/dns_ultra_deep.txt" 2>/dev/null >> "$WORK_DIR/all_emails_ultra_merged.txt"
    cat "$WORK_DIR/whois_ultra_deep.txt" 2>/dev/null >> "$WORK_DIR/all_emails_ultra_merged.txt"
    cat "$WORK_DIR/email_variants_extended.txt" 2>/dev/null >> "$WORK_DIR/all_emails_ultra_merged.txt"
    
    # 去重并排序
    sort -u "$WORK_DIR/all_emails_ultra_merged.txt" > "$WORK_DIR/all_emails_ultra_final.txt"
    
    # 过滤无效邮箱
    grep -E "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" "$WORK_DIR/all_emails_ultra_final.txt" > "$WORK_DIR/all_emails_ultra_valid.txt"
    
    log "总邮箱数: $(wc -l < "$WORK_DIR/all_emails_ultra_valid.txt" 2>/dev/null || echo 0) 个"
    
    echo ""
    echo "所有发现的邮箱:"
    cat "$WORK_DIR/all_emails_ultra_valid.txt" 2>/dev/null
}

# ============================================
# 主执行
# ============================================

main() {
    log "=== 开始 hosteons.com 超深度邮箱收集 ==="
    
    collect_github_ultra_deep
    collect_website_ultra_deep
    collect_cert_ultra_deep
    collect_dns_ultra_deep
    collect_whois_ultra_deep
    generate_more_variants
    merge_all_emails
    
    log "=== 超深度邮箱收集完成 ==="
    log "结果保存在: $WORK_DIR/"
    
    # 生成汇总
    echo "=== 超深度邮箱收集汇总 ===" > "$WORK_DIR/EMAIL_ULTRA_SUMMARY.txt"
    echo "GitHub: $(wc -l < "$WORK_DIR/github_ultra_deep.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_ULTRA_SUMMARY.txt"
    echo "网站: $(wc -l < "$WORK_DIR/website_ultra_deep.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_ULTRA_SUMMARY.txt"
    echo "证书: $(wc -l < "$WORK_DIR/cert_ultra_deep.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_ULTRA_SUMMARY.txt"
    echo "DNS: $(wc -l < "$WORK_DIR/dns_ultra_deep.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_ULTRA_SUMMARY.txt"
    echo "WHOIS: $(wc -l < "$WORK_DIR/whois_ultra_deep.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_ULTRA_SUMMARY.txt"
    echo "变体: $(wc -l < "$WORK_DIR/email_variants_extended.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_ULTRA_SUMMARY.txt"
    echo "总计: $(wc -l < "$WORK_DIR/all_emails_ultra_valid.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_ULTRA_SUMMARY.txt"
    
    cat "$WORK_DIR/EMAIL_ULTRA_SUMMARY.txt"
}

main "$@"
