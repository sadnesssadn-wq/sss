#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
精准漏洞扫描 - 专注真实威胁
"""

import requests
import urllib3
import socket
import ssl
import concurrent.futures
from datetime import datetime

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

print("""
╔══════════════════════════════════════════════════════════════════════════════╗
║                    精准漏洞扫描 - 真实威胁                                   ║
╚══════════════════════════════════════════════════════════════════════════════╝
""")

# 目标列表
targets = [
    # 核心业务系统
    {'host': 'ems.com.vn', 'ip': '104.21.41.129', 'type': 'CDN保护'},
    {'host': 'webapp.ems.com.vn', 'ip': '222.255.250.228', 'type': '真实IP'},
    {'host': 'api.ems.com.vn', 'ip': '115.146.121.131', 'type': '真实IP'},
    {'host': 'admin.ems.com.vn', 'ip': '104.21.41.129', 'type': 'CDN保护'},
    
    # 内部系统
    {'host': 'internal.ems.com.vn', 'ip': '222.255.250.234', 'type': '内部系统'},
    {'host': 'mail-vn.ems.com.vn', 'ip': '222.255.250.247', 'type': '邮件系统'},
    {'host': 'portal-vn.ems.com.vn', 'ip': '222.255.250.240', 'type': '门户系统'}
]

def check_ssl_cert(host, port=443):
    """检查 SSL 证书信息"""
    try:
        context = ssl.create_default_context()
        with socket.create_connection((host, port), timeout=3) as sock:
            with context.wrap_socket(sock, server_hostname=host) as ssock:
                cert = ssock.getpeercert()
                return {
                    'subject': dict(x[0] for x in cert['subject']),
                    'issuer': dict(x[0] for x in cert['issuer']),
                    'version': cert['version'],
                    'serialNumber': cert['serialNumber'],
                    'notBefore': cert['notBefore'],
                    'notAfter': cert['notAfter'],
                    'subjectAltName': cert.get('subjectAltName', [])
                }
    except:
        return None

def test_http_methods(url):
    """测试 HTTP 方法"""
    vulnerable_methods = []
    methods = ['GET', 'POST', 'PUT', 'DELETE', 'PATCH', 'OPTIONS', 'TRACE', 'CONNECT']
    
    for method in methods:
        try:
            resp = requests.request(method, url, verify=False, timeout=3, allow_redirects=False)
            if resp.status_code not in [405, 501]:  # Method Not Allowed / Not Implemented
                if method in ['PUT', 'DELETE', 'PATCH']:
                    # 进一步验证
                    if resp.status_code == 200:
                        vulnerable_methods.append(method)
                elif method == 'TRACE' and resp.status_code == 200:
                    if 'TRACE' in resp.text:
                        vulnerable_methods.append(method)
        except:
            pass
    
    return vulnerable_methods

def check_cors(url):
    """检查 CORS 配置"""
    origins = [
        'https://evil.com',
        'null',
        'https://localhost',
        'file://'
    ]
    
    vulnerabilities = []
    
    for origin in origins:
        try:
            headers = {'Origin': origin}
            resp = requests.get(url, headers=headers, verify=False, timeout=3)
            
            acao = resp.headers.get('Access-Control-Allow-Origin', '')
            acac = resp.headers.get('Access-Control-Allow-Credentials', '')
            
            if acao == origin or acao == '*':
                if acac == 'true' or acao == '*':
                    vulnerabilities.append({
                        'origin': origin,
                        'acao': acao,
                        'credentials': acac == 'true'
                    })
        except:
            pass
    
    return vulnerabilities

def check_security_headers(url):
    """检查安全响应头"""
    try:
        resp = requests.get(url, verify=False, timeout=3)
        headers = resp.headers
        
        missing = []
        weak = []
        
        # 必需的安全头
        security_headers = {
            'X-Frame-Options': ['DENY', 'SAMEORIGIN'],
            'X-Content-Type-Options': ['nosniff'],
            'X-XSS-Protection': ['1; mode=block'],
            'Strict-Transport-Security': None,  # 任何值都行
            'Content-Security-Policy': None
        }
        
        for header, good_values in security_headers.items():
            if header not in headers:
                missing.append(header)
            elif good_values and headers[header] not in good_values:
                weak.append({
                    'header': header,
                    'value': headers[header],
                    'recommended': good_values
                })
        
        return {'missing': missing, 'weak': weak}
    except:
        return None

def find_api_endpoints(base_url):
    """发现 API 端点"""
    endpoints = []
    
    # 常见 API 路径
    api_paths = [
        '/api', '/api/v1', '/api/v2', '/v1', '/v2',
        '/graphql', '/rest', '/services'
    ]
    
    # 常见资源
    resources = [
        'users', 'user', 'admin', 'login', 'auth',
        'config', 'settings', 'status', 'health',
        'docs', 'swagger', 'schema'
    ]
    
    for api_path in api_paths:
        # 测试 API 根路径
        url = f"{base_url}{api_path}"
        try:
            resp = requests.get(url, verify=False, timeout=3, allow_redirects=False)
            if resp.status_code in [200, 401, 403]:
                endpoints.append({
                    'url': url,
                    'status': resp.status_code,
                    'type': 'API Root'
                })
                
                # 测试资源端点
                for resource in resources:
                    resource_url = f"{url}/{resource}"
                    try:
                        r = requests.get(resource_url, verify=False, timeout=2, allow_redirects=False)
                        if r.status_code in [200, 401, 403]:
                            # 尝试识别未授权访问
                            if r.status_code == 200:
                                try:
                                    data = r.json()
                                    if data and len(str(data)) > 20:
                                        endpoints.append({
                                            'url': resource_url,
                                            'status': r.status_code,
                                            'type': 'Unauth Access',
                                            'data_preview': str(data)[:100]
                                        })
                                    else:
                                        endpoints.append({
                                            'url': resource_url,
                                            'status': r.status_code,
                                            'type': 'API Endpoint'
                                        })
                                except:
                                    endpoints.append({
                                        'url': resource_url,
                                        'status': r.status_code,
                                        'type': 'API Endpoint'
                                    })
                            else:
                                endpoints.append({
                                    'url': resource_url,
                                    'status': r.status_code,
                                    'type': 'Protected'
                                })
                    except:
                        pass
        except:
            pass
    
    return endpoints

def check_subdomain_takeover(host):
    """检查子域名接管"""
    try:
        resp = requests.get(f"https://{host}", verify=False, timeout=5, allow_redirects=True)
        
        # 检查常见的接管指纹
        takeover_signatures = {
            'GitHub Pages': 'There isn\'t a GitHub Pages site here',
            'Heroku': 'No such app',
            'Shopify': 'Sorry, this shop is currently unavailable',
            'Tumblr': 'Whatever you were looking for doesn\'t currently exist',
            'Amazon S3': 'NoSuchBucket',
            'Bitbucket': 'Repository not found',
            'SmartJobBoard': 'This job board website is either expired or its domain name is invalid',
            'UserVoice': 'This UserVoice subdomain is currently available!'
        }
        
        for service, signature in takeover_signatures.items():
            if signature in resp.text:
                return {
                    'vulnerable': True,
                    'service': service,
                    'signature': signature
                }
        
        return {'vulnerable': False}
    except:
        return None

# 开始扫描
vulnerabilities = []

for target in targets:
    print(f"\n{'='*60}")
    print(f"[+] 扫描: {target['host']} ({target['ip']}) - {target['type']}")
    print(f"{'='*60}")
    
    # 1. SSL 证书检查
    if target['type'] != 'CDN保护':
        print(f"\n[*] 检查 SSL 证书...")
        cert_info = check_ssl_cert(target['ip'])
        if cert_info:
            # 检查证书是否匹配
            cert_cn = cert_info['subject'].get('commonName', '')
            if cert_cn and target['host'] not in cert_cn:
                print(f"  [!] 证书不匹配: {cert_cn} != {target['host']}")
                vulnerabilities.append({
                    'host': target['host'],
                    'type': '证书不匹配',
                    'details': f"证书CN: {cert_cn}"
                })
    
    # 2. HTTP 方法测试
    base_url = f"https://{target['host']}" if target['type'] == 'CDN保护' else f"http://{target['ip']}"
    
    print(f"\n[*] 测试 HTTP 方法...")
    dangerous_methods = test_http_methods(base_url)
    if dangerous_methods:
        print(f"  [!] 发现危险方法: {', '.join(dangerous_methods)}")
        vulnerabilities.append({
            'host': target['host'],
            'type': '危险HTTP方法',
            'methods': dangerous_methods
        })
    
    # 3. CORS 检查
    print(f"\n[*] 检查 CORS 配置...")
    cors_issues = check_cors(base_url)
    if cors_issues:
        print(f"  [!] CORS 配置不当:")
        for issue in cors_issues:
            print(f"    Origin: {issue['origin']} -> ACAO: {issue['acao']}")
        vulnerabilities.append({
            'host': target['host'],
            'type': 'CORS配置错误',
            'details': cors_issues
        })
    
    # 4. 安全头检查
    print(f"\n[*] 检查安全响应头...")
    header_issues = check_security_headers(base_url)
    if header_issues and header_issues['missing']:
        print(f"  [!] 缺少安全头: {', '.join(header_issues['missing'])}")
        vulnerabilities.append({
            'host': target['host'],
            'type': '缺少安全头',
            'missing': header_issues['missing']
        })
    
    # 5. API 端点发现
    print(f"\n[*] 发现 API 端点...")
    api_endpoints = find_api_endpoints(base_url)
    unauth_apis = [ep for ep in api_endpoints if ep['type'] == 'Unauth Access']
    if unauth_apis:
        print(f"  [!] 发现未授权 API:")
        for api in unauth_apis:
            print(f"    {api['url']} - 数据: {api.get('data_preview', 'N/A')}")
        vulnerabilities.append({
            'host': target['host'],
            'type': 'API未授权访问',
            'endpoints': unauth_apis
        })
    
    # 6. 子域名接管检查
    if target['type'] == 'CDN保护':
        print(f"\n[*] 检查子域名接管...")
        takeover = check_subdomain_takeover(target['host'])
        if takeover and takeover['vulnerable']:
            print(f"  [!] 可能存在子域名接管: {takeover['service']}")
            vulnerabilities.append({
                'host': target['host'],
                'type': '子域名接管',
                'service': takeover['service']
            })

# 总结
print(f"\n\n{'='*60}")
print(f"[+] 扫描总结")
print(f"{'='*60}")

if vulnerabilities:
    print(f"\n发现 {len(vulnerabilities)} 个问题:\n")
    
    # 按严重程度分类
    critical = ['API未授权访问', '子域名接管', '危险HTTP方法']
    high = ['CORS配置错误', '证书不匹配']
    medium = ['缺少安全头']
    
    for severity, types in [('严重', critical), ('高危', high), ('中危', medium)]:
        issues = [v for v in vulnerabilities if v['type'] in types]
        if issues:
            print(f"\n[{severity}] ({len(issues)} 个):")
            for issue in issues:
                print(f"  - {issue['host']}: {issue['type']}")
                if 'details' in issue:
                    print(f"    详情: {issue['details']}")
                if 'endpoints' in issue:
                    print(f"    端点: {len(issue['endpoints'])} 个")
else:
    print(f"\n[+] 未发现明显安全问题")

# 保存报告
if vulnerabilities:
    report_file = f"precision_scan_report_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
    import json
    with open(report_file, 'w', encoding='utf-8') as f:
        json.dump({
            'scan_time': datetime.now().isoformat(),
            'targets': len(targets),
            'vulnerabilities': vulnerabilities
        }, f, ensure_ascii=False, indent=2)
    print(f"\n\n[+] 报告已保存: {report_file}")

print(f"\n[+] 扫描完成！")