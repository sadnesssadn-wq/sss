#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
深度分析 222.255.250.228
"""

import requests
import socket
import ssl
import subprocess
import re
import json
from datetime import datetime
import urllib3

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

TARGET_IP = "222.255.250.228"

class TargetAnalyzer:
    def __init__(self):
        self.results = {
            "basic_info": {},
            "services": {},
            "technologies": [],
            "vulnerabilities": [],
            "paths_found": [],
            "interesting_findings": []
        }
    
    def basic_recon(self):
        """基础信息收集"""
        print(f"[+] 基础信息收集: {TARGET_IP}")
        
        # DNS 反向解析
        try:
            hostname = socket.gethostbyaddr(TARGET_IP)[0]
            self.results['basic_info']['hostname'] = hostname
            print(f"  [*] 反向解析: {hostname}")
        except:
            print(f"  [!] 无法反向解析")
        
        # 端口扫描
        print(f"\n[+] 端口扫描")
        common_ports = [21, 22, 23, 25, 80, 443, 445, 3306, 3389, 5432, 8080, 8443, 8888, 9000]
        open_ports = []
        
        for port in common_ports:
            sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            sock.settimeout(1)
            result = sock.connect_ex((TARGET_IP, port))
            if result == 0:
                open_ports.append(port)
                print(f"  [*] 端口 {port} 开放")
            sock.close()
        
        self.results['basic_info']['open_ports'] = open_ports
    
    def analyze_web_service(self, port=443, protocol='https'):
        """分析 Web 服务"""
        print(f"\n[+] 分析 {protocol.upper()} 服务 (端口 {port})")
        
        base_url = f"{protocol}://{TARGET_IP}:{port}"
        
        # 基础请求
        try:
            resp = requests.get(base_url, verify=False, timeout=10, allow_redirects=True)
            
            # 提取基础信息
            self.results['services'][f'{protocol}_{port}'] = {
                'status_code': resp.status_code,
                'headers': dict(resp.headers),
                'final_url': resp.url,
                'content_length': len(resp.content)
            }
            
            # 分析响应头
            print(f"\n  [*] 响应头分析:")
            interesting_headers = ['Server', 'X-Powered-By', 'X-AspNet-Version', 
                                 'X-Generator', 'Set-Cookie', 'X-Frame-Options',
                                 'Content-Security-Policy', 'Strict-Transport-Security']
            
            for header in interesting_headers:
                if header in resp.headers:
                    print(f"      {header}: {resp.headers[header]}")
            
            # 技术栈检测
            self.detect_technologies(resp)
            
            # 提取标题和关键信息
            if '<title>' in resp.text:
                title = resp.text.split('<title>')[1].split('</title>')[0]
                print(f"\n  [*] 页面标题: {title}")
                self.results['services'][f'{protocol}_{port}']['title'] = title
            
            # 保存页面内容用于后续分析
            with open(f'page_{TARGET_IP}_{port}.html', 'w', encoding='utf-8') as f:
                f.write(resp.text)
            
            # 分析页面内容
            self.analyze_content(resp.text)
            
            # 目录和文件扫描
            self.directory_scan(base_url)
            
            # SSL/TLS 分析（仅 HTTPS）
            if protocol == 'https':
                self.analyze_ssl(TARGET_IP, port)
            
        except Exception as e:
            print(f"  [!] 错误: {str(e)}")
    
    def detect_technologies(self, response):
        """检测技术栈"""
        print(f"\n  [*] 技术栈检测:")
        
        tech_signatures = {
            'GitLab': ['gitlab', 'gitlab-ce', 'gitlab-ee'],
            'Ruby on Rails': ['rails', 'rack', 'X-Runtime'],
            'Nginx': ['nginx'],
            'Apache': ['apache'],
            'IIS': ['iis', 'asp.net'],
            'PHP': ['php', 'x-powered-by: php'],
            'Laravel': ['laravel', 'laravel_session'],
            'WordPress': ['wp-content', 'wordpress'],
            'jQuery': ['jquery'],
            'Bootstrap': ['bootstrap'],
            'Font Awesome': ['font-awesome'],
            'React': ['react'],
            'Vue.js': ['vue']
        }
        
        content_lower = response.text.lower()
        headers_str = str(response.headers).lower()
        
        detected_tech = []
        
        for tech, signatures in tech_signatures.items():
            for sig in signatures:
                if sig in content_lower or sig in headers_str:
                    detected_tech.append(tech)
                    print(f"      [✓] {tech}")
                    break
        
        self.results['technologies'] = detected_tech
        
        # 特殊检测：GitLab
        if 'gitlab' in content_lower:
            self.results['interesting_findings'].append("GitLab 实例发现！")
            # 提取 GitLab 版本
            version_match = re.search(r'gitlab[^\d]*([\d\.]+)', content_lower)
            if version_match:
                version = version_match.group(1)
                print(f"      [!] GitLab 版本: {version}")
                self.results['interesting_findings'].append(f"GitLab 版本: {version}")
    
    def analyze_content(self, content):
        """分析页面内容"""
        print(f"\n  [*] 内容分析:")
        
        # 查找表单
        forms = re.findall(r'<form[^>]*>(.*?)</form>', content, re.DOTALL | re.IGNORECASE)
        if forms:
            print(f"      [✓] 发现 {len(forms)} 个表单")
            
            # 分析登录表单
            for form in forms:
                if 'password' in form.lower() or 'login' in form.lower():
                    print(f"      [!] 发现登录表单")
                    self.results['interesting_findings'].append("登录表单")
        
        # 查找敏感信息
        sensitive_patterns = {
            'Email': r'[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}',
            'IP内网': r'(10\.\d{1,3}\.\d{1,3}\.\d{1,3}|172\.(1[6-9]|2[0-9]|3[01])\.\d{1,3}\.\d{1,3}|192\.168\.\d{1,3}\.\d{1,3})',
            'API密钥': r'(api[_-]?key|apikey)["\']?\s*[:=]\s*["\']([^"\']+)["\']',
            'Token': r'(token|csrf[_-]?token)["\']?\s*[:=]\s*["\']([^"\']+)["\']'
        }
        
        for name, pattern in sensitive_patterns.items():
            matches = re.findall(pattern, content, re.IGNORECASE)
            if matches:
                print(f"      [!] 发现 {name}: {len(matches)} 个")
                if name == 'Email':
                    # 只显示部分邮箱
                    for email in matches[:3]:
                        print(f"          - {email}")
        
        # 查找注释
        comments = re.findall(r'<!--(.*?)-->', content, re.DOTALL)
        if comments:
            print(f"      [✓] 发现 {len(comments)} 个HTML注释")
            for comment in comments[:3]:
                if len(comment.strip()) > 10:
                    print(f"          - {comment.strip()[:50]}...")
        
        # JavaScript 文件
        js_files = re.findall(r'<script[^>]*src=["\']([^"\']+)["\']', content, re.IGNORECASE)
        if js_files:
            print(f"      [✓] 发现 {len(js_files)} 个JS文件")
            for js in js_files[:5]:
                print(f"          - {js}")
    
    def directory_scan(self, base_url):
        """目录扫描"""
        print(f"\n  [*] 常见路径检测:")
        
        common_paths = [
            # 通用
            '/robots.txt', '/sitemap.xml', '/.git/config', '/.env', '/config.php',
            '/readme.md', '/README.md', '/LICENSE', '/.gitignore',
            
            # 管理后台
            '/admin', '/admin/', '/administrator', '/manage', '/management',
            '/cp', '/cpanel', '/controlpanel', '/admincp',
            
            # API
            '/api', '/api/', '/api/v1', '/api/v2', '/graphql', '/rest',
            
            # 开发相关
            '/.git', '/.svn', '/.hg', '/backup', '/backups', '/temp', '/tmp',
            '/test', '/tests', '/debug', '/logs', '/log',
            
            # GitLab 特定
            '/users/sign_in', '/users/sign_up', '/explore', '/help',
            '/api/v4', '/api/v3', '/-/readiness', '/-/liveness', '/-/metrics',
            '/admin/sidekiq', '/admin/dashboard', '/admin/users',
            
            # 数据库
            '/phpmyadmin', '/pma', '/mysql', '/database', '/db',
            
            # 文档
            '/doc', '/docs', '/documentation', '/manual', '/guide',
            '/swagger', '/swagger-ui', '/api-docs',
            
            # 其他
            '/login', '/signin', '/register', '/signup', '/user', '/users',
            '/dashboard', '/panel', '/console', '/portal'
        ]
        
        found_paths = []
        
        for path in common_paths:
            url = base_url + path
            try:
                resp = requests.get(url, verify=False, timeout=3, allow_redirects=False)
                if resp.status_code in [200, 301, 302, 401, 403]:
                    print(f"      [✓] {path} - {resp.status_code}")
                    found_paths.append({'path': path, 'status': resp.status_code})
                    
                    # 特殊发现
                    if '/.git' in path and resp.status_code == 200:
                        self.results['vulnerabilities'].append("Git 信息泄露！")
                    elif '/admin' in path and resp.status_code in [200, 302]:
                        self.results['interesting_findings'].append(f"管理后台: {path}")
                    elif '/api' in path and resp.status_code == 200:
                        self.results['interesting_findings'].append(f"API 端点: {path}")
                        
            except:
                pass
        
        self.results['paths_found'] = found_paths
    
    def analyze_ssl(self, host, port=443):
        """SSL/TLS 分析"""
        print(f"\n  [*] SSL/TLS 分析:")
        
        try:
            context = ssl.create_default_context()
            context.check_hostname = False
            context.verify_mode = ssl.CERT_NONE
            
            with socket.create_connection((host, port), timeout=5) as sock:
                with context.wrap_socket(sock, server_hostname=host) as ssock:
                    cert = ssock.getpeercert_dict()
                    cipher = ssock.cipher()
                    version = ssock.version()
                    
                    print(f"      TLS版本: {version}")
                    print(f"      加密套件: {cipher[0]}")
                    
                    # 检查弱加密
                    if 'TLSv1.0' in version or 'TLSv1.1' in version:
                        self.results['vulnerabilities'].append(f"使用过时的 {version}")
                    
                    if cert:
                        # 这里需要更复杂的证书解析
                        self.results['services']['ssl_info'] = {
                            'version': version,
                            'cipher': cipher[0]
                        }
                        
        except Exception as e:
            print(f"      [!] SSL分析失败: {str(e)}")
    
    def check_gitlab_specific(self):
        """GitLab 特定检查"""
        print(f"\n[+] GitLab 特定检查")
        
        gitlab_endpoints = [
            '/api/v4/version',  # 版本信息（可能需要认证）
            '/users/sign_in',   # 登录页面
            '/explore',         # 公开项目
            '/api/v4/projects', # 项目列表
            '/-/readiness',     # 健康检查
            '/robots.txt',      # robots文件
            '/help',            # 帮助页面
        ]
        
        base_url = f"https://{TARGET_IP}"
        
        for endpoint in gitlab_endpoints:
            try:
                url = base_url + endpoint
                resp = requests.get(url, verify=False, timeout=5)
                
                if resp.status_code == 200:
                    print(f"  [✓] {endpoint} - 可访问")
                    
                    if endpoint == '/explore' and 'project' in resp.text.lower():
                        print(f"      [!] 可能存在公开项目")
                        self.results['interesting_findings'].append("GitLab 公开项目")
                    
                    elif endpoint == '/api/v4/version':
                        try:
                            version_data = resp.json()
                            print(f"      [!] GitLab 版本: {version_data}")
                            self.results['interesting_findings'].append(f"GitLab API 暴露")
                        except:
                            pass
                            
                elif resp.status_code == 401:
                    print(f"  [*] {endpoint} - 需要认证")
                    
            except Exception as e:
                pass
    
    def generate_report(self):
        """生成报告"""
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        
        report = f"""
