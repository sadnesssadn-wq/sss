#!/bin/bash

echo "🔥 使用完整HTTP请求登录 Chamcong"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

TARGET="http://vps.vnpost.vn/chamcong/login.aspx"

echo "[1] 获取Session Cookie和ViewState..."
initial_response=$(curl -sk "$TARGET" -c session_cookie.txt -b session_cookie.txt)

SESSION_ID=$(grep "ASP.NET_SessionId" session_cookie.txt | awk '{print $7}')
VIEWSTATE=$(echo "$initial_response" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
VIEWGEN=$(echo "$initial_response" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
EVENTVAL=$(echo "$initial_response" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)

echo "Session ID: $SESSION_ID"
echo "ViewState: ${VIEWSTATE:0:50}..."
echo "ViewStateGenerator: $VIEWGEN"
echo "EventValidation: ${EVENTVAL:0:50}..."

echo ""
echo "[2] POST登录请求 (完整ASP.NET表单)..."

# URL编码ViewState等
VIEWSTATE_ENCODED=$(python3 -c "import urllib.parse; print(urllib.parse.quote('$VIEWSTATE'))")
EVENTVAL_ENCODED=$(python3 -c "import urllib.parse; print(urllib.parse.quote('$EVENTVAL'))")

curl -sk "$TARGET" \
    -X POST \
    -b session_cookie.txt \
    -c session_cookie.txt \
    -H "Content-Type: application/x-www-form-urlencoded" \
    -H "Origin: http://vps.vnpost.vn" \
    -H "Referer: http://vps.vnpost.vn/chamcong/login.aspx" \
    -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36" \
    --data-urlencode "__EVENTTARGET=" \
    --data-urlencode "__EVENTARGUMENT=" \
    --data-urlencode "__VIEWSTATE=$VIEWSTATE" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VIEWGEN" \
    --data-urlencode "__EVENTVALIDATION=$EVENTVAL" \
    --data-urlencode "tUser=KVMBTCVP" \
    --data-urlencode "tPass=123" \
    --data-urlencode "tOk=Đăng nhập" \
    -L \
    -o login_success.html

echo "响应长度: $(wc -c < login_success.html)"
echo ""

echo "[3] 检查登录结果..."
if grep -qi "login.aspx\|username\|password\|đăng nhập" login_success.html; then
    echo "❌ 仍在登录页面"
    grep -i "error\|sai" login_success.html | head -5
else
    echo "✅ 登录成功！"
    echo ""
    echo "页面标题:"
    grep -oE "<title>[^<]+" login_success.html | sed 's/<title>//'
    echo ""
    echo "发现的链接:"
    grep -oE 'href="[^"]+\.aspx' login_success.html | cut -d'"' -f2 | sort -u | head -20
fi

echo ""
echo "[4] 保存Session并测试访问..."
echo ""
echo "Session Cookie:"
cat session_cookie.txt | grep -v "^#"
echo ""

# 测试访问主页
curl -sk "http://vps.vnpost.vn/chamcong/" -b session_cookie.txt -o main_page.html 2>&1
echo "主页访问成功: $(wc -c < main_page.html) bytes"

# 测试访问左侧菜单
curl -sk "http://vps.vnpost.vn/chamcong/leftmenu.aspx" -b session_cookie.txt -o leftmenu.html 2>&1
if grep -qi "sessiontimeout" leftmenu.html; then
    echo "❌ 菜单访问失败 (Session Timeout)"
else
    echo "✅ 菜单访问成功: $(wc -c < leftmenu.html) bytes"
    echo ""
    echo "菜单内容:"
    grep -oE 'href="[^"]+\.aspx[^"]*"' leftmenu.html | cut -d'"' -f2 | head -20
fi

