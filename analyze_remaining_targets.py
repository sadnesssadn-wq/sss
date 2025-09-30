#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
深度分析剩余的高价值目标
"""

import requests
import urllib3
import json
import re
import time
from datetime import datetime

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

class TargetAnalyzer:
    def __init__(self):
        self.results = {}
        
    def analyze_target(self, target, is_ip=False):
        """分析单个目标"""
        print(f"\n{'='*60}")
        print(f"[+] 分析目标: {target}")
        print(f"{'='*60}")
        
        result = {
            'target': target,
            'services': {},
            'vulnerabilities': [],
            'interesting_findings': [],
            'technologies': [],
            'paths': []
        }
        
        # 测试 HTTP 和 HTTPS
        for protocol in ['https', 'http']:
            url = f"{protocol}://{target}"
            try:
                print(f"\n[*] 测试 {protocol.upper()}...")
                resp = requests.get(url, verify=False, timeout=5, allow_redirects=True)
                
                print(f"  状态码: {resp.status_code}")
                print(f"  最终URL: {resp.url}")
                
                if resp.status_code in [200, 301, 302, 401, 403]:
                    # 提取基本信息
                    service_info = {
                        'status': resp.status_code,
                        'final_url': resp.url,
                        'headers': dict(resp.headers),
                        'size': len(resp.content)
                    }
                    
                    # 提取标题
                    title_match = re.search(r'<title[^>]*>([^<]+)</title>', resp.text, re.IGNORECASE)
                    if title_match:
                        service_info['title'] = title_match.group(1).strip()
                        print(f"  标题: {service_info['title']}")
                    
                    # 检测技术
                    self.detect_technologies(resp, result)
                    
                    # 检查重要响应头
                    important_headers = ['Server', 'X-Powered-By', 'X-Generator', 'Set-Cookie']
                    for header in important_headers:
                        if header in resp.headers:
                            print(f"  {header}: {resp.headers[header]}")
                    
                    result['services'][protocol] = service_info
                    
                    # 特殊检查
                    self.special_checks(target, protocol, resp, result)
                    
            except Exception as e:
                print(f"  错误: {str(e)}")
        
        # 路径扫描
        self.path_discovery(target, result)
        
        # 端口扫描（如果是IP）
        if is_ip:
            self.port_scan(target, result)
        
        self.results[target] = result
        return result
    
    def detect_technologies(self, response, result):
        """检测技术栈"""
        tech_patterns = {
            'Laravel': ['laravel', 'laravel_session'],
            'ASP.NET': ['asp.net', 'aspnet', '__viewstate'],
            'PHP': ['php/', 'x-powered-by: php'],
            'Nginx': ['nginx'],
            'Apache': ['apache'],
            'IIS': ['iis', 'microsoft-iis'],
            'jQuery': ['jquery'],
            'Bootstrap': ['bootstrap'],
            'WordPress': ['wp-content', 'wordpress'],
            'Drupal': ['drupal'],
            'Django': ['django', 'csrfmiddlewaretoken'],
            'Express': ['x-powered-by: express'],
            'Spring': ['spring', 'springframework']
        }
        
        content_lower = response.text.lower()
        headers_str = str(response.headers).lower()
        
        for tech, patterns in tech_patterns.items():
            for pattern in patterns:
                if pattern in content_lower or pattern in headers_str:
                    if tech not in result['technologies']:
                        result['technologies'].append(tech)
                        print(f"  [技术] {tech}")
                    break
    
    def special_checks(self, target, protocol, response, result):
        """特殊检查"""
        # API 检查
        if 'api' in target:
            print(f"  [!] API 服务检测")
            
            # 检查 JSON 响应
            try:
                json_data = response.json()
                result['interesting_findings'].append(f"API 返回 JSON: {str(json_data)[:100]}...")
                print(f"  [!] JSON API 响应")
            except:
                pass
            
            # 检查 API 文档
            api_docs = ['/docs', '/api-docs', '/swagger', '/openapi.json', '/api/v1', '/api/v2']
            for doc in api_docs:
                try:
                    doc_url = f"{protocol}://{target}{doc}"
                    doc_resp = requests.get(doc_url, verify=False, timeout=3)
                    if doc_resp.status_code == 200:
                        result['interesting_findings'].append(f"API 文档: {doc}")
                        print(f"  [!] 发现 API 文档: {doc}")
                except:
                    pass
        
        # SSO 检查
        if 'sso' in target or 'auth' in target:
            print(f"  [!] 认证服务检测")
            
            # 检查 OAuth/SAML 端点
            auth_endpoints = ['/oauth/authorize', '/saml/login', '/cas/login', '/.well-known/openid-configuration']
            for endpoint in auth_endpoints:
                try:
                    auth_url = f"{protocol}://{target}{endpoint}"
                    auth_resp = requests.get(auth_url, verify=False, timeout=3, allow_redirects=False)
                    if auth_resp.status_code in [200, 302, 400]:
                        result['interesting_findings'].append(f"认证端点: {endpoint}")
                        print(f"  [!] 发现认证端点: {endpoint}")
                except:
                    pass
        
        # 管理后台检查
        if 'admin' in target or 'portal' in target:
            print(f"  [!] 管理后台检测")
            
            # 检查默认凭证
            if 'login' in response.text.lower() or 'password' in response.text.lower():
                result['interesting_findings'].append("发现登录表单")
                
                # 提取表单字段
                form_fields = re.findall(r'name=["\']([^"\']+)["\']', response.text)
                if form_fields:
                    print(f"  表单字段: {', '.join(set(form_fields))}")
    
    def path_discovery(self, target, result):
        """路径发现"""
        print(f"\n[*] 路径发现...")
        
        # 根据目标类型定制路径
        paths = []
        
        if 'api' in target:
            paths.extend(['/v1', '/v2', '/api', '/docs', '/swagger', '/graphql', '/health', '/status'])
        
        if 'admin' in target or 'portal' in target:
            paths.extend(['/dashboard', '/users', '/settings', '/logs', '/config', '/backup'])
        
        if 'sso' in target or 'auth' in target:
            paths.extend(['/login', '/logout', '/register', '/forgot-password', '/profile'])
        
        # 通用路径
        paths.extend(['/robots.txt', '/.git/HEAD', '/.env', '/config.json', '/api-docs'])
        
        found_paths = []
        for path in paths:
            for protocol in ['https', 'http']:
                try:
                    url = f"{protocol}://{target}{path}"
                    resp = requests.get(url, verify=False, timeout=3, allow_redirects=False)
                    if resp.status_code in [200, 301, 302, 401, 403]:
                        found_paths.append({'path': path, 'status': resp.status_code, 'protocol': protocol})
                        print(f"  [{protocol}] {path} - {resp.status_code}")
                        
                        if resp.status_code == 200 and path in ['/robots.txt', '/config.json']:
                            result['interesting_findings'].append(f"配置文件可访问: {path}")
                except:
                    pass
        
        result['paths'] = found_paths
    
    def port_scan(self, ip, result):
        """端口扫描（仅IP）"""
        print(f"\n[*] 端口扫描...")
        
        # 重要端口
        ports = [21, 22, 23, 25, 80, 443, 445, 1433, 3306, 3389, 5432, 
                6379, 8080, 8443, 8888, 9200, 27017]
        
        open_ports = []
        for port in ports:
            try:
                import socket
                sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                sock.settimeout(1)
                result_code = sock.connect_ex((ip, port))
                if result_code == 0:
                    open_ports.append(port)
                    print(f"  端口 {port} - 开放")
                sock.close()
            except:
                pass
        
        result['open_ports'] = open_ports
    
    def generate_report(self):
        """生成分析报告"""
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        
        # 保存详细结果
        with open(f'deep_analysis_{timestamp}.json', 'w', encoding='utf-8') as f:
            json.dump(self.results, f, ensure_ascii=False, indent=2)
        
        # 生成摘要报告
        report = f"""
