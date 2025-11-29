#!/bin/bash

BASE="https://135.125.237.250:8043"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔍 测试未授权API端点"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

ANON_APIS=(
    "/api/v2/anon/capabilities"
    "/api/v2/anon/info"
    "/api/v2/anon/initialization"
    "/api/v1/central/account/user/temp-login"
    "/api/v2/hotspot/capabilities"
    "/api/v2/hotspot/loginStatus"
    "/api/v2/hotspot/maintenance/controllerStatus"
    "/api/v2/capabilities"
    "/api/v2/getLaunchStatus"
    "/api/v2/controller/systemTime"
)

for api in "${ANON_APIS[@]}"; do
    echo "[*] 测试: $api"
    response=$(curl -sk "${BASE}${api}" 2>/dev/null)
    
    if echo "$response" | jq . >/dev/null 2>&1; then
        echo "$response" | jq . | head -20
    else
        echo "$response" | head -5
    fi
    
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
done

echo "✅ 测试完成"
