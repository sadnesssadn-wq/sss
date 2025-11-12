#!/bin/bash
# LightNode 全面信息收集脚本
# 补全所有缺失的信息

set -e

TARGET="lightnode.com"
WORK_DIR="/workspace/lightnode_recon"
mkdir -p "$WORK_DIR/comprehensive"

log() {
    echo "[+] $1" | tee -a "$WORK_DIR/comprehensive/recon.log"
}

error() {
    echo "[-] $1" | tee -a "$WORK_DIR/comprehensive/recon.log"
}

# ============================================
# 1. 员工信息深度收集（LinkedIn、社交媒体）
# ============================================

collect_employees() {
    log "=== 1. 员工信息深度收集 ==="
    
    # 1.1 LinkedIn员工信息
    log "收集LinkedIn员工信息..."
    
    # LinkedIn公司页面
    linkedin_url="https://www.linkedin.com/company/lightnode"
    
    # 使用curl获取LinkedIn页面（可能需要认证）
    curl -sk "$linkedin_url" -H "User-Agent: Mozilla/5.0" > "$WORK_DIR/comprehensive/linkedin_company.html" 2>/dev/null || true
    
    # 提取员工姓名（从HTML中）
    grep -oE 'data-test-app-aware-link[^>]*>([^<]+)' "$WORK_DIR/comprehensive/linkedin_company.html" 2>/dev/null | \
        sed 's/.*>//' | sort -u > "$WORK_DIR/comprehensive/linkedin_employees.txt" || true
    
    # 1.2 从GitHub收集员工信息
    log "从GitHub收集员工信息..."
    
    # 查找所有与lightnode相关的GitHub用户
    curl -sk "https://api.github.com/search/users?q=lightnode" | \
        jq -r '.items[] | "\(.login)|\(.html_url)"' > "$WORK_DIR/comprehensive/github_users.txt" 2>/dev/null || true
    
    # 1.3 从证书透明度收集邮箱
    log "从证书透明度收集邮箱..."
    
    # crt.sh查询
    curl -sk "https://crt.sh/?q=%.${TARGET}&output=json" | \
        jq -r '.[].name_value' | grep -iE "@${TARGET}" | sort -u > "$WORK_DIR/comprehensive/cert_emails_full.txt" 2>/dev/null || true
    
    # 1.4 从WHOIS收集联系信息
    log "从WHOIS收集联系信息..."
    
    whois "$TARGET" > "$WORK_DIR/comprehensive/whois_full.txt" 2>/dev/null || true
    
    # 提取邮箱
    grep -iE "@${TARGET}" "$WORK_DIR/comprehensive/whois_full.txt" | sort -u > "$WORK_DIR/comprehensive/whois_emails_full.txt" 2>/dev/null || true
    
    # 1.5 从社交媒体收集
    log "从社交媒体收集信息..."
    
    # Facebook页面
    curl -sk "https://www.facebook.com/LightNodeVPS" -H "User-Agent: Mozilla/5.0" > "$WORK_DIR/comprehensive/facebook_page.html" 2>/dev/null || true
    
    # Twitter/X
    curl -sk "https://x.com/LightNodeVPS" -H "User-Agent: Mozilla/5.0" > "$WORK_DIR/comprehensive/twitter_page.html" 2>/dev/null || true
    
    # 提取邮箱和联系信息
    grep -oE '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}' "$WORK_DIR/comprehensive/facebook_page.html" "$WORK_DIR/comprehensive/twitter_page.html" 2>/dev/null | \
        grep -i "$TARGET" | sort -u > "$WORK_DIR/comprehensive/social_emails.txt" || true
    
    log "员工信息收集完成"
}

# ============================================
# 2. 子域名全面枚举（多源）
# ============================================

