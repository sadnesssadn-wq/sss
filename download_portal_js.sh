#!/bin/bash
BASE="https://135.125.237.250:8043"
grep -oE "src=['\"]([^'\"]+\.js[^'\"]*)" guest_portal.html | cut -d'"' -f2 | while read js; do
    filename=$(basename "$js")
    echo "[*] 下载: $filename"
    curl -sk "${BASE}/${js}" -o "guest_portal_js/${filename}"
done
echo ""
echo "✅ 下载完成"
echo ""
echo "📊 文件统计:"
ls -lh guest_portal_js/ | tail -n +2
