#!/bin/bash

echo "[*] 重新认证获取新Session..."

# 获取登录页面的ViewState
LOGIN_PAGE=$(curl -sk 'http://vps.vnpost.vn/chamcong/login.aspx' -c cookies.txt 2>/dev/null)

VIEWSTATE=$(echo "$LOGIN_PAGE" | grep -oP '__VIEWSTATE" value="\K[^"]+')
VIEWSTATEGENERATOR=$(echo "$LOGIN_PAGE" | grep -oP '__VIEWSTATEGENERATOR" value="\K[^"]+')
EVENTVALIDATION=$(echo "$LOGIN_PAGE" | grep -oP '__EVENTVALIDATION" value="\K[^"]+')

echo "  ViewState: ${VIEWSTATE:0:50}..."
echo "  ViewStateGenerator: $VIEWSTATEGENERATOR"
echo "  EventValidation: ${EVENTVALIDATION:0:50}..."

# 登录
curl -sk 'http://vps.vnpost.vn/chamcong/login.aspx' \
    -b cookies.txt -c cookies.txt \
    -H 'Content-Type: application/x-www-form-urlencoded' \
    --data-urlencode "__VIEWSTATE=$VIEWSTATE" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VIEWSTATEGENERATOR" \
    --data-urlencode "__EVENTVALIDATION=$EVENTVALIDATION" \
    --data 'tUser=KVMBTCVP&tPass=123&tOk=%C4%90%C4%83ng+nh%E1%BA%ADp' \
    > login_response.html 2>/dev/null

# 提取新Cookie
NEW_SESSION=$(grep -oP 'ASP\.NET_SessionId\s+\K[^\s]+' cookies.txt | head -1)

if [ -n "$NEW_SESSION" ]; then
    echo ""
    echo "✅ 新Session: $NEW_SESSION"
    echo "$NEW_SESSION" > fresh_session.txt
else
    echo "❌ 登录失败"
    exit 1
fi