collect_subdomains() {
    log "=== 2. 子域名全面枚举 ==="
    
    # 2.1 证书透明度（多来源）
    log "证书透明度查询..."
    
    # crt.sh
    curl -sk "https://crt.sh/?q=%.${TARGET}&output=json" | \
        jq -r '.[].name_value' | sort -u > "$WORK_DIR/comprehensive/crt_subdomains.txt" 2>/dev/null || true
    
    # certspotter
    curl -sk "https://api.certspotter.com/v1/issuances?domain=${TARGET}&include_subdomains=true&expand=dns_names" | \
        jq -r '.[].dns_names[]' | sort -u >> "$WORK_DIR/comprehensive/crt_subdomains.txt" 2>/dev/null || true
    
    # 2.2 被动DNS（多引擎）
    log "被动DNS查询..."
    
    # SecurityTrails（如果有API）
    # curl -sk "https://api.securitytrails.com/v1/domain/${TARGET}/subdomains" \
    #     -H "APIKEY: $SECURITYTRAILS_API" | jq -r '.subdomains[]' | sort -u > "$WORK_DIR/comprehensive/securitytrails_subdomains.txt"
    
    # 2.3 DNS暴力破解
    log "DNS暴力破解..."
    
    # 使用常见子域名列表
    common_subs=("www" "mail" "ftp" "localhost" "webmail" "smtp" "pop" "ns1" "webdisk" "admin" "administrator" \
                 "api" "api1" "api2" "apis" "app" "apps" "autodiscover" "backup" "blog" "cdn" "chat" "cpanel" \
                 "dev" "dev1" "dev2" "development" "docs" "email" "files" "forum" "git" "gitlab" "github" \
                 "help" "host" "imap" "internal" "intranet" "jenkins" "jira" "ldap" "login" "m" "mail1" \
                 "mail2" "my" "mx" "new" "news" "ns" "ns1" "ns2" "old" "owa" "panel" "pop3" "portal" \
                 "remote" "server" "shop" "sip" "smtp" "smtp1" "smtp2" "sql" "ssh" "ssl" "staging" \
                 "staging1" "staging2" "stats" "support" "test" "test1" "test2" "testing" "vpn" "web" \
                 "webdisk" "webmail" "wiki" "www1" "www2" "www3" "www4" "www5" "www6" "www7" "www8" \
                 "www9" "www10" "www11" "www12" "www13" "www14" "www15" "www16" "www17" "www18" "www19" \
                 "www20" "www21" "www22" "www23" "www24" "www25" "www26" "www27" "www28" "www29" "www30" \
                 "www31" "www32" "www33" "www34" "www35" "www36" "www37" "www38" "www39" "www40" \
                 "m" "mobile" "wap" "vpn" "vpn1" "vpn2" "secure" "security" "sso" "auth" "oauth" \
                 "account" "accounts" "admin" "administrator" "adm" "ad" "ads" "adserver" "adserver1" \
                 "adserver2" "adserver3" "adserver4" "adserver5" "adserver6" "adserver7" "adserver8" \
                 "adserver9" "adserver10" "adserver11" "adserver12" "adserver13" "adserver14" "adserver15" \
                 "adserver16" "adserver17" "adserver18" "adserver19" "adserver20" "adserver21" \
                 "adserver22" "adserver23" "adserver24" "adserver25" "adserver26" "adserver27" \
                 "adserver28" "adserver29" "adserver30" "adserver31" "adserver32" "adserver33" \
                 "adserver34" "adserver35" "adserver36" "adserver37" "adserver38" "adserver39" \
                 "adserver40" "adserver41" "adserver42" "adserver43" "adserver44" "adserver45" \
                 "adserver46" "adserver47" "adserver48" "adserver49" "adserver50")
    
    for sub in "${common_subs[@]}"; do
        result=$(dig +short "${sub}.${TARGET}" @8.8.8.8 2>/dev/null | grep -E "^[0-9]" | head -1)
        if [ -n "$result" ]; then
            echo "${sub}.${TARGET}|$result" >> "$WORK_DIR/comprehensive/dns_brute.txt"
            log "发现子域名: ${sub}.${TARGET} -> $result"
        fi
        sleep 0.1  # 避免DNS查询过快
    done
    
    # 2.4 合并所有子域名
    cat "$WORK_DIR/comprehensive/crt_subdomains.txt" \
        "$WORK_DIR/comprehensive/dns_brute.txt" 2>/dev/null | \
        cut -d'|' -f1 | sort -u > "$WORK_DIR/comprehensive/all_subdomains.txt"
    
    log "子域名收集完成: $(wc -l < "$WORK_DIR/comprehensive/all_subdomains.txt") 个"
}

# ============================================
# 3. API端点深度枚举
# ============================================

