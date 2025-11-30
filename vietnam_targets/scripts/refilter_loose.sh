#!/bin/bash
# 用更宽松标准重新过滤

echo "[*] 重新过滤（宽松标准）..."

# 从之前的1529个结果中过滤
if [ -f processed/final_mega_alive.txt ]; then
    # 电商特征（更宽松）
    grep -iE "(shop|store|mall|market|buy|sell|ban|mua|cho|sieu|thi|hang|com\.vn)" processed/final_mega_alive.txt | \
    grep -viE "(workshop|repair|autorepair|carrepair|hospital|clinic|insurance|baohiem|bank|hotel|travel|tour|edu|school|gov|government|police)" \
    > processed/loose_ecommerce.txt
    
    # 物流特征（更宽松）
    grep -iE "(express|post|ship|delivery|van|chuyen|phat|giao|hang|logistics|cargo)" processed/final_mega_alive.txt | \
    grep -viE "(hotel|travel|tour)" \
    > processed/loose_logistics.txt
    
    # 合并去重
    cat processed/loose_ecommerce.txt processed/loose_logistics.txt | sort -u > processed/loose_all.txt
    
    # 排除外资
    FOREIGN="lazada|shopee|alibaba|amazon|ebay|booking|agoda|traveloka|grab\.com|be\.com\.vn|gojek|matsukiyo|watsons|lotte|aeon"
    cat processed/loose_all.txt | grep -viE "$FOREIGN" > processed/loose_local.txt
    
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "✅ 宽松过滤完成"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "电商: $(wc -l < processed/loose_ecommerce.txt)"
    echo "物流: $(wc -l < processed/loose_logistics.txt)"
    echo "去重后: $(wc -l < processed/loose_all.txt)"
    echo "本土: $(wc -l < processed/loose_local.txt)"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
else
    echo "❌ 未找到 final_mega_alive.txt"
fi
