#!/bin/bash

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔐 登录 /xemluong (精确复现)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# 第1步：GET login页面，保持会话
echo "[1] 获取登录页面..."
curl -sk "http://vps.vnpost.vn/xemluong/Login.aspx" \
    -c cookies.txt \
    -o login_page.html

# 提取ViewState
VIEWSTATE=$(grep -oP '__VIEWSTATE" value="\K[^"]+' login_page.html)
GENERATOR=$(grep -oP '__VIEWSTATEGENERATOR" value="\K[^"]+' login_page.html)
VALIDATION=$(grep -oP '__EVENTVALIDATION" value="\K[^"]+' login_page.html)

echo "  ViewState: ${VIEWSTATE:0:60}..."
echo "  Generator: $GENERATOR"

# 第2步：POST登录（使用相同会话）
echo ""
echo "[2] POST登录请求..."

# URL编码函数
urlencode() {
    python3 -c "import urllib.parse; print(urllib.parse.quote('$1'))"
}

# 精确构造POST数据（完全按照表单顺序）
POST_DATA="__VIEWSTATE=$(urlencode "$VIEWSTATE")"
POST_DATA="${POST_DATA}&__VIEWSTATEGENERATOR=$(urlencode "$GENERATOR")"
POST_DATA="${POST_DATA}&__EVENTVALIDATION=$(urlencode "$VALIDATION")"
POST_DATA="${POST_DATA}&tUser=KVMBTCVP"
POST_DATA="${POST_DATA}&tPass=123"
POST_DATA="${POST_DATA}&tOk=$(urlencode "Đăng nhập")"

# POST到Login.aspx（相对路径）
curl -sk "http://vps.vnpost.vn/xemluong/Login.aspx" \
    -b cookies.txt \
    -c cookies_after.txt \
    -X POST \
    -H "Content-Type: application/x-www-form-urlencoded" \
    -H "Referer: http://vps.vnpost.vn/xemluong/Login.aspx" \
    -H "Origin: http://vps.vnpost.vn" \
    --data-raw "$POST_DATA" \
    -L \
    -o login_result.html \
    -w "\nHTTP_CODE: %{http_code}\nFINAL_URL: %{url_effective}\n" \
    > login_status.txt 2>&1

cat login_status.txt

# 分析结果
echo ""
echo "[3] 分析登录结果..."

# 获取Session
NEW_SESSION=$(grep "ASP.NET_SessionId" cookies_after.txt 2>/dev/null | awk '{print $NF}')
echo "  新Session: $NEW_SESSION"

# 检查页面标题
TITLE=$(grep -oP '<title>\K[^<]+' login_result.html 2>/dev/null)
echo "  页面标题: $TITLE"

# 检查是否有错误消息
if grep -qi "sai\|incorrect\|failed\|invalid" login_result.html; then
    echo "  ❌ 登录失败"
    grep -oP '<span[^>]*>[^<]*(?:sai|lỗi)[^<]*</span>' login_result.html | head -3
elif grep -qi "main\|home\|default\|welcome\|chào" login_result.html; then
    echo "  ✅ 可能登录成功"
else
    echo "  ⚠️  未知状态"
fi

# 显示最终URL
FINAL_URL=$(grep "FINAL_URL" login_status.txt | cut -d' ' -f2)
echo "  最终URL: $FINAL_URL"

# 如果跳转到其他页面，说明登录成功
if [ "$FINAL_URL" != "http://vps.vnpost.vn/xemluong/Login.aspx" ]; then
    echo ""
    echo "  🎯 登录成功！跳转到: $FINAL_URL"
    
    # 枚举功能
    echo ""
    echo "[4] 枚举可用页面..."
    
    PAGES=(
        "/xemluong/main.aspx"
        "/xemluong/default.aspx"
        "/xemluong/home.aspx"
        "/xemluong/report/default.aspx"
        "/xemluong/report"
        "/xemluong/export"
    )
    
    for page in "${PAGES[@]}"; do
        status=$(curl -sk -o /dev/null -w "%{http_code}" \
            "http://vps.vnpost.vn$page" \
            -H "Cookie: ASP.NET_SessionId=$NEW_SESSION")
        
        if [ "$status" = "200" ]; then
            echo "  ✅ $page → $status"
        elif [ "$status" != "404" ]; then
            echo "  ⚠️  $page → $status"
        fi
    done
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📄 保存的文件："
ls -lh login_*.html cookies*.txt 2>/dev/null

