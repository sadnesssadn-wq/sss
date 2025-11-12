#!/bin/bash
# Hosteons.com 超极端深度邮箱收集脚本

TARGET="hosteons.com"
WORK_DIR="/workspace/lightnode_recon/hosteons_recon/email_collection/ultra_extreme"
mkdir -p "$WORK_DIR"

log() {
    echo "[+] $1"
}

# ============================================
# 1. GitHub超极端深度挖掘
# ============================================

collect_github_ultra_extreme() {
    log "=== GitHub超极端深度挖掘 ==="
    
    > "$WORK_DIR/github_ultra.txt"
    
    # 1.1 搜索所有代码中的邮箱（不限仓库）
    log "搜索所有代码中的邮箱..."
    code_searches=(
        "hosteons.com+email"
        "hosteons.com+contact"
        "@hosteons.com"
        "hosteons.com+mailto"
        "hosteons.com+mail"
        "hosteons.com+support"
        "hosteons.com+admin"
        "hosteons.com+info"
    )
    
    for query in "${code_searches[@]}"; do
        log "搜索代码: $query"
        for page in {1..20}; do
            curl -sk "https://api.github.com/search/code?q=${query}&per_page=100&page=$page" 2>/dev/null | \
                jq -r '.items[] | "\(.repository.full_name)|\(.path)|\(.html_url)"' 2>/dev/null | \
                while IFS='|' read -r repo path url; do
                    if [ -z "$repo" ] || [ "$repo" == "null" ]; then
                        continue
                    fi
                    
                    log "检查: $repo/$path"
                    
                    # 获取文件内容
                    content=$(curl -sk "https://api.github.com/repos/$repo/contents/$path" \
                        -H "Accept: application/vnd.github.v3.raw" 2>/dev/null)
                    
                    # 提取邮箱
                    echo "$content" | grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" | \
                        grep -iE "hosteons|gmail|outlook|yahoo|qq|163|sina|hotmail|protonmail|icloud" | \
                        grep -vE "^(admin|info|contact|support|help|sales|marketing|business|tech|dev|hr|jobs|finance|billing|ceo|cto|cfo|webmaster|postmaster|hostmaster|root|service|customer|client|user|account|member|newsletter|system|server|host|domain|dns|network|backup|database|api|webhook|integration|partner|vendor|supplier|provider|reseller|noreply|no-reply)" | \
                        sort -u | while read email; do
                            echo "$email|$repo|$path" >> "$WORK_DIR/github_ultra.txt"
                            log "发现: $email (from $repo/$path)"
                        done
                    
                    sleep 0.3
                done
            sleep 1
        done
    done
    
    # 1.2 获取所有相关用户的所有公开邮箱
    log "获取所有相关用户的所有公开邮箱..."
    users=("hosteons" "kapil")
    
    for user in "${users[@]}"; do
        log "检查用户: $user"
        
        # 用户信息
        user_info=$(curl -sk "https://api.github.com/users/$user" 2>/dev/null)
        email=$(echo "$user_info" | jq -r '.email' 2>/dev/null)
        if [ "$email" != "null" ] && [ -n "$email" ] && [[ ! "$email" == *"noreply"* ]]; then
            echo "$email|$user|profile" >> "$WORK_DIR/github_ultra.txt"
            log "发现: $email (user profile)"
        fi
        
        # 用户的所有事件（获取邮箱）
        for page in {1..10}; do
            curl -sk "https://api.github.com/users/$user/events/public?per_page=100&page=$page" 2>/dev/null | \
                jq -r '.[] | .actor.login, .payload.commits[].author.email, .payload.commits[].committer.email' 2>/dev/null | \
                grep -vE "^(null|noreply)" | grep -E "@" | sort -u | while read email; do
                    if [[ ! "$email" == *"noreply"* ]]; then
                        echo "$email|$user|events" >> "$WORK_DIR/github_ultra.txt"
                        log "发现: $email (user events)"
                    fi
                done
            sleep 0.5
        done
        
        # 用户的所有Gists
        for page in {1..10}; do
            curl -sk "https://api.github.com/users/$user/gists?per_page=100&page=$page" 2>/dev/null | \
                jq -r '.[] | .id' 2>/dev/null | while read gist_id; do
                    if [ -z "$gist_id" ] || [ "$gist_id" == "null" ]; then
                        continue
                    fi
                    
                    gist_content=$(curl -sk "https://api.github.com/gists/$gist_id" 2>/dev/null)
                    echo "$gist_content" | grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" | \
                        grep -iE "hosteons|gmail|outlook|yahoo|qq|163|sina|hotmail|protonmail|icloud" | \
                        grep -vE "^(admin|info|contact|support|help|sales|marketing|business|tech|dev|hr|jobs|finance|billing|ceo|cto|cfo|webmaster|postmaster|hostmaster|root|service|customer|client|user|account|member|newsletter|system|server|host|domain|dns|network|backup|database|api|webhook|integration|partner|vendor|supplier|provider|reseller|noreply|no-reply)" | \
                        sort -u | while read email; do
                            echo "$email|$user|gist" >> "$WORK_DIR/github_ultra.txt"
                            log "发现: $email (gist)"
                        done
                    sleep 0.2
                done
            sleep 0.5
        done
        
        sleep 1
    done
    
    # 1.3 检查所有相关仓库的所有评论者
    log "检查所有相关仓库的所有评论者..."
    repos=(
        "hosteons/Fail2Ban-Auto-Installer-With-Jail"
        "hosteons/linux-malware-scanner"
        "hosteons/hosteons"
        "hosteons/Initial-VPS-Setup-Script-for-Linux"
        "hosteons/Linux-Hardening-Script"
        "hosteons/lamp-lemp-oneclick-installer"
    )
    
    for repo in "${repos[@]}"; do
        log "检查仓库评论: $repo"
        
        # Issues评论
        for page in {1..10}; do
            curl -sk "https://api.github.com/repos/$repo/issues/comments?per_page=100&page=$page" 2>/dev/null | \
                jq -r '.[] | .user.login' 2>/dev/null | sort -u | while read commenter; do
                    if [ -z "$commenter" ] || [ "$commenter" == "null" ]; then
                        continue
                    fi
                    
                    commenter_info=$(curl -sk "https://api.github.com/users/$commenter" 2>/dev/null)
                    email=$(echo "$commenter_info" | jq -r '.email' 2>/dev/null)
                    company=$(echo "$commenter_info" | jq -r '.company' 2>/dev/null)
                    
                    if [ "$email" != "null" ] && [ -n "$email" ] && [[ ! "$email" == *"noreply"* ]]; then
                        if [[ "$email" == *"hosteons"* ]] || ([[ -n "$company" ]] && [[ "$company" == *"hosteons"* ]]); then
                            echo "$email|$commenter|issue_comment" >> "$WORK_DIR/github_ultra.txt"
                            log "发现: $email (issue commenter)"
                        fi
                    fi
                    sleep 0.1
                done
            sleep 0.5
        done
        
        # PR评论
        for page in {1..10}; do
            curl -sk "https://api.github.com/repos/$repo/pulls/comments?per_page=100&page=$page" 2>/dev/null | \
                jq -r '.[] | .user.login' 2>/dev/null | sort -u | while read commenter; do
                    if [ -z "$commenter" ] || [ "$commenter" == "null" ]; then
                        continue
                    fi
                    
                    commenter_info=$(curl -sk "https://api.github.com/users/$commenter" 2>/dev/null)
                    email=$(echo "$commenter_info" | jq -r '.email' 2>/dev/null)
                    company=$(echo "$commenter_info" | jq -r '.company' 2>/dev/null)
                    
                    if [ "$email" != "null" ] && [ -n "$email" ] && [[ ! "$email" == *"noreply"* ]]; then
                        if [[ "$email" == *"hosteons"* ]] || ([[ -n "$company" ]] && [[ "$company" == *"hosteons"* ]]); then
                            echo "$email|$commenter|pr_comment" >> "$WORK_DIR/github_ultra.txt"
                            log "发现: $email (PR commenter)"
                        fi
                    fi
                    sleep 0.1
                done
            sleep 0.5
        done
        
        sleep 1
    done
}

