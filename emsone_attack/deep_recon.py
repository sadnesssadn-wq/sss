#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import json
import re
from urllib.parse import urljoin
from concurrent.futures import ThreadPoolExecutor, as_completed
import urllib3
urllib3.disable_warnings()

class DeepRecon:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        self.found_endpoints = []
        self.js_endpoints = []
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def fetch_main_page(self):
        """获取主页并提取JS端点"""
        print("[*] 获取主页并分析JS...")
        try:
            r = self.session.get(self.base_url, timeout=10)
            
            # 提取JS文件
            js_files = re.findall(r'src=["\']([^"\']*\.js[^"\']*)["\']', r.text)
            css_files = re.findall(r'href=["\']([^"\']*\.css[^"\']*)["\']', r.text)
            
            print(f"[+] 发现 {len(js_files)} 个JS文件")
            print(f"[+] 发现 {len(css_files)} 个CSS文件")
            
            # 提取API端点（从JS代码中）
            api_patterns = [
                r'["\'](/api/[^"\']+)["\']',
                r'["\'](/Account/[^"\']+)["\']',
                r'["\'](/Admin/[^"\']+)["\']',
                r'url:\s*["\']([^"\']+)["\']',
                r'\.get\(["\']([^"\']+)["\']',
                r'\.post\(["\']([^"\']+)["\']',
                r'fetch\(["\']([^"\']+)["\']',
                r'ajax\(["\']([^"\']+)["\']',
            ]
            
            endpoints = set()
            for pattern in api_patterns:
                matches = re.findall(pattern, r.text, re.IGNORECASE)
                endpoints.update(matches)
            
            self.js_endpoints = list(endpoints)
            print(f"[+] 从页面提取 {len(self.js_endpoints)} 个端点")
            
            # 下载并分析JS文件
            for js_file in js_files[:10]:  # 分析前10个
                if js_file.startswith('http'):
                    js_url = js_file
                else:
                    js_url = urljoin(self.base_url, js_file)
                self.analyze_js_file(js_url)
            
            return r.text
        except Exception as e:
            print(f"[-] Error: {e}")
            return None
    
    def analyze_js_file(self, url):
        """分析JS文件提取端点"""
        try:
            r = self.session.get(url, timeout=5)
            if r.status_code == 200:
                content = r.text
                
                # 提取API端点
                patterns = [
                    r'["\'](/api/[^"\']+)["\']',
                    r'["\'](/Account/[^"\']+)["\']',
                    r'["\'](/Admin/[^"\']+)["\']',
                    r'url:\s*["\']([^"\']+)["\']',
                    r'\.get\(["\']([^"\']+)["\']',
                    r'\.post\(["\']([^"\']+)["\']',
                    r'fetch\(["\']([^"\']+)["\']',
                    r'ajax\(["\']([^"\']+)["\']',
                    r'endpoint["\']?\s*[:=]\s*["\']([^"\']+)["\']',
                    r'path["\']?\s*[:=]\s*["\']([^"\']+)["\']',
                ]
                
                for pattern in patterns:
                    matches = re.findall(pattern, content, re.IGNORECASE)
                    self.js_endpoints.extend(matches)
        except:
            pass
    
    def directory_bruteforce(self):
        """目录爆破"""
        print("[*] 目录爆破中...")
        
        wordlist = [
            "admin", "Admin", "ADMIN", "administrator", "Administrator",
            "api", "API", "Api", "api/v1", "api/v2",
            "dashboard", "Dashboard", "panel", "Panel",
            "manager", "Manager", "management", "Management",
            "user", "User", "users", "Users",
            "profile", "Profile", "settings", "Settings",
            "config", "Config", "configuration", "Configuration",
            "backup", "Backup", "backups", "Backups",
            "upload", "Upload", "uploads", "Uploads",
            "download", "Download", "downloads", "Downloads",
            "export", "Export", "exports", "Exports",
            "report", "Report", "reports", "Reports",
            "data", "Data", "database", "Database",
            "file", "File", "files", "Files",
            "test", "Test", "test", "dev", "Dev", "staging", "Staging",
            "swagger", "Swagger", "swagger-ui", "api-docs", "api-documentation",
            "graphql", "GraphQL", "graphiql",
            ".git", ".svn", ".env", "web.config", "application.properties",
            "phpinfo.php", "info.php", "test.php", "debug.php",
            "robots.txt", "sitemap.xml", ".well-known",
        ]
        
        found = []
        with ThreadPoolExecutor(max_workers=20) as executor:
            futures = {executor.submit(self.test_endpoint, path): path for path in wordlist}
            for future in as_completed(futures):
                result = future.result()
                if result:
                    found.append(result)
                    print(f"[+] {result['url']} [{result['status']}]")
        
        return found
    
    def test_endpoint(self, path):
        """测试端点"""
        url = urljoin(self.base_url, path)
        try:
            r = self.session.get(url, timeout=5, allow_redirects=False)
            if r.status_code in [200, 201, 301, 302, 403, 401]:
                return {
                    'url': url,
                    'status': r.status_code,
                    'length': len(r.content),
                    'headers': dict(r.headers)
                }
        except:
            pass
        return None
    
    def test_api_endpoints(self):
        """测试所有发现的API端点"""
        print("[*] 测试API端点...")
        
        all_endpoints = set(self.js_endpoints)
        
        # 添加常见API模式
        api_patterns = [
            "/Account/GetUserInfo",
            "/Account/GetAllUsers",
            "/Account/GetUserList",
            "/Account/ChangePassword",
            "/Account/UpdateProfile",
            "/Account/DeleteUser",
            "/Account/CreateUser",
            "/Account/Export",
            "/Admin/Users",
            "/Admin/GetUsers",
            "/Admin/GetUser",
            "/Admin/DeleteUser",
            "/Admin/CreateUser",
            "/Admin/UpdateUser",
            "/Admin/Export",
            "/Admin/Settings",
            "/Admin/Config",
            "/Admin/Backup",
            "/api/users",
            "/api/user",
            "/api/admin",
            "/api/data",
            "/api/export",
            "/api/upload",
            "/api/download",
            "/api/delete",
            "/api/search",
            "/Report/Export",
            "/Report/Download",
            "/Data/Export",
            "/Data/Download",
            "/File/Upload",
            "/File/Download",
            "/File/Delete",
        ]
        
        all_endpoints.update(api_patterns)
        
        results = []
        for endpoint in all_endpoints:
            if not endpoint.startswith('/'):
                endpoint = '/' + endpoint
            result = self.test_endpoint(endpoint)
            if result:
                results.append(result)
                print(f"[+] {result['url']} [{result['status']}]")
        
        return results
    
    def test_parameter_enum(self):
        """参数枚举测试"""
        print("[*] 参数枚举测试...")
        
        base_endpoints = [
            "/Account/GetUserInfo",
            "/Admin/Users",
            "/api/users",
            "/api/search",
        ]
        
        parameters = [
            "id", "ID", "Id", "user_id", "userID", "userId",
            "name", "Name", "username", "UserName", "userName",
            "email", "Email", "mobile", "Mobile", "mobileNumber",
            "page", "Page", "limit", "Limit", "offset", "Offset",
            "search", "Search", "q", "query", "Query",
            "sort", "Sort", "order", "Order", "orderBy",
            "token", "Token", "key", "Key", "api_key", "apikey",
        ]
        
        results = []
        for endpoint in base_endpoints:
            for param in parameters:
                test_url = f"{endpoint}?{param}=1"
                result = self.test_endpoint(test_url)
                if result and result['status'] in [200, 400, 500]:
                    results.append(result)
                    print(f"[+] {result['url']} [{result['status']}]")
        
        return results
    
    def extract_sensitive_info(self):
        """提取敏感信息"""
        print("[*] 提取敏感信息...")
        
        sensitive_paths = [
            "/.env",
            "/web.config",
            "/application.properties",
            "/config.json",
            "/config.php",
            "/config.js",
            "/.git/config",
            "/robots.txt",
            "/sitemap.xml",
            "/package.json",
            "/composer.json",
            "/pom.xml",
        ]
        
        found_info = []
        for path in sensitive_paths:
            result = self.test_endpoint(path)
            if result and result['status'] == 200:
                print(f"[!] 敏感文件: {result['url']}")
                found_info.append(result)
        
        return found_info
    
    def run_all(self):
        """执行所有侦察"""
        print("[*] 开始深度侦察...\n")
        
        self.fetch_main_page()
        js_endpoints = self.test_api_endpoints()
        dir_results = self.directory_bruteforce()
        param_results = self.test_parameter_enum()
        sensitive_info = self.extract_sensitive_info()
        
        all_results = {
            'js_endpoints': list(set(self.js_endpoints)),
            'api_endpoints': js_endpoints,
            'directories': dir_results,
            'parameters': param_results,
            'sensitive_info': sensitive_info
        }
        
        with open('deep_recon_results.json', 'w', encoding='utf-8') as f:
            json.dump(all_results, f, indent=2, ensure_ascii=False)
        
        print(f"\n[+] JS端点: {len(set(self.js_endpoints))}")
        print(f"[+] API端点: {len(js_endpoints)}")
        print(f"[+] 目录: {len(dir_results)}")
        print(f"[+] 参数: {len(param_results)}")
        print(f"[+] 敏感信息: {len(sensitive_info)}")

if __name__ == "__main__":
    recon = DeepRecon()
    recon.run_all()