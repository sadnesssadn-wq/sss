#!/bin/bash
# API端点完整枚举脚本

TARGET="lightnode.com"
WORK_DIR="/workspace/lightnode_recon/comprehensive"
mkdir -p "$WORK_DIR"

log() {
    echo "[+] $1"
}

# ============================================
# 1. 从JS文件提取API端点
# ============================================

extract_from_js() {
    log "从JS文件提取API端点..."
    
    > "$WORK_DIR/js_api_endpoints.txt"
    
    # 主站JS文件
    curl -sk "https://www.lightnode.com" | \
        grep -oE 'src=["\047]([^"\047]+\.js)' | \
        cut -d'"' -f2 | while read js_path; do
            if [[ $js_path == http* ]]; then
                js_url="$js_path"
            else
                js_url="https://www.lightnode.com$js_path"
            fi
            
            log "分析JS文件: $js_url"
            
            curl -sk "$js_url" 2>/dev/null | \
                grep -oE '(https?://[^"'\'' ]+)?/api/[a-zA-Z0-9/_-]+' | \
                sort -u >> "$WORK_DIR/js_api_endpoints.txt" 2>/dev/null || true
            
            curl -sk "$js_url" 2>/dev/null | \
                grep -oE '(https?://[^"'\'' ]+)?/v[0-9]+/[a-zA-Z0-9/_-]+' | \
                sort -u >> "$WORK_DIR/js_api_endpoints.txt" 2>/dev/null || true
        done
    
    # 控制台JS文件
    curl -sk "https://console.lightnode.com" | \
        grep -oE 'src=["\047]([^"\047]+\.js)' | \
        cut -d'"' -f2 | while read js_path; do
            if [[ $js_path == http* ]]; then
                js_url="$js_path"
            else
                js_url="https://console.lightnode.com$js_path"
            fi
            
            curl -sk "$js_url" 2>/dev/null | \
                grep -oE '(https?://[^"'\'' ]+)?/api/[a-zA-Z0-9/_-]+' | \
                sort -u >> "$WORK_DIR/js_api_endpoints.txt" 2>/dev/null || true
        done
    
    # 去重
    sort -u "$WORK_DIR/js_api_endpoints.txt" > "$WORK_DIR/js_api_endpoints_uniq.txt"
    
    log "从JS文件发现API端点: $(wc -l < "$WORK_DIR/js_api_endpoints_uniq.txt" 2>/dev/null || echo 0) 个"
}

# ============================================
# 2. 从Apifox文档提取
# ============================================

extract_from_apidoc() {
    log "从Apifox文档提取API端点..."
    
    # 下载Apifox页面
    curl -sk "https://apidoc.lightnode.com" > "$WORK_DIR/apidoc_page.html" 2>/dev/null
    
    # 提取API路径
    grep -oE '/api/[a-zA-Z0-9/_-]+' "$WORK_DIR/apidoc_page.html" | \
        sort -u > "$WORK_DIR/apidoc_endpoints.txt" 2>/dev/null || true
    
    # 尝试访问Apifox API（如果有）
    curl -sk "https://apidoc.lightnode.com/api/list" 2>/dev/null | \
        jq -r '.[].path' >> "$WORK_DIR/apidoc_endpoints.txt" 2>/dev/null || true
    
    log "从Apifox发现API端点: $(wc -l < "$WORK_DIR/apidoc_endpoints.txt" 2>/dev/null || echo 0) 个"
}

# ============================================
# 3. API路径Fuzz
# ============================================

