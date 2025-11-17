#!/bin/bash

COOKIE="ASP.NET_SessionId=omtonrrfveu055ojf1dnmgwx"
BASE="http://vps.vnpost.vn/chamcong"

echo "🔥 修复Export - 不传递下拉框参数"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "[*] 重新获取ViewState..."
page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" -H "Cookie: $COOKIE")
VIEWSTATE=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
VIEWGEN=$(echo "$page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
EVENTVAL=$(echo "$page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)

echo "[1] 正确的Export请求（不包含ListDV等）..."
curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" \
    -X POST \
    -H "Cookie: $COOKIE" \
    -H "Content-Type: application/x-www-form-urlencoded" \
    -H "Referer: ${BASE}/report/inBCC.aspx?ID=MAU2" \
    --data-urlencode "__EVENTTARGET=" \
    --data-urlencode "__EVENTARGUMENT=" \
    --data-urlencode "__VIEWSTATE=$VIEWSTATE" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VIEWGEN" \
    --data-urlencode "__EVENTVALIDATION=$EVENTVAL" \
    --data-urlencode "txtThang=11" \
    --data-urlencode "txtNam=2025" \
    --data-urlencode "btnExport=Export" \
    -L \
    -o export_fixed_202511.xls 2>&1

size=$(wc -c < export_fixed_202511.xls)
echo "  响应大小: $size bytes"

if [ $size -gt 4000 ] && [ $size -lt 7000 ]; then
    echo "  ✅ 成功! 大小符合预期"
    
    file export_fixed_202511.xls
    echo ""
    echo "内容预览:"
    strings export_fixed_202511.xls | head -100
elif [ $size -gt 8000 ]; then
    echo "  ❌ 返回错误页面"
    head -20 export_fixed_202511.xls
else
    echo "  ⚠️  响应大小异常"
fi

echo -e "\n[2] 尝试不同ID的正确导出..."
for id in MAU1 MAU3 MAU4 MAU5; do
    echo -n "  ID=$id: "
    
    # 为每个ID重新获取ViewState
    page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=${id}" -H "Cookie: $COOKIE")
    VS=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
    VG=$(echo "$page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
    EV=$(echo "$page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)
    
    curl -sk "${BASE}/report/inBCC.aspx?ID=${id}" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=11" \
        --data-urlencode "txtNam=2025" \
        --data-urlencode "btnExport=Export" \
        -o "export_fixed_${id}.xls" 2>&1
    
    size=$(wc -c < "export_fixed_${id}.xls")
    if [ $size -gt 3000 ] && [ $size -lt 7000 ]; then
        echo "✅ $size bytes (有数据!)"
        echo "    内容: $(strings export_fixed_${id}.xls | grep -v "DOCTYPE\|html\|System.Web" | head -10 | tr '\n' ' ')"
    elif [ $size -lt 100 ]; then
        echo "⚠️  $size bytes (可能无权限)"
    else
        echo "- $size bytes"
    fi
done

echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📋 所有修复后的导出:"
ls -lh export_fixed_*.xls 2>/dev/null
