#!/bin/bash
# Hosteons.com 深度邮箱收集脚本

TARGET="hosteons.com"
WORK_DIR="/workspace/lightnode_recon/hosteons_recon/email_collection"
mkdir -p "$WORK_DIR"

log() {
    echo "[+] $1"
}

# ============================================
# 1. 从GitHub深度挖掘邮箱
# ============================================

collect_github_emails() {
    log "=== 从GitHub深度挖掘邮箱 ==="
    
    > "$WORK_DIR/github_emails.txt"
    
    # 1.1 搜索相关仓库
    log "搜索相关仓库..."
    curl -sk "https://api.github.com/search/repositories?q=hosteons.com&per_page=50" 2>/dev/null | \
        jq -r '.items[] | .full_name' | head -20 | while read repo; do
            log "检查仓库: $repo"
            
            # 获取贡献者
            curl -sk "https://api.github.com/repos/$repo/contributors?per_page=100" 2>/dev/null | \
                jq -r '.[] | .login' | while read user; do
                    if [ -z "$user" ] || [[ "$user" == *"bot"* ]]; then
                        continue
                    fi
                    
                    user_info=$(curl -sk "https://api.github.com/users/$user" 2>/dev/null)
                    email=$(echo "$user_info" | jq -r '.email' 2>/dev/null)
                    name=$(echo "$user_info" | jq -r '.name' 2>/dev/null)
                    company=$(echo "$user_info" | jq -r '.company' 2>/dev/null)
                    
                    if [ "$email" != "null" ] && [ -n "$email" ] && [[ ! "$email" == *"noreply"* ]]; then
                        echo "$email|$name|$company|$user" >> "$WORK_DIR/github_emails.txt"
                        log "发现邮箱: $email ($name)"
                    fi
                    
                    sleep 0.3
                done
            
            sleep 1
        done
    
    # 1.2 从提交历史提取
    log "从提交历史提取..."
    curl -sk "https://api.github.com/search/repositories?q=hosteons.com&per_page=20" 2>/dev/null | \
        jq -r '.items[] | .full_name' | while read repo; do
            curl -sk "https://api.github.com/repos/$repo/commits?per_page=100" 2>/dev/null | \
                jq -r '.[] | "\(.commit.author.email)|\(.commit.author.name)|\(.author.login)"' | \
                while IFS='|' read -r email name login; do
                    if [ "$email" != "null" ] && [ -n "$email" ] && [[ ! "$email" == *"noreply"* ]]; then
                        echo "$email|$name|$login" >> "$WORK_DIR/github_emails.txt"
                        log "从提交发现: $email ($name)"
                    fi
                done
            sleep 1
        done
    
    # 1.3 从Issues和PRs提取
    log "从Issues和PRs提取..."
    curl -sk "https://api.github.com/search/repositories?q=hosteons.com&per_page=10" 2>/dev/null | \
        jq -r '.items[] | .full_name' | while read repo; do
            curl -sk "https://api.github.com/repos/$repo/issues?state=all&per_page=50" 2>/dev/null | \
                jq -r '.[] | "\(.user.email)|\(.user.login)|\(.user.name)"' | \
                while IFS='|' read -r email login name; do
                    if [ "$email" != "null" ] && [ -n "$email" ]; then
                        echo "$email|$name|$login" >> "$WORK_DIR/github_emails.txt"
                    fi
                done
            sleep 1
        done
}

# ============================================
# 2. 从证书透明度提取邮箱
# ============================================

collect_cert_emails() {
    log "=== 从证书透明度提取邮箱 ==="
    
    > "$WORK_DIR/cert_emails.txt"
    
    log "获取所有证书..."
    curl -sk "https://crt.sh/?q=%.${TARGET}&output=json" 2>/dev/null | \
        jq -r '.[] | .name_value' 2>/dev/null | \
        sort -u | head -50 | while read domain; do
            curl -sk "https://crt.sh/?q=${domain}&output=json" 2>/dev/null | \
                jq -r '.[] | .issuer_name, .common_name' 2>/dev/null | \
                grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
                sort -u >> "$WORK_DIR/cert_emails.txt" || true
            sleep 0.2
        done
    
    # 从证书详情提取
    log "从证书Subject/Issuer提取..."
    curl -sk "https://crt.sh/?q=%.${TARGET}&output=json" 2>/dev/null | \
        jq -r '.[] | .name_value' 2>/dev/null | \
        sort -u | head -20 | while read domain; do
            echo | openssl s_client -connect "${domain}:443" -servername "$domain" 2>/dev/null | \
                openssl x509 -noout -text 2>/dev/null | \
                grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
                sort -u >> "$WORK_DIR/cert_emails.txt" || true
            sleep 0.5
        done
}

# ============================================
# 3. 从DNS记录提取邮箱
# ============================================

collect_dns_emails() {
    log "=== 从DNS记录提取邮箱 ==="
    
    > "$WORK_DIR/dns_emails.txt"
    
    # SPF记录
    log "从SPF记录提取..."
    dig +short TXT "$TARGET" 2>/dev/null | \
        grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
        sort -u >> "$WORK_DIR/dns_emails.txt" || true
    
    # DMARC记录
    log "从DMARC记录提取..."
    dig +short TXT "_dmarc.$TARGET" 2>/dev/null | \
        grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
        sort -u >> "$WORK_DIR/dns_emails.txt" || true
    
    # MX记录
    log "从MX记录分析..."
    dig +short MX "$TARGET" 2>/dev/null | \
        awk '{print $2}' | while read mx; do
            dig +short TXT "$mx" 2>/dev/null | \
                grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
                sort -u >> "$WORK_DIR/dns_emails.txt" || true
        done
}

