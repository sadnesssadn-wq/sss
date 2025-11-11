#!/bin/bash
# 根据DEX分析结果测试最终端点

BASE="https://gw.vtpglobal.com.vn"

echo "[🔥] 最终测试 - 基于DEX分析"
echo ""

# 测试vtp-user的具体方法
echo "[+] 测试vtp-user的users相关端点..."
curl -sk "$BASE/vtp-user/api/v1/users" -w "\nHTTP: %{http_code}\n" | head -10
curl -sk "$BASE/vtp-user/api/v1/users/me" -w "\nHTTP: %{http_code}\n" | head -10
curl -sk "$BASE/vtp-user/api/v1/users/profile" -w "\nHTTP: %{http_code}\n" | head -10

echo ""
echo "[+] 测试authentication端点..."
curl -sk "$BASE/vtp-user/api/v1/auth/login" -X POST \
  -H "Content-Type: application/json" \
  -d '{"username":"test","password":"test"}' -w "\nHTTP: %{http_code}\n" | head -10

curl -sk "$BASE/vtp-user/api/v1/authentication" -w "\nHTTP: %{http_code}\n" | head -10

echo ""
echo "[+] 测试health/ping端点（通常无需认证）..."
curl -sk "$BASE/health" -w "\nHTTP: %{http_code}\n" | head -10
curl -sk "$BASE/ping" -w "\nHTTP: %{http_code}\n" | head -10
curl -sk "$BASE/api/health" -w "\nHTTP: %{http_code}\n" | head -10
curl -sk "$BASE/vtp-user/health" -w "\nHTTP: %{http_code}\n" | head -10
curl -sk "$BASE/tms-receiving/health" -w "\nHTTP: %{http_code}\n" | head -10

echo ""
echo "[+] 测试version/info端点..."
curl -sk "$BASE/api/version" -w "\nHTTP: %{http_code}\n" | head -10
curl -sk "$BASE/api/info" -w "\nHTTP: %{http_code}\n" | head -10

echo ""
echo "[+] 测试Kong Admin API（可能暴露）..."
curl -sk "$BASE:8001/" -w "\nHTTP: %{http_code}\n" -m 3 2>/dev/null | head -10
curl -sk "$BASE:8001/services" -w "\nHTTP: %{http_code}\n" -m 3 2>/dev/null | head -10
