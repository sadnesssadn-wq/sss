#!/bin/bash
# API自动发现 - 基于常见模式

BASE="https://gw.vtpglobal.com.vn"

echo "[🔥] 第14波：微服务路由探测"
# 14. Kong Gateway微服务路由
SERVICES=(
  "vtp-user"
  "vtp-order"
  "vtp-tracking"
  "vtp-public"
  "vtp-web"
  "tms-receiving"
  "tms-dest"
  "tms-sorting"
  "tms-handover"
  "tms-pricing"
  "oms"
  "oms-order"
  "wms"
  "cms"
)

for service in "${SERVICES[@]}"; do
  for endpoint in "order" "tracking" "query" "search" "public/order" "guest/order"; do
    echo "[+] /$service/api/v1/$endpoint"
    result=$(curl -sk "$BASE/$service/api/v1/$endpoint?id=1000001" -w "\n%{http_code}" -m 3 2>/dev/null)
    http_code=$(echo "$result" | tail -1)
    if [[ "$http_code" != "404" ]]; then
      echo "[!!!] 发现非404响应: $http_code"
      echo "$result" | head -10
    fi
  done
done

echo ""
echo "[🔥] 第15波：尝试直接访问OMS"
# 15. OMS API可能有不同的认证
curl -sk "https://oms-api.vtpglobal.com.vn/api/orders?id=1000001" \
  -H "Origin: https://oms-api.vtpglobal.com.vn" \
  -w "\nHTTP: %{http_code}\n" | head -10

curl -sk "https://oms-api.vtpglobal.com.vn/api/v1/orders?id=1000001" \
  -H "Referer: https://oms-api.vtpglobal.com.vn/" \
  -w "\nHTTP: %{http_code}\n" | head -10

curl -sk "https://oms-api.vtpglobal.com.vn/orders/track?code=1000001" \
  -w "\nHTTP: %{http_code}\n" | head -10

echo ""
echo "[🔥] 第16波：缅甸站点测试（已知200）"
# 16. 缅甸站可能有松散的认证
curl -skL "https://ops.vtpmyanmar.com.mm" | grep -iE "track|order|api" | head -20

curl -sk "https://ops.vtpmyanmar.com.mm/api/tracking?id=1000001" \
  -w "\nHTTP: %{http_code}\n" | head -10

curl -sk "https://gw.vtpmyanmar.com.mm/api/v1/order-tracking?id=1000001" \
  -w "\nHTTP: %{http_code}\n" | head -10
