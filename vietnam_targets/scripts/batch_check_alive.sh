#!/bin/bash
# 批量并发检测存活（384个域名）

echo "[*] 批量检测384个越南本土域名..."
echo "[*] 使用20并发加速..."
echo ""

> processed/vietnam_all_alive.txt

# 并发检测函数
check_domain() {
    domain=$1
    for proto in https http; do
        code=$(curl -sk -o /dev/null -w "%{http_code}" --connect-timeout 3 --max-time 8 "${proto}://${domain}" 2>/dev/null)
        if [ "$code" -ge 200 ] && [ "$code" -lt 500 ]; then
            echo "${proto}://${domain}"
            return 0
        fi
    done
}

export -f check_domain

# 使用xargs并发（20个并发）
cat raw_data/all_vietnam_domains.txt | xargs -P 20 -I {} bash -c 'check_domain "{}"' > processed/vietnam_all_alive.txt

# 统计
TOTAL=$(wc -l < raw_data/all_vietnam_domains.txt)
ALIVE=$(wc -l < processed/vietnam_all_alive.txt)
RATE=$(awk "BEGIN {printf \"%.0f%%\", ($ALIVE / $TOTAL) * 100}")

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 批量检测完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "总数: $TOTAL"
echo "存活: $ALIVE"
echo "存活率: $RATE"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
