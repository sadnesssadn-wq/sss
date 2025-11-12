#!/bin/bash
# 深度邮箱收集脚本

TARGET="lightnode.com"
WORK_DIR="/workspace/lightnode_recon/comprehensive/email_collection"
mkdir -p "$WORK_DIR"

log() {
    echo "[+] $1"
}

# ============================================
# 1. 从GitHub深度挖掘邮箱
# ============================================

collect_github_emails() {
    log "=== 从GitHub深度挖掘邮箱 ==="
    
    > "$WORK_DIR/github_emails_all.txt"
    
    # 1.1 从所有相关仓库的贡献者提取
    log "从所有相关仓库贡献者提取..."
    repos=(
        "aurora423/next-lightnode-frontend"
        "LightNodeStaking/lightnodecontracts"
        "lightnode/lightnode.github.io"
        "lightnode/lightnode93"
    )
    
    for repo in "${repos[@]}"; do
        log "检查仓库: $repo"
        
        # 获取所有贡献者
        curl -sk "https://api.github.com/repos/$repo/contributors?per_page=100" 2>/dev/null | \
            jq -r '.[] | .login' | while read user; do
                if [ -z "$user" ] || [[ "$user" == *"bot"* ]] || [[ "$user" == *"Bot"* ]]; then
                    continue
                fi
                
                # 获取用户信息
                user_info=$(curl -sk "https://api.github.com/users/$user" 2>/dev/null)
                email=$(echo "$user_info" | jq -r '.email' 2>/dev/null)
                name=$(echo "$user_info" | jq -r '.name' 2>/dev/null)
                company=$(echo "$user_info" | jq -r '.company' 2>/dev/null)
                bio=$(echo "$user_info" | jq -r '.bio' 2>/dev/null)
                
                # 如果邮箱存在且不是noreply
                if [ "$email" != "null" ] && [ -n "$email" ] && [[ ! "$email" == *"noreply"* ]]; then
                    echo "$email|$name|$company|$user" >> "$WORK_DIR/github_emails_all.txt"
                    log "发现邮箱: $email ($name)"
                fi
                
                # 如果公司或bio包含lightnode，生成邮箱变体
                if (echo "$company" | grep -qi "lightnode") || (echo "$bio" | grep -qi "lightnode"); then
                    if [ -n "$name" ] && [ "$name" != "null" ]; then
                        first_name=$(echo "$name" | awk '{print $1}' | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z]//g')
                        last_name=$(echo "$name" | awk '{print $NF}' | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z]//g')
                        
                        if [ -n "$first_name" ] && [ -n "$last_name" ]; then
                            echo "${first_name}.${last_name}@${TARGET}" >> "$WORK_DIR/github_emails_all.txt"
                            echo "${first_name}@${TARGET}" >> "$WORK_DIR/github_emails_all.txt"
                            echo "${first_name}${last_name}@${TARGET}" >> "$WORK_DIR/github_emails_all.txt"
                            log "生成邮箱变体: ${first_name}.${last_name}@${TARGET}"
                        fi
                    fi
                fi
                
                sleep 0.3
            done
        
        sleep 1
    done
    
    # 1.2 从提交历史提取（深度）
    log "从提交历史深度提取..."
    for repo in "${repos[@]}"; do
        log "检查提交历史: $repo"
        
        # 获取最近200个提交
        curl -sk "https://api.github.com/repos/$repo/commits?per_page=100" 2>/dev/null | \
            jq -r '.[] | "\(.commit.author.email)|\(.commit.author.name)|\(.author.login)"' | \
            while IFS='|' read -r email name login; do
                if [ "$email" != "null" ] && [ -n "$email" ] && [[ ! "$email" == *"noreply"* ]]; then
                    echo "$email|$name|$login" >> "$WORK_DIR/github_emails_all.txt"
                    log "从提交发现: $email ($name)"
                fi
            done
        
        sleep 1
    done
    
    # 1.3 从Issues和PRs提取
    log "从Issues和PRs提取..."
    for repo in "${repos[@]}"; do
        # Issues
        curl -sk "https://api.github.com/repos/$repo/issues?state=all&per_page=100" 2>/dev/null | \
            jq -r '.[] | "\(.user.email)|\(.user.login)|\(.user.name)"' | \
            while IFS='|' read -r email login name; do
                if [ "$email" != "null" ] && [ -n "$email" ]; then
                    echo "$email|$name|$login" >> "$WORK_DIR/github_emails_all.txt"
                fi
            done
        
        # Pull Requests
        curl -sk "https://api.github.com/repos/$repo/pulls?state=all&per_page=100" 2>/dev/null | \
            jq -r '.[] | "\(.user.email)|\(.user.login)|\(.user.name)"' | \
            while IFS='|' read -r email login name; do
                if [ "$email" != "null" ] && [ -n "$email" ]; then
                    echo "$email|$name|$login" >> "$WORK_DIR/github_emails_all.txt"
                fi
            done
        
        sleep 1
    done
    
    # 1.4 从GitHub Gists提取
    log "从GitHub Gists提取..."
    curl -sk "https://api.github.com/search/code?q=lightnode.com+email&per_page=50" 2>/dev/null | \
        jq -r '.items[] | .repository.full_name' | sort -u | head -20 | while read repo; do
            # 获取仓库内容
            curl -sk "https://api.github.com/repos/$repo/contents" 2>/dev/null | \
                jq -r '.[] | select(.name | test("email|contact|config|env|readme"; "i")) | .path' | \
                head -10 | while read file_path; do
                    content=$(curl -sk "https://api.github.com/repos/$repo/contents/$file_path" \
                        -H "Accept: application/vnd.github.v3.raw" 2>/dev/null)
                    echo "$content" | grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
                        grep -iE "lightnode|gmail|outlook|yahoo|qq|163|sina" | \
                        sort -u >> "$WORK_DIR/github_emails_all.txt" || true
                done
            sleep 1
        done
}

