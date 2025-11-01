#!/bin/bash
# ??????? Vnpost ??

cd /workspace/vnpost_apps
mkdir -p apks_verified

echo "[+] ?? VIETNAM POST ???????"
echo "========================================"

# ? Play Store ???????
declare -a real_packages=(
    "com.vnpost"                    # Vnpost - ???
    "vn.vnpost.myvnp"              # MyVNP
    "vn.vnpost.collectaddress"     # Collect Address
    "com.datapost.posteyehrm"      # Posteye HRM
)

for pkg in "${real_packages[@]}"; do
    echo -e "\n[-] ??: $pkg"
    
    # ??1: APKPure
    wget -q --show-progress -O "apks_verified/${pkg}.apk" \
         "https://d.apkpure.net/b/APK/${pkg}?version=latest" \
         --timeout=120 \
         --tries=3 \
         --user-agent="Mozilla/5.0" 2>&1 | tail -2
    
    # ????
    if [ -f "apks_verified/${pkg}.apk" ]; then
        size=$(stat -c%s "apks_verified/${pkg}.apk" 2>/dev/null)
        if [ $size -lt 50000 ]; then
            echo "[!] ??????????..."
            rm "apks_verified/${pkg}.apk"
            
            # ??2: APKPure XAPK
            wget -q --show-progress -O "apks_verified/${pkg}.xapk" \
                 "https://d.apkpure.net/b/XAPK/${pkg}?version=latest" \
                 --timeout=120 \
                 --user-agent="Mozilla/5.0" 2>&1 | tail -2
            
            if [ -f "apks_verified/${pkg}.xapk" ]; then
                xapk_size=$(stat -c%s "apks_verified/${pkg}.xapk" 2>/dev/null)
                if [ $xapk_size -gt 50000 ]; then
                    echo "[?] ???? (XAPK??): $(($xapk_size/1024/1024)) MB"
                else
                    rm "apks_verified/${pkg}.xapk"
                    echo "[?] ????"
                fi
            fi
        else
            echo "[?] ???? (APK??): $(($size/1024/1024)) MB"
        fi
    fi
    
    sleep 3
done

# ????
echo -e "\n========================================"
echo "[+] ??????"
echo "========================================"

count=0
for file in apks_verified/*.{apk,xapk} 2>/dev/null; do
    if [ -f "$file" ]; then
        size=$(stat -c%s "$file" 2>/dev/null)
        size_mb=$(echo "scale=2; $size/1024/1024" | bc 2>/dev/null || echo "?")
        md5=$(md5sum "$file" | cut -d' ' -f1)
        echo "[?] $(basename $file)"
        echo "    ??: ${size_mb} MB"
        echo "    MD5:  ${md5}"
        count=$((count + 1))
    fi
done

echo -e "\n[??] ???? $count ???"

# ??????
cat > app_inventory.txt << EOF
Vnpost ????
????: $(date)
======================================

??????:
EOF

for file in apks_verified/*.{apk,xapk} 2>/dev/null; do
    if [ -f "$file" ]; then
        size=$(stat -c%s "$file" 2>/dev/null)
        size_mb=$(echo "scale=2; $size/1024/1024" | bc 2>/dev/null || echo "?")
        md5=$(md5sum "$file" | cut -d' ' -f1)
        echo "$(basename $file)|${size_mb}MB|${md5}" >> app_inventory.txt
    fi
done

echo -e "\n[?] ?????: app_inventory.txt"
cat app_inventory.txt

# ????????
echo -e "\n========================================"
echo "[+] ??????"
echo "========================================"

for pkg in "${real_packages[@]}"; do
    echo -e "\n--- $pkg ---"
    curl -s "https://play.google.com/store/apps/details?id=${pkg}&hl=en" \
         -H "User-Agent: Mozilla/5.0" | \
         grep -oP '<title>[^<]+</title>' | head -1 | sed 's/<[^>]*>//g'
done