collect_api_endpoints() {
    log "=== 3. API端点深度枚举 ==="
    
    # 3.1 从JS文件提取API端点
    log "从JS文件提取API端点..."
    
    # 下载主站JS文件
    curl -sk "https://www.lightnode.com" | grep -oE 'src=["\047]([^"\047]+\.js)' | \
        cut -d'"' -f2 | while read js_url; do
            if [[ $js_url == http* ]]; then
                full_url="$js_url"
            else
                full_url="https://www.lightnode.com$js_url"
            fi
            
            curl -sk "$full_url" 2>/dev/null | \
                grep -oE '(https?://[^"'\'' ]+)?/api/[a-zA-Z0-9/_-]+' | \
                sort -u >> "$WORK_DIR/comprehensive/js_api_endpoints.txt" || true
        done
    
    # 3.2 从Apifox文档提取
    log "从Apifox文档提取API端点..."
    
    curl -sk "https://apidoc.lightnode.com" | \
        grep -oE '/api/[a-zA-Z0-9/_-]+' | sort -u > "$WORK_DIR/comprehensive/apidoc_endpoints.txt" 2>/dev/null || true
    
    # 3.3 API路径Fuzz
    log "API路径Fuzz..."
    
    api_paths=("/api" "/api/v1" "/api/v2" "/api/v3" "/v1/api" "/v2/api" "/v3/api" \
               "/rest/api" "/rest/v1" "/rest/v2" "/graphql" "/graphql/v1" "/graphql/v2" \
               "/openapi" "/swagger" "/swagger.json" "/api-docs" "/docs/api" \
               "/user" "/users" "/auth" "/auth/login" "/auth/register" "/auth/logout" \
               "/admin" "/admin/api" "/admin/v1" "/admin/v2" "/internal" "/internal/api" \
               "/private" "/private/api" "/secure" "/secure/api")
    
    for path in "${api_paths[@]}"; do
        for base in "https://www.lightnode.com" "https://console.lightnode.com" \
                    "https://openapi.lightnode.com" "https://apidoc.lightnode.com"; do
            status=$(curl -sk -o /dev/null -w "%{http_code}" "$base$path" 2>/dev/null)
            if [ "$status" != "404" ] && [ "$status" != "000" ]; then
                echo "$base$path|$status" >> "$WORK_DIR/comprehensive/api_fuzz_results.txt"
                log "发现API端点: $base$path (HTTP $status)"
            fi
        done
    done
    
    # 3.4 合并所有API端点
    cat "$WORK_DIR/comprehensive/js_api_endpoints.txt" \
        "$WORK_DIR/comprehensive/apidoc_endpoints.txt" \
        "$WORK_DIR/comprehensive/api_fuzz_results.txt" 2>/dev/null | \
        cut -d'|' -f1 | sort -u > "$WORK_DIR/comprehensive/all_api_endpoints.txt"
    
    log "API端点收集完成: $(wc -l < "$WORK_DIR/comprehensive/all_api_endpoints.txt") 个"
}

# ============================================
# 4. 技术栈深度识别
# ============================================

collect_tech_stack() {
    log "=== 4. 技术栈深度识别 ==="
    
    # 4.1 HTTP响应头分析
    log "分析HTTP响应头..."
    
    for url in "https://www.lightnode.com" "https://console.lightnode.com" \
               "https://openapi.lightnode.com" "https://apidoc.lightnode.com"; do
        curl -sk -I "$url" > "$WORK_DIR/comprehensive/headers_$(echo $url | sed 's|https://||' | sed 's|/|_|g').txt" 2>/dev/null || true
        
        # 提取技术栈信息
        server=$(curl -sk -I "$url" 2>/dev/null | grep -i "server:" | head -1)
        powered=$(curl -sk -I "$url" 2>/dev/null | grep -i "x-powered-by:" | head -1)
        framework=$(curl -sk -I "$url" 2>/dev/null | grep -i "x-framework:" | head -1)
        
        echo "$url|$server|$powered|$framework" >> "$WORK_DIR/comprehensive/tech_stack.txt"
    done
    
    # 4.2 从HTML提取技术栈
    log "从HTML提取技术栈..."
    
    curl -sk "https://www.lightnode.com" | \
        grep -oE '(react|vue|angular|jquery|bootstrap|next\.js|nuxt\.js|gatsby)[^"'\'' ]*' | \
        sort -u > "$WORK_DIR/comprehensive/frontend_tech.txt" 2>/dev/null || true
    
    # 4.3 从package.json提取（如果可访问）
    log "检查package.json..."
    
    curl -sk "https://www.lightnode.com/package.json" > "$WORK_DIR/comprehensive/package.json" 2>/dev/null || true
    
    if [ -s "$WORK_DIR/comprehensive/package.json" ]; then
        jq -r '.dependencies, .devDependencies' "$WORK_DIR/comprehensive/package.json" 2>/dev/null | \
            grep -oE '"[^"]+":' | sed 's/"//g' | sed 's/://' | sort -u > "$WORK_DIR/comprehensive/npm_dependencies.txt" || true
    fi
    
    log "技术栈识别完成"
}

