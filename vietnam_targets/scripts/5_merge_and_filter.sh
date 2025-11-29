#!/bin/bash
# 合并所有来源，去重过滤

echo "[*] 合并所有数据源..."

# 合并所有txt文件
cat raw_data/*.txt 2>/dev/null | \
    grep -E '\.(vn|com\.vn|net\.vn)' | \
    sed 's|https\?://||g' | \
    sed 's|/.*||g' | \
    tr '[:upper:]' '[:lower:]' | \
    sort -u > processed/all_domains.txt

echo "[✅] 合并完成: $(wc -l < processed/all_domains.txt) 个域名"

# 简单分类
echo "[*] 分类中..."

# 电商关键词
grep -iE 'shop|store|mall|market|buy|sell|mua|ban|thuong|cuahang|tiki|sendo|lazada|shopee' processed/all_domains.txt > processed/ecommerce.txt

# 物流关键词
grep -iE 'giao|chuyen|van|ship|express|post|delivery|logistics|nhan|phat' processed/all_domains.txt > processed/logistics.txt

# 剩余的
comm -23 <(sort processed/all_domains.txt) <(cat processed/ecommerce.txt processed/logistics.txt | sort -u) > processed/others.txt

echo "[✅] 分类完成:"
echo "    电商: $(wc -l < processed/ecommerce.txt)"
echo "    物流: $(wc -l < processed/logistics.txt)"
echo "    其他: $(wc -l < processed/others.txt)"
