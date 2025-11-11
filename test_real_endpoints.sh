#!/bin/bash
# 测试真实的API端点

TOKEN="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJhZG1pbiIsInVzZXJuYW1lIjoiYWRtaW4iLCJ0ZW5hbnRDb2RlIjoiVlRQIiwicm9sZSI6IkFETUlOIiwiaWF0IjoxNzMxMzEzMjAwLCJleHAiOjE3MzEzOTk2MDB9.test"

echo "测试可能的API端点..."
echo "================================"

# 从前端代码中提取的真实API路径
ENDPOINTS=(
  "https://api-dws.viettelpost.vn"
  "https://gw-dws.viettelpost.vn"
  "https://dws-api.viettelpost.vn"
  "https://stg-api.viettelpost.vn"
  "https://dev-api.viettelpost.vn"
  "https://mwms.viettelpost.vn/api"
  "https://dws-sso.viettelpost.vn"
)

for base in "${ENDPOINTS[@]}"; do
  echo ""
  echo "[*] 测试: $base"
  
  # 测试健康检查
  echo -n "    /health: "
  curl -sk -m 5 "$base/health" -o /dev/null -w "%{http_code}\n" 2>/dev/null
  
  # 测试订单API
  echo -n "    /api/v1/outbound-request: "
  curl -sk -m 5 "$base/api/v1/outbound-request/search" \
    -H "Authorization: Bearer $TOKEN" \
    -o /dev/null -w "%{http_code}\n" 2>/dev/null
  
  # 测试用户API
  echo -n "    /api/v1/user/me: "
  curl -sk -m 5 "$base/api/v1/user/me" \
    -H "Authorization: Bearer $TOKEN" \
    -o /dev/null -w "%{http_code}\n" 2>/dev/null
done

echo ""
echo "================================"
