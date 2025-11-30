#!/bin/bash
# 最终完整检测

echo "[*] 最终完整检测开始..."
TOTAL=$(wc -l < raw_data/final_all_domains.txt)
echo "[*] 总域名: $TOTAL"
echo "[*] 使用40并发，预计15-20分钟..."
echo ""

> processed/final_alive.txt

check_domain() {
    domain=$1
    for proto in https http; do
        code=$(curl -sk -o /dev/null -w "%{http_code}" --connect-timeout 2 --max-time 5 "${proto}://${domain}" 2>/dev/null)
        if [ "$code" -ge 200 ] && [ "$code" -lt 500 ]; then
            echo "${proto}://${domain}"
            return 0
        fi
    done
}

export -f check_domain

# 40并发
cat raw_data/final_all_domains.txt | xargs -P 40 -I {} bash -c 'check_domain "{}"' > processed/final_alive.txt

ALIVE=$(wc -l < processed/final_alive.txt)
RATE=$(awk "BEGIN {printf \"%.1f%%\", ($ALIVE / $TOTAL) * 100}")

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 最终检测完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "总域名: $TOTAL"
echo "存活: $ALIVE"
echo "存活率: $RATE"
echo ""
echo "对比v1: +$(expr $ALIVE - 41) (增长 $(awk "BEGIN {printf \"%.0f%%\", (($ALIVE - 41) / 41) * 100}"))"
echo "对比v4: +$(expr $ALIVE - 387) (增长 $(awk "BEGIN {printf \"%.0f%%\", (($ALIVE - 387) / 387) * 100}"))"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
