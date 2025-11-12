#!/bin/bash
# 深度信息收集脚本 - 继续收集缺失信息

TARGET="lightnode.com"
WORK_DIR="/workspace/lightnode_recon/comprehensive"
mkdir -p "$WORK_DIR"

log() {
    echo "[+] $1"
}

# ============================================
# 1. 从GitHub贡献者提取员工信息
# ============================================

extract_employee_info() {
    log "从GitHub贡献者提取员工信息..."
    
    > "$WORK_DIR/employee_candidates.txt"
    
    # 检查每个贡献者的GitHub信息
    cat "$WORK_DIR/github_all_contributors.txt" 2>/dev/null | head -50 | while read user; do
        if [ -z "$user" ] || [[ "$user" == *"bot"* ]] || [[ "$user" == *"Bot"* ]]; then
            continue
        fi
        
        log "检查用户: $user"
        
        # 获取用户信息
        user_info=$(curl -sk "https://api.github.com/users/$user" 2>/dev/null)
        
        name=$(echo "$user_info" | jq -r '.name' 2>/dev/null || echo "")
        email=$(echo "$user_info" | jq -r '.email' 2>/dev/null || echo "")
        company=$(echo "$user_info" | jq -r '.company' 2>/dev/null || echo "")
        bio=$(echo "$user_info" | jq -r '.bio' 2>/dev/null || echo "")
        
        # 检查是否与LightNode相关
        if echo "$company" | grep -qi "lightnode" || \
           echo "$bio" | grep -qi "lightnode" || \
           echo "$name" | grep -qi "lightnode"; then
            echo "$user|$name|$email|$company|$bio" >> "$WORK_DIR/employee_candidates.txt"
            log "可能的员工: $user ($name)"
        fi
        
        # 如果邮箱是lightnode.com域名
        if echo "$email" | grep -qi "@${TARGET}"; then
            echo "$email" >> "$WORK_DIR/github_emails.txt"
            log "发现邮箱: $email"
        fi
        
        sleep 0.5  # 避免API限制
    done
    
    log "员工候选: $(wc -l < "$WORK_DIR/employee_candidates.txt" 2>/dev/null || echo 0) 个"
}

# ============================================
# 2. 从GitHub提交历史提取邮箱
# ============================================

extract_commit_emails() {
    log "从GitHub提交历史提取邮箱..."
    
    > "$WORK_DIR/commit_emails_all.txt"
    
    # 检查已知仓库的提交
    repos=(
        "aurora423/next-lightnode-frontend"
        "LightNodeStaking/lightnodecontracts"
    )
    
    for repo in "${repos[@]}"; do
        log "检查仓库: $repo"
        
        # 获取最近100个提交
        curl -sk "https://api.github.com/repos/$repo/commits?per_page=100" | \
            jq -r '.[] | "\(.commit.author.name)|\(.commit.author.email)|\(.author.login)"' | \
            while IFS='|' read -r name email login; do
                if echo "$email" | grep -qi "@${TARGET}"; then
                    echo "$email|$name|$login" >> "$WORK_DIR/commit_emails_all.txt"
                    log "发现邮箱: $email ($name)"
                fi
            done
        
        sleep 1
    done
    
    log "从提交历史发现邮箱: $(wc -l < "$WORK_DIR/commit_emails_all.txt" 2>/dev/null || echo 0) 个"
}

# ============================================
# 3. API端点深度测试
# ============================================

test_api_endpoints() {
    log "API端点深度测试..."
    
    > "$WORK_DIR/api_test_results.txt"
    
    # 测试关键端点
    endpoints=(
        "https://console.lightnode.com/graphql"
        "https://console.lightnode.com/openapi.json"
        "https://console.lightnode.com/swagger"
        "https://openapi.lightnode.com"
    )
    
    for endpoint in "${endpoints[@]}"; do
        log "测试: $endpoint"
        
        # GET请求
        response=$(curl -sk "$endpoint" -w "\n%{http_code}")
        http_code=$(echo "$response" | tail -1)
        body=$(echo "$response" | head -n -1)
        
        echo "$endpoint|GET|$http_code" >> "$WORK_DIR/api_test_results.txt"
        
        # 如果是GraphQL，尝试内省查询
        if [[ $endpoint == *"graphql"* ]]; then
            introspection='{"query":"{ __schema { types { name } } }"}'
            graphql_response=$(curl -sk -X POST "$endpoint" \
                -H "Content-Type: application/json" \
                -d "$introspection" 2>/dev/null)
            
            if echo "$graphql_response" | grep -q "__schema"; then
                log "GraphQL内省成功: $endpoint"
                echo "$graphql_response" > "$WORK_DIR/graphql_schema_${endpoint//\//_}.json"
            fi
        fi
        
        # 如果是OpenAPI/Swagger，尝试下载
        if [[ $endpoint == *"openapi"* ]] || [[ $endpoint == *"swagger"* ]]; then
            if [ "$http_code" = "200" ]; then
                echo "$body" > "$WORK_DIR/openapi_${endpoint//\//_}.json" 2>/dev/null || echo "$body" > "$WORK_DIR/openapi_${endpoint//\//_}.yaml" 2>/dev/null || true
            fi
        fi
    done
}