# ============================================
# 2. 网站超极端深度爬取
# ============================================

collect_website_ultra_extreme() {
    log "=== 网站超极端深度爬取 ==="
    
    > "$WORK_DIR/website_ultra.txt"
    
    # 2.1 获取所有子域名并爬取
    log "获取所有子域名..."
    subdomains=(
        "www" "mail" "support" "help" "admin" "api" "test" "dev" "staging" "prod"
        "blog" "forum" "shop" "store" "portal" "dashboard" "console" "panel"
        "cpanel" "whm" "webmail" "ftp" "sftp" "ssh" "vpn" "remote"
        "db" "mysql" "postgres" "redis" "mongodb" "elasticsearch"
        "jenkins" "gitlab" "jira" "confluence" "grafana" "kibana"
        "monitoring" "logs" "backup" "backups" "archive" "old"
        "new" "v2" "v3" "beta" "alpha" "demo" "sandbox" "playground"
    )
    
    for subdomain in "${subdomains[@]}"; do
        for protocol in "https" "http"; do
            url="${protocol}://${subdomain}.${TARGET}"
            log "爬取: $url"
            
            curl -skL "$url" 2>/dev/null | \
                grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" | \
                grep -vE "^(admin|info|contact|support|help|sales|marketing|business|tech|dev|hr|jobs|finance|billing|ceo|cto|cfo|webmaster|postmaster|hostmaster|root|service|customer|client|user|account|member|newsletter|system|server|host|domain|dns|network|backup|database|api|webhook|integration|partner|vendor|supplier|provider|reseller|noreply|no-reply)" | \
                sort -u >> "$WORK_DIR/website_ultra.txt" || true
            
            # 解码Cloudflare邮箱
            curl -skL "$url" 2>/dev/null | \
                grep -oE 'data-cfemail="([^"]+)"' | \
                sed 's/.*data-cfemail="\([^"]*\)".*/\1/' | \
                while read enc; do
                    if [ -n "$enc" ]; then
                        decoded=$(python3 -c "enc='$enc'; key=int(enc[:2], 16); print(''.join([chr(int(enc[i:i+2], 16) ^ key) for i in range(2, len(enc), 2)]))" 2>/dev/null)
                        if [ -n "$decoded" ] && [[ ! "$decoded" =~ ^(admin|info|contact|support|help|sales|marketing|business|tech|dev|hr|jobs|finance|billing|ceo|cto|cfo|webmaster|postmaster|hostmaster|root|service|customer|client|user|account|member|newsletter|system|server|host|domain|dns|network|backup|database|api|webhook|integration|partner|vendor|supplier|provider|reseller|noreply|no-reply) ]]; then
                            echo "$decoded" >> "$WORK_DIR/website_ultra.txt"
                            log "解码: $decoded (from $url)"
                        fi
                    fi
                done
            
            sleep 0.2
        done
    done
    
    # 2.2 从所有JavaScript文件提取（递归）
    log "从所有JavaScript文件提取..."
    base_urls=("https://www.${TARGET}" "https://${TARGET}")
    
    for base_url in "${base_urls[@]}"; do
        # 获取主页
        main_page=$(curl -skL "$base_url" 2>/dev/null)
        
        # 提取所有JS文件
        echo "$main_page" | grep -oE 'src=["\047]([^"\047]+\.js[^"\047]*)' | \
            cut -d'"' -f2 | cut -d"'" -f2 | while read js; do
                if [[ "$js" == http* ]]; then
                    js_url="$js"
                else
                    js_url="${base_url%/*}/$js"
                fi
                
                log "提取JS: $js_url"
                curl -skL "$js_url" 2>/dev/null | \
                    grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" | \
                    grep -vE "^(admin|info|contact|support|help|sales|marketing|business|tech|dev|hr|jobs|finance|billing|ceo|cto|cfo|webmaster|postmaster|hostmaster|root|service|customer|client|user|account|member|newsletter|system|server|host|domain|dns|network|backup|database|api|webhook|integration|partner|vendor|supplier|provider|reseller|noreply|no-reply)" | \
                    sort -u >> "$WORK_DIR/website_ultra.txt" || true
                
                sleep 0.2
            done
        sleep 1
    done
    
    # 2.3 从robots.txt和sitemap提取
    log "从robots.txt和sitemap提取..."
    for base_url in "${base_urls[@]}"; do
        # robots.txt
        curl -skL "${base_url}/robots.txt" 2>/dev/null | \
            grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" | \
            sort -u >> "$WORK_DIR/website_ultra.txt" || true
        
        # sitemap
        for sitemap in "sitemap.xml" "sitemap_index.xml" "sitemap1.xml" "sitemap2.xml"; do
            curl -skL "${base_url}/$sitemap" 2>/dev/null | \
                grep -oE '<loc>([^<]+)</loc>' | sed 's/<loc>\(.*\)<\/loc>/\1/' | \
                head -200 | while read url; do
                    curl -skL "$url" 2>/dev/null | \
                        grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" | \
                        grep -vE "^(admin|info|contact|support|help|sales|marketing|business|tech|dev|hr|jobs|finance|billing|ceo|cto|cfo|webmaster|postmaster|hostmaster|root|service|customer|client|user|account|member|newsletter|system|server|host|domain|dns|network|backup|database|api|webhook|integration|partner|vendor|supplier|provider|reseller|noreply|no-reply)" | \
                        sort -u >> "$WORK_DIR/website_ultra.txt" || true
                    sleep 0.1
                done
            sleep 0.5
        done
    done
}

