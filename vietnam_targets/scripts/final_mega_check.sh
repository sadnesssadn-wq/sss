#!/bin/bash
# 最终超级检测

TOTAL=$(wc -l < raw_data/final_mega_all.txt)
echo "[*] 最终超级检测: $TOTAL 个域名"
echo "[*] 使用60并发，预计30-40分钟..."
echo ""

> processed/final_mega_alive.txt

check_domain() {
    domain=$1
    code=$(timeout 5 curl -sk -o /dev/null -w "%{http_code}" --connect-timeout 2 --max-time 3 "https://${domain}" 2>/dev/null)
    if [ "$code" -ge 200 ] && [ "$code" -lt 500 ]; then
        echo "https://${domain}"
        return 0
    fi
    code=$(timeout 5 curl -sk -o /dev/null -w "%{http_code}" --connect-timeout 2 --max-time 3 "http://${domain}" 2>/dev/null)
    if [ "$code" -ge 200 ] && [ "$code" -lt 500 ]; then
        echo "http://${domain}"
        return 0
    fi
}

export -f check_domain

cat raw_data/final_mega_all.txt | xargs -P 60 -I {} bash -c 'check_domain "{}"' > processed/final_mega_alive.txt

ALIVE=$(wc -l < processed/final_mega_alive.txt)
RATE=$(awk "BEGIN {printf \"%.1f%%\", ($ALIVE / $TOTAL) * 100}")

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 最终超级检测完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "总域名: $TOTAL"
echo "存活: $ALIVE"
echo "存活率: $RATE"
echo ""
echo "对比v1: +$(expr $ALIVE - 41) (增长 $(awk "BEGIN {printf \"%.0f%%\", (($ALIVE - 41) / 41) * 100}"))"
echo "对比v6: +$(expr $ALIVE - 628) (增长 $(awk "BEGIN {printf \"%.0f%%\", (($ALIVE - 628) / 628) * 100}"))"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
