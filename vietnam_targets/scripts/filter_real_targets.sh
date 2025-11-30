#!/bin/bash
# 过滤出真正的电商/物流网站

echo "[*] 开始过滤真实电商/物流网站..."

> processed/real_ecommerce.txt
> processed/real_logistics.txt

# 电商关键词（更精准）
ECOMMERCE_KEYWORDS="shop|store|mall|market|buy|ban|mua|sieu-thi|cho|tiki|sendo|vinmart|thegioididong|dienmay|fahasa|concung|hasaki|guardian|matsukiyo|book|kids|baby|fashion|beauty|cosmetic|phone|mobile|laptop|computer|electronic|cloth|shoe|food|fresh|fruit|home|furniture"

# 物流关键词（更精准）
LOGISTICS_KEYWORDS="express|post|ship|delivery|van-chuyen|giao-hang|chuyen-phat|logistics|cargo|transport|ghn|ghtk|viettel-post|vnpost|dhl|fedex|ups|jt|ninja|best|grab|lalamove|ahamove"

# 过滤电商
cat processed/final_mega_alive.txt | grep -iE "$ECOMMERCE_KEYWORDS" > processed/real_ecommerce.txt

# 过滤物流
cat processed/final_mega_alive.txt | grep -iE "$LOGISTICS_KEYWORDS" > processed/real_logistics.txt

# 合并去重
cat processed/real_ecommerce.txt processed/real_logistics.txt | sort -u > processed/filtered_targets.txt

ECOM=$(wc -l < processed/real_ecommerce.txt)
LOGI=$(wc -l < processed/real_logistics.txt)
TOTAL=$(wc -l < processed/filtered_targets.txt)

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 过滤完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "电商网站: $ECOM"
echo "物流网站: $LOGI"
echo "总计（去重）: $TOTAL"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
