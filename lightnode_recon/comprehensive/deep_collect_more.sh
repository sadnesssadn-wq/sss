#!/bin/bash
# 深度收集更多信息

TARGET="lightnode.com"
WORK_DIR="/workspace/lightnode_recon/comprehensive/deep_collect"
mkdir -p "$WORK_DIR"

log() {
    echo "[+] $1"
}

# ============================================
# 1. 社交媒体深度挖掘
# ============================================

collect_social_media() {
    log "=== 社交媒体深度挖掘 ==="
    
    > "$WORK_DIR/social_media_emails.txt"
    
    # 1.1 Twitter/X 深度挖掘
    log "从Twitter/X提取..."
    # 搜索lightnode相关推文
    curl -sk "https://api.twitter.com/2/tweets/search/recent?query=lightnode.com" \
        -H "Authorization: Bearer YOUR_TOKEN" 2>/dev/null | \
        jq -r '.data[]?.text' | \
        grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io)" | \
        sort -u >> "$WORK_DIR/social_media_emails.txt" || true
    
    # 1.2 LinkedIn 公司页面（如果有公开信息）
    log "从LinkedIn提取..."
    # 尝试访问LinkedIn公司页面
    curl -sk "https://www.linkedin.com/company/lightnode" 2>/dev/null | \
        grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io)" | \
        sort -u >> "$WORK_DIR/social_media_emails.txt" || true
    
    # 1.3 GitHub Stars/Forks 用户邮箱
    log "从GitHub Stars提取..."
    for repo in "aurora423/next-lightnode-frontend" "LightNodeStaking/lightnodecontracts"; do
        # 获取star用户
        curl -sk "https://api.github.com/repos/$repo/stargazers?per_page=100" | \
            jq -r '.[] | .login' | head -20 | while read user; do
                user_info=$(curl -sk "https://api.github.com/users/$user" 2>/dev/null)
                email=$(echo "$user_info" | jq -r '.email' 2>/dev/null)
                if [ "$email" != "null" ] && [ -n "$email" ]; then
                    echo "$email" >> "$WORK_DIR/social_media_emails.txt"
                fi
                sleep 0.5
            done
    done
    
    # 1.4 从GitHub Releases提取
    log "从GitHub Releases提取..."
    for repo in "aurora423/next-lightnode-frontend" "LightNodeStaking/lightnodecontracts"; do
        curl -sk "https://api.github.com/repos/$repo/releases" | \
            jq -r '.[] | .author.login' | sort -u | while read user; do
                user_info=$(curl -sk "https://api.github.com/users/$user" 2>/dev/null)
                email=$(echo "$user_info" | jq -r '.email' 2>/dev/null)
                if [ "$email" != "null" ] && [ -n "$email" ]; then
                    echo "$email" >> "$WORK_DIR/social_media_emails.txt"
                fi
                sleep 0.5
            done
    done
}

# ============================================
# 2. 证书透明度深度分析
# ============================================

collect_cert_transparency() {
    log "=== 证书透明度深度分析 ==="
    
    > "$WORK_DIR/cert_emails_deep.txt"
    
    # 2.1 获取所有证书
    log "获取所有证书..."
    curl -sk "https://crt.sh/?q=%.${TARGET}&output=json" | \
        jq -r '.[] | .name_value' | \
        sort -u > "$WORK_DIR/cert_domains.txt"
    
    # 2.2 从证书提取邮箱
    log "从证书提取邮箱..."
    cat "$WORK_DIR/cert_domains.txt" | while read domain; do
        # 获取证书详情
        curl -sk "https://crt.sh/?q=${domain}&output=json" | \
            jq -r '.[] | .issuer_name, .common_name' | \
            grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io)" | \
            sort -u >> "$WORK_DIR/cert_emails_deep.txt" || true
        sleep 0.3
    done
    
    # 2.3 从子域名证书提取
    log "从子域名证书提取..."
    cat "$WORK_DIR/cert_domains.txt" | grep -v "^${TARGET}$" | head -50 | while read subdomain; do
        echo | openssl s_client -connect "${subdomain}:443" -servername "$subdomain" 2>/dev/null | \
            openssl x509 -noout -text 2>/dev/null | \
            grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io)" | \
            sort -u >> "$WORK_DIR/cert_emails_deep.txt" || true
    done
}

# ============================================
# 3. GitHub深度挖掘（更多数据）
# ============================================