# ============================================
# 4. 技术栈深度识别
# ============================================

identify_tech_stack() {
    log "技术栈深度识别..."
    
    > "$WORK_DIR/tech_stack_detailed.txt"
    
    # 分析主站
    for url in "https://www.lightnode.com" "https://console.lightnode.com"; do
        log "分析: $url"
        
        # HTTP响应头
        headers=$(curl -sk -I "$url" 2>/dev/null)
        echo "=== $url ===" >> "$WORK_DIR/tech_stack_detailed.txt"
        echo "$headers" >> "$WORK_DIR/tech_stack_detailed.txt"
        echo "" >> "$WORK_DIR/tech_stack_detailed.txt"
        
        # HTML分析
        html=$(curl -sk "$url" 2>/dev/null)
        
        # 提取技术栈标识
        echo "$html" | grep -oE '(react|vue|angular|next\.js|nuxt\.js|gatsby)[^"'\'' ]*' | sort -u >> "$WORK_DIR/tech_stack_detailed.txt"
        echo "$html" | grep -oE 'data-[a-z-]+="[^"]*"' | head -10 >> "$WORK_DIR/tech_stack_detailed.txt"
        
        # 查找JavaScript框架标识
        echo "$html" | grep -oE '__NEXT_DATA__|window\.__NEXT__|react|vue|angular' | sort -u >> "$WORK_DIR/tech_stack_detailed.txt"
    done
    
    # 检查package.json（如果可访问）
    curl -sk "https://www.lightnode.com/package.json" > "$WORK_DIR/package.json" 2>/dev/null || true
    curl -sk "https://console.lightnode.com/package.json" > "$WORK_DIR/console_package.json" 2>/dev/null || true
    
    if [ -s "$WORK_DIR/package.json" ]; then
        log "发现package.json"
        jq -r '.dependencies, .devDependencies' "$WORK_DIR/package.json" 2>/dev/null | \
            grep -oE '"[^"]+":' | sed 's/"//g' | sed 's/://' | sort -u > "$WORK_DIR/npm_dependencies.txt" || true
    fi
}

# ============================================
# 5. GitHub仓库深度挖掘
# ============================================

deep_github_mining() {
    log "GitHub仓库深度挖掘..."
    
    # 搜索所有lightnode相关仓库
    curl -sk "https://api.github.com/search/repositories?q=lightnode&per_page=100" | \
        jq -r '.items[] | "\(.full_name)|\(.html_url)|\(.description)"' > "$WORK_DIR/github_repos_all.txt" 2>/dev/null || true
    
    log "发现仓库: $(wc -l < "$WORK_DIR/github_repos_all.txt" 2>/dev/null || echo 0) 个"
    
    # 检查每个仓库的敏感文件
    cat "$WORK_DIR/github_repos_all.txt" 2>/dev/null | head -20 | while IFS='|' read -r repo url desc; do
        owner=$(echo "$repo" | cut -d'/' -f1)
        repo_name=$(echo "$repo" | cut -d'/' -f2)
        
        log "检查仓库: $repo"
        
        # 检查.env文件
        env_content=$(curl -sk "https://api.github.com/repos/$repo/contents/.env" \
            -H "Accept: application/vnd.github.v3.raw" 2>/dev/null || echo "")
        
        if [ -n "$env_content" ] && [ "$env_content" != "Not Found" ]; then
            log "发现.env文件: $repo"
            echo "$repo|.env|$env_content" >> "$WORK_DIR/github_sensitive_files.txt"
        fi
        
        # 检查config文件
        for config_file in "config.json" "config.js" "settings.json" "secrets.json" ".env.example"; do
            config_content=$(curl -sk "https://api.github.com/repos/$repo/contents/$config_file" \
                -H "Accept: application/vnd.github.v3.raw" 2>/dev/null || echo "")
            
            if [ -n "$config_content" ] && [ "$config_content" != "Not Found" ]; then
                log "发现配置文件: $repo/$config_file"
                echo "$repo|$config_file|$config_content" >> "$WORK_DIR/github_sensitive_files.txt"
            fi
        done
        
        sleep 1
    done
}