fuzz_api_paths() {
    log "API路径Fuzz..."
    
    > "$WORK_DIR/api_fuzz_results.txt"
    
    # 常见API路径
    api_paths=(
        "/api" "/api/v1" "/api/v2" "/api/v3" "/api/v4"
        "/v1/api" "/v2/api" "/v3/api"
        "/rest/api" "/rest/v1" "/rest/v2"
        "/graphql" "/graphql/v1" "/graphql/v2"
        "/openapi" "/openapi.json" "/openapi.yaml"
        "/swagger" "/swagger.json" "/swagger.yaml"
        "/api-docs" "/docs/api" "/api/docs"
        "/user" "/users" "/auth" "/auth/login" "/auth/register" "/auth/logout"
        "/admin" "/admin/api" "/admin/v1" "/admin/v2"
        "/internal" "/internal/api"
        "/private" "/private/api"
        "/secure" "/secure/api"
        "/public" "/public/api"
        "/api/user" "/api/users" "/api/auth" "/api/admin"
        "/api/v1/user" "/api/v1/users" "/api/v1/auth"
        "/api/v2/user" "/api/v2/users" "/api/v2/auth"
        "/api/account" "/api/accounts" "/api/profile"
        "/api/login" "/api/register" "/api/logout"
        "/api/token" "/api/tokens" "/api/refresh"
    )
    
    # 测试的域名
    domains=(
        "https://www.lightnode.com"
        "https://console.lightnode.com"
        "https://openapi.lightnode.com"
        "https://apidoc.lightnode.com"
        "https://api.lightnode.com"
    )
    
    for domain in "${domains[@]}"; do
        for path in "${api_paths[@]}"; do
            status=$(curl -sk -o /dev/null -w "%{http_code}" "${domain}${path}" 2>/dev/null)
            
            if [ "$status" != "404" ] && [ "$status" != "000" ]; then
                echo "${domain}${path}|${status}" >> "$WORK_DIR/api_fuzz_results.txt"
                log "发现: ${domain}${path} (HTTP $status)"
            fi
            
            sleep 0.1  # 避免请求过快
        done
    done
    
    log "Fuzz完成，发现端点: $(wc -l < "$WORK_DIR/api_fuzz_results.txt" 2>/dev/null || echo 0) 个"
}

# ============================================
# 4. GraphQL内省查询
# ============================================

graphql_introspection() {
    log "GraphQL内省查询..."
    
    graphql_endpoints=(
        "https://www.lightnode.com/graphql"
        "https://console.lightnode.com/graphql"
        "https://api.lightnode.com/graphql"
        "https://openapi.lightnode.com/graphql"
    )
    
    > "$WORK_DIR/graphql_schema.txt"
    
    for endpoint in "${graphql_endpoints[@]}"; do
        log "测试GraphQL: $endpoint"
        
        # 内省查询
        query='{"query":"{ __schema { types { name } } }"}'
        
        response=$(curl -sk -X POST "$endpoint" \
            -H "Content-Type: application/json" \
            -d "$query" 2>/dev/null)
        
        if echo "$response" | grep -q "__schema"; then
            log "GraphQL内省成功: $endpoint"
            echo "$endpoint" >> "$WORK_DIR/graphql_endpoints.txt"
            echo "$response" | jq . >> "$WORK_DIR/graphql_schema.txt" 2>/dev/null || echo "$response" >> "$WORK_DIR/graphql_schema.txt"
        fi
    done
}

# ============================================
# 5. 合并所有API端点
# ============================================

merge_api_endpoints() {
    log "合并所有API端点..."
    
    > "$WORK_DIR/all_api_endpoints_merged.txt"
    
    # 已知端点
    echo "https://openapi.lightnode.com/api/auth/login" >> "$WORK_DIR/all_api_endpoints_merged.txt"
    echo "https://openapi.lightnode.com/api/user/register" >> "$WORK_DIR/all_api_endpoints_merged.txt"
    echo "https://console.lightnode.com/user/register" >> "$WORK_DIR/all_api_endpoints_merged.txt"
    
    # 从JS文件
    [ -f "$WORK_DIR/js_api_endpoints_uniq.txt" ] && cat "$WORK_DIR/js_api_endpoints_uniq.txt" >> "$WORK_DIR/all_api_endpoints_merged.txt"
    
    # 从Apifox
    [ -f "$WORK_DIR/apidoc_endpoints.txt" ] && cat "$WORK_DIR/apidoc_endpoints.txt" >> "$WORK_DIR/all_api_endpoints_merged.txt"
    
    # 从Fuzz结果
    [ -f "$WORK_DIR/api_fuzz_results.txt" ] && cat "$WORK_DIR/api_fuzz_results.txt" | cut -d'|' -f1 >> "$WORK_DIR/all_api_endpoints_merged.txt"
    
    # 去重并排序
    sort -u "$WORK_DIR/all_api_endpoints_merged.txt" > "$WORK_DIR/all_api_endpoints_final.txt"
    
    log "总API端点数: $(wc -l < "$WORK_DIR/all_api_endpoints_final.txt" 2>/dev/null || echo 0) 个"
    
    # 显示前30个
    echo ""
    echo "发现的API端点（前30个）:"
    head -30 "$WORK_DIR/all_api_endpoints_final.txt" 2>/dev/null || echo "无"
}

# ============================================
# 主执行
# ============================================

main() {
    log "=== API端点完整枚举开始 ==="
    
    extract_from_js
    extract_from_apidoc
    fuzz_api_paths
    graphql_introspection
    merge_api_endpoints
    
    log "=== API端点枚举完成 ==="
    log "结果保存在: $WORK_DIR/"
}

main "$@"
