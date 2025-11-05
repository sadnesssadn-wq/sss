#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import re
import json
import urllib.parse
from concurrent.futures import ThreadPoolExecutor, as_completed
import urllib3
urllib3.disable_warnings()

class DeepJSAnalysis:
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
    
    def get_all_pages(self):
        """获取所有页面"""
        pages = [
            '/',
            '/dang-nhap',
            '/dang-ky',
            '/trang-chu',
            '/home',
            '/index',
            '/admin',
            '/user',
            '/customer',
            '/order',
        ]
        
        all_js = set()
        for page in pages:
            try:
                r = self.session.get(self.base_url + page, timeout=10)
                html = r.text
                
                # 提取JS
                matches = re.findall(r'<script[^>]+src=["\']([^"\']+)["\']', html, re.IGNORECASE)
                for match in matches:
                    if '.js' in match:
                        if match.startswith('http'):
                            all_js.add(match)
                        elif match.startswith('/'):
                            all_js.add(self.base_url + match)
                        else:
                            all_js.add(self.base_url + '/' + match)
            except:
                pass
        
        return list(all_js)
    
    def deep_extract_from_js(self, js_content):
        """深度提取端点"""
        endpoints = set()
        
        # 更全面的模式
        patterns = [
            # 直接路径
            r'["\'](/[A-Za-z][A-Za-z0-9/_-]*)["\']',
            # API调用
            r'(?:url|path|endpoint|api|route)\s*[:=]\s*["\']([/][^"\']+)["\']',
            # 函数调用
            r'(?:fetch|ajax|axios|\.(?:get|post|put|delete))\s*\(\s*["\']([/][^"\']+)["\']',
            # 模板字符串
            r'`([/][^`]+)`',
            # 变量拼接
            r'["\']([/][A-Za-z]+/[A-Za-z0-9]+)["\']',
            # Handle路径
            r'["\'](/Handle/[A-Za-z0-9]+)["\']',
            # Account路径
            r'["\'](/Account/[A-Za-z0-9]+)["\']',
        ]
        
        for pattern in patterns:
            matches = re.findall(pattern, js_content, re.IGNORECASE)
            for match in matches:
                if match and len(match) > 2:
                    clean = match.split('?')[0].split('#')[0].split('"')[0].split("'")[0]
                    if clean.startswith('/') and not clean.startswith('//'):
                        endpoints.add(clean)
        
        return endpoints
    
    def run_all(self):
        """执行深度分析"""
        print("="*60)
        print("深度JS分析提取所有端点")
        print("="*60)
        
        # 1. 获取所有JS文件
        print("\n[*] 获取所有JS文件...")
        js_files = self.get_all_pages()
        print(f"    [+] 发现 {len(js_files)} 个JS文件")
        
        # 2. 分析每个JS文件
        print("\n[*] 深度分析JS文件...")
        with ThreadPoolExecutor(max_workers=30) as executor:
            futures = {executor.submit(self.session.get, js_url, timeout=10): js_url for js_url in js_files[:100]}
            
            for future in as_completed(futures):
                js_url = futures[future]
                try:
                    r = future.result()
                    endpoints = self.deep_extract_from_js(r.text)
                    self.all_endpoints.update(endpoints)
                    if endpoints:
                        print(f"    [+] {js_url}: {len(endpoints)} 个端点")
                except:
                    pass
        
        # 保存结果
        all_list = sorted(list(self.all_endpoints))
        with open('deep_js_endpoints.json', 'w', encoding='utf-8') as f:
            json.dump({
                'endpoints': all_list,
                'total': len(all_list)
            }, f, indent=2, ensure_ascii=False)
        
        print(f"\n[+] 总共发现 {len(all_list)} 个端点")
        return all_list

if __name__ == "__main__":
    analyzer = DeepJSAnalysis()
    endpoints = analyzer.run_all()