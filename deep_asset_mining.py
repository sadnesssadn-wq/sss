#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
深度资产挖掘 - 发现更多隐藏资产
"""

import requests
import urllib3
import dns.resolver
import socket
import ssl
import json
from datetime import datetime
import concurrent.futures
import re

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

print("""
╔══════════════════════════════════════════════════════════════════════════════╗
║                    深度资产挖掘 - 发现隐藏资产                               ║
╚══════════════════════════════════════════════════════════════════════════════╝
""")

# 已知域名
known_domains = [
    'ems.com.vn', 'admin.ems.com.vn', 'api.ems.com.vn', 'sso.ems.com.vn',
    'internal.ems.com.vn', 'portal.ems.com.vn', 'logistics.ems.com.vn'
]

def dns_zone_transfer(domain):
    """尝试 DNS 区域传送"""
    print(f"\n[*] 尝试 DNS 区域传送: {domain}")
    subdomains = []
    
    try:
        # 获取 NS 记录
        ns_records = dns.resolver.resolve(domain, 'NS')
        
        for ns in ns_records:
            ns_name = str(ns).rstrip('.')
            print(f"  测试 NS: {ns_name}")
            
            try:
                # 尝试区域传送
                zone = dns.zone.from_xfr(dns.query.xfr(ns_name, domain))
                
                for name, node in zone.nodes.items():
                    subdomain = str(name) + '.' + domain
                    if subdomain not in subdomains:
                        subdomains.append(subdomain)
                        print(f"  [!] 发现: {subdomain}")
            except:
                pass
                
    except Exception as e:
        print(f"  [-] 区域传送失败: {e}")
    
    return subdomains

def reverse_ip_lookup(ip):
    """反向 IP 查询，发现同服务器的其他域名"""
    print(f"\n[*] 反向 IP 查询: {ip}")
    domains = []
    
    # 使用多个反查服务
    services = [
        f"https://api.hackertarget.com/reverseiplookup/?q={ip}",
        f"https://api.shodan.io/dns/reverse?ips={ip}&key=SHODAN_KEY"  # 需要替换
    ]
    
    for service in services:
        try:
            resp = requests.get(service, timeout=10)
            if resp.status_code == 200:
                # 解析响应
                lines = resp.text.strip().split('\n')
                for line in lines:
                    if line and not line.startswith('error'):
                        domain = line.strip()
                        if domain not in domains:
                            domains.append(domain)
                            print(f"  [+] 发现: {domain}")
        except:
            pass
    
    return domains

def ssl_san_enumeration(domain):
    """通过 SSL 证书 SAN 字段枚举子域名"""
    print(f"\n[*] SSL 证书 SAN 枚举: {domain}")
    subdomains = []
    
    try:
        context = ssl.create_default_context()
        with socket.create_connection((domain, 443), timeout=5) as sock:
            with context.wrap_socket(sock, server_hostname=domain) as ssock:
                cert = ssock.getpeercert()
                
                # 获取 SAN 字段
                for ext in cert.get('subjectAltName', []):
                    if ext[0] == 'DNS':
                        subdomain = ext[1]
                        if subdomain not in subdomains and 'ems' in subdomain:
                            subdomains.append(subdomain)
                            print(f"  [+] 发现: {subdomain}")
    except:
        pass
    
    return subdomains

def wayback_machine_search(domain):
    """Wayback Machine 历史 URL 搜索"""
    print(f"\n[*] Wayback Machine 搜索: {domain}")
    urls = []
    
    try:
        # 获取所有历史 URL
        api_url = f"http://web.archive.org/cdx/search/cdx?url={domain}/*&output=json&fl=original&collapse=urlkey"
        resp = requests.get(api_url, timeout=10)
        
        if resp.status_code == 200:
            data = resp.json()
            
            # 提取唯一的子域名
            subdomains = set()
            for item in data[1:]:  # 跳过标题行
                url = item[0]
                # 提取子域名
                match = re.match(r'https?://([^/]+)', url)
                if match:
                    subdomain = match.group(1)
                    if subdomain.endswith('.ems.com.vn'):
                        subdomains.add(subdomain)
            
            for subdomain in subdomains:
                print(f"  [+] 历史域名: {subdomain}")
                urls.append(subdomain)
    except:
        pass
    
    return list(urls)

def virustotal_subdomain_enum(domain):
    """VirusTotal 子域名枚举"""
    print(f"\n[*] VirusTotal 子域名枚举: {domain}")
    subdomains = []
    
    # 注意：需要 API key
    api_key = "YOUR_VT_API_KEY"
    headers = {"x-apikey": api_key}
    
    try:
        url = f"https://www.virustotal.com/api/v3/domains/{domain}/subdomains"
        resp = requests.get(url, headers=headers, timeout=10)
        
        if resp.status_code == 200:
            data = resp.json()
            for item in data.get('data', []):
                subdomain = item.get('id')
                if subdomain:
                    subdomains.append(subdomain)
                    print(f"  [+] 发现: {subdomain}")
    except:
        print(f"  [-] VirusTotal 查询失败（需要 API key）")
    
    return subdomains

def google_dork_search(domain):
    """Google Dork 搜索建议"""
    print(f"\n[*] Google Dork 搜索建议:")
    
    dorks = [
        f'site:{domain} -www',
        f'site:*.{domain}',
        f'site:{domain} intitle:"index of"',
        f'site:{domain} ext:php OR ext:asp OR ext:aspx',
        f'site:{domain} inurl:admin OR inurl:login',
        f'site:{domain} filetype:pdf OR filetype:doc',
        f'site:{domain} intext:"@ems.com.vn"',
        f'"@ems.com.vn" -site:ems.com.vn',
        f'related:{domain}',
        f'link:{domain}'
    ]
    
    print("  请在 Google 中手动搜索以下 dorks:")
    for dork in dorks:
        print(f"    - {dork}")

def github_search(domain):
    """GitHub 代码搜索"""
    print(f"\n[*] GitHub 搜索建议:")
    
    queries = [
        f'"{domain}"',
        f'"ems.com.vn" password',
        f'"ems.com.vn" api_key',
        f'"ems.com.vn" secret',
        f'"ems.com.vn" token',
        f'"ems.com.vn" config',
        f'org:ems-vietnam',
        f'org:emsvn'
    ]
    
    print("  请在 GitHub 中搜索:")
    for query in queries:
        print(f"    - {query}")

def check_common_subdomains(domain):
    """检查常见但可能遗漏的子域名"""
    print(f"\n[*] 检查常见子域名模式...")
    
    # 扩展的子域名字典
    common_subs = [
        # 开发/测试环境
        'dev', 'development', 'test', 'testing', 'uat', 'stage', 'staging',
        'demo', 'sandbox', 'lab', 'experiment', 'poc', 'pilot',
        
        # 内部系统
        'intranet', 'extranet', 'internal', 'private', 'secure',
        'vpn', 'remote', 'gateway', 'proxy', 'firewall',
        
        # 管理系统
        'admin', 'administrator', 'manage', 'manager', 'console',
        'control', 'panel', 'cpanel', 'dashboard', 'backend',
        
        # API 相关
        'api', 'api-v1', 'api-v2', 'api-dev', 'api-test', 'api-staging',
        'rest', 'restapi', 'ws', 'websocket', 'graphql',
        
        # 数据库/存储
        'db', 'database', 'mysql', 'postgres', 'mongodb', 'redis',
        'elastic', 'elasticsearch', 'kibana', 'grafana',
        
        # 邮件系统
        'mail', 'email', 'smtp', 'imap', 'pop', 'pop3', 'webmail',
        'mx', 'mx1', 'mx2', 'relay', 'newsletter',
        
        # CDN/缓存
        'cdn', 'cache', 'static', 'assets', 'images', 'img',
        'media', 'download', 'files', 'content',
        
        # 监控/日志
        'monitor', 'monitoring', 'logs', 'logging', 'metrics',
        'stats', 'statistics', 'analytics', 'tracking',
        
        # 支付/财务
        'pay', 'payment', 'payments', 'billing', 'invoice',
        'checkout', 'shop', 'store', 'commerce',
        
        # 移动应用
        'mobile', 'm', 'app', 'android', 'ios', 'api-mobile',
        
        # 地区/语言
        'vn', 'en', 'vi', 'hcm', 'hn', 'hanoi', 'saigon',
        
        # 业务特定（物流相关）
        'tracking', 'trace', 'ship', 'shipping', 'delivery',
        'warehouse', 'logistics', 'transport', 'fleet',
        
        # 客户相关
        'customer', 'client', 'user', 'member', 'partner',
        'supplier', 'vendor', 'b2b', 'b2c',
        
        # 文档/知识库
        'docs', 'documentation', 'help', 'support', 'kb',
        'knowledge', 'faq', 'manual', 'guide',
        
        # 其他
        'old', 'new', 'legacy', 'v1', 'v2', 'v3',
        'alpha', 'beta', 'gamma', 'temp', 'tmp'
    ]
    
    found = []
    
    # 使用线程池并发检查
    with concurrent.futures.ThreadPoolExecutor(max_workers=20) as executor:
        futures = []
        
        for sub in common_subs:
            subdomain = f"{sub}.{domain}"
            future = executor.submit(check_subdomain_exists, subdomain)
            futures.append((subdomain, future))
        
        for subdomain, future in futures:
            try:
                exists = future.result(timeout=5)
                if exists:
                    found.append(subdomain)
                    print(f"  [+] 发现: {subdomain}")
            except:
                pass
    
    return found

def check_subdomain_exists(subdomain):
    """检查子域名是否存在"""
    try:
        # DNS 解析
        socket.gethostbyname(subdomain)
        return True
    except:
        return False

def check_port_services(ip):
    """深度端口扫描发现服务"""
    print(f"\n[*] 深度端口扫描: {ip}")
    
    # 扩展的端口列表
    interesting_ports = [
        21, 22, 23, 25, 53, 80, 81, 110, 111, 135, 139, 143, 443, 445,
        554, 587, 993, 995, 1080, 1433, 1521, 2082, 2083, 2086, 2087,
        3000, 3306, 3389, 4443, 5000, 5432, 5555, 5900, 6379, 7001,
        8000, 8008, 8080, 8081, 8088, 8443, 8880, 8888, 9090, 9200,
        9300, 9443, 10000, 27017
    ]
    
    services = []
    
    for port in interesting_ports:
        try:
            sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            sock.settimeout(1)
            result = sock.connect_ex((ip, port))
            sock.close()
            
            if result == 0:
                # 尝试获取服务信息
                service_info = get_service_banner(ip, port)
                services.append({
                    'port': port,
                    'service': service_info
                })
                print(f"  [+] 端口 {port} 开放 - {service_info}")
        except:
            pass
    
    return services

def get_service_banner(ip, port):
    """获取服务 banner"""
    try:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(2)
        sock.connect((ip, port))
        
        # 发送简单请求
        if port in [80, 8080, 8088, 8000]:
            sock.send(b"GET / HTTP/1.0\r\n\r\n")
        elif port in [21, 22, 25, 110, 143]:
            pass  # 这些服务会自动发送 banner
        else:
            sock.send(b"\r\n")
        
        banner = sock.recv(1024).decode('utf-8', errors='ignore')
        sock.close()
        
        # 简单识别服务
        if 'HTTP' in banner:
            return 'HTTP'
        elif 'SSH' in banner:
            return 'SSH'
        elif 'FTP' in banner:
            return 'FTP'
        elif 'SMTP' in banner:
            return 'SMTP'
        else:
            return banner[:50] if banner else 'Unknown'
    except:
        return 'Unknown'

# 执行深度挖掘
all_assets = {
    'subdomains': [],
    'ips': [],
    'services': [],
    'related_domains': []
}

# 1. DNS 区域传送
for domain in ['ems.com.vn']:
    subdomains = dns_zone_transfer(domain)
    all_assets['subdomains'].extend(subdomains)

# 2. SSL 证书枚举
for domain in known_domains:
    if 'admin' in domain or 'api' in domain:
        subdomains = ssl_san_enumeration(domain)
        all_assets['subdomains'].extend(subdomains)

# 3. 常见子域名检查
new_subs = check_common_subdomains('ems.com.vn')
all_assets['subdomains'].extend(new_subs)

# 4. 反向 IP 查询
important_ips = ['222.255.250.228', '115.146.121.131', '222.255.250.247']
for ip in important_ips:
    domains = reverse_ip_lookup(ip)
    all_assets['related_domains'].extend(domains)

# 5. Wayback Machine
historical = wayback_machine_search('ems.com.vn')
all_assets['subdomains'].extend(historical)

# 6. 深度端口扫描（选择性）
print(f"\n[*] 对重要 IP 进行深度服务发现...")
for ip in ['222.255.250.228', '115.146.121.131']:
    services = check_port_services(ip)
    if services:
        all_assets['services'].append({
            'ip': ip,
            'services': services
        })

# 7. 搜索引擎 Dork
google_dork_search('ems.com.vn')

# 8. GitHub 搜索
github_search('ems.com.vn')

# 去重
all_assets['subdomains'] = list(set(all_assets['subdomains']))
all_assets['related_domains'] = list(set(all_assets['related_domains']))

# 保存结果
print(f"\n\n{'='*60}")
print(f"[+] 深度挖掘总结")
print(f"{'='*60}")
print(f"新发现子域名: {len(all_assets['subdomains'])}")
print(f"相关域名: {len(all_assets['related_domains'])}")
print(f"服务详情: {len(all_assets['services'])}")

# 保存详细报告
report_file = f"deep_asset_mining_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
with open(report_file, 'w', encoding='utf-8') as f:
    json.dump(all_assets, f, ensure_ascii=False, indent=2)

print(f"\n[+] 详细报告已保存: {report_file}")
print(f"\n[!] 请手动执行 Google Dork 和 GitHub 搜索以发现更多资产")
print(f"[!] 考虑使用专业工具如 Amass, Subfinder, DNSRecon 等进行更深入的挖掘")