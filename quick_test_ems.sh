#!/bin/bash
# EMS API 快速测试脚本

TARGET="https://apilogistics.ems.com.vn:8080"

echo "=========================================="
echo "EMS API 快速安全测试"
echo "目标: $TARGET"
echo "=========================================="
echo ""

echo "[1] 测试常见 API 端点..."
endpoints=(
    "/"
    "/api/"
    "/api/v1/"
    "/api/v2/"
    "/admin/"
    "/accounts/"
    "/swagger.json"
    "/swagger.yaml"
    "/openapi.json"
    "/api/schema/"
    "/api/docs/"
    "/redoc/"
    "/graphql/"
    "/api/tracking/"
    "/api/orders/"
    "/api/users/"
    "/api/logistics/"
)

for endpoint in "${endpoints[@]}"; do
    url="$TARGET$endpoint"
    status=$(curl -k -s -o /dev/null -w "%{http_code}" "$url" --max-time 5)
    if [ "$status" != "000" ]; then
        echo "  [$status] $url"
    fi
done

echo ""
echo "[2] 测试常见端口..."
ports=(80 443 8000 8080 8443 3000 5000)
host="apilogistics.ems.com.vn"

for port in "${ports[@]}"; do
    timeout 2 bash -c "echo > /dev/tcp/$host/$port" 2>/dev/null && echo "  [OPEN] $host:$port" || echo "  [CLOSED] $host:$port"
done

echo ""
echo "[3] 测试常见子域名..."
subdomains=(
    "api"
    "www"
    "admin"
    "tracking"
    "logistics"
    "portal"
    "test"
    "dev"
    "staging"
)

for sub in "${subdomains[@]}"; do
    domain="$sub.ems.com.vn"
    ip=$(host "$domain" 2>/dev/null | grep "has address" | awk '{print $4}')
    if [ -n "$ip" ]; then
        echo "  [FOUND] $domain -> $ip"
    fi
done

echo ""
echo "[4] 检测 Web 应用指纹..."
curl -k -s -I "$TARGET/swagger" | grep -E "Server|X-|Set-Cookie"

echo ""
echo "[5] 测试默认凭据..."
echo "  尝试 /accounts/login/ ..."
curl -k -s "$TARGET/accounts/login/" | grep -o "<title>.*</title>"

echo ""
echo "=========================================="
echo "测试完成！"
echo "详细分析报告请查看："
echo "  - EMS_SWAGGER_FINDINGS.md"
echo "=========================================="
