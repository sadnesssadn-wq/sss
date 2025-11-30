#!/bin/bash
# 超级宽松过滤 - 只排除明显不是电商/物流的

echo "[*] 超级宽松过滤开始..."

# 从1529个中过滤
if [ ! -f processed/final_mega_alive.txt ]; then
    echo "❌ 未找到 final_mega_alive.txt"
    exit 1
fi

# 只排除明显不是的
cat processed/final_mega_alive.txt | \
grep -viE "(\.gov\.vn|government|police|army|military|hospital|clinic|university|school|\.edu|bank|vpbank|techcombank|vietcombank|bidv|agribank|insurance|baohiem|hotel|resort|travel|tour|news|newspaper|baomoi|vnexpress\.net|dantri|thanhnien|tuoitre|laodong|tienphong|nguoiduattin|radio|television|vtv\.vn|music|game\.vn|facebook|zalo|tiktok|youtube|google|microsoft|apple\.vn|samsung\.vn|lg\.vn|sony\.vn|panasonic\.vn|toyota|honda\.vn|yamaha\.vn|lawyer|legal|studio|agency|consulting|software\.vn|saas\.vn|cloud\.vn|hosting|domain|email|sms\.vn|payment\.vn|gateway|blockchain|crypto|nft\.vn|real-?estate|property|apartment|land|house|rent|nha-?dat|bat-?dong-?san|can-?ho|thue-?nha|hospital|benh-?vien|phong-?kham|doctor|bac-?si|medicine|duoc|pharma(?!cy)|dental|nha-?khoa|beauty-?salon|spa\.vn|massage\.vn|gym-?club|fitness-?center|restaurant|cafe-?shop|coffee-?house|bar\.vn|club\.vn|karaoke|cinema|movie|film\.vn|event|ticket|booking\.com|agoda|grab\.com|be\.com\.vn|gojek|uber|taxi|car-?rental|thue-?xe|education|dao-?tao|hoc-?vien|university|college|training-?center|course|class|job|career|recruit|tuyen-?dung|viec-?lam|dating|marriage|ket-?hon|tim-?ban|social|forum|blog\.vn|review\.vn|rating|feedback)" \
> processed/ultra_loose.txt

# 统计
TOTAL=$(wc -l < processed/final_mega_alive.txt)
KEPT=$(wc -l < processed/ultra_loose.txt)
REMOVED=$((TOTAL - KEPT))

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 超级宽松过滤完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "原始总数: $TOTAL"
echo "排除明显不相关: $REMOVED"
echo "保留（潜在电商/物流）: $KEPT"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
