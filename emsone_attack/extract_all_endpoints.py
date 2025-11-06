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
    
    def fetch_page(self, url):
        """获取页面内容"""
        try:
            r = self.session.get(url, timeout=10)
            return r.text
        except:
            return ""
    
    def extract_js_files(self, html):
        """提取JS文件路径"""
        patterns = [
            r'<script[^>]+src=[\"\']([^\"\']+\.js[^\"\']*)[\"\']',
            r'src=[\"\']([^\"\']+\.js[^\"\']*)[\"\']',
            r'[\"\']([^\"\']+\.js[^\"\']*)[\"\']',
        ]
        
        js_files = set()
        for pattern in patterns:
            matches = re.findall(pattern, html, re.IGNORECASE)
            for match in matches:
                if match.startswith('http'):
                    js_files.add(match)
                elif match.startswith('/'):
                    js_files.add(urljoin(self.base_url, match))
                else:
                    js_files.add(urljoin(self.base_url, '/' + match))
        
        return js_files
    
    def extract_endpoints_from_js(self, js_content):
        """从JS内容中提取端点"""
        endpoints = set()
        
        # 匹配各种API调用模式
        patterns = [
            r'[\"\'`](/[^\"\'`]+/[^\"\'`]+)[\"\'`]',
            r'[\"\'`](/Account/[^\"\'`]+)[\"\'`]',
            r'[\"\'`](/Handle/[^\"\'`]+)[\"\'`]',
            r'[\"\'`](/Api/[^\"\'`]+)[\"\'`]',
            r'[\"\'`](/API/[^\"\'`]+)[\"\'`]',
            r'[\"\'`](/api/[^\"\'`]+)[\"\'`]',
            r'[\"\'`](/Admin/[^\"\'`]+)[\"\'`]',
            r'[\"\'`](/User/[^\"\'`]+)[\"\'`]',
            r'url:\s*[\"\'`]([^\"\'`]+)[\"\'`]',
            r'url:\s*[\"\'`](/[^\"\'`]+)[\"\'`]',
            r'fetch\([\"\'`]([^\"\'`]+)[\"\'`]',
            r'\.get\([\"\'`]([^\"\'`]+)[\"\'`]',
            r'\.post\([\"\'`]([^\"\'`]+)[\"\'`]',
            r'\.ajax\([^\{]*url:\s*[\"\'`]([^\"\'`]+)[\"\'`]',
            r'axios\.(get|post)\([\"\'`]([^\"\'`]+)[\"\'`]',
            r'[\"\'`](/[A-Za-z]+/[A-Za-z]+[A-Za-z0-9]*)[\"\'`]',
        ]
        
        for pattern in patterns:
            matches = re.findall(pattern, js_content, re.IGNORECASE | re.MULTILINE)
            for match in matches:
                if isinstance(match, tuple):
                    match = match[-1] if match[-1] else match[0]
                
                if match.startswith('/') and len(match) > 2:
                    # 清理参数
                    if '?' in match:
                        match = match.split('?')[0]
                    if '#' in match:
                        match = match.split('#')[0]
                    
                    # 过滤静态资源
                    if not any(match.endswith(ext) for ext in ['.js', '.css', '.png', '.jpg', '.gif', '.svg', '.ico', '.woff', '.ttf']):
                        endpoints.add(match)
        
        return endpoints
    
    def extract_from_html(self, html):
        """从HTML中提取端点"""
        endpoints = set()
        
        patterns = [
            r'href=[\"\']([^\"\']+)[\"\']',
            r'src=[\"\']([^\"\']+)[\"\']',
            r'action=[\"\']([^\"\']+)[\"\']',
            r'[\"\'`](/[^\"\'`?#]+)[\"\'`]',
        ]
        
        for pattern in patterns:
            matches = re.findall(pattern, html, re.IGNORECASE)
            for match in matches:
                if match.startswith('/') and len(match) > 1:
                    if '?' in match:
                        match = match.split('?')[0]
                    if not any(match.endswith(ext) for ext in ['.js', '.css', '.png', '.jpg', '.gif', '.svg', '.ico']):
                        endpoints.add(match)
        
        return endpoints
    
    def run_all(self):
        """执行所有提取"""
        print("="*60)
        print("提取所有端点")
        print("="*60)
        
        # 1. 获取主页面
        print("\n[*] 获取主页面...")
        main_html = self.fetch_page(self.base_url)
        main_endpoints = self.extract_from_html(main_html)
        print(f"    [+] 从主页面提取: {len(main_endpoints)} 个端点")
        
        # 2. 提取JS文件
        print("\n[*] 提取JS文件...")
        js_files = self.extract_js_files(main_html)
        print(f"    [+] 发现 {len(js_files)} 个JS文件")
        
        # 3. 从每个JS文件中提取端点
        print("\n[*] 从JS文件中提取端点...")
        all_js_endpoints = set()
        for js_file in list(js_files)[:50]:  # 限制前50个
            try:
                print(f"    [*] 处理: {js_file}")
                js_content = self.fetch_page(js_file)
                endpoints = self.extract_endpoints_from_js(js_content)
                all_js_endpoints.update(endpoints)
                if endpoints:
                    print(f"        [+] 提取 {len(endpoints)} 个端点")
            except Exception as e:
                pass
        
        # 合并所有端点
        self.all_endpoints = main_endpoints | all_js_endpoints
        
        # 保存结果
        with open('all_endpoints.json', 'w', encoding='utf-8') as f:
            json.dump({
                'main_endpoints': list(main_endpoints),
                'js_endpoints': list(all_js_endpoints),
                'all_endpoints': list(self.all_endpoints)
            }, f, indent=2, ensure_ascii=False)
        
        print("\n" + "="*60)
        print("提取结果")
        print("="*60)
        print(f"主页面端点: {len(main_endpoints)}")
        print(f"JS文件端点: {len(all_js_endpoints)}")
        print(f"总端点: {len(self.all_endpoints)}")
        
        print("\n[*] 端点列表:")
        for ep in sorted(list(self.all_endpoints))[:100]:
            print(f"    {ep}")

if __name__ == "__main__":
    extractor = ExtractAllEndpoints()
    extractor.run_all()