# ============================================
# 2. 从证书透明度提取邮箱
# ============================================

collect_cert_emails() {
    log "=== 从证书透明度提取邮箱 ==="
    
    > "$WORK_DIR/cert_emails_all.txt"
    
    # 2.1 获取所有证书
    log "获取所有证书..."
    curl -sk "https://crt.sh/?q=%.${TARGET}&output=json" 2>/dev/null | \
        jq -r '.[] | .name_value' 2>/dev/null | \
        sort -u | head -100 | while read domain; do
            # 从证书详情提取
            curl -sk "https://crt.sh/?q=${domain}&output=json" 2>/dev/null | \
                jq -r '.[] | .issuer_name, .common_name' 2>/dev/null | \
                grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
                sort -u >> "$WORK_DIR/cert_emails_all.txt" || true
            
            sleep 0.2
        done
    
    # 2.2 从证书的Subject和Issuer提取
    log "从证书Subject/Issuer提取..."
    curl -sk "https://crt.sh/?q=%.${TARGET}&output=json" 2>/dev/null | \
        jq -r '.[] | .name_value' 2>/dev/null | \
        sort -u | head -50 | while read domain; do
            # 尝试连接并获取证书
            echo | openssl s_client -connect "${domain}:443" -servername "$domain" 2>/dev/null | \
                openssl x509 -noout -text 2>/dev/null | \
                grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
                sort -u >> "$WORK_DIR/cert_emails_all.txt" || true
            
            sleep 0.5
        done
}

# ============================================
# 3. 从DNS记录提取邮箱
# ============================================

collect_dns_emails() {
    log "=== 从DNS记录提取邮箱 ==="
    
    > "$WORK_DIR/dns_emails_all.txt"
    
    # 3.1 SPF记录
    log "从SPF记录提取..."
    dig +short TXT "$TARGET" 2>/dev/null | \
        grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
        sort -u >> "$WORK_DIR/dns_emails_all.txt" || true
    
    # 3.2 DMARC记录
    log "从DMARC记录提取..."
    dig +short TXT "_dmarc.$TARGET" 2>/dev/null | \
        grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
        sort -u >> "$WORK_DIR/dns_emails_all.txt" || true
    
    # 3.3 MX记录（可能包含邮箱信息）
    log "从MX记录分析..."
    dig +short MX "$TARGET" 2>/dev/null | \
        awk '{print $2}' | while read mx; do
            # 尝试从MX服务器提取信息
            dig +short TXT "$mx" 2>/dev/null | \
                grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
                sort -u >> "$WORK_DIR/dns_emails_all.txt" || true
        done
}

# ============================================
# 4. 从网站页面提取邮箱
# ============================================