collect_github_deep() {
    log "=== GitHub深度挖掘 ==="
    
    > "$WORK_DIR/github_emails_deep.txt"
    
    # 3.1 从所有相关仓库提取
    log "从所有相关仓库提取..."
    curl -sk "https://api.github.com/search/repositories?q=lightnode&per_page=100" | \
        jq -r '.items[] | .full_name' | head -30 | while read repo; do
            log "检查仓库: $repo"
            
            # 获取贡献者
            curl -sk "https://api.github.com/repos/$repo/contributors?per_page=30" | \
                jq -r '.[] | .login' | while read user; do
                    user_info=$(curl -sk "https://api.github.com/users/$user" 2>/dev/null)
                    email=$(echo "$user_info" | jq -r '.email' 2>/dev/null)
                    name=$(echo "$user_info" | jq -r '.name' 2>/dev/null)
                    company=$(echo "$user_info" | jq -r '.company' 2>/dev/null)
                    
                    if [ "$email" != "null" ] && [ -n "$email" ]; then
                        echo "$email|$name|$company" >> "$WORK_DIR/github_emails_deep.txt"
                    fi
                    
                    # 如果公司包含lightnode，生成邮箱变体
                    if echo "$company" | grep -qi "lightnode"; then
                        if [ -n "$name" ] && [ "$name" != "null" ]; then
                            first_name=$(echo "$name" | awk '{print $1}' | tr '[:upper:]' '[:lower:]')
                            last_name=$(echo "$name" | awk '{print $NF}' | tr '[:upper:]' '[:lower:]')
                            echo "${first_name}.${last_name}@${TARGET}" >> "$WORK_DIR/github_emails_deep.txt"
                            echo "${first_name}@${TARGET}" >> "$WORK_DIR/github_emails_deep.txt"
                        fi
                    fi
                    
                    sleep 0.3
                done
            
            sleep 1
        done
    
    # 3.2 从Pull Requests提取
    log "从Pull Requests提取..."
    for repo in "aurora423/next-lightnode-frontend" "LightNodeStaking/lightnodecontracts"; do
        curl -sk "https://api.github.com/repos/$repo/pulls?state=all&per_page=50" | \
            jq -r '.[] | "\(.user.login)|\(.user.email)"' | \
            grep -v "^null\|^$" | while IFS='|' read -r login email; do
                if [ "$email" != "null" ] && [ -n "$email" ]; then
                    echo "$email" >> "$WORK_DIR/github_emails_deep.txt"
                fi
            done
        sleep 1
    done
    
    # 3.3 从GitHub Gists提取
    log "从GitHub Gists提取..."
    curl -sk "https://api.github.com/search/code?q=lightnode.com+email&per_page=50" | \
        jq -r '.items[] | .repository.full_name' | sort -u | head -20 | while read repo; do
            # 获取仓库内容
            curl -sk "https://api.github.com/repos/$repo/git/trees/main?recursive=1" 2>/dev/null | \
                jq -r '.tree[]? | select(.path | contains("email") or contains("contact") or contains("config")) | .path' | \
                head -5 | while read file_path; do
                    content=$(curl -sk "https://api.github.com/repos/$repo/contents/$file_path" \
                        -H "Accept: application/vnd.github.v3.raw" 2>/dev/null)
                    echo "$content" | grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io)" | \
                        grep -i lightnode >> "$WORK_DIR/github_emails_deep.txt" || true
                done
            sleep 1
        done
}

# ============================================
# 4. DNS和子域名深度挖掘
# ============================================

collect_dns_deep() {
    log "=== DNS和子域名深度挖掘 ==="
    
    > "$WORK_DIR/dns_info.txt"
    
    # 4.1 完整DNS记录
    log "收集完整DNS记录..."
    for record_type in A AAAA MX TXT CNAME NS SOA; do
        echo "=== $record_type ===" >> "$WORK_DIR/dns_info.txt"
        dig +short $record_type "$TARGET" >> "$WORK_DIR/dns_info.txt" 2>/dev/null || true
        echo "" >> "$WORK_DIR/dns_info.txt"
    done
    
    # 4.2 SPF/DMARC记录提取邮箱
    log "从SPF/DMARC提取邮箱..."
    dig +short TXT "$TARGET" | grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io)" >> "$WORK_DIR/dns_emails.txt" || true
    dig +short TXT "_dmarc.$TARGET" | grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io)" >> "$WORK_DIR/dns_emails.txt" || true
    
    # 4.3 子域名暴力破解（更多字典）
    log "子域名暴力破解..."
    subdomains=(
        "api" "www" "console" "admin" "test" "dev" "staging" "prod" "mail" "email"
        "vpn" "ftp" "ssh" "git" "jenkins" "gitlab" "jira" "confluence"
        "monitor" "grafana" "kibana" "prometheus" "elastic"
        "db" "database" "mysql" "postgres" "redis" "mongodb"
        "backup" "backups" "archive" "old" "legacy"
        "internal" "private" "secure" "secure-api"
        "v1" "v2" "v3" "api-v1" "api-v2"
        "cdn" "static" "assets" "media" "files"
        "auth" "login" "oauth" "sso"
        "webhook" "hook" "callback"
    )
    
    > "$WORK_DIR/subdomains_brute.txt"
    for sub in "${subdomains[@]}"; do
        ip=$(dig +short "${sub}.${TARGET}" | grep -E "^[0-9]" | head -1)
        if [ -n "$ip" ]; then
            echo "${sub}.${TARGET}|$ip" >> "$WORK_DIR/subdomains_brute.txt"
            log "发现子域名: ${sub}.${TARGET} -> $ip"
        fi
    done
}

