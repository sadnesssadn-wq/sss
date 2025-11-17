#!/bin/bash

COOKIE="ASP.NET_SessionId=bezu1wgtbs241i4cyhxapaou"
BASE="http://vps.vnpost.vn/chamcong"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 Phase 1: JS深度分析"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

mkdir -p phase1_js && cd phase1_js

# 1. 下载主要HTML页面，提取JS引用
echo "[1] 提取所有JS文件链接..."

for page in "index.aspx" "login.aspx" "top.aspx" "leftmenu.aspx" "report/inBCC.aspx?ID=MAU2"; do
    echo "  抓取: /$page"
    curl -sk "${BASE}/${page}" -H "Cookie: $COOKIE" > "page_$(echo $page | tr '/' '_').html" 2>&1
done

# 提取所有.js文件
echo ""
echo "[2] 提取JS文件URL..."
grep -hoE "(src|href)=['\"]([^'\"]+\.js[^'\"]*)" page_*.html | \
    sed 's/.*=["'\'']//' | sed 's/["'\'']//' | sort -u > js_urls_raw.txt

echo "  发现 $(wc -l < js_urls_raw.txt) 个JS文件"

# 转换为完整URL
while read js; do
    if [[ $js == http* ]]; then
        echo "$js"
    elif [[ $js == /* ]]; then
        echo "http://vps.vnpost.vn${js}"
    else
        echo "http://vps.vnpost.vn/chamcong/${js}"
    fi
done < js_urls_raw.txt | sort -u > js_urls_full.txt

echo "  完整URL: $(wc -l < js_urls_full.txt) 个"
cat js_urls_full.txt

# 3. 下载所有JS文件
echo ""
echo "[3] 下载所有JS文件..."
mkdir -p js_files

while read url; do
    filename=$(echo "$url" | md5sum | cut -d' ' -f1).js
    echo -n "  $url: "
    curl -sk "$url" -o "js_files/${filename}" 2>&1
    size=$(wc -c < "js_files/${filename}")
    echo "$size bytes"
done < js_urls_full.txt

# 4. 分析JS内容
echo ""
echo "[4] JS内容深度分析..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 4.1 提取所有URL/端点
echo ""
echo "  [4.1] 提取API端点..."
grep -hoE "(https?://[^\"'<> ]+|/[a-zA-Z0-9/_\.-]+\.aspx[^\"'<> ]*)" js_files/*.js 2>/dev/null | \
    sort -u > extracted_urls.txt
echo "    发现 $(wc -l < extracted_urls.txt) 个URL"
head -20 extracted_urls.txt

# 4.2 查找密钥/凭证
echo ""
echo "  [4.2] 查找敏感信息..."
grep -iE "(password|passwd|pwd|key|secret|token|api[_-]?key|auth)" js_files/*.js 2>/dev/null | \
    grep -v "function\|var\|//" | head -20 > sensitive_keywords.txt
if [ -s sensitive_keywords.txt ]; then
    echo "    🔥 发现敏感关键词:"
    cat sensitive_keywords.txt
else
    echo "    无明显敏感信息"
fi

# 4.3 查找AJAX调用
echo ""
echo "  [4.3] 查找AJAX/API调用..."
grep -hoE "(ajax|fetch|XMLHttpRequest|\.post|\.get)\([^)]+\)" js_files/*.js 2>/dev/null | \
    head -20 > ajax_calls.txt
if [ -s ajax_calls.txt ]; then
    echo "    发现AJAX调用:"
    cat ajax_calls.txt
fi

# 4.4 查找隐藏功能/调试接口
echo ""
echo "  [4.4] 查找隐藏功能..."
grep -iE "(debug|test|admin|console|hidden|secret)" js_files/*.js 2>/dev/null | \
    grep -v "//" | head -20 > hidden_features.txt
if [ -s hidden_features.txt ]; then
    echo "    🔥 可能的隐藏功能:"
    cat hidden_features.txt
fi

# 4.5 提取所有.aspx文件引用
echo ""
echo "  [4.5] 提取.aspx文件引用..."
grep -hoE "[a-zA-Z0-9/_-]+\.aspx(\?[^\"' <>]*)?" js_files/*.js page_*.html 2>/dev/null | \
    sort -u > all_aspx_references.txt
echo "    发现 $(wc -l < all_aspx_references.txt) 个.aspx引用"
cat all_aspx_references.txt

# 5. 检查HTML中的隐藏元素
echo ""
echo "[5] 检查HTML隐藏元素..."
grep -E "type=['\"]hidden['\"]|display:\s*none|visibility:\s*hidden" page_*.html | \
    grep -oE "name=['\"]([^'\"]+)" | cut -d'"' -f2 | sort -u > hidden_fields.txt
echo "  隐藏字段: $(wc -l < hidden_fields.txt)"
cat hidden_fields.txt

# 6. 提取所有表单action
echo ""
echo "[6] 提取所有表单action..."
grep -hoE "<form[^>]*action=['\"]([^'\"]+)" page_*.html | \
    sed 's/.*action=["'\'']//' | sort -u > form_actions.txt
echo "  表单action: $(wc -l < form_actions.txt)"
cat form_actions.txt

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Phase 1 完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📊 发现总结:"
echo "  - JS文件: $(ls js_files/*.js 2>/dev/null | wc -l) 个"
echo "  - URL端点: $(wc -l < extracted_urls.txt) 个"
echo "  - .aspx引用: $(wc -l < all_aspx_references.txt) 个"
echo "  - 隐藏字段: $(wc -l < hidden_fields.txt) 个"
echo "  - 表单action: $(wc -l < form_actions.txt) 个"
