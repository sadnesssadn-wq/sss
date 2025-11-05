#!/usr/bin/env python3
import requests
import urllib3
import re
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

base_url = "https://olympic.su.ac.th"

print("[*] 扫描web入口点...")

# 常见目录和文件
paths = [
    "/admin/",
    "/administrator/",
    "/wp-admin/",
    "/phpmyadmin/",
    "/upload/",
    "/uploads/",
    "/files/",
    "/file/",
    "/upload.php",
    "/file_upload.php",
    "/upload_file.php",
    "/admin.php",
    "/login.php",
    "/config.php",
    "/.env",
    "/.git/config",
    "/backup/",
    "/backups/",
    "/www/",
    "/web/",
    "/cpanel/",
    "/phpinfo.php",
    "/info.php",
    "/test.php",
    "/shell.php",
    "/cmd.php",
    "/c.php",
    "/s.php",
    "/index.php.bak",
    "/.htaccess",
    "/robots.txt",
    "/sitemap.xml",
]

for path in paths:
    try:
        resp = requests.get(f"{base_url}{path}", verify=False, timeout=5)
        if resp.status_code == 200:
            print(f"[+] {path} - {resp.status_code} ({len(resp.text)} bytes)")
        elif resp.status_code == 403:
            print(f"[!] {path} - {resp.status_code} (Forbidden)")
    except:
        pass

# 扫描子目录
subdirs = [
    "/enmeeting/",
    "/banpot/",
    "/scmeeting/",
    "/admin/",
    "/api/",
    "/api/v1/",
    "/dashboard/",
    "/panel/",
]

print("\n[*] 扫描子目录文件...")
for subdir in subdirs:
    files = ["index.php", "upload.php", "admin.php", "config.php", "test.php"]
    for file in files:
        try:
            resp = requests.get(f"{base_url}{subdir}{file}", verify=False, timeout=5)
            if resp.status_code == 200:
                print(f"[+] {subdir}{file} - {resp.status_code}")
        except:
            pass