# ============================================
# 5. 云服务信息收集
# ============================================

collect_cloud_info() {
    log "=== 云服务信息收集 ==="
    
    > "$WORK_DIR/cloud_info.txt"
    
    # 5.1 AWS S3 Bucket枚举
    log "枚举AWS S3 Buckets..."
    buckets=(
        "$TARGET"
        "www.$TARGET"
        "console.$TARGET"
        "api.$TARGET"
        "${TARGET}-backup"
        "${TARGET}-dev"
        "${TARGET}-staging"
        "${TARGET}-prod"
        "lightnode"
        "lightnode-backup"
        "lightnode-dev"
        "lightnode-staging"
        "lightnode-prod"
    )
    
    > "$WORK_DIR/s3_buckets.txt"
    for bucket in "${buckets[@]}"; do
        # 测试bucket是否存在
        response=$(curl -sk -I "https://${bucket}.s3.amazonaws.com" 2>/dev/null)
        if echo "$response" | grep -qE "200|403|301"; then
            echo "$bucket|$(echo "$response" | head -1)" >> "$WORK_DIR/s3_buckets.txt"
            log "发现S3 Bucket: $bucket"
        fi
        
        # 测试其他区域
        for region in "us-east-1" "us-west-2" "eu-west-1" "ap-southeast-1"; do
            response=$(curl -sk -I "https://${bucket}.s3.${region}.amazonaws.com" 2>/dev/null)
            if echo "$response" | grep -qE "200|403|301"; then
                echo "$bucket|$region|$(echo "$response" | head -1)" >> "$WORK_DIR/s3_buckets.txt"
                log "发现S3 Bucket: $bucket ($region)"
            fi
        done
    done
    
    # 5.2 云服务IP归属
    log "分析IP归属..."
    dig +short "$TARGET" | grep -E "^[0-9]" | while read ip; do
        whois_result=$(whois "$ip" 2>/dev/null | grep -iE "org|netname|descr" | head -5)
        echo "$ip|$whois_result" >> "$WORK_DIR/ip_whois.txt" || true
    done
}

# ============================================
# 6. 技术栈深度识别
# ============================================

identify_tech_deep() {
    log "=== 技术栈深度识别 ==="
    
    > "$WORK_DIR/tech_stack_complete.txt"
    
    # 6.1 分析JavaScript文件
    log "分析JavaScript文件..."
    curl -sk "https://console.lightnode.com" 2>/dev/null | \
        grep -oE 'src="([^"]+\.js)"' | cut -d'"' -f2 | head -20 | while read js_file; do
            log "分析: $js_file"
            curl -sk "https://console.lightnode.com$js_file" 2>/dev/null | \
                grep -oE "(react|vue|angular|next|express|koa|axios|fetch|graphql|apollo)" | \
                sort -u >> "$WORK_DIR/tech_stack_complete.txt" || true
        done
    
    # 6.2 分析Source Map
    log "查找Source Map..."
    curl -sk "https://console.lightnode.com" 2>/dev/null | \
        grep -oE 'src="([^"]+\.js\.map)"' | cut -d'"' -f2 | head -5 | while read map_file; do
            log "发现Source Map: $map_file"
            curl -sk "https://console.lightnode.com$map_file" 2>/dev/null | \
                jq -r '.sources[]' 2>/dev/null | head -20 >> "$WORK_DIR/source_map_files.txt" || true
        done
    
    # 6.3 分析robots.txt和sitemap.xml
    log "分析robots.txt和sitemap.xml..."
    for url in "https://www.lightnode.com" "https://console.lightnode.com"; do
        curl -sk "$url/robots.txt" 2>/dev/null >> "$WORK_DIR/robots.txt" || true
        curl -sk "$url/sitemap.xml" 2>/dev/null >> "$WORK_DIR/sitemap.xml" || true
    done
}