# 目标分析报告: {TARGET_IP}
生成时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}

## 基础信息
- IP地址: {TARGET_IP}
- 反向解析: {self.results['basic_info'].get('hostname', 'N/A')}
- 开放端口: {', '.join(map(str, self.results['basic_info'].get('open_ports', [])))}

## 服务分析
"""
        
        for service, info in self.results['services'].items():
            if 'title' in info:
                report += f"\n### {service}\n"
                report += f"- 标题: {info.get('title', 'N/A')}\n"
                report += f"- 状态码: {info.get('status_code', 'N/A')}\n"
                report += f"- 服务器: {info.get('headers', {}).get('Server', 'N/A')}\n"
        
        report += f"\n## 技术栈\n"
        for tech in self.results['technologies']:
            report += f"- {tech}\n"
        
        report += f"\n## 发现的路径\n"
        for path_info in self.results['paths_found']:
            report += f"- {path_info['path']} ({path_info['status']})\n"
        
        report += f"\n## 安全发现\n"
        if self.results['vulnerabilities']:
            report += "### 漏洞\n"
            for vuln in self.results['vulnerabilities']:
                report += f"- ⚠️ {vuln}\n"
        
        if self.results['interesting_findings']:
            report += "\n### 有趣的发现\n"
            for finding in self.results['interesting_findings']:
                report += f"- 🎯 {finding}\n"
        
        # 保存报告
        with open(f'report_{TARGET_IP}_{timestamp}.md', 'w', encoding='utf-8') as f:
            f.write(report)
        
        with open(f'report_{TARGET_IP}_{timestamp}.json', 'w', encoding='utf-8') as f:
            json.dump(self.results, f, ensure_ascii=False, indent=2)
        
        print(f"\n[+] 报告已保存:")
        print(f"    - report_{TARGET_IP}_{timestamp}.md")
        print(f"    - report_{TARGET_IP}_{timestamp}.json")
        
        return report
    
    def run(self):
        """运行所有分析"""
        print(f"="*60)
        print(f"目标深度分析: {TARGET_IP}")
        print(f"="*60)
        
        # 基础侦察
        self.basic_recon()
        
        # Web 服务分析
        self.analyze_web_service(443, 'https')
        self.analyze_web_service(80, 'http')
        
        # GitLab 特定检查
        self.check_gitlab_specific()
        
        # 生成报告
        report = self.generate_report()
        print(f"\n{report}")

if __name__ == "__main__":
    analyzer = TargetAnalyzer()
    analyzer.run()