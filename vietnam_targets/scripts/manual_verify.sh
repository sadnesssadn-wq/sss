#!/bin/bash
# 手动验证 - 只提取明确的电商/物流域名

echo "[*] 提取真正的电商/物流网站..."

> processed/pure_ecommerce.txt
> processed/pure_logistics.txt

# 更精准的电商特征（完整词，避免误匹配）
grep -iE "tiki|sendo|shopee|lazada|thegioididong|dienmay|nguyen-kim|nguyenkim|cellphone|fptshop|fahasa|concung|hasaki|guardian|pharmacity|vinmart|adayroi|postmart|vuivui|voso|cucre" \
  processed/final_mega_alive.txt > processed/pure_ecommerce_temp.txt

# 添加明确的shop关键词（但要排除非电商）
grep -iE "(shop|store|mall|market)(\.vn|\.com\.vn)" processed/final_mega_alive.txt | \
  grep -viE "workshop|repair|baohiem|batdongsan|nha-dat|car|xe-|oto" >> processed/pure_ecommerce_temp.txt

# 更精准的物流特征
grep -iE "ghn|ghtk|viettel-?post|vnpost|nhattin|ninja|best-?express|grab|ahamove|lalamove|gojek|be\.vn|express|logistics|van-?chuyen|chuyen-?phat|giao-?hang" \
  processed/final_mega_alive.txt | \
  grep -viE "bestmall|beststore" > processed/pure_logistics.txt

# 去重
sort -u processed/pure_ecommerce_temp.txt > processed/pure_ecommerce.txt
rm -f processed/pure_ecommerce_temp.txt

# 合并
cat processed/pure_ecommerce.txt processed/pure_logistics.txt | sort -u > processed/verified_real.txt

ECOM=$(wc -l < processed/pure_ecommerce.txt)
LOGI=$(wc -l < processed/pure_logistics.txt)
TOTAL=$(wc -l < processed/verified_real.txt)

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 精准过滤完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "电商购物网站: $ECOM"
echo "快递物流公司: $LOGI"
echo "总计（去重）: $TOTAL"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