# ============================================
# 7. 安全配置深度分析
# ============================================

analyze_security_deep() {
    log "=== 安全配置深度分析 ==="
    
    > "$WORK_DIR/security_complete.txt"
    
    for url in "https://www.lightnode.com" "https://console.lightnode.com" "https://openapi.lightnode.com"; do
        log "分析: $url"
        
        echo "=== $url ===" >> "$WORK_DIR/security_complete.txt"
        
        # 完整响应头
        curl -sk -I "$url" 2>/dev/null >> "$WORK_DIR/security_complete.txt"
        echo "" >> "$WORK_DIR/security_complete.txt"
        
        # 测试安全头
        headers=$(curl -sk -I "$url" 2>/dev/null)
        for header in "X-Frame-Options" "X-Content-Type-Options" "X-XSS-Protection" \
                      "Strict-Transport-Security" "Content-Security-Policy" \
                      "Referrer-Policy" "Permissions-Policy" "X-Powered-By" \
                      "Server" "X-Backend" "X-Framework"; do
            value=$(echo "$headers" | grep -i "^$header" | cut -d: -f2- | sed 's/^ //')
            if [ -n "$value" ]; then
                echo "$header: $value" >> "$WORK_DIR/security_complete.txt"
            else
                echo "$header: 未设置" >> "$WORK_DIR/security_complete.txt"
            fi
        done
        
        echo "" >> "$WORK_DIR/security_complete.txt"
    done
}

# ============================================
# 8. 合并所有邮箱
# ============================================

merge_all_emails() {
    log "=== 合并所有邮箱 ==="
    
    > "$WORK_DIR/all_emails_final_deep.txt"
    
    # 合并所有来源
    cat "$WORK_DIR/../all_emails_final_complete.txt" 2>/dev/null >> "$WORK_DIR/all_emails_final_deep.txt"
    cat "$WORK_DIR/social_media_emails.txt" 2>/dev/null >> "$WORK_DIR/all_emails_final_deep.txt"
    cat "$WORK_DIR/cert_emails_deep.txt" 2>/dev/null >> "$WORK_DIR/all_emails_final_deep.txt"
    cat "$WORK_DIR/github_emails_deep.txt" 2>/dev/null | cut -d'|' -f1 >> "$WORK_DIR/all_emails_final_deep.txt"
    cat "$WORK_DIR/dns_emails.txt" 2>/dev/null >> "$WORK_DIR/all_emails_final_deep.txt"
    
    # 去重
    sort -u "$WORK_DIR/all_emails_final_deep.txt" > "$WORK_DIR/all_emails_final_deep_uniq.txt"
    
    log "总邮箱数: $(wc -l < "$WORK_DIR/all_emails_final_deep_uniq.txt" 2>/dev/null || echo 0) 个"
    
    echo ""
    echo "所有发现的邮箱:"
    cat "$WORK_DIR/all_emails_final_deep_uniq.txt" 2>/dev/null | head -30
}

# ============================================
# 主执行
# ============================================

main() {
    log "=== 开始深度收集 ==="
    
    collect_social_media
    collect_cert_transparency
    collect_github_deep
    collect_dns_deep
    collect_cloud_info
    identify_tech_deep
    analyze_security_deep
    merge_all_emails
    
    log "=== 深度收集完成 ==="
    log "结果保存在: $WORK_DIR/"
    
    # 生成汇总
    echo "=== 深度收集汇总 ===" > "$WORK_DIR/DEEP_COLLECTION_SUMMARY.txt"
    echo "邮箱: $(wc -l < "$WORK_DIR/all_emails_final_deep_uniq.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/DEEP_COLLECTION_SUMMARY.txt"
    echo "子域名: $(wc -l < "$WORK_DIR/subdomains_brute.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/DEEP_COLLECTION_SUMMARY.txt"
    echo "S3 Buckets: $(wc -l < "$WORK_DIR/s3_buckets.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/DEEP_COLLECTION_SUMMARY.txt"
    echo "证书域名: $(wc -l < "$WORK_DIR/cert_domains.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/DEEP_COLLECTION_SUMMARY.txt"
    
    cat "$WORK_DIR/DEEP_COLLECTION_SUMMARY.txt"
}

main "$@"
