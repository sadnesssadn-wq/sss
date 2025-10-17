#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
红队API深度分析工具 - 专门挖掘订单API和签名机制
顶级红队安全专家专用工具
"""

import subprocess
import sys
import os
import json
import time
import re
import hashlib
from datetime import datetime

class RedTeamAPIAnalyzer:
    def __init__(self, analysis_dir):
        self.analysis_dir = analysis_dir
        self.results = {}
        self.session_id = hashlib.md5(f"{analysis_dir}{int(time.time())}".encode()).hexdigest()[:8]
        
    def log(self, message, level="INFO"):
        """日志记录"""
        timestamp = datetime.now().strftime("%H:%M:%S")
        print(f"[{timestamp}] [{level}] {message}")
    
    def find_api_endpoints(self):
        """发现所有API端点"""
        self.log("🔍 搜索API端点", "INFO")
        
        try:
            # 搜索所有API调用
            cmd = f"grep -r 'http://ws\.ems\.com\.vn' '{self.analysis_dir}' | grep -v 'Binary file'"
            result = subprocess.run(cmd, shell=True, capture_output=True, text=True, timeout=30)
            
            if result.returncode == 0:
                api_endpoints = []
                for line in result.stdout.split('\n'):
                    if line.strip():
                        # 提取API端点
                        match = re.search(r'http://ws\.ems\.com\.vn(/[^"\']+)', line)
                        if match:
                            endpoint = match.group(1)
                            api_endpoints.append({
                                'endpoint': endpoint,
                                'file': line.split(':')[0],
                                'line': line.split(':')[1] if ':' in line else '',
                                'full_line': line.strip()
                            })
                
                self.results['API端点'] = api_endpoints
                self.log(f"✅ 发现 {len(api_endpoints)} 个API端点", "SUCCESS")
                
                # 按功能分类API
                self.categorize_apis(api_endpoints)
            else:
                self.log(f"❌ API端点搜索失败: {result.stderr}", "ERROR")
                
        except Exception as e:
            self.log(f"❌ API端点搜索异常: {e}", "ERROR")
    
    def categorize_apis(self, endpoints):
        """按功能分类API"""
        self.log("📋 按功能分类API", "INFO")
        
        categories = {
            '订单管理': [],
            '用户认证': [],
            '快递服务': [],
            '支付相关': [],
            '配置服务': [],
            '报告统计': [],
            '其他': []
        }
        
        for endpoint in endpoints:
            ep = endpoint['endpoint'].lower()
            
            if 'order' in ep or 'parcel' in ep or 'inventory' in ep:
                categories['订单管理'].append(endpoint)
            elif 'auth' in ep or 'login' in ep or 'user' in ep:
                categories['用户认证'].append(endpoint)
            elif 'express' in ep or 'delivery' in ep or 'shipping' in ep:
                categories['快递服务'].append(endpoint)
            elif 'payment' in ep or 'cod' in ep or 'fee' in ep:
                categories['支付相关'].append(endpoint)
            elif 'config' in ep or 'service' in ep:
                categories['配置服务'].append(endpoint)
            elif 'report' in ep or 'summary' in ep or 'stat' in ep:
                categories['报告统计'].append(endpoint)
            else:
                categories['其他'].append(endpoint)
        
        self.results['API分类'] = categories
        
        for category, apis in categories.items():
            if apis:
                self.log(f"📦 {category}: {len(apis)} 个端点", "INFO")
    
    def find_authentication_mechanisms(self):
        """寻找认证机制"""
        self.log("🔐 搜索认证机制", "INFO")
        
        auth_patterns = {
            'Token': r'token|Token|TOKEN',
            'Authorization': r'authorization|Authorization|AUTHORIZATION',
            'API Key': r'api[_-]?key|apikey|API[_-]?KEY',
            'Signature': r'signature|sign|Signature|SIGN',
            'Session': r'session|Session|SESSION',
            'Cookie': r'cookie|Cookie|COOKIE',
            'Bearer': r'bearer|Bearer|BEARER',
            'Basic Auth': r'basic[_-]?auth|BasicAuth',
            'JWT': r'jwt|JWT|JsonWebToken',
            'OAuth': r'oauth|OAuth|OAUTH'
        }
        
        auth_findings = {}
        
        for auth_type, pattern in auth_patterns.items():
            try:
                cmd = f"grep -r -i '{pattern}' '{self.analysis_dir}' | grep -v 'Binary file' | head -20"
                result = subprocess.run(cmd, shell=True, capture_output=True, text=True, timeout=30)
                
                if result.returncode == 0 and result.stdout.strip():
                    lines = result.stdout.strip().split('\n')
                    auth_findings[auth_type] = lines
                    self.log(f"✅ 发现 {auth_type}: {len(lines)} 处", "SUCCESS")
                else:
                    self.log(f"❌ {auth_type}: 未发现", "DEBUG")
                    
            except Exception as e:
                self.log(f"❌ {auth_type} 搜索异常: {e}", "ERROR")
        
        self.results['认证机制'] = auth_findings
    
    def find_network_requests(self):
        """寻找网络请求实现"""
        self.log("🌐 搜索网络请求实现", "INFO")
        
        request_patterns = {
            'HTTP请求': r'HttpURLConnection|OkHttp|Retrofit|Volley',
            'POST请求': r'\.post\(|POST|post',
            'GET请求': r'\.get\(|GET|get',
            'PUT请求': r'\.put\(|PUT|put',
            'DELETE请求': r'\.delete\(|DELETE|delete',
            '请求头': r'addHeader|setHeader|header',
            '请求体': r'RequestBody|body|payload',
            '响应处理': r'Response|response|callback'
        }
        
        request_findings = {}
        
        for req_type, pattern in request_patterns.items():
            try:
                cmd = f"grep -r -i '{pattern}' '{self.analysis_dir}' | grep -v 'Binary file' | head -15"
                result = subprocess.run(cmd, shell=True, capture_output=True, text=True, timeout=30)
                
                if result.returncode == 0 and result.stdout.strip():
                    lines = result.stdout.strip().split('\n')
                    request_findings[req_type] = lines
                    self.log(f"✅ 发现 {req_type}: {len(lines)} 处", "SUCCESS")
                else:
                    self.log(f"❌ {req_type}: 未发现", "DEBUG")
                    
            except Exception as e:
                self.log(f"❌ {req_type} 搜索异常: {e}", "ERROR")
        
        self.results['网络请求'] = request_findings
    
    def find_sensitive_data(self):
        """寻找敏感数据"""
        self.log("🔍 搜索敏感数据", "INFO")
        
        sensitive_patterns = {
            '密码': r'password|pwd|pass|Password|PASSWORD',
            '密钥': r'secret|key|Secret|KEY|SECRET',
            '令牌': r'token|Token|TOKEN|access_token',
            'API密钥': r'api[_-]?key|apikey|API[_-]?KEY',
            '数据库': r'database|db|Database|DB',
            '连接字符串': r'connection|Connection|CONNECTION',
            'URL': r'url|URL|endpoint|Endpoint',
            '用户信息': r'user|User|USER|username|Username',
            '邮箱': r'email|Email|EMAIL|mail',
            '手机号': r'phone|Phone|PHONE|mobile|Mobile'
        }
        
        sensitive_findings = {}
        
        for data_type, pattern in sensitive_patterns.items():
            try:
                cmd = f"grep -r -i '{pattern}' '{self.analysis_dir}' | grep -v 'Binary file' | head -10"
                result = subprocess.run(cmd, shell=True, capture_output=True, text=True, timeout=30)
                
                if result.returncode == 0 and result.stdout.strip():
                    lines = result.stdout.strip().split('\n')
                    sensitive_findings[data_type] = lines
                    self.log(f"✅ 发现 {data_type}: {len(lines)} 处", "SUCCESS")
                else:
                    self.log(f"❌ {data_type}: 未发现", "DEBUG")
                    
            except Exception as e:
                self.log(f"❌ {data_type} 搜索异常: {e}", "ERROR")
        
        self.results['敏感数据'] = sensitive_findings
    
    def analyze_order_apis(self):
        """深度分析订单相关API"""
        self.log("📦 深度分析订单API", "INFO")
        
        order_apis = []
        if 'API分类' in self.results and '订单管理' in self.results['API分类']:
            order_apis = self.results['API分类']['订单管理']
        
        order_analysis = {
            '订单创建': [],
            '订单查询': [],
            '订单更新': [],
            '订单删除': [],
            '订单状态': [],
            '订单支付': []
        }
        
        for api in order_apis:
            endpoint = api['endpoint'].lower()
            
            if 'create' in endpoint or 'add' in endpoint:
                order_analysis['订单创建'].append(api)
            elif 'list' in endpoint or 'get' in endpoint or 'detail' in endpoint:
                order_analysis['订单查询'].append(api)
            elif 'update' in endpoint or 'edit' in endpoint or 'modify' in endpoint:
                order_analysis['订单更新'].append(api)
            elif 'delete' in endpoint or 'remove' in endpoint:
                order_analysis['订单删除'].append(api)
            elif 'status' in endpoint or 'state' in endpoint:
                order_analysis['订单状态'].append(api)
            elif 'payment' in endpoint or 'cod' in endpoint or 'fee' in endpoint:
                order_analysis['订单支付'].append(api)
        
        self.results['订单API分析'] = order_analysis
        
        for category, apis in order_analysis.items():
            if apis:
                self.log(f"📋 {category}: {len(apis)} 个API", "SUCCESS")
    
    def find_vulnerabilities(self):
        """寻找潜在漏洞"""
        self.log("🚨 搜索潜在漏洞", "INFO")
        
        vuln_patterns = {
            '硬编码密钥': r'"[a-zA-Z0-9+/=]{20,}"|"[a-f0-9]{32,}"',
            '明文密码': r'password\s*=\s*"[^"]*"|pwd\s*=\s*"[^"]*"',
            'SQL注入': r'rawQuery|execSQL|query.*\+|query.*%',
            'XSS漏洞': r'innerHTML|outerHTML|document\.write',
            '路径遍历': r'\.\./|\.\.\\\\|file://',
            '不安全的随机数': r'Math\.random|Random\(\)',
            '弱加密': r'MD5|SHA1|DES|RC4',
            '调试信息': r'Log\.d|Log\.e|Log\.w|System\.out\.print'
        }
        
        vuln_findings = {}
        
        for vuln_type, pattern in vuln_patterns.items():
            try:
                cmd = f"grep -r -E '{pattern}' '{self.analysis_dir}' | grep -v 'Binary file' | head -10"
                result = subprocess.run(cmd, shell=True, capture_output=True, text=True, timeout=30)
                
                if result.returncode == 0 and result.stdout.strip():
                    lines = result.stdout.strip().split('\n')
                    vuln_findings[vuln_type] = lines
                    self.log(f"🚨 发现 {vuln_type}: {len(lines)} 处", "ERROR")
                else:
                    self.log(f"✅ {vuln_type}: 未发现", "SUCCESS")
                    
            except Exception as e:
                self.log(f"❌ {vuln_type} 搜索异常: {e}", "ERROR")
        
        self.results['潜在漏洞'] = vuln_findings
    
    def generate_attack_vectors(self):
        """生成攻击向量"""
        self.log("⚔️ 生成攻击向量", "INFO")
        
        attack_vectors = []
        
        # 基于发现的API生成攻击向量
        if 'API端点' in self.results:
            for api in self.results['API端点']:
                endpoint = api['endpoint']
                
                # API枚举攻击
                attack_vectors.append({
                    'type': 'API枚举',
                    'target': f"http://ws.ems.com.vn{endpoint}",
                    'description': f'尝试访问 {endpoint} 端点',
                    'method': 'GET/POST',
                    'risk': 'MEDIUM'
                })
                
                # 参数污染攻击
                if '?' in endpoint or '=' in endpoint:
                    attack_vectors.append({
                        'type': '参数污染',
                        'target': f"http://ws.ems.com.vn{endpoint}",
                        'description': f'对 {endpoint} 进行参数污染测试',
                        'method': 'GET/POST',
                        'risk': 'HIGH'
                    })
        
        # 基于认证机制生成攻击向量
        if '认证机制' in self.results:
            for auth_type, findings in self.results['认证机制'].items():
                if findings:
                    attack_vectors.append({
                        'type': f'{auth_type}绕过',
                        'target': '认证机制',
                        'description': f'尝试绕过 {auth_type} 认证',
                        'method': '多种',
                        'risk': 'HIGH'
                    })
        
        # 基于敏感数据生成攻击向量
        if '敏感数据' in self.results:
            for data_type, findings in self.results['敏感数据'].items():
                if findings:
                    attack_vectors.append({
                        'type': f'{data_type}泄露',
                        'target': '敏感数据',
                        'description': f'尝试获取 {data_type} 信息',
                        'method': '信息收集',
                        'risk': 'CRITICAL'
                    })
        
        self.results['攻击向量'] = attack_vectors
        self.log(f"⚔️ 生成 {len(attack_vectors)} 个攻击向量", "SUCCESS")
    
    def generate_report(self):
        """生成红队分析报告"""
        self.log("📋 生成红队分析报告", "INFO")
        
        report = {
            "session_id": self.session_id,
            "analysis_dir": self.analysis_dir,
            "timestamp": datetime.now().isoformat(),
            "results": self.results,
            "summary": {
                "api_endpoints": len(self.results.get('API端点', [])),
                "auth_mechanisms": len([k for k, v in self.results.get('认证机制', {}).items() if v]),
                "sensitive_data": len([k for k, v in self.results.get('敏感数据', {}).items() if v]),
                "vulnerabilities": len([k for k, v in self.results.get('潜在漏洞', {}).items() if v]),
                "attack_vectors": len(self.results.get('攻击向量', [])),
                "risk_level": "HIGH" if len([k for k, v in self.results.get('潜在漏洞', {}).items() if v]) > 0 else "MEDIUM"
            }
        }
        
        # 保存报告
        report_file = f"/tmp/redteam_api_report_{self.session_id}.json"
        with open(report_file, 'w', encoding='utf-8') as f:
            json.dump(report, f, indent=2, ensure_ascii=False)
        
        self.log(f"报告已保存: {report_file}", "SUCCESS")
        return report
    
    def run_full_analysis(self):
        """运行完整分析"""
        self.log("🚀 启动红队API深度分析", "INFO")
        self.log("=" * 60, "INFO")
        
        # 1. 发现API端点
        self.find_api_endpoints()
        
        # 2. 寻找认证机制
        self.find_authentication_mechanisms()
        
        # 3. 寻找网络请求实现
        self.find_network_requests()
        
        # 4. 寻找敏感数据
        self.find_sensitive_data()
        
        # 5. 分析订单API
        self.analyze_order_apis()
        
        # 6. 寻找潜在漏洞
        self.find_vulnerabilities()
        
        # 7. 生成攻击向量
        self.generate_attack_vectors()
        
        # 8. 生成报告
        report = self.generate_report()
        
        self.log("🎯 红队API分析完成！", "SUCCESS")
        self.log(f"风险等级: {report['summary']['risk_level']}", "WARNING")
        self.log(f"发现API端点: {report['summary']['api_endpoints']}", "INFO")
        self.log(f"发现漏洞: {report['summary']['vulnerabilities']}", "ERROR")
        self.log(f"生成攻击向量: {report['summary']['attack_vectors']}", "WARNING")
        
        return report

def main():
    if len(sys.argv) < 2:
        print("使用方法: python3 redteam_api_analyzer.py <分析目录>")
        print("示例: python3 redteam_api_analyzer.py /tmp/app_analysis_1760732724")
        sys.exit(1)
    
    analysis_dir = sys.argv[1]
    
    if not os.path.exists(analysis_dir):
        print(f"❌ 分析目录不存在: {analysis_dir}")
        sys.exit(1)
    
    analyzer = RedTeamAPIAnalyzer(analysis_dir)
    analyzer.run_full_analysis()

if __name__ == "__main__":
    main()