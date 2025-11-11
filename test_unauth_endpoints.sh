#!/bin/bash
# 测试可能无需认证的端点

BASE="https://gw.vtpglobal.com.vn"
OMS="https://oms-api.vtpglobal.com.vn"

echo "[+] 测试元数据端点（可能无需认证）..."

# 测试元数据端点
curl -sk "$BASE/api/v1/meta/enum" -w "\nHTTP: %{http_code}\n" | head -20
echo "---"

curl -sk "$BASE/api/v1/mdm/country" -w "\nHTTP: %{http_code}\n" | head -20
echo "---"

# 测试标签模板
curl -sk "$BASE/api/v1/label-template" -w "\nHTTP: %{http_code}\n" | head -20
echo "---"

# 测试订单跟踪（无ID参数）
curl -sk "$BASE/api/v1/order-tracking" -w "\nHTTP: %{http_code}\n" | head -20
echo "---"

# 测试预分拣
curl -sk "$BASE/api/v1/presort-parcel/" -w "\nHTTP: %{http_code}\n" | head -20
echo "---"

echo "[+] 测试GraphQL introspection..."
curl -sk "$BASE/graphql" -X POST -H "Content-Type: application/json" \
  -d '{"query":"{ __schema { types { name } } }"}' -w "\nHTTP: %{http_code}\n" | head -20
echo "---"

echo "[+] 测试Swagger/OpenAPI文档..."
for path in /swagger /swagger-ui /api-docs /openapi.json /v3/api-docs /docs; do
  echo "[+] $BASE$path"
  curl -sk "$BASE$path" -w "\nHTTP: %{http_code}\n" -m 3 2>/dev/null | head -5
done
