#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import re
import json
import urllib3
from urllib.parse import urljoin, urlparse
urllib3.disable_warnings()

class ExtractAllEndpoints:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        self.all_endpoints = set()
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def fetch_page(self, path):
        """获取页面内容"""
        try:
            url = urljoin(self.base_url, path)
            r = self.session.get(url, timeout=10)
            return r.text
        except:
            return None
    
    def extract_from_js(self, js_content):
        """从JS文件中提取端点"""
        endpoints = set()
        
        # 匹配各种API调用模式
        patterns = [
            r'["\'](/[^"\']+)["\']',  # 引号内的路径
            r'url\s*[:=]\s*["\']([^"\']+)["\']',  # url: "/path"
            r'["\'](/Handle/[^"\']+)["\']',  # Handle端点
            r'["\'](/Account/[^"\']+)["\']',  # Account端点
            r'["\'](/api/[^"\']+)["\']',  # API端点
            r'["\'](/Admin/[^"\']+)["\']',  # Admin端点
            r'\.post\(["\']([^"\']+)["\']',  # .post("/path")
            r'\.get\(["\']([^"\']+)["\']',  # .get("/path")
            r'\.ajax\([^}]*url\s*:\s*["\']([^"\']+)["\']',  # ajax url
            r'fetch\(["\']([^"\']+)["\']',  # fetch("/path")
            r'axios\.[^\(]+\(["\']([^"\']+)["\']',  # axios.get("/path")
            r'["\'](/[A-Z][a-zA-Z]+/[A-Z][a-zA-Z]+)["\']',  # /Controller/Action
        ]
        
        for pattern in patterns:
            matches = re.findall(pattern, js_content, re.IGNORECASE)
            for match in matches:
                if match.startswith('/') and len(match) > 1:
                    # 清理路径
                    path = match.split('?')[0].split('#')[0]
                    if path not in ['/css', '/js', '/img', '/assets', '/images']:
                        endpoints.add(path)
        
        return endpoints
    
    def extract_from_html(self, html_content):
        """从HTML中提取端点"""
        endpoints = set()
        
        # 匹配各种端点
        patterns = [
            r'href=["\']([^"\']+)["\']',
            r'src=["\']([^"\']+)["\']',
            r'action=["\']([^"\']+)["\']',
            r'data-url=["\']([^"\']+)["\']',
            r'data-action=["\']([^"\']+)["\']',
            r'api["\']?\s*:\s*["\']([^"\']+)["\']',
        ]
        
        for pattern in patterns:
            matches = re.findall(pattern, html_content, re.IGNORECASE)
            for match in matches:
                if match.startswith('/') and len(match) > 1:
                    path = match.split('?')[0].split('#')[0]
                    if not path.startswith(('/css/', '/js/', '/img/', '/assets/', '/images/', '/fonts/')):
                        endpoints.add(path)
        
        return endpoints
    
    def find_js_files(self, html_content):
        """查找HTML中引用的JS文件"""
        js_files = []
        patterns = [
            r'<script[^>]+src=["\']([^"\']+\.js[^"\']*)["\']',
            r'src=["\']([^"\']+\.js[^"\']*)["\']',
        ]
        
        for pattern in patterns:
            matches = re.findall(pattern, html_content, re.IGNORECASE)
            for match in matches:
                if match.startswith('/') or match.startswith('http'):
                    js_files.append(match)
                elif not match.startswith('http'):
                    js_files.append('/' + match.lstrip('/'))
        
        return list(set(js_files))
    
    def brute_force_endpoints(self):
        """暴力枚举端点"""
        controllers = ['Account', 'Handle', 'Admin', 'User', 'Customer', 'Order', 'Report', 'Data', 'File', 'Api', 'API']
        actions = ['Get', 'List', 'Search', 'Find', 'Query', 'Load', 'Fetch', 'Retrieve', 'Create', 'Update', 'Delete', 'Save', 'Add', 'Remove', 'Info', 'Details', 'Profile', 'ById', 'GetById', 'GetUser', 'GetUserInfo', 'GetUserById', 'SearchList', 'GetList', 'JLogin', 'Logout', 'Register', 'RegisterView', 'ChangePassword', 'UpdateProfile']
        
        endpoints = set()
        for controller in controllers:
            for action in actions:
                endpoints.add(f'/{controller}/{action}')
                endpoints.add(f'/{controller}/{action}ById')
                endpoints.add(f'/{controller}/Get{action}')
                endpoints.add(f'/{controller}/Search{action}')
        
        return endpoints
    
    def scan_all(self):
        """全面扫描"""
        print("[*] 获取主页面...")
        main_html = self.fetch_page('/')
        if main_html:
            self.all_endpoints.update(self.extract_from_html(main_html))
            print(f"    [+] 从HTML提取: {len(self.all_endpoints)} 个端点")
        
        # 查找JS文件
        print("[*] 查找JS文件...")
        if main_html:
            js_files = self.find_js_files(main_html)
            print(f"    [+] 找到 {len(js_files)} 个JS文件")
            
            for js_file in js_files[:50]:  # 限制前50个
                if js_file.startswith('/'):
                    js_url = urljoin(self.base_url, js_file)
                    try:
                        js_content = self.fetch_page(js_file)
                        if js_content:
                            endpoints = self.extract_from_js(js_content)
                            self.all_endpoints.update(endpoints)
                            print(f"    [+] {js_file}: 提取 {len(endpoints)} 个端点")
                    except:
                        pass
        
        # 暴力枚举
        print("[*] 暴力枚举端点...")
        brute_endpoints = self.brute_force_endpoints()
        self.all_endpoints.update(brute_endpoints)
        print(f"    [+] 暴力枚举: {len(brute_endpoints)} 个端点")
        
        # 保存结果
        endpoints_list = sorted(list(self.all_endpoints))
        with open('all_endpoints.json', 'w', encoding='utf-8') as f:
            json.dump(endpoints_list, f, indent=2, ensure_ascii=False)
        
        print(f"\n[+] 总共发现 {len(endpoints_list)} 个端点")
        return endpoints_list

if __name__ == "__main__":
    extractor = ExtractAllEndpoints()
    endpoints = extractor.scan_all()