# ============================================
# 3. 社交媒体和公开来源
# ============================================

collect_social_and_public() {
    log "=== 社交媒体和公开来源 ==="
    
    > "$WORK_DIR/social_public.txt"
    
    # 3.1 搜索Pastebin等类似网站
    log "搜索Pastebin等类似网站..."
    paste_sites=(
        "https://pastebin.com/search?q=hosteons.com"
        "https://pastebin.com/search?q=hosteons"
        "https://justpaste.it/search?q=hosteons.com"
    )
    
    for url in "${paste_sites[@]}"; do
        log "搜索: $url"
        curl -skL "$url" 2>/dev/null | \
            grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" | \
            grep -iE "hosteons|gmail|outlook|yahoo|qq|163|sina|hotmail|protonmail|icloud" | \
            sort -u >> "$WORK_DIR/social_public.txt" || true
        sleep 1
    done
    
    # 3.2 搜索Reddit
    log "搜索Reddit..."
    reddit_searches=(
        "hosteons.com"
        "hosteons"
        "hostEONS"
    )
    
    for query in "${reddit_searches[@]}"; do
        curl -skL "https://www.reddit.com/search.json?q=${query}&limit=100" \
            -H "User-Agent: Mozilla/5.0" 2>/dev/null | \
            jq -r '.data.children[].data.selftext, .data.children[].data.title' 2>/dev/null | \
            grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" | \
            grep -iE "hosteons|gmail|outlook|yahoo|qq|163|sina|hotmail|protonmail|icloud" | \
            sort -u >> "$WORK_DIR/social_public.txt" || true
        sleep 1
    done
}

