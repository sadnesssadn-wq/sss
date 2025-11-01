#!/bin/bash
# ???? Vnpost APK??????????

cd /workspace/vnpost_apps
mkdir -p apks

# ??1: ?? APKPure.com ????????????
echo "[+] ? APKPure ??????..."

# Vnpost ???
wget -O apks/com.vnpost.apk "https://d.apkpure.net/b/XAPK/com.vnpost?version=latest" 2>&1 | tail -5

# ??2: ? APKMirror ????????????
echo -e "\n[+] APKMirror ??????????:"
echo "https://www.apkmirror.com/?post_type=app_release&searchtype=apk&s=vnpost"

# ??3: ?? EVozi APK Downloader API
echo -e "\n[+] ?? EVozi API ??..."

packages=(
    "com.vnpost"
    "com.vnpost.ems"
    "com.vnpost.customer"
)

for pkg in "${packages[@]}"; do
    echo "[-] ??: $pkg"
    # EVozi API
    curl -L "https://api.evozi.com/apk-downloader/?id=${pkg}" \
         -H "User-Agent: Mozilla/5.0" \
         -o "apks/${pkg}_evozi.json" 2>&1 | tail -2
    
    # ??JSON??????
    if [ -f "apks/${pkg}_evozi.json" ]; then
        download_url=$(cat "apks/${pkg}_evozi.json" | grep -oP '"url":"[^"]+' | head -1 | cut -d'"' -f4)
        if [ ! -z "$download_url" ]; then
            echo "[+] ???????????..."
            wget -O "apks/${pkg}.apk" "$download_url" 2>&1 | tail -5
        fi
    fi
    sleep 2
done

# ??4: ?? APKCombo API??????
echo -e "\n[+] ?? Play Store ???..."
for pkg in com.vnpost com.vnpost.ems com.vnpost.customer; do
    echo "[-] $pkg"
    curl -s "https://play.google.com/store/apps/details?id=${pkg}&hl=en" \
         -H "User-Agent: Mozilla/5.0" | \
         grep -oP '"([0-9]+\.[0-9]+\.[0-9]+)"' | head -1 | \
         sed "s/^/${pkg}: Version /"
done

echo -e "\n[+] ????APK??:"
ls -lh apks/*.apk 2>/dev/null || echo "??????"

echo -e "\n[+] ????:"
for apk in apks/*.apk; do
    if [ -f "$apk" ]; then
        size=$(stat -f%z "$apk" 2>/dev/null || stat -c%s "$apk" 2>/dev/null)
        if [ $size -gt 100000 ]; then
            echo "[?] $apk ($(echo "scale=2; $size/1024/1024" | bc 2>/dev/null || echo '?') MB)"
        else
            echo "[!] $apk ?????????"
            rm "$apk"
        fi
    fi
done
