#!/bin/bash
echo "[*] 深度提取所有JS文件中的密钥..."

# 提取所有可能的API Key格式
echo "【格式1：普通字符串 api_key=xxx】"
grep -rEo "(api[_-]?key|apikey|api_token)\s*[:=]\s*['\"]([a-zA-Z0-9_-]{20,})['\"]" . --include="*.js" 2>/dev/null | \
    grep -v "function\|var\|let\|const\|return" | head -10

echo ""
echo "【格式2：Base64编码】"
grep -rEo "['\"]([A-Za-z0-9+/]{40,}={0,2})['\"]" . --include="*.js" 2>/dev/null | \
    head -20 | while read line; do
        b64=$(echo "$line" | grep -oE "[A-Za-z0-9+/]{40,}={0,2}")
        decoded=$(echo "$b64" | base64 -d 2>/dev/null)
        if echo "$decoded" | grep -qE "[a-zA-Z0-9]{20,}"; then
            echo "  Base64: $b64"
            echo "  解码: $decoded"
            echo "---"
        fi
    done

echo ""
echo "【格式3：Bearer Token】"
grep -rEo "bearer\s+[a-zA-Z0-9._-]{20,}" . --include="*.js" -i 2>/dev/null | head -10

echo ""
echo "【格式4：JWT Token】"
grep -rEo "eyJ[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+" . --include="*.js" 2>/dev/null | \
    head -5 | while read jwt; do
        echo "JWT: $jwt"
        # 解码header和payload
        header=$(echo "$jwt" | cut -d'.' -f1 | base64 -d 2>/dev/null)
        payload=$(echo "$jwt" | cut -d'.' -f2 | base64 -d 2>/dev/null)
        echo "  Header: $header"
        echo "  Payload: $payload"
        echo "---"
    done

echo ""
echo "【格式5：URL中的token参数】"
grep -rEo "token=[a-zA-Z0-9_-]{20,}" . --include="*.js" 2>/dev/null | head -10

echo ""
echo "【格式6：AWS/GCP密钥格式】"
grep -rEo "(AKIA|ASIA)[A-Z0-9]{16}" . --include="*.js" 2>/dev/null | head -5
grep -rEo "AIza[A-Za-z0-9_-]{35}" . --include="*.js" 2>/dev/null | head -5

