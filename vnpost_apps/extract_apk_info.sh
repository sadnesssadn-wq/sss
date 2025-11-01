#!/bin/bash
# ?? APK ????

cd /workspace/vnpost_apps

echo "Vnpost ????????"
echo "========================================"
echo "????: $(date)"
echo "========================================"

echo -e "\n[1] ????????"
echo "----------------------------------------"

for apk in apks_verified/*.apk; do
    if [ -f "$apk" ]; then
        filename=$(basename "$apk")
        size=$(stat -c%s "$apk" 2>/dev/null)
        size_mb=$(awk "BEGIN {printf \"%.2f\", $size/1024/1024}")
        md5=$(md5sum "$apk" | cut -d' ' -f1)
        
        echo -e "\n??: $filename"
        echo "  ??: ${size_mb} MB"
        echo "  MD5:  $md5"
        
        # ?????XAPK??
        if zipinfo -1 "$apk" 2>/dev/null | grep -q "^com\..*\.apk$"; then
            echo "  ??: XAPK (?APK??)"
            echo "  ??:"
            unzip -l "$apk" | tail -n +4 | head -n -2 | awk '{print "    " $4 " (" $1 " bytes)"}'
        else
            echo "  ??: ??APK"
            
            # ????????????strings?
            pkg=$(unzip -p "$apk" AndroidManifest.xml 2>/dev/null | strings | grep -m1 "^com\." 2>/dev/null)
            if [ ! -z "$pkg" ]; then
                echo "  ??: $pkg"
            fi
        fi
    fi
done

echo -e "\n========================================"
echo "[2] ??????"
echo "========================================"
echo "???: VIETNAM POST"
echo "??: https://play.google.com/store/apps/developer?id=VIETNAM+POST"
echo ""
echo "??????:"
echo "  1. com.vnpost - Vnpost ???"
echo "  2. vn.vnpost.myvnp - MyVNP"
echo "  3. vn.vnpost.collectaddress - ??????"
echo "  4. com.datapost.posteyehrm - Posteye HRM"

echo -e "\n========================================"
echo "[3] ????"
echo "========================================"
echo "????: APKPure"
echo "????: APKCombo, APKMirror"
echo "????: $(date)"

echo -e "\n========================================"
echo "[4] ???????"
echo "========================================"

all_valid=true
for apk in apks_verified/*.apk; do
    if [ -f "$apk" ]; then
        filename=$(basename "$apk")
        
        # ??ZIP??
        if unzip -t "$apk" >/dev/null 2>&1; then
            echo "[?] $filename - ZIP????"
        else
            echo "[?] $filename - ????"
            all_valid=false
        fi
    fi
done

if $all_valid; then
    echo -e "\n[?] ????????"
else
    echo -e "\n[!] ????????"
fi

echo -e "\n========================================"
echo "[5] ????"
echo "========================================"

total_files=$(ls -1 apks_verified/*.apk 2>/dev/null | wc -l)
total_size=$(du -sb apks_verified/*.apk 2>/dev/null | awk '{sum+=$1} END {print sum}')
total_size_mb=$(awk "BEGIN {printf \"%.2f\", $total_size/1024/1024}")

echo "????: $total_files ?"
echo "???: ${total_size_mb} MB"
echo "????: $(pwd)/apks_verified/"

echo -e "\n========================================"
echo "[6] Play Store ??"
echo "========================================"

for pkg in com.vnpost vn.vnpost.myvnp vn.vnpost.collectaddress com.datapost.posteyehrm; do
    echo "https://play.google.com/store/apps/details?id=$pkg"
done

echo -e "\n========================================"
echo "????"
echo "========================================"
