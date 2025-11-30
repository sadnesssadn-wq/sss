#!/bin/bash
# 超大规模检测 1466个域名

echo "[*] 超大规模存活检测（1466个域名）"
echo "[*] 使用30并发，预计8-12分钟..."
echo ""

> processed/mega_alive.txt

check_domain() {
    domain=$1
    for proto in https http; do
        code=$(curl -sk -o /dev/null -w "%{http_code}" --connect-timeout 3 --max-time 6 "${proto}://${domain}" 2>/dev/null)
        if [ "$code" -ge 200 ] && [ "$code" -lt 500 ]; then
            echo "${proto}://${domain}"
            return 0
        fi
    done
}

export -f check_domain

# 30并发
cat raw_data/mega_domains.txt | xargs -P 30 -I {} bash -c 'check_domain "{}"' > processed/mega_alive.txt

TOTAL=$(wc -l < raw_data/mega_domains.txt)
ALIVE=$(wc -l < processed/mega_alive.txt)
RATE=$(awk "BEGIN {printf \"%.1f%%\", ($ALIVE / $TOTAL) * 100}")

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 超大规模检测完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "总数: $TOTAL"
echo "存活: $ALIVE"
echo "存活率: $RATE"
echo ""
echo "对比v3（170个）: +$(expr $ALIVE - 170)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