# ============================================
# 6. 安全配置完整分析
# ============================================

analyze_security() {
    log "安全配置完整分析..."
    
    > "$WORK_DIR/security_headers.txt"
    
    for url in "https://www.lightnode.com" "https://console.lightnode.com" "https://openapi.lightnode.com"; do
        log "分析安全配置: $url"
        
        headers=$(curl -sk -I "$url" 2>/dev/null)
        
        echo "=== $url ===" >> "$WORK_DIR/security_headers.txt"
        echo "$headers" | grep -iE "x-frame-options|x-content-type-options|x-xss-protection|strict-transport-security|content-security-policy|x-permitted-cross-domain-policies|referrer-policy|permissions-policy" >> "$WORK_DIR/security_headers.txt" || echo "未发现安全头" >> "$WORK_DIR/security_headers.txt"
        echo "" >> "$WORK_DIR/security_headers.txt"
        
        # WAF检测（简单方法）
        response=$(curl -sk "$url" -H "X-Forwarded-For: 1.1.1.1" 2>/dev/null)
        if echo "$response" | grep -qiE "cloudflare|waf|blocked|forbidden"; then
            echo "$url|WAF detected" >> "$WORK_DIR/waf_detection.txt"
        fi
    done
}

# ============================================
# 7. 合并所有邮箱
# ============================================

merge_all_emails_final() {
    log "合并所有邮箱..."
    
    > "$WORK_DIR/all_emails_complete.txt"
    
    # 已知邮箱
    echo "support@${TARGET}" >> "$WORK_DIR/all_emails_complete.txt"
    echo "business@${TARGET}" >> "$WORK_DIR/all_emails_complete.txt"
    
    # 从GitHub用户
    [ -f "$WORK_DIR/github_emails.txt" ] && cat "$WORK_DIR/github_emails.txt" >> "$WORK_DIR/all_emails_complete.txt"
    
    # 从提交历史
    [ -f "$WORK_DIR/commit_emails_all.txt" ] && cat "$WORK_DIR/commit_emails_all.txt" | cut -d'|' -f1 >> "$WORK_DIR/all_emails_complete.txt"
    
    # 去重
    sort -u "$WORK_DIR/all_emails_complete.txt" > "$WORK_DIR/all_emails_final_complete.txt"
    
    log "总邮箱数: $(wc -l < "$WORK_DIR/all_emails_final_complete.txt" 2>/dev/null || echo 0) 个"
    
    echo ""
    echo "所有发现的邮箱:"
    cat "$WORK_DIR/all_emails_final_complete.txt" 2>/dev/null || echo "无"
}

# ============================================
# 主执行
# ============================================

main() {
    log "=== 深度信息收集开始 ==="
    
    extract_employee_info
    extract_commit_emails
    test_api_endpoints
    identify_tech_stack
    deep_github_mining
    analyze_security
    merge_all_emails_final
    
    log "=== 深度信息收集完成 ==="
    log "结果保存在: $WORK_DIR/"
    
    # 生成汇总
    echo "=== 收集汇总 ===" > "$WORK_DIR/collection_summary.txt"
    echo "邮箱: $(wc -l < "$WORK_DIR/all_emails_final_complete.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/collection_summary.txt"
    echo "员工候选: $(wc -l < "$WORK_DIR/employee_candidates.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/collection_summary.txt"
    echo "API端点测试: $(wc -l < "$WORK_DIR/api_test_results.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/collection_summary.txt"
    echo "GitHub仓库: $(wc -l < "$WORK_DIR/github_repos_all.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/collection_summary.txt"
    
    cat "$WORK_DIR/collection_summary.txt"
}

main "$@"
