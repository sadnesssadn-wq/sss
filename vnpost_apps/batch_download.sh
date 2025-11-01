#!/bin/bash
# ???? Vnpost ???? APK

cd /workspace/vnpost_apps
mkdir -p apks

echo "[+] Vnpost APK ??????"
echo "================================"

# ????? Vnpost package names
declare -a packages=(
    "com.vnpost"
    "com.vnpost.ems"
    "com.vnpost.customer"
    "vn.vnpost.ems"
    "com.vnpost.tracking"
    "com.vnpost.courier"
    "com.vnpost.mobile"
    "com.vnpost.epost"
)

# ??1: APKPure ?????????
echo -e "\n[??1] ? APKPure ??..."
for pkg in "${packages[@]}"; do
    if [ ! -f "apks/${pkg}.apk" ]; then
        echo "[-] ??: $pkg"
        wget -q --show-progress -O "apks/${pkg}.apk" \
             "https://d.apkpure.net/b/XAPK/${pkg}?version=latest" \
             --timeout=60 \
             --tries=3 \
             --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36" 2>&1 | tail -3
        
        # ??????
        if [ -f "apks/${pkg}.apk" ]; then
            size=$(stat -c%s "apks/${pkg}.apk" 2>/dev/null)
            if [ $size -lt 50000 ]; then
                echo "[!] ???????"
                rm "apks/${pkg}.apk"
            else
                echo "[?] ??: $pkg ($(echo "scale=2; $size/1024/1024" | bc) MB)"
            fi
        fi
        sleep 2
    else
        echo "[?] ???: $pkg"
    fi
done

# ??2: APKCombo ????
echo -e "\n[??2] APKCombo ????..."
for pkg in "${packages[@]}"; do
    if [ ! -f "apks/${pkg}.apk" ]; then
        echo "[-] ??: $pkg"
        wget -q --show-progress -O "apks/${pkg}.apk" \
             "https://apkcombo.com/${pkg}/download/apk" \
             --timeout=60 \
             --user-agent="Mozilla/5.0" 2>&1 | tail -3
        
        if [ -f "apks/${pkg}.apk" ]; then
            size=$(stat -c%s "apks/${pkg}.apk" 2>/dev/null)
            if [ $size -lt 50000 ]; then
                rm "apks/${pkg}.apk"
            else
                echo "[?] ????"
            fi
        fi
        sleep 2
    fi
done

# ??3: APKMirror??????????
echo -e "\n[??3] APKMirror ??????:"
for pkg in "${packages[@]}"; do
    echo "  https://www.apkmirror.com/?s=${pkg}"
done

echo -e "\n================================"
echo "[+] ??????"
echo "================================"

count=0
total_size=0

for apk in apks/*.apk; do
    if [ -f "$apk" ]; then
        size=$(stat -c%s "$apk" 2>/dev/null)
        size_mb=$(echo "scale=2; $size/1024/1024" | bc)
        echo "[?] $(basename $apk) - ${size_mb} MB"
        count=$((count + 1))
        total_size=$((total_size + size))
    fi
done

total_mb=$(echo "scale=2; $total_size/1024/1024" | bc)
echo -e "\n[??] $count ?APK???? ${total_mb} MB"

# ??APK?????aapt?
echo -e "\n[+] ??APK???..."
if command -v aapt &> /dev/null; then
    for apk in apks/*.apk; do
        if [ -f "$apk" ]; then
            echo -e "\n--- $(basename $apk) ---"
            aapt dump badging "$apk" 2>/dev/null | grep -E "package:|version:|sdkVersion:|uses-permission:" | head -20
        fi
    done
else
    echo "[!] aapt ???????????"
    echo "    ????: apt-get install aapt"
fi

# ??????
cat > download_report.txt << EOF
Vnpost APK ????
????: $(date)
================================

??????:
EOF

for apk in apks/*.apk; do
    if [ -f "$apk" ]; then
        size=$(stat -c%s "$apk" 2>/dev/null)
        size_mb=$(echo "scale=2; $size/1024/1024" | bc)
        md5=$(md5sum "$apk" | cut -d' ' -f1)
        echo "$(basename $apk)|${size_mb}MB|${md5}" >> download_report.txt
    fi
done

echo -e "\n[?] ??????: download_report.txt"
cat download_report.txt