# ============================================
# 4. DNS历史记录
# ============================================

collect_dns_history() {
    log "=== DNS历史记录 ==="
    
    > "$WORK_DIR/dns_history.txt"
    
    # 4.1 使用SecurityTrails API（如果有）
    log "查询DNS历史记录..."
    
    # 4.2 查询所有子域名的DNS记录
    subdomains=(
        "www" "mail" "support" "help" "admin" "api" "test" "dev" "staging" "prod"
        "blog" "forum" "shop" "store" "portal" "dashboard" "console" "panel"
    )
    
    for subdomain in "${subdomains[@]}"; do
        full_domain="${subdomain}.${TARGET}"
        
        # TXT记录
        dig +short TXT "$full_domain" 2>/dev/null | \
            grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" | \
            sort -u >> "$WORK_DIR/dns_history.txt" || true
        
        # MX记录（可能包含邮箱）
        dig +short MX "$full_domain" 2>/dev/null | \
            awk '{print $2}' | while read mx; do
                dig +short TXT "$mx" 2>/dev/null | \
                    grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" | \
                    sort -u >> "$WORK_DIR/dns_history.txt" || true
            done
        
        sleep 0.1
    done
}

# ============================================
# 5. 合并所有邮箱
# ============================================

merge_all_emails() {
    log "=== 合并所有邮箱 ==="
    
    > "$WORK_DIR/all_emails_ultra_merged.txt"
    
    # 合并所有来源
    cat "$WORK_DIR/github_ultra.txt" 2>/dev/null | cut -d'|' -f1 >> "$WORK_DIR/all_emails_ultra_merged.txt"
    cat "$WORK_DIR/website_ultra.txt" 2>/dev/null >> "$WORK_DIR/all_emails_ultra_merged.txt"
    cat "$WORK_DIR/social_public.txt" 2>/dev/null >> "$WORK_DIR/all_emails_ultra_merged.txt"
    cat "$WORK_DIR/dns_history.txt" 2>/dev/null >> "$WORK_DIR/all_emails_ultra_merged.txt"
    
    # 去重并排序
    sort -u "$WORK_DIR/all_emails_ultra_merged.txt" > "$WORK_DIR/all_emails_ultra_final.txt"
    
    # 过滤无效邮箱和变体
    grep -E "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" "$WORK_DIR/all_emails_ultra_final.txt" | \
        grep -vE "^(admin|info|contact|support|help|sales|marketing|business|tech|dev|hr|jobs|finance|billing|ceo|cto|cfo|webmaster|postmaster|hostmaster|root|service|customer|client|user|account|member|newsletter|system|server|host|domain|dns|network|backup|database|api|webhook|integration|partner|vendor|supplier|provider|reseller|noreply|no-reply)" | \
        grep -vE "@(example|test|localhost|invalid|domain|site|website|company|business|corp|inc|llc|com|net|org|us|io)\.(com|net|org|us|io)$" > "$WORK_DIR/all_emails_ultra_valid.txt"
    
    log "总邮箱数: $(wc -l < "$WORK_DIR/all_emails_ultra_valid.txt" 2>/dev/null || echo 0) 个"
    
    echo ""
    echo "所有发现的真实邮箱:"
    cat "$WORK_DIR/all_emails_ultra_valid.txt" 2>/dev/null
}