collect_website_emails() {
    log "=== 从网站页面提取邮箱 ==="
    
    > "$WORK_DIR/website_emails_all.txt"
    
    urls=(
        "https://www.lightnode.com"
        "https://www.lightnode.com/about"
        "https://www.lightnode.com/contact"
        "https://www.lightnode.com/team"
        "https://console.lightnode.com"
    )
    
    for url in "${urls[@]}"; do
        log "提取: $url"
        
        # 提取HTML中的邮箱
        curl -sk "$url" 2>/dev/null | \
            grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
            sort -u >> "$WORK_DIR/website_emails_all.txt" || true
        
        # 解码Cloudflare保护的邮箱
        curl -sk "$url" 2>/dev/null | \
            grep -oE 'data-cfemail="([^"]+)"' | \
            sed 's/.*data-cfemail="\([^"]*\)".*/\1/' | \
            while read enc; do
                if [ -n "$enc" ]; then
                    decoded=$(python3 -c "enc='$enc'; key=int(enc[:2], 16); print(''.join([chr(int(enc[i:i+2], 16) ^ key) for i in range(2, len(enc), 2)]))" 2>/dev/null)
                    if [ -n "$decoded" ]; then
                        echo "$decoded" >> "$WORK_DIR/website_emails_all.txt"
                        log "解码邮箱: $decoded"
                    fi
                fi
            done
        
        sleep 1
    done
}

# ============================================
# 5. 从WHOIS记录提取邮箱
# ============================================

collect_whois_emails() {
    log "=== 从WHOIS记录提取邮箱 ==="
    
    > "$WORK_DIR/whois_emails_all.txt"
    
    # 5.1 主域名WHOIS
    log "提取主域名WHOIS..."
    whois "$TARGET" 2>/dev/null | \
        grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
        sort -u >> "$WORK_DIR/whois_emails_all.txt" || true
    
    # 5.2 子域名WHOIS
    log "提取子域名WHOIS..."
    for subdomain in www console api admin; do
        whois "${subdomain}.${TARGET}" 2>/dev/null | \
            grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
            sort -u >> "$WORK_DIR/whois_emails_all.txt" || true
        sleep 0.5
    done
}

# ============================================
# 6. 从社交媒体和公开来源提取
# ============================================

collect_social_emails() {
    log "=== 从社交媒体提取邮箱 ==="
    
    > "$WORK_DIR/social_emails_all.txt"
    
    # 6.1 从GitHub用户事件提取
    log "从GitHub用户事件提取..."
    for user in aurora423 LightNodeStaking; do
        curl -sk "https://api.github.com/users/$user/events/public?per_page=100" 2>/dev/null | \
            jq -r '.[] | select(.type=="PushEvent") | .payload.commits[]? | "\(.author.email)|\(.author.name)"' | \
            grep -v "^null\|^$" | while IFS='|' read -r email name; do
                if [ -n "$email" ] && [[ ! "$email" == *"noreply"* ]]; then
                    echo "$email|$name" >> "$WORK_DIR/social_emails_all.txt"
                fi
            done
        sleep 1
    done
    
    # 6.2 从GitHub Releases提取
    log "从GitHub Releases提取..."
    for repo in "aurora423/next-lightnode-frontend" "LightNodeStaking/lightnodecontracts"; do
        curl -sk "https://api.github.com/repos/$repo/releases" 2>/dev/null | \
            jq -r '.[] | "\(.author.login)|\(.author.html_url)"' | \
            while IFS='|' read -r login url; do
                user_info=$(curl -sk "https://api.github.com/users/$login" 2>/dev/null)
                email=$(echo "$user_info" | jq -r '.email' 2>/dev/null)
                if [ "$email" != "null" ] && [ -n "$email" ] && [[ ! "$email" == *"noreply"* ]]; then
                    echo "$email" >> "$WORK_DIR/social_emails_all.txt"
                fi
                sleep 0.3
            done
        sleep 1
    done
}

# ============================================
# 7. 生成邮箱变体
# ============================================

generate_email_variants() {
    log "=== 生成邮箱变体 ==="
    
    > "$WORK_DIR/email_variants_all.txt"
    
    # 已知名字
    names=(
        "Aurora"
        "shinyjohnson"
        "keinakano415"
        "alex jin"
        "Silver IT"
    )
    
    # 常见邮箱格式
    formats=(
        "{first}.{last}@{domain}"
        "{first}_{last}@{domain}"
        "{first}{last}@{domain}"
        "{first}@{domain}"
        "{last}@{domain}"
        "{first}.{last[0]}@{domain}"
        "{first[0]}.{last}@{domain}"
    )
    
    for name in "${names[@]}"; do
        first=$(echo "$name" | awk '{print $1}' | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]//g')
        last=$(echo "$name" | awk '{print $NF}' | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]//g')
        
        if [ -n "$first" ] && [ -n "$last" ]; then
            for fmt in "${formats[@]}"; do
                email=$(echo "$fmt" | sed "s/{first}/$first/g" | sed "s/{last}/$last/g" | sed "s/{domain}/$TARGET/g")
                echo "$email" >> "$WORK_DIR/email_variants_all.txt"
            done
        fi
    done
    
    # 常见邮箱前缀
    common_prefixes=(
        "admin" "administrator" "info" "contact" "support" "help" "sales" "marketing"
        "business" "partners" "press" "media" "security" "abuse" "legal" "privacy"
        "hr" "jobs" "careers" "finance" "accounting" "billing" "payments"
        "tech" "technical" "dev" "developers" "engineering" "it" "devops"
        "ceo" "cto" "cfo" "founder" "founders"
    )
    
    for prefix in "${common_prefixes[@]}"; do
        echo "${prefix}@${TARGET}" >> "$WORK_DIR/email_variants_all.txt"
    done
}