# ============================================
# 5. 云服务提供商信息
# ============================================

collect_cloud_info() {
    log "=== 5. 云服务提供商信息 ==="
    
    # 5.1 IP地址查询
    log "查询IP地址信息..."
    
    for subdomain in www.lightnode.com console.lightnode.com; do
        ip=$(dig +short "$subdomain" @8.8.8.8 | grep -E "^[0-9]" | head -1)
        if [ -n "$ip" ]; then
            echo "$subdomain|$ip" >> "$WORK_DIR/comprehensive/ip_mapping.txt"
            
            # 查询IP归属
            whois_result=$(whois "$ip" 2>/dev/null | grep -iE "org|netname|descr" | head -5)
            echo "$ip|$whois_result" >> "$WORK_DIR/comprehensive/ip_whois.txt"
            
            # 检查是否为云服务IP
            if echo "$whois_result" | grep -qiE "amazon|aws|microsoft|azure|google|gcp|cloudflare|digitalocean|linode|vultr"; then
                log "发现云服务IP: $ip -> $whois_result"
            fi
        fi
    done
    
    # 5.2 检查AWS S3桶
    log "检查AWS S3桶..."
    
    s3_buckets=("lightnode" "lightnode-backup" "lightnode-storage" "lightnode-files" \
                "lightnode-data" "lightnode-logs" "www.lightnode.com" "cdn.lightnode.com")
    
    for bucket in "${s3_buckets[@]}"; do
        # 检查桶是否存在
        result=$(curl -sk "https://${bucket}.s3.amazonaws.com" -o /dev/null -w "%{http_code}" 2>/dev/null)
        if [ "$result" = "200" ] || [ "$result" = "403" ]; then
            log "发现S3桶: $bucket (HTTP $result)"
            echo "$bucket|$result" >> "$WORK_DIR/comprehensive/s3_buckets.txt"
        fi
    done
    
    log "云服务信息收集完成"
}

# ============================================
# 6. GitHub深度挖掘
# ============================================

collect_github_info() {
    log "=== 6. GitHub深度挖掘 ==="
    
    # 6.1 搜索所有相关仓库
    log "搜索所有相关仓库..."
    
    curl -sk "https://api.github.com/search/repositories?q=lightnode&per_page=100" | \
        jq -r '.items[] | "\(.full_name)|\(.html_url)|\(.description)"' > "$WORK_DIR/comprehensive/github_repos_full.txt" 2>/dev/null || true
    
    # 6.2 检查每个仓库的敏感文件
    log "检查敏感文件..."
    
    cat "$WORK_DIR/comprehensive/github_repos_full.txt" | while IFS='|' read -r repo url desc; do
        owner=$(echo "$repo" | cut -d'/' -f1)
        repo_name=$(echo "$repo" | cut -d'/' -f2)
        
        # 检查.env文件
        env_content=$(curl -sk "https://api.github.com/repos/$repo/contents/.env" \
            -H "Accept: application/vnd.github.v3.raw" 2>/dev/null || echo "")
        
        if [ -n "$env_content" ]; then
            log "发现.env文件: $repo"
            echo "$repo|$env_content" >> "$WORK_DIR/comprehensive/github_env_files.txt"
        fi
        
        # 检查config文件
        for config_file in "config.json" "config.js" "settings.json" "secrets.json"; do
            config_content=$(curl -sk "https://api.github.com/repos/$repo/contents/$config_file" \
                -H "Accept: application/vnd.github.v3.raw" 2>/dev/null || echo "")
            
            if [ -n "$config_content" ]; then
                log "发现配置文件: $repo/$config_file"
                echo "$repo|$config_file|$config_content" >> "$WORK_DIR/comprehensive/github_config_files.txt"
            fi
        done
    done
    
    # 6.3 搜索代码中的敏感信息
    log "搜索代码中的敏感信息..."
    
    # API密钥
    curl -sk "https://api.github.com/search/code?q=lightnode+api_key+OR+apikey+OR+api-key&per_page=100" | \
        jq -r '.items[] | "\(.repository.full_name)|\(.html_url)"' > "$WORK_DIR/comprehensive/github_api_keys.txt" 2>/dev/null || true
    
    # 密码
    curl -sk "https://api.github.com/search/code?q=lightnode+password+OR+passwd+OR+secret&per_page=100" | \
        jq -r '.items[] | "\(.repository.full_name)|\(.html_url)"' > "$WORK_DIR/comprehensive/github_passwords.txt" 2>/dev/null || true
    
    log "GitHub挖掘完成"
}

