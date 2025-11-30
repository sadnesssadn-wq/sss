#!/bin/bash
# 完整存活检测 - 所有2068个域名

echo "[*] 开始完整存活检测..."
echo "[*] 总域名数: $(wc -l < processed/all_domains.txt)"
echo "[*] 使用并发加速..."
echo ""

# 清空旧数据
> processed/alive_full.txt

# 并发检测函数
check_alive() {
    domain=$1
    for proto in https http; do
        code=$(curl -sk -o /dev/null -w "%{http_code}" --connect-timeout 5 --max-time 10 "${proto}://${domain}" 2>/dev/null)
        if [ "$code" -gt 0 ] && [ "$code" != "000" ]; then
            echo "${proto}://${domain}|${code}"
            return 0
        fi
    done
}

export -f check_alive

# 使用xargs并发检测（20个并发）
cat processed/all_domains.txt | xargs -P 20 -I {} bash -c 'check_alive "{}"' >> processed/alive_full.txt

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 完整检测完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "总域名: $(wc -l < processed/all_domains.txt)"
echo "存活: $(wc -l < processed/alive_full.txt)"
echo "存活率: $(awk "BEGIN {printf \"%.1f%%\", ($(wc -l < processed/alive_full.txt) / $(wc -l < processed/all_domains.txt)) * 100}")"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
