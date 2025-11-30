#!/bin/bash
# 最终过滤 - 只保留越南本土电商/物流

echo "[*] 排除外资企业，只保留越南本土..."

# 外资黑名单
FOREIGN="lazada|shopee|alibaba|taobao|1688|amazon|ebay|aliexpress|jd\.com|tmall|rakuten|qoo10|zalora|pomelo|ezbuy|carousell|tokopedia|bukalapak|blibli|sendo\.vn|tiki\.vn|grab\.vn|gojek|be\.com"

# 过滤电商
cat processed/pure_ecommerce.txt | grep -viE "$FOREIGN" > processed/local_ecommerce.txt

# 过滤物流
cat processed/pure_logistics.txt | grep -viE "$FOREIGN" > processed/local_logistics.txt

# 合并
cat processed/local_ecommerce.txt processed/local_logistics.txt | sort -u > processed/final_local_only.txt

ECOM=$(wc -l < processed/local_ecommerce.txt)
LOGI=$(wc -l < processed/local_logistics.txt)
TOTAL=$(wc -l < processed/final_local_only.txt)

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 最终本土过滤完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "本土电商: $ECOM"
echo "本土物流: $LOGI"
echo "总计: $TOTAL"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
