#!/usr/bin/env python3
"""
Vnpost APK ??????
???????? APK
"""

import os
import sys
import requests
import re
from urllib.parse import urljoin, quote
import time

# ??????
PACKAGES = [
    "com.vnpost.ems",
    "com.vnpost.customer", 
    "com.vnpost",
    "vn.vnpost.ems",
    "vn.com.vnpost",
    "com.vnpost.tracking",
    "com.vnpost.courier",
    "com.vnpost.mobile",
    "com.vnpost.epost",
]

HEADERS = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'
}

def download_from_apkcombo(package_name, output_dir="apks"):
    """? APKCombo ?? APK"""
    os.makedirs(output_dir, exist_ok=True)
    
    print(f"\n[+] ????: {package_name}")
    
    # APKCombo ????
    url = f"https://apkcombo.com/{package_name}/download/phone"
    
    try:
        resp = requests.get(url, headers=HEADERS, timeout=30, allow_redirects=True)
        print(f"[*] ??: {url}")
        print(f"[*] ???: {resp.status_code}")
        
        # ??????
        # APKCombo ???????
        download_patterns = [
            r'href="(https://download\.apkcombo\.com/[^"]+\.apk[^"]*)"',
            r'data-download="([^"]+\.apk[^"]*)"',
            r'"downloadUrl":"([^"]+)"',
        ]
        
        download_url = None
        for pattern in download_patterns:
            matches = re.findall(pattern, resp.text)
            if matches:
                download_url = matches[0]
                break
        
        if not download_url:
            # ????????URL
            print(f"[!] ????????????API??...")
            return False
            
        print(f"[+] ??????: {download_url[:100]}...")
        
        # ?? APK
        apk_resp = requests.get(download_url, headers=HEADERS, stream=True, timeout=120)
        
        if apk_resp.status_code == 200:
            filename = f"{package_name}.apk"
            filepath = os.path.join(output_dir, filename)
            
            total_size = int(apk_resp.headers.get('content-length', 0))
            print(f"[*] ????: {total_size / 1024 / 1024:.2f} MB")
            
            with open(filepath, 'wb') as f:
                downloaded = 0
                for chunk in apk_resp.iter_content(chunk_size=8192):
                    if chunk:
                        f.write(chunk)
                        downloaded += len(chunk)
                        if total_size > 0:
                            progress = (downloaded / total_size) * 100
                            print(f"\r[*] ????: {progress:.1f}%", end='', flush=True)
            
            print(f"\n[?] ????: {filepath}")
            return True
        else:
            print(f"[!] ????: {apk_resp.status_code}")
            return False
            
    except Exception as e:
        print(f"[!] ??: {e}")
        return False

def download_from_apkpure(package_name, output_dir="apks"):
    """? APKPure ?? APK (????)"""
    url = f"https://d.apkpure.com/b/APK/{package_name}?version=latest"
    
    try:
        print(f"\n[+] ??? APKPure ??: {package_name}")
        resp = requests.get(url, headers=HEADERS, stream=True, timeout=60, allow_redirects=True)
        
        if resp.status_code == 200 and 'application' in resp.headers.get('content-type', ''):
            filename = f"{package_name}_apkpure.apk"
            filepath = os.path.join(output_dir, filename)
            
            with open(filepath, 'wb') as f:
                for chunk in resp.iter_content(chunk_size=8192):
                    if chunk:
                        f.write(chunk)
            
            # ????
            if os.path.getsize(filepath) > 1000:  # ??1KB
                print(f"[?] ????: {filepath}")
                return True
            else:
                os.remove(filepath)
                return False
        else:
            return False
            
    except Exception as e:
        print(f"[!] APKPure ????: {e}")
        return False

def get_app_info(package_name):
    """??????"""
    try:
        # ? Play Store ??????
        url = f"https://play.google.com/store/apps/details?id={package_name}&hl=en"
        resp = requests.get(url, headers=HEADERS, timeout=15)
        
        if resp.status_code == 200:
            # ??????
            name_match = re.search(r'<title>([^<]+) - Apps on Google Play</title>', resp.text)
            name = name_match.group(1) if name_match else package_name
            
            # ????
            version_match = re.search(r'"([0-9]+\.[0-9]+\.[0-9]+)"', resp.text)
            version = version_match.group(1) if version_match else "unknown"
            
            # ?????
            dev_match = re.search(r'"author".*?"name":"([^"]+)"', resp.text)
            developer = dev_match.group(1) if dev_match else "unknown"
            
            print(f"\n[INFO] {package_name}")
            print(f"  ??: {name}")
            print(f"  ??: {version}")
            print(f"  ???: {developer}")
            
            return {
                'name': name,
                'version': version,
                'developer': developer,
                'package': package_name
            }
    except Exception as e:
        print(f"[!] ????????: {e}")
    
    return None

def main():
    print("=" * 60)
    print("Vnpost APK ??????")
    print("=" * 60)
    
    # ??????
    os.makedirs("apks", exist_ok=True)
    os.makedirs("app_info", exist_ok=True)
    
    results = []
    
    for package in PACKAGES:
        print(f"\n{'=' * 60}")
        print(f"??: {package}")
        print(f"{'=' * 60}")
        
        # ??????
        info = get_app_info(package)
        if info:
            results.append(info)
        
        # ????
        success = False
        
        # ??1: APKCombo
        success = download_from_apkcombo(package)
        
        # ??2: APKPure (????1??)
        if not success:
            time.sleep(2)
            success = download_from_apkpure(package)
        
        if not success:
            print(f"[!] ???????: {package}")
        
        time.sleep(3)  # ?????
    
    # ????
    print(f"\n{'=' * 60}")
    print("??????:")
    print(f"{'=' * 60}")
    
    with open("app_info/vnpost_apps_info.txt", "w", encoding="utf-8") as f:
        for info in results:
            line = f"{info['package']},{info['name']},{info['version']},{info['developer']}"
            print(line)
            f.write(line + "\n")
    
    # ???????
    apks = [f for f in os.listdir("apks") if f.endswith('.apk')]
    print(f"\n[?] ??? {len(apks)} ? APK:")
    for apk in apks:
        size = os.path.getsize(os.path.join("apks", apk)) / 1024 / 1024
        print(f"  - {apk} ({size:.2f} MB)")

if __name__ == "__main__":
    main()
