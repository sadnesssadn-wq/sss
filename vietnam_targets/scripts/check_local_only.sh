#!/bin/bash
# 检测纯越南本土公司

echo "[*] 检测纯越南本土电商/物流..."
echo ""

> processed/local_alive.txt

cat processed/vietnam_local_only.txt | grep -v "^#" | grep -v "^$" | while read domain; do
    echo -n "[*] $domain ... "
    
    for proto in https http; do
        code=$(curl -sk -o /dev/null -w "%{http_code}" --connect-timeout 5 --max-time 10 "${proto}://${domain}" 2>/dev/null)
        if [ "$code" -ge 200 ] && [ "$code" -lt 500 ]; then
            echo "✅ [$code]"
            echo "${proto}://${domain}" >> processed/local_alive.txt
            break
        fi
    done
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 纯越南本土公司检测完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "总数: $(grep -v "^#" processed/vietnam_local_only.txt | grep -v "^$" | wc -l)"
echo "存活: $(wc -l < processed/local_alive.txt)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
