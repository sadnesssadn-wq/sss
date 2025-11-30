#!/bin/bash
# 终极检测

TOTAL=$(wc -l < raw_data/ultimate_all.txt)
echo "[*] 终极检测: $TOTAL 个域名"
echo "[*] 使用50并发，预计20-30分钟..."
echo ""

> processed/ultimate_alive.txt

check_domain() {
    domain=$1
    code=$(timeout 5 curl -sk -o /dev/null -w "%{http_code}" --connect-timeout 2 --max-time 4 "https://${domain}" 2>/dev/null)
    if [ "$code" -ge 200 ] && [ "$code" -lt 500 ]; then
        echo "https://${domain}"
        return 0
    fi
    code=$(timeout 5 curl -sk -o /dev/null -w "%{http_code}" --connect-timeout 2 --max-time 4 "http://${domain}" 2>/dev/null)
    if [ "$code" -ge 200 ] && [ "$code" -lt 500 ]; then
        echo "http://${domain}"
        return 0
    fi
}

export -f check_domain

cat raw_data/ultimate_all.txt | xargs -P 50 -I {} bash -c 'check_domain "{}"' > processed/ultimate_alive.txt

ALIVE=$(wc -l < processed/ultimate_alive.txt)
RATE=$(awk "BEGIN {printf \"%.1f%%\", ($ALIVE / $TOTAL) * 100}")

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 终极检测完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "总域名: $TOTAL"
echo "存活: $ALIVE"
echo "存活率: $RATE"
echo ""
echo "对比v1: +$(expr $ALIVE - 41) (增长 $(awk "BEGIN {printf \"%.0f%%\", (($ALIVE - 41) / 41) * 100}"))"
echo "对比v5: +$(expr $ALIVE - 459) (增长 $(awk "BEGIN {printf \"%.0f%%\", (($ALIVE - 459) / 459) * 100}"))"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
