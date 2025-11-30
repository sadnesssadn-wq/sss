#!/bin/bash
# 只检测主域名（61个高质量）

echo "[*] 检测高质量主域名..."
echo ""

> processed/main_alive.txt

cat processed/main_domains_classified.txt | grep -v "^#" | grep -v "^$" | while read domain; do
    echo -n "[*] 检测: $domain ... "
    
    for proto in https http; do
        code=$(curl -sk -o /dev/null -w "%{http_code}" --connect-timeout 5 --max-time 10 "${proto}://${domain}" 2>/dev/null)
        if [ "$code" -ge 200 ] && [ "$code" -lt 500 ]; then
            echo "[✅ $code] ${proto}://${domain}"
            echo "${proto}://${domain}|${code}" >> processed/main_alive.txt
            break
        fi
    done
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 检测完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "总数: 61"
echo "存活: $(wc -l < processed/main_alive.txt)"
echo "存活率: $(awk "BEGIN {printf \"%.0f%%\", ($(wc -l < processed/main_alive.txt) / 61) * 100}")"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