# ============================================
# 8. 合并所有邮箱
# ============================================

merge_all_emails() {
    log "=== 合并所有邮箱 ==="
    
    > "$WORK_DIR/all_emails_merged.txt"
    
    # 合并所有来源
    cat "$WORK_DIR/../all_emails_final_complete.txt" 2>/dev/null >> "$WORK_DIR/all_emails_merged.txt"
    cat "$WORK_DIR/github_emails_all.txt" 2>/dev/null | cut -d'|' -f1 >> "$WORK_DIR/all_emails_merged.txt"
    cat "$WORK_DIR/cert_emails_all.txt" 2>/dev/null >> "$WORK_DIR/all_emails_merged.txt"
    cat "$WORK_DIR/dns_emails_all.txt" 2>/dev/null >> "$WORK_DIR/all_emails_merged.txt"
    cat "$WORK_DIR/website_emails_all.txt" 2>/dev/null >> "$WORK_DIR/all_emails_merged.txt"
    cat "$WORK_DIR/whois_emails_all.txt" 2>/dev/null >> "$WORK_DIR/all_emails_merged.txt"
    cat "$WORK_DIR/social_emails_all.txt" 2>/dev/null | cut -d'|' -f1 >> "$WORK_DIR/all_emails_merged.txt"
    cat "$WORK_DIR/email_variants_all.txt" 2>/dev/null >> "$WORK_DIR/all_emails_merged.txt"
    
    # 去重并排序
    sort -u "$WORK_DIR/all_emails_merged.txt" > "$WORK_DIR/all_emails_final.txt"
    
    # 过滤无效邮箱
    grep -E "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" "$WORK_DIR/all_emails_final.txt" > "$WORK_DIR/all_emails_valid.txt"
    
    log "总邮箱数: $(wc -l < "$WORK_DIR/all_emails_valid.txt" 2>/dev/null || echo 0) 个"
    
    echo ""
    echo "所有发现的邮箱:"
    cat "$WORK_DIR/all_emails_valid.txt" 2>/dev/null | head -50
}

# ============================================
# 主执行
# ============================================

main() {
    log "=== 开始深度邮箱收集 ==="
    
    collect_github_emails
    collect_cert_emails
    collect_dns_emails
    collect_website_emails
    collect_whois_emails
    collect_social_emails
    generate_email_variants
    merge_all_emails
    
    log "=== 深度邮箱收集完成 ==="
    log "结果保存在: $WORK_DIR/"
    
    # 生成汇总
    echo "=== 邮箱收集汇总 ===" > "$WORK_DIR/EMAIL_COLLECTION_SUMMARY.txt"
    echo "GitHub: $(wc -l < "$WORK_DIR/github_emails_all.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_COLLECTION_SUMMARY.txt"
    echo "证书: $(wc -l < "$WORK_DIR/cert_emails_all.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_COLLECTION_SUMMARY.txt"
    echo "DNS: $(wc -l < "$WORK_DIR/dns_emails_all.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_COLLECTION_SUMMARY.txt"
    echo "网站: $(wc -l < "$WORK_DIR/website_emails_all.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_COLLECTION_SUMMARY.txt"
    echo "WHOIS: $(wc -l < "$WORK_DIR/whois_emails_all.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_COLLECTION_SUMMARY.txt"
    echo "社交媒体: $(wc -l < "$WORK_DIR/social_emails_all.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_COLLECTION_SUMMARY.txt"
    echo "变体: $(wc -l < "$WORK_DIR/email_variants_all.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_COLLECTION_SUMMARY.txt"
    echo "总计: $(wc -l < "$WORK_DIR/all_emails_valid.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_COLLECTION_SUMMARY.txt"
    
    cat "$WORK_DIR/EMAIL_COLLECTION_SUMMARY.txt"
}

main "$@"