# ============================================
# 4. 从网站页面提取邮箱
# ============================================

collect_website_emails() {
    log "=== 从网站页面提取邮箱 ==="
    
    > "$WORK_DIR/website_emails.txt"
    
    urls=(
        "https://www.hosteons.com"
        "https://www.hosteons.com/about"
        "https://www.hosteons.com/contact"
        "https://www.hosteons.com/team"
        "https://hosteons.com"
        "https://hosteons.com/about"
        "https://hosteons.com/contact"
    )
    
    for url in "${urls[@]}"; do
        log "提取: $url"
        
        # 提取HTML中的邮箱
        curl -sk "$url" 2>/dev/null | \
            grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
            sort -u >> "$WORK_DIR/website_emails.txt" || true
        
        # 解码Cloudflare保护的邮箱
        curl -sk "$url" 2>/dev/null | \
            grep -oE 'data-cfemail="([^"]+)"' | \
            sed 's/.*data-cfemail="\([^"]*\)".*/\1/' | \
            while read enc; do
                if [ -n "$enc" ]; then
                    decoded=$(python3 -c "enc='$enc'; key=int(enc[:2], 16); print(''.join([chr(int(enc[i:i+2], 16) ^ key) for i in range(2, len(enc), 2)]))" 2>/dev/null)
                    if [ -n "$decoded" ]; then
                        echo "$decoded" >> "$WORK_DIR/website_emails.txt"
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
    
    > "$WORK_DIR/whois_emails.txt"
    
    # 主域名WHOIS
    log "提取主域名WHOIS..."
    whois "$TARGET" 2>/dev/null | \
        grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
        sort -u >> "$WORK_DIR/whois_emails.txt" || true
    
    # 子域名WHOIS
    log "提取子域名WHOIS..."
    for subdomain in www mail support help; do
        whois "${subdomain}.${TARGET}" 2>/dev/null | \
            grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io|net|org)" | \
            sort -u >> "$WORK_DIR/whois_emails.txt" || true
        sleep 0.5
    done
}

# ============================================
# 6. 生成邮箱变体
# ============================================

generate_email_variants() {
    log "=== 生成邮箱变体 ==="
    
    > "$WORK_DIR/email_variants.txt"
    
    # 常见邮箱前缀
    common_prefixes=(
        "admin" "administrator" "info" "contact" "support" "help" "sales" "marketing"
        "business" "partners" "press" "media" "security" "abuse" "legal" "privacy"
        "hr" "jobs" "careers" "finance" "accounting" "billing" "payments"
        "tech" "technical" "dev" "developers" "engineering" "it" "devops"
        "ceo" "cto" "cfo" "founder" "founders"
    )
    
    for prefix in "${common_prefixes[@]}"; do
        echo "${prefix}@${TARGET}" >> "$WORK_DIR/email_variants.txt"
    done
}

# ============================================
# 7. 合并所有邮箱
# ============================================

merge_all_emails() {
    log "=== 合并所有邮箱 ==="
    
    > "$WORK_DIR/all_emails_merged.txt"
    
    # 合并所有来源
    cat "$WORK_DIR/github_emails.txt" 2>/dev/null | cut -d'|' -f1 >> "$WORK_DIR/all_emails_merged.txt"
    cat "$WORK_DIR/cert_emails.txt" 2>/dev/null >> "$WORK_DIR/all_emails_merged.txt"
    cat "$WORK_DIR/dns_emails.txt" 2>/dev/null >> "$WORK_DIR/all_emails_merged.txt"
    cat "$WORK_DIR/website_emails.txt" 2>/dev/null >> "$WORK_DIR/all_emails_merged.txt"
    cat "$WORK_DIR/whois_emails.txt" 2>/dev/null >> "$WORK_DIR/all_emails_merged.txt"
    cat "$WORK_DIR/email_variants.txt" 2>/dev/null >> "$WORK_DIR/all_emails_merged.txt"
    
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
    log "=== 开始 hosteons.com 深度邮箱收集 ==="
    
    collect_github_emails
    collect_cert_emails
    collect_dns_emails
    collect_website_emails
    collect_whois_emails
    generate_email_variants
    merge_all_emails
    
    log "=== 邮箱收集完成 ==="
    log "结果保存在: $WORK_DIR/"
    
    # 生成汇总
    echo "=== 邮箱收集汇总 ===" > "$WORK_DIR/EMAIL_SUMMARY.txt"
    echo "GitHub: $(wc -l < "$WORK_DIR/github_emails.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_SUMMARY.txt"
    echo "证书: $(wc -l < "$WORK_DIR/cert_emails.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_SUMMARY.txt"
    echo "DNS: $(wc -l < "$WORK_DIR/dns_emails.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_SUMMARY.txt"
    echo "网站: $(wc -l < "$WORK_DIR/website_emails.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_SUMMARY.txt"
    echo "WHOIS: $(wc -l < "$WORK_DIR/whois_emails.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_SUMMARY.txt"
    echo "变体: $(wc -l < "$WORK_DIR/email_variants.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_SUMMARY.txt"
    echo "总计: $(wc -l < "$WORK_DIR/all_emails_valid.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_SUMMARY.txt"
    
    cat "$WORK_DIR/EMAIL_SUMMARY.txt"
}

main "$@"