# ============================================
# 7. 邮件服务器信息
# ============================================

collect_email_server() {
    log "=== 7. 邮件服务器信息 ==="
    
    # 7.1 MX记录查询
    log "查询MX记录..."
    
    dig +short MX "$TARGET" @8.8.8.8 | \
        awk '{print $2}' | sort -u > "$WORK_DIR/comprehensive/mx_records.txt" 2>/dev/null || true
    
    # 7.2 SPF记录
    log "查询SPF记录..."
    
    dig +short TXT "$TARGET" @8.8.8.8 | grep -i "spf" > "$WORK_DIR/comprehensive/spf_record.txt" 2>/dev/null || true
    
    # 7.3 DMARC记录
    log "查询DMARC记录..."
    
    dig +short TXT "_dmarc.$TARGET" @8.8.8.8 > "$WORK_DIR/comprehensive/dmarc_record.txt" 2>/dev/null || true
    
    # 7.4 邮件服务器IP
    log "查询邮件服务器IP..."
    
    cat "$WORK_DIR/comprehensive/mx_records.txt" | while read mx; do
        ip=$(dig +short "$mx" @8.8.8.8 | grep -E "^[0-9]" | head -1)
        if [ -n "$ip" ]; then
            echo "$mx|$ip" >> "$WORK_DIR/comprehensive/mx_ips.txt"
            log "邮件服务器: $mx -> $ip"
        fi
    done
    
    log "邮件服务器信息收集完成"
}

# ============================================
# 8. 合作伙伴和客户信息
# ============================================

collect_partners() {
    log "=== 8. 合作伙伴和客户信息 ==="
    
    # 8.1 从网站提取合作伙伴链接
    log "提取合作伙伴链接..."
    
    curl -sk "https://www.lightnode.com" | \
        grep -oE 'href=["\047](https?://[^"\047]+)' | \
        cut -d'"' -f2 | sort -u > "$WORK_DIR/comprehensive/external_links_full.txt" 2>/dev/null || true
    
    # 8.2 从社交媒体提取
    log "从社交媒体提取..."
    
    # Facebook合作伙伴
    curl -sk "https://www.facebook.com/LightNodeVPS" | \
        grep -oE 'href=["\047](https?://[^"\047]+)' | \
        cut -d'"' -f2 | grep -v "facebook.com" | sort -u >> "$WORK_DIR/comprehensive/external_links_full.txt" 2>/dev/null || true
    
    log "合作伙伴信息收集完成"
}

# ============================================
# 主执行
# ============================================

main() {
    log "=== LightNode 全面信息收集开始 ==="
    log "目标: $TARGET"
    log "时间: $(date)"
    
    collect_employees
    collect_subdomains
    collect_api_endpoints
    collect_tech_stack
    collect_cloud_info
    collect_github_info
    collect_email_server
    collect_partners
    
    log "=== 信息收集完成 ==="
    log "结果保存在: $WORK_DIR/comprehensive/"
    
    # 生成汇总报告
    echo "=== 信息收集汇总 ===" > "$WORK_DIR/comprehensive/summary.txt"
    echo "目标: $TARGET" >> "$WORK_DIR/comprehensive/summary.txt"
    echo "时间: $(date)" >> "$WORK_DIR/comprehensive/summary.txt"
    echo "" >> "$WORK_DIR/comprehensive/summary.txt"
    echo "子域名: $(wc -l < "$WORK_DIR/comprehensive/all_subdomains.txt" 2>/dev/null || echo 0)" >> "$WORK_DIR/comprehensive/summary.txt"
    echo "API端点: $(wc -l < "$WORK_DIR/comprehensive/all_api_endpoints.txt" 2>/dev/null || echo 0)" >> "$WORK_DIR/comprehensive/summary.txt"
    echo "邮箱: $(wc -l < "$WORK_DIR/comprehensive/cert_emails_full.txt" 2>/dev/null || echo 0)" >> "$WORK_DIR/comprehensive/summary.txt"
    echo "GitHub仓库: $(wc -l < "$WORK_DIR/comprehensive/github_repos_full.txt" 2>/dev/null || echo 0)" >> "$WORK_DIR/comprehensive/summary.txt"
    
    cat "$WORK_DIR/comprehensive/summary.txt"
}

main "$@"