# ============================================
# 主执行
# ============================================

main() {
    log "=== 开始 hosteons.com 超极端深度邮箱收集 ==="
    
    collect_github_ultra_extreme
    collect_website_ultra_extreme
    collect_social_and_public
    collect_dns_history
    merge_all_emails
    
    log "=== 超极端深度邮箱收集完成 ==="
    log "结果保存在: $WORK_DIR/"
    
    # 生成汇总
    echo "=== 超极端深度邮箱收集汇总 ===" > "$WORK_DIR/EMAIL_ULTRA_SUMMARY.txt"
    echo "GitHub: $(wc -l < "$WORK_DIR/github_ultra.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_ULTRA_SUMMARY.txt"
    echo "网站: $(wc -l < "$WORK_DIR/website_ultra.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_ULTRA_SUMMARY.txt"
    echo "社交媒体: $(wc -l < "$WORK_DIR/social_public.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_ULTRA_SUMMARY.txt"
    echo "DNS历史: $(wc -l < "$WORK_DIR/dns_history.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_ULTRA_SUMMARY.txt"
    echo "总计: $(wc -l < "$WORK_DIR/all_emails_ultra_valid.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/EMAIL_ULTRA_SUMMARY.txt"
    
    cat "$WORK_DIR/EMAIL_ULTRA_SUMMARY.txt"
}

main "$@"