# 深度分析报告
时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}

## 分析目标: {len(self.results)} 个

"""
        
        for target, data in self.results.items():
            report += f"\n### {target}\n"
            
            # 服务
            if data['services']:
                report += "**服务:**\n"
                for protocol, info in data['services'].items():
                    report += f"- {protocol}: {info['status']}"
                    if 'title' in info:
                        report += f" - {info['title']}"
                    report += "\n"
            
            # 技术栈
            if data['technologies']:
                report += f"**技术栈:** {', '.join(data['technologies'])}\n"
            
            # 发现的路径
            if data['paths']:
                report += "**路径:**\n"
                for path_info in data['paths']:
                    report += f"- {path_info['path']} ({path_info['status']})\n"
            
            # 有趣的发现
            if data['interesting_findings']:
                report += "**重要发现:**\n"
                for finding in data['interesting_findings']:
                    report += f"- {finding}\n"
            
            report += "\n" + "-"*50 + "\n"
        
        # 保存报告
        with open(f'analysis_report_{timestamp}.md', 'w', encoding='utf-8') as f:
            f.write(report)
        
        print(f"\n\n[+] 报告已保存:")
        print(f"- 详细数据: deep_analysis_{timestamp}.json")
        print(f"- 分析报告: analysis_report_{timestamp}.md")
        
        return report

# 主程序
analyzer = TargetAnalyzer()

# 高优先级域名
high_priority_domains = [
    'api-dingdong.ems.com.vn',
    'sso.ems.com.vn',
    'admin.ems.com.vn',
    'portal.ems.com.vn',
    'apilogistics.ems.com.vn',
    'monitor.ems.com.vn'
]

# 关键IP
key_ips = [
    '115.146.121.131',  # API服务
    '115.146.121.135',  # 多个服务
    '222.255.250.234',  # 内部系统
    '222.255.250.240'   # 内部系统
]

print("[+] 开始深度分析未检测的高价值目标...\n")

# 分析域名
for domain in high_priority_domains[:4]:  # 先分析前4个
    analyzer.analyze_target(domain)
    time.sleep(1)  # 避免过快请求

# 分析IP
for ip in key_ips[:2]:  # 分析前2个IP
    analyzer.analyze_target(ip, is_ip=True)
    time.sleep(1)

# 生成报告
report = analyzer.generate_report()
print(report)