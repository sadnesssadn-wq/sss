#!/bin/bash

TARGET="http://vps.vnpost.vn/chamcong/login.aspx"
USER="KVMBTCVP"
PASS="123"

echo "[1] 获取ViewState..."
response=$(curl -sk "$TARGET")

viewstate=$(echo "$response" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
viewgen=$(echo "$response" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
eventval=$(echo "$response" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)

echo "ViewState: ${viewstate:0:50}..."
echo "ViewStateGenerator: $viewgen"
echo "EventValidation: ${eventval:0:50}..."

echo ""
echo "[2] POST登录..."
curl -sk "$TARGET" \
    -X POST \
    -c cookie.txt \
    -b cookie.txt \
    -d "__VIEWSTATE=$viewstate" \
    -d "__VIEWSTATEGENERATOR=$viewgen" \
    -d "__EVENTVALIDATION=$eventval" \
    -d "tUser=$USER" \
    -d "tPass=$PASS" \
    -d "tOk=Đăng nhập" \
    -L \
    -o login_result.html

echo "响应长度: $(wc -c < login_result.html)"
echo ""
echo "[3] 检查登录结果..."

if grep -qi "login.aspx\|username\|password\|tUser\|tPass" login_result.html; then
    echo "❌ 登录失败 - 仍在登录页面"
    echo ""
    echo "错误消息:"
    grep -i "Label1\|error\|sai\|incorrect" login_result.html | head -5
else
    echo "✅ 可能登录成功！"
    echo ""
    echo "页面内容:"
    head -50 login_result.html | grep -i "title\|menu\|logout\|welcome"
fi

echo ""
echo "[4] 检查Cookie..."
cat cookie.txt | grep -v "^#"

echo ""
echo "[5] 尝试访问首页..."
curl -sk "http://vps.vnpost.vn/chamcong/" -b cookie.txt | head -50 | grep -i "title\|menu\|logout"
