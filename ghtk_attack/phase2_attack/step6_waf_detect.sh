#!/bin/bash
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "步骤6：WAF识别"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

TARGETS=(
    "admin.giaohangtietkiem.vn"
    "dashboard.ghtk.vn"
    "open.ghtk.vn"
)

echo "[*] 检测WAF指纹..."

for target in "${TARGETS[@]}"; do
    echo ""
    echo "━━━ $target ━━━"
    headers=$(curl -sk "https://$target" -I 2>&1)
    
    # Cloudflare
    echo "$headers" | grep -qi "cloudflare" && echo "  ✅ Cloudflare WAF"
    echo "$headers" | grep -qi "cf-ray" && echo "  ✅ Cloudflare CDN"
    
    # AWS WAF
    echo "$headers" | grep -qi "x-amzn" && echo "  ✅ AWS WAF"
    
    # Akamai
    echo "$headers" | grep -qi "akamai" && echo "  ✅ Akamai"
    
    # 其他
    echo "$headers" | grep -iE "server|x-powered-by"
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ WAF识别完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
