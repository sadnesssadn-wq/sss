#!/bin/bash
# 手动API端点测试脚本

API_BASE="https://console.lightnode.com"
OPENAPI_BASE="https://openapi.lightnode.com"
WORK_DIR="/workspace/lightnode_recon/comprehensive/test_results"
mkdir -p "$WORK_DIR"

log() {
    echo "[+] $1"
}

test_endpoint() {
    local url=$1
    local method=${2:-GET}
    local data=${3:-""}
    local headers=${4:-""}
    
    if [ "$method" = "POST" ]; then
        if [ -n "$data" ]; then
            response=$(curl -sk -X POST "$url" \
                -H "Content-Type: application/json" \
                $headers \
                -d "$data" \
                -w "\n%{http_code}" 2>/dev/null)
        else
            response=$(curl -sk -X POST "$url" \
                $headers \
                -w "\n%{http_code}" 2>/dev/null)
        fi
    else
        response=$(curl -sk "$url" \
            $headers \
            -w "\n%{http_code}" 2>/dev/null)
    fi
    
    http_code=$(echo "$response" | tail -1)
    body=$(echo "$response" | head -n -1)
    
    echo "$http_code|$body"
}

# 测试关键端点
log "=== 测试关键API端点 ==="

> "$WORK_DIR/manual_test_results.txt"

# 1. GraphQL测试
log "测试GraphQL..."
result=$(test_endpoint "$API_BASE/graphql?query=%7B__schema%7BqueryType%7Bname%7D%7D%7D" "GET")
http_code=$(echo "$result" | cut -d'|' -f1)
body=$(echo "$result" | cut -d'|' -f2-)
echo "GraphQL GET: HTTP $http_code" >> "$WORK_DIR/manual_test_results.txt"
if [ "$http_code" = "200" ]; then
    echo "$body" | head -20 >> "$WORK_DIR/manual_test_results.txt"
fi

# 2. API认证端点测试
log "测试认证端点..."
endpoints=(
    "/api/v1/auth/login"
    "/api/auth/login"
    "/api/user/login"
    "/api/login"
)

for endpoint in "${endpoints[@]}"; do
    result=$(test_endpoint "$API_BASE$endpoint" "POST" '{"email":"test@test.com","password":"test"}')
    http_code=$(echo "$result" | cut -d'|' -f1)
    body=$(echo "$result" | cut -d'|' -f2-)
    
    echo "$endpoint: HTTP $http_code" >> "$WORK_DIR/manual_test_results.txt"
    if [ "$http_code" != "404" ] && [ "$http_code" != "403" ]; then
        echo "$body" | head -10 >> "$WORK_DIR/manual_test_results.txt"
    fi
    echo "---" >> "$WORK_DIR/manual_test_results.txt"
done

# 3. 用户端点测试
log "测试用户端点..."
user_endpoints=(
    "/api/user"
    "/api/users"
    "/api/v1/user"
    "/api/v1/users"
)

for endpoint in "${user_endpoints[@]}"; do
    result=$(test_endpoint "$API_BASE$endpoint" "GET")
    http_code=$(echo "$result" | cut -d'|' -f1)
    body=$(echo "$result" | cut -d'|' -f2-)
    
    echo "$endpoint: HTTP $http_code" >> "$WORK_DIR/manual_test_results.txt"
    if [ "$http_code" = "200" ] || [ "$http_code" = "401" ]; then
        echo "$body" | head -10 >> "$WORK_DIR/manual_test_results.txt"
    fi
    echo "---" >> "$WORK_DIR/manual_test_results.txt"
done

# 4. OpenAPI端点测试
log "测试OpenAPI端点..."
openapi_endpoints=(
    "/openapi.json"
    "/swagger.json"
    "/api-docs"
    "/docs"
)

for endpoint in "${openapi_endpoints[@]}"; do
    for base in "$API_BASE" "$OPENAPI_BASE"; do
        result=$(test_endpoint "$base$endpoint" "GET")
        http_code=$(echo "$result" | cut -d'|' -f1)
        body=$(echo "$result" | cut -d'|' -f2-)
        
        echo "$base$endpoint: HTTP $http_code" >> "$WORK_DIR/manual_test_results.txt"
        if [ "$http_code" = "200" ]; then
            # 尝试提取JSON路径
            echo "$body" | jq -r '.paths | keys[]' 2>/dev/null | head -20 >> "$WORK_DIR/manual_test_results.txt" || true
        fi
        echo "---" >> "$WORK_DIR/manual_test_results.txt"
    done
done

log "测试完成，结果: $WORK_DIR/manual_test_results.txt"
cat "$WORK_DIR/manual_test_results.txt" | head -100
