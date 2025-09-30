#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
识别真实 IP vs CDN IP
"""

import requests
import socket
import json
import urllib3

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

# 已知的 CDN IP 段
CDN_RANGES = {
    'Cloudflare': [
        '104.16.', '104.17.', '104.18.', '104.19.', '104.20.', '104.21.', '104.22.', '104.23.', '104.24.', '104.25.', '104.26.', '104.27.',
        '172.64.', '172.65.', '172.66.', '172.67.', '172.68.', '172.69.', '172.70.', '172.71.',
        '103.21.', '103.22.', '103.31.',
        '141.101.',
        '108.162.',
        '190.93.',
        '188.114.',
        '197.234.',
        '198.41.',
        '162.158.',
        '173.245.48.', '173.245.49.',
        '131.0.72.'
    ],
    'AWS CloudFront': ['13.', '52.', '54.', '18.', '35.', '3.'],
    'Akamai': ['23.', '104.', '184.', '2.', '92.', '88.', '69.', '95.'],
    'Fastly': ['151.101.', '199.232.']
}

# 从之前的扫描结果读取所有 IP
all_ips = [
    "103.74.120.246", "103.92.30.179", "104.18.40.47", "104.21.25.27",
    "115.146.121.131", "115.146.121.133", "115.146.121.135", "115.146.121.141",
    "115.146.121.145", "115.146.121.147", "115.146.121.150", "115.146.121.151",
    "115.146.121.152", "115.146.121.154", "136.143.190.194", "136.143.190.56",
    "172.64.147.209", "172.67.222.13", "18.139.152.202", "204.141.43.131",
    "222.255.250.226", "222.255.250.227", "222.255.250.228", "222.255.250.232",
    "222.255.250.233", "222.255.250.234", "222.255.250.237", "222.255.250.240",
    "222.255.250.242", "222.255.250.243", "222.255.250.247"
]

# 域名到 IP 的映射（从之前的扫描）
domain_ip_mapping = {
    'ems.com.vn': ['172.67.222.13', '104.21.25.27'],
    'www.ems.com.vn': ['172.67.222.13', '104.21.25.27'],
    'auth.ems.com.vn': ['222.255.250.247'],
    'monitor.ems.com.vn': ['172.67.222.13', '104.21.25.27'],
    'analytics.ems.com.vn': ['104.21.25.27', '172.67.222.13'],
    'api-dingdong.ems.com.vn': ['172.64.147.209', '104.18.40.47'],
    'apis.ems.com.vn': ['172.64.147.209', '104.18.40.47'],
    'admin.ems.com.vn': ['104.21.25.27', '172.67.222.13'],
    'internal.ems.com.vn': ['222.255.250.234'],
    'bill.ems.com.vn': ['222.255.250.240'],
    'docws.ems.com.vn': ['115.146.121.131'],
    'qllogistics.ems.com.vn': ['115.146.121.152']
}

def is_cdn_ip(ip):
    """检查是否为 CDN IP"""
    for cdn_name, ranges in CDN_RANGES.items():
        for range_prefix in ranges:
            if ip.startswith(range_prefix):
                return True, cdn_name
    return False, None

def analyze_ip(ip):
    """分析单个 IP"""
    result = {
        'ip': ip,
        'is_cdn': False,
        'cdn_provider': None,
        'services': [],
        'location': None,
        'real_server': False
    }
    
    # 检查是否为 CDN
    is_cdn, provider = is_cdn_ip(ip)
    result['is_cdn'] = is_cdn
    result['cdn_provider'] = provider
    
    # 反向 DNS
    try:
        hostname = socket.gethostbyaddr(ip)[0]
        result['reverse_dns'] = hostname
    except:
        result['reverse_dns'] = None
    
    # 检查 HTTP/HTTPS 响应头
    for protocol in ['http', 'https']:
        for port in [80, 443, 8080, 8443]:
            try:
                url = f"{protocol}://{ip}:{port}"
                resp = requests.get(url, verify=False, timeout=3, allow_redirects=False)
                
                if resp.status_code not in [0, None]:
                    service_info = {
                        'protocol': protocol,
                        'port': port,
                        'status': resp.status_code,
                        'server': resp.headers.get('Server', ''),
                        'powered_by': resp.headers.get('X-Powered-By', '')
                    }
                    
                    # 检查是否有真实服务器特征
                    if any(tech in service_info['server'].lower() for tech in ['iis', 'nginx', 'apache']):
                        if 'cloudflare' not in service_info['server'].lower():
                            result['real_server'] = True
                    
                    if service_info['powered_by']:
                        result['real_server'] = True
                    
                    result['services'].append(service_info)
                    
            except:
                pass
    
    return result

print("""
╔══════════════════════════════════════════════════════════════════════════════╗
║                    EMS.com.vn 真实 IP 识别                                   ║
╚══════════════════════════════════════════════════════════════════════════════╝
""")

# 分析所有 IP
real_ips = []
cdn_ips = []

print("\n[+] 分析所有 IP...\n")

for ip in all_ips:
    result = analyze_ip(ip)
    
    if result['is_cdn']:
        cdn_ips.append(result)
    else:
        real_ips.append(result)

# 输出结果
print(f"\n[1] CDN IP ({len(cdn_ips)} 个):")
print("="*60)

for item in cdn_ips:
    print(f"\nIP: {item['ip']}")
    print(f"  CDN: {item['cdn_provider']}")
    if item['reverse_dns']:
        print(f"  反向DNS: {item['reverse_dns']}")
    
    # 找出使用此 CDN 的域名
    domains_using = []
    for domain, ips in domain_ip_mapping.items():
        if item['ip'] in ips:
            domains_using.append(domain)
    if domains_using:
        print(f"  域名: {', '.join(domains_using)}")

print(f"\n\n[2] 真实服务器 IP ({len(real_ips)} 个):")
print("="*60)

# 按 IP 段分组
ip_groups = {
    '越南电信 (115.146.121.x)': [],
    '越南 VNPT (222.255.250.x)': [],
    '越南其他 (103.x.x.x)': [],
    '其他': []
}

for item in real_ips:
    ip = item['ip']
    
    if ip.startswith('115.146.121.'):
        ip_groups['越南电信 (115.146.121.x)'].append(item)
    elif ip.startswith('222.255.250.'):
        ip_groups['越南 VNPT (222.255.250.x)'].append(item)
    elif ip.startswith('103.'):
        ip_groups['越南其他 (103.x.x.x)'].append(item)
    else:
        ip_groups['其他'].append(item)

# 输出分组结果
for group_name, group_ips in ip_groups.items():
    if group_ips:
        print(f"\n{group_name}:")
        print("-" * 40)
        
        for item in group_ips:
            print(f"\nIP: {item['ip']}")
            if item['reverse_dns']:
                print(f"  反向DNS: {item['reverse_dns']}")
            
            # 显示运行的服务
            if item['services']:
                print(f"  服务:")
                for svc in item['services']:
                    if svc['status'] in [200, 301, 302, 401, 403]:
                        print(f"    - {svc['protocol']}:{svc['port']} ({svc['status']}) {svc['server']} {svc['powered_by']}")
            
            # 关联的域名
            domains_using = []
            for domain, ips in domain_ip_mapping.items():
                if item['ip'] in ips:
                    domains_using.append(domain)
            if domains_using:
                print(f"  域名: {', '.join(domains_using)}")

# 总结
print("\n\n[3] 总结:")
print("="*60)

print(f"\n真实服务器 IP 段：")
print(f"1. 115.146.121.0/24 - 越南电信，主要业务服务器")
print(f"2. 222.255.250.0/24 - 越南 VNPT，内部系统")
print(f"3. 103.74.120.0/24, 103.92.30.0/24 - 其他越南 ISP")

print(f"\nCDN 使用情况：")
print(f"- Cloudflare: 主要用于 ems.com.vn, admin.ems.com.vn 等公开域名")
print(f"- 真实 IP 直接暴露: 内部系统和 API 服务")

print(f"\n🎯 高价值真实 IP（建议重点测试）：")
high_value_ips = [
    ('222.255.250.228', 'Laravel + ASP.NET 双系统'),
    ('222.255.250.234', 'EMS INTERNAL 内部系统'),
    ('222.255.250.240', 'bill.ems.com.vn 账单系统'),
    ('222.255.250.247', 'auth.ems.com.vn 认证系统'),
    ('115.146.121.131', 'API 文档系统'),
    ('115.146.121.152', 'Django 物流管理系统')
]

for ip, desc in high_value_ips:
    print(f"  - {ip} : {desc}")

# 保存结果
results = {
    'cdn_ips': [{'ip': item['ip'], 'provider': item['cdn_provider']} for item in cdn_ips],
    'real_ips': [item['ip'] for item in real_ips],
    'high_value_targets': high_value_ips
}

with open('real_ip_analysis.json', 'w') as f:
    json.dump(results, f, indent=2)

print(f"\n\n[+] 分析结果已保存到: real_ip_analysis.json")