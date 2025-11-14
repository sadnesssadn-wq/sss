#!/bin/bash
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 测试真实业务API（从文档提取）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "[*] 从API文档发现的真实端点..."
echo ""

# 真实API基础URL
API_BASES=(
    "https://services.giaohangtietkiem.vn"
    "https://khachhang.giaohangtietkiem.vn"
    "https://admin.giaohangtietkiem.vn"
)

# 文档中提到的API路径
REAL_APIS=(
    "/services/shipment/fee"
    "/services/shipment/list"
    "/services/shipment/cancel"
    "/services/address/list"
    "/api/v1/shipment/fee"
    "/api/v1/order/create"
    "/api/v1/tracking"
)

for base in "${API_BASES[@]}"; do
    echo "━━━ 测试基础URL: $base ━━━"
    
    for api in "${REAL_APIS[@]}"; do
        echo -n "  $api → "
        
        # GET请求
        resp=$(curl -sk "$base$api" -w "%{http_code}" -o /tmp/real_api -m 3 2>/dev/null)
        
        if [ "$resp" == "200" ]; then
            echo "✅ 200"
            cat /tmp/real_api | jq . 2>/dev/null || cat /tmp/real_api | head -10
            echo "━━━"
        elif [ "$resp" == "401" ] || [ "$resp" == "400" ]; then
            echo "⚠️  $resp（API存在！）"
            cat /tmp/real_api | head -10
            echo "━━━"
        else
            echo "❌ $resp"
        fi
    done
    echo ""
done

echo ""
echo "[*] 测试公开API（可能无需认证）..."
PUBLIC_APIS=(
    "https://khachhang.giaohangtietkiem.vn/api/address/provinces"
    "https://khachhang.giaohangtietkiem.vn/api/address/districts"
    "https://admin.giaohangtietkiem.vn/address-v2/provinces"
)

for api in "${PUBLIC_APIS[@]}"; do
    echo -n "  $api → "
    resp=$(curl -sk "$api" -m 3 2>&1)
    if echo "$resp" | jq -e '.[]' >/dev/null 2>&1; then
        echo "✅ 返回数据！"
        echo "$resp" | jq '.[0:3]' 2>/dev/null
    else
        echo "❌"
    fi
done

