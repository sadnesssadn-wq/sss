#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
分析更多重要目标
"""

import requests
import urllib3
import socket

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

# 重要的内部系统IP
internal_ips = [
    ('222.255.250.234', 'Internal System'),
    ('222.255.250.240', 'DocWS System'),
    ('115.146.121.150', 'Main Service'),
    ('115.146.121.152', 'Django App')
]

# 其他重要域名
important_domains = [
    'git.ems.com.vn',
    'staging.ems.com.vn',
    'monitor.ems.com.vn',
    'apilogistics.ems.com.vn'
]

print("""
╔══════════════════════════════════════════════════════════════════════════════╗
║                    分析剩余高价值目标                                        ║
╚══════════════════════════════════════════════════════════════════════════════╝
""")

# 1. 分析内部IP
print("\n[1] 内部系统 IP 分析")

for ip, desc in internal_ips:
    print(f"\n{'='*50}")
    print(f"目标: {ip} ({desc})")
    print(f"{'='*50}")
    
    # 端口扫描
    print("\n端口扫描:")
    ports_to_check = [21, 22, 23, 25, 80, 443, 445, 1433, 3306, 3389, 
                     5432, 6379, 8080, 8443, 8088, 8888, 9000, 9090]
    
    open_ports = []
    for port in ports_to_check:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(1)
        result = sock.connect_ex((ip, port))
        if result == 0:
            open_ports.append(port)
            print(f"  [✓] 端口 {port} 开放")
        sock.close()
    
    # Web 服务检测
    for port in [80, 443, 8080, 8088, 8443]:
        if port in open_ports:
            for protocol in ['http', 'https']:
                if (protocol == 'https' and port in [443, 8443]) or (protocol == 'http'):
                    try:
                        url = f"{protocol}://{ip}:{port}"
                        resp = requests.get(url, verify=False, timeout=3, allow_redirects=True)
                        print(f"\n{protocol.upper()} 服务 (端口 {port}):")
                        print(f"  状态: {resp.status_code}")
                        print(f"  最终URL: {resp.url}")
                        
                        # 提取标题
                        if '<title>' in resp.text:
                            import re
                            title = re.search(r'<title>([^<]+)</title>', resp.text)
                            if title:
                                print(f"  标题: {title.group(1)}")
                        
                        # 检查技术
                        if 'x-powered-by' in resp.headers:
                            print(f"  技术: {resp.headers['x-powered-by']}")
                        if 'server' in resp.headers:
                            print(f"  服务器: {resp.headers['server']}")
                            
                    except Exception as e:
                        pass

# 2. 分析重要域名
print("\n\n[2] 重要域名分析")

for domain in important_domains:
    print(f"\n{'='*50}")
    print(f"域名: {domain}")
    print(f"{'='*50}")
    
    # DNS 解析
    try:
        ip = socket.gethostbyname(domain)
        print(f"  IP: {ip}")
    except:
        print(f"  DNS解析失败")
        continue
    
    # HTTP/HTTPS 测试
    for protocol in ['https', 'http']:
        try:
            url = f"{protocol}://{domain}"
            resp = requests.get(url, verify=False, timeout=5, allow_redirects=True)
            
            print(f"\n{protocol.upper()}:")
            print(f"  状态: {resp.status_code}")
            print(f"  最终URL: {resp.url}")
            
            # 特殊检查
            if 'git' in domain and resp.status_code == 200:
                if 'gitlab' in resp.text.lower():
                    print(f"  [!] GitLab 实例!")
                    
                    # 检查 GitLab 特定路径
                    gitlab_paths = ['/users/sign_in', '/explore', '/api/v4/version']
                    for path in gitlab_paths:
                        try:
                            test_resp = requests.get(f"{protocol}://{domain}{path}", 
                                                    verify=False, timeout=3)
                            if test_resp.status_code in [200, 302, 401]:
                                print(f"  GitLab路径 {path}: {test_resp.status_code}")
                        except:
                            pass
            
            elif 'staging' in domain:
                print(f"  [!] 测试环境")
                # 检查是否有调试信息
                if 'debug' in resp.text.lower() or 'error' in resp.text.lower():
                    print(f"  [!] 可能包含调试信息")
            
            elif 'monitor' in domain:
                print(f"  [!] 监控系统")
                # 检查常见监控路径
                monitor_paths = ['/metrics', '/health', '/status', '/api/metrics']
                for path in monitor_paths:
                    try:
                        test_resp = requests.get(f"{protocol}://{domain}{path}", 
                                               verify=False, timeout=3)
                        if test_resp.status_code == 200:
                            print(f"  监控端点 {path}: 可访问")
                    except:
                        pass
                        
        except Exception as e:
            print(f"{protocol}: 错误 - {str(e)[:50]}")

# 3. 特殊端口服务
print("\n\n[3] 特殊端口服务检测")

special_services = [
    ('apilogistics.ems.com.vn', 9090, 'API Logistics'),
    ('115.146.121.135', 8080, 'Service 8080'),
    ('222.255.250.237', 5555, 'Webhook Service')
]

for host, port, desc in special_services:
    print(f"\n{desc} - {host}:{port}")
    
    for protocol in ['http', 'https']:
        try:
            url = f"{protocol}://{host}:{port}"
            resp = requests.get(url, verify=False, timeout=5, allow_redirects=True)
            print(f"  {protocol}: {resp.status_code}")
            
            if resp.status_code == 200:
                # 检查内容类型
                content_type = resp.headers.get('Content-Type', '')
                print(f"    Content-Type: {content_type}")
                
                # 如果是 JSON
                if 'json' in content_type:
                    try:
                        data = resp.json()
                        print(f"    JSON数据: {str(data)[:100]}...")
                    except:
                        pass
                        
        except Exception as e:
            pass

print("\n\n[+] 分析完成！")

# 总结
print("\n" + "="*60)
print("总结：")
print("1. 222.255.250.x 段有多个内部系统运行")
print("2. 115.146.121.x 段主要是业务服务")
print("3. 多个服务使用非标准端口")
print("4. 建议重点关注开放的管理端口和 API 服务")