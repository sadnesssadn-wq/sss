#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import re
import json
import urllib.parse
from concurrent.futures import ThreadPoolExecutor, as_completed
import urllib3
urllib3.disable_warnings()

class ExtractAllJSEndpoints:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        self.all_endpoints = set()
        self.js_files = []
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def get_main_page(self):
        """获取主页面"""
        try:
            r = self.session.get(self.base_url, timeout=10)
            return r.text
        except:
            return ""
    
    def extract_js_files(self, html):
        """提取所有JS文件路径"""
        patterns = [
            r'<script[^>]+src=["\']([^"\']+\.js[^"\']*)["\']',
            r'src=["\']([^"\']+\.js[^"\']*)["\']',
            r'["\']([^"\']+\.js[^"\']*)["\']',
        ]
        
        js_files = set()
        for pattern in patterns:
            matches = re.findall(pattern, html, re.IGNORECASE)
            for match in matches:
                if match.startswith('http'):
                    js_files.add(match)
                elif match.startswith('/'):
                    js_files.add(self.base_url + match)
                else:
                    js_files.add(self.base_url + '/' + match)
        
        return list(js_files)
    
    def fetch_js_content(self, js_url):
        """获取JS文件内容"""
        try:
            r = self.session.get(js_url, timeout=10)
            return r.text
        except:
            return ""
    
    def extract_endpoints_from_js(self, js_content):
        """从JS中提取所有端点"""
        endpoints = set()
        
        # API调用模式
        patterns = [
            r'["\']([/][^"\']+)["\']',
            r'url\s*[:=]\s*["\']([/][^"\']+)["\']',
            r'path\s*[:=]\s*["\']([/][^"\']+)["\']',
            r'endpoint\s*[:=]\s*["\']([/][^"\']+)["\']',
            r'fetch\s*\(\s*["\']([/][^"\']+)["\']',
            r'ajax\s*\(\s*["\']([/][^"\']+)["\']',
            r'\.post\s*\(\s*["\']([/][^"\']+)["\']',
            r'\.get\s*\(\s*["\']([/][^"\']+)["\']',
            r'axios\.[a-z]+\s*\(\s*["\']([/][^"\']+)["\']',
            r'["\'](/[A-Za-z]+/[A-Za-z0-9]+)["\']',
            r'["\'](/Handle/[^"\']+)["\']',
            r'["\'](/Account/[^"\']+)["\']',
            r'["\'](/Api/[^"\']+)["\']',
            r'["\'](/api/[^"\']+)["\']',
            r'["\'](/Admin/[^"\']+)["\']',
            r'["\'](/User/[^"\']+)["\']',
            r'["\'](/Customer/[^"\']+)["\']',
            r'["\'](/Order/[^"\']+)["\']',
            r'["\'](/Report/[^"\']+)["\']',
            r'["\'](/Data/[^"\']+)["\']',
        ]
        
        for pattern in patterns:
            matches = re.findall(pattern, js_content, re.IGNORECASE)
            for match in matches:
                if match and len(match) > 2 and not match.startswith('//'):
                    if match.startswith('/'):
                        endpoints.add(match.split('?')[0].split('#')[0])
        
        return endpoints
    
    def brute_force_endpoints(self):
        """暴力枚举端点"""
        base_paths = ['', '/Account', '/Handle', '/Admin', '/api', '/Api', '/API', 
                     '/User', '/Customer', '/Order', '/Report', '/Data', '/File',
                     '/Product', '/Warehouse', '/Permission', '/Group', '/Role',
                     '/System', '/Config', '/Setting', '/Log', '/History']
        
        actions = ['Get', 'List', 'Search', 'Find', 'Query', 'Load', 'Fetch', 
                  'Retrieve', 'Create', 'Update', 'Delete', 'Remove', 'Add',
                  'Save', 'Submit', 'Export', 'Import', 'Download', 'Upload',
                  'User', 'Users', 'Info', 'Details', 'Profile', 'ById', 
                  'GetById', 'GetUser', 'GetUserInfo', 'GetUserById',
                  'SearchList', 'GetList', 'GetAll', 'GetAllUsers',
                  'GetCustomer', 'GetCustomers', 'GetOrder', 'GetOrders',
                  'GetProduct', 'GetProducts', 'GetWarehouse', 'GetWarehouses']
        
        found = set()
        for base in base_paths:
            for action in actions:
                endpoints = [
                    f"{base}/{action}",
                    f"{base}/{action.lower()}",
                    f"{base}/{action.upper()}",
                ]
                for endpoint in endpoints:
                    found.add(endpoint)
        
        return found
    
    def run_all(self):
        """执行所有提取"""
        print("="*60)
        print("提取所有JS端点")
        print("="*60)
        
        # 1. 获取主页面
        print("\n[*] 获取主页面...")
        html = self.get_main_page()
        print(f"    [+] 主页面长度: {len(html)}")
        
        # 2. 提取JS文件
        print("\n[*] 提取JS文件...")
        self.js_files = self.extract_js_files(html)
        print(f"    [+] 发现 {len(self.js_files)} 个JS文件")
        
        # 3. 从JS文件中提取端点
        print("\n[*] 从JS文件中提取端点...")
        with ThreadPoolExecutor(max_workers=20) as executor:
            futures = {executor.submit(self.fetch_js_content, js_url): js_url for js_url in self.js_files[:50]}
            for future in as_completed(futures):
                js_url = futures[future]
                try:
                    js_content = future.result()
                    endpoints = self.extract_endpoints_from_js(js_content)
                    self.all_endpoints.update(endpoints)
                    if endpoints:
                        print(f"    [+] {js_url}: {len(endpoints)} 个端点")
                except:
                    pass
        
        # 4. 暴力枚举
        print("\n[*] 暴力枚举端点...")
        brute_endpoints = self.brute_force_endpoints()
        self.all_endpoints.update(brute_endpoints)
        print(f"    [+] 暴力枚举: {len(brute_endpoints)} 个端点")
        
        # 保存结果
        all_endpoints_list = sorted(list(self.all_endpoints))
        with open('all_extracted_endpoints.json', 'w', encoding='utf-8') as f:
            json.dump({
                'js_files': self.js_files,
                'endpoints': all_endpoints_list,
                'total': len(all_endpoints_list)
            }, f, indent=2, ensure_ascii=False)
        
        print(f"\n[+] 总共发现 {len(all_endpoints_list)} 个端点")
        return all_endpoints_list

if __name__ == "__main__":
    extractor = ExtractAllJSEndpoints()
    endpoints = extractor.run_all()