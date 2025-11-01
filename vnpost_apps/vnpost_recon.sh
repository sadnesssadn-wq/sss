#!/bin/bash
# Vnpost ??????
# ???????????? package name ?????

echo "[+] Vnpost App ????..."

# ??? Vnpost ?? package names
cat > vnpost_packages.txt << 'EOF'
com.vnpost.ems
com.vnpost.customer
com.vnpost
vn.vnpost.ems
vn.com.vnpost
com.vnpost.tracking
com.vnpost.courier
com.vnpost.mobile
com.vnpost.epost
EOF

echo "[+] ???? Package Names:"
cat vnpost_packages.txt

# ? APKPure ????????????
echo -e "\n[+] ????????..."

# ??1: APKCombo ??????
for pkg in $(cat vnpost_packages.txt); do
    echo "[-] ??: $pkg"
    curl -s "https://apkcombo.com/$pkg/download/apk" -I | grep -i location || echo "???"
done

# ??2: APKMirror
echo -e "\n[+] ?? APKMirror..."
curl -s "https://www.apkmirror.com/?s=vnpost" | grep -oP 'href="[^"]*vnpost[^"]*"' | head -20

# ??3: Google Play Store ????
echo -e "\n[+] ?? Play Store ????..."
for pkg in $(cat vnpost_packages.txt); do
    url="https://play.google.com/store/apps/details?id=$pkg&hl=en"
    echo "Play Store: $url"
done
