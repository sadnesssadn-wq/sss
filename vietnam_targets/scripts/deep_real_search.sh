#!/bin/bash
# 深度搜索真实越南电商

echo "[*] 深度搜索真实电商..."

> raw_data/deep_search_domains.txt

# 1. 越南知名品牌
BRANDS="vingroup vinmart winmart bachhoaxanh satrafoods coopmart hapro bitis canifa owen ivy routine coolmate yody pnj doji sjc juno elise fpt viettel mobifone vinaphone"

for brand in $BRANDS; do
    echo "${brand}.vn" >> raw_data/deep_search_domains.txt
    echo "${brand}.com.vn" >> raw_data/deep_search_domains.txt
    echo "${brand}shop.vn" >> raw_data/deep_search_domains.txt
    echo "${brand}store.vn" >> raw_data/deep_search_domains.txt
done

# 2. 行业+越南词
INDUSTRIES="thoi-trang giay-dep tui-xach dien-thoai laptop may-tinh do-choi sach truyen my-pham lam-dep dien-may noi-that do-gia-dung thuc-pham do-an do-uong me-be em-be"

for industry in $INDUSTRIES; do
    echo "${industry}.vn" >> raw_data/deep_search_domains.txt
    echo "${industry}.com.vn" >> raw_data/deep_search_domains.txt
    echo "mua${industry}.vn" >> raw_data/deep_search_domains.txt
    echo "ban${industry}.vn" >> raw_data/deep_search_domains.txt
done

# 3. 通用电商词
ECOM="muasam muaban muahang banhang sieuthionline choonline muaonline banonline"

for word in $ECOM; do
    echo "${word}.vn" >> raw_data/deep_search_domains.txt
    echo "${word}.com.vn" >> raw_data/deep_search_domains.txt
done

# 4. 物流词
LOGISTICS="chuyenphatnhanh giaohangnhanh vancongnhanh vancongtietkiem giaohangtietkiem vanchuyen chuyenphat giaohang"

for word in $LOGISTICS; do
    echo "${word}.vn" >> raw_data/deep_search_domains.txt
    echo "${word}.com.vn" >> raw_data/deep_search_domains.txt
done

sort -u raw_data/deep_search_domains.txt -o raw_data/deep_search_domains.txt

echo "[✅] 生成域名: $(wc -l < raw_data/deep_search_domains.txt)"

# 检查存活
echo "[*] 检查存活..."
> processed/deep_search_alive.txt

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

cat raw_data/deep_search_domains.txt | xargs -P 40 -I {} bash -c 'check_domain "{}"' > processed/deep_search_alive.txt

ALIVE=$(wc -l < processed/deep_search_alive.txt)

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 深度搜索完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "生成域名: $(wc -l < raw_data/deep_search_domains.txt)"
echo "存活网站: $ALIVE"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
