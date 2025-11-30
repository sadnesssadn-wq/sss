#!/bin/bash
# 检查手工收集的网站存活性

echo "[*] 检查真实网站存活..."

> processed/verified_alive.txt

check_domain() {
    domain=$1
    # 先去掉协议
    domain=$(echo $domain | sed 's|https\?://||')
    
    # 检查https
    code=$(timeout 5 curl -sk -o /dev/null -w "%{http_code}" --connect-timeout 2 --max-time 3 "https://${domain}" 2>/dev/null)
    if [ "$code" -ge 200 ] && [ "$code" -lt 500 ]; then
        echo "https://${domain}"
        return 0
    fi
    
    # 检查http
    code=$(timeout 5 curl -sk -o /dev/null -w "%{http_code}" --connect-timeout 2 --max-time 3 "http://${domain}" 2>/dev/null)
    if [ "$code" -ge 200 ] && [ "$code" -lt 500 ]; then
        echo "http://${domain}"
        return 0
    fi
}

export -f check_domain

cat raw_data/more_real_vietnamese.txt | xargs -P 30 -I {} bash -c 'check_domain "{}"' > processed/verified_alive.txt

# 过滤本土
FOREIGN="lazada|shopee|booking|agoda|traveloka|grab|be\.com|matsukiyo|watsons|lotte|aeon|decathlon"
cat processed/verified_alive.txt | grep -viE "$FOREIGN" > processed/verified_local.txt

TOTAL=$(wc -l < processed/verified_alive.txt)
LOCAL=$(wc -l < processed/verified_local.txt)

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 验证完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "存活网站: $TOTAL"
echo "本土网站: $LOCAL"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
