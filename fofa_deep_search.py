#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
FOFA 深度资产搜索
"""

import requests
import base64
import json
from datetime import datetime

# FOFA API 配置
FOFA_EMAIL = "your_email"  # 需要替换
FOFA_KEY = "21bf54950a62858792f22daa8474f42f"

def fofa_search(query, size=1000):
    """FOFA API 搜索"""
    # Base64 编码查询
    query_base64 = base64.b64encode(query.encode()).decode()
    
    # API URL
    url = f"https://fofa.info/api/v1/search/all"
    
    params = {
        'email': FOFA_EMAIL,
        'key': FOFA_KEY,
        'qbase64': query_base64,
        'fields': 'host,ip,port,domain,title,server,protocol,banner,cert,jarm,os,icp',
        'size': size
    }
    
    try:
        resp = requests.get(url, params=params, timeout=30)
        if resp.status_code == 200:
            return resp.json()
    except Exception as e:
        print(f"[!] FOFA 查询错误: {e}")
    
    return None

print("""
╔══════════════════════════════════════════════════════════════════════════════╗
║                    FOFA 深度资产搜索                                         ║
╚══════════════════════════════════════════════════════════════════════════════╝
""")

# 多维度搜索策略
search_queries = [
    # 1. 证书搜索
    'cert="ems.com.vn"',
    'cert.subject="ems.com.vn"',
    'cert.issuer="ems.com.vn"',
    
    # 2. 标题搜索
    'title="EMS" && country="VN"',
    'title="EMS Vietnam"',
    'title="EMS Portal"',
    'title="EMS Login"',
    
    # 3. 正文搜索
    'body="ems.com.vn"',
    'body="@ems.com.vn"',
    'body="EMS Corporation"',
    
    # 4. JavaScript 搜索
    'js_name="ems"',
    'js_md5="ems.com.vn"',
    
    # 5. IP 段搜索
    'ip="222.255.250.0/24"',
    'ip="115.146.121.0/24"',
    
    # 6. ASN 搜索
    'asn="45899"',  # VNPT
    'org="Vietnam Posts and Telecommunications"',
    
    # 7. ICP 备案搜索
    'icp="ems"',
    
    # 8. 响应头搜索
    'header="ems.com.vn"',
    'server="ems"',
    
    # 9. 特定技术栈
    'title="Laravel" && ip="222.255.250.0/24"',
    'title="IIS" && ip="115.146.121.0/24"',
    
    # 10. 子域名模糊搜索
    'domain="*.ems.com.vn"',
    'host=".ems.com.vn"',
    
    # 11. 关联域名
    'cert="emsvietnam"',
    'cert="emsone"',
    'body="emsvietnam.com"',
    
    # 12. 邮箱搜索
    'email="@ems.com.vn"'
]

all_results = {
    'domains': set(),
    'ips': set(),
    'services': [],
    'certificates': set(),
    'related_domains': set()
}

# 执行搜索
for i, query in enumerate(search_queries, 1):
    print(f"\n[{i}/{len(search_queries)}] 搜索: {query}")
    
    result = fofa_search(query, size=100)
    
    if result and result.get('results'):
        print(f"  [+] 发现 {len(result['results'])} 条结果")
        
        for item in result['results']:
            # 提取信息
            host = item[0] if len(item) > 0 else None
            ip = item[1] if len(item) > 1 else None
            port = item[2] if len(item) > 2 else None
            domain = item[3] if len(item) > 3 else None
            title = item[4] if len(item) > 4 else None
            
            # 收集域名
            if domain and 'ems' in domain:
                all_results['domains'].add(domain)
                if domain not in ['ems.com.vn', 'www.ems.com.vn']:
                    print(f"    [+] 域名: {domain}")
            
            # 收集 IP
            if ip:
                all_results['ips'].add(ip)
            
            # 收集服务
            if host and title:
                service = {
                    'host': host,
                    'ip': ip,
                    'port': port,
                    'title': title
                }
                all_results['services'].append(service)
                
                # 特别关注的服务
                if any(keyword in str(title).lower() for keyword in ['admin', 'login', 'api', 'manage', 'portal']):
                    print(f"    [!] 重要服务: {host} - {title}")

# 额外搜索：寻找开发/测试环境
print(f"\n[*] 搜索开发测试环境...")
dev_queries = [
    'domain="dev.ems.com.vn"',
    'domain="test.ems.com.vn"',
    'domain="uat.ems.com.vn"',
    'domain="staging.ems.com.vn"',
    'domain="beta.ems.com.vn"',
    'domain="demo.ems.com.vn"',
    'domain="dev-*.ems.com.vn"',
    'domain="test-*.ems.com.vn"'
]

for query in dev_queries:
    result = fofa_search(query, size=50)
    if result and result.get('results'):
        for item in result['results']:
            domain = item[3] if len(item) > 3 else None
            if domain:
                all_results['domains'].add(domain)
                print(f"  [+] 开发环境: {domain}")

# 搜索移动 API
print(f"\n[*] 搜索移动 API...")
mobile_queries = [
    'domain="m.ems.com.vn"',
    'domain="mobile.ems.com.vn"',
    'domain="app.ems.com.vn"',
    'domain="api-mobile.ems.com.vn"',
    'body="ems" && title="API" && port="8080"'
]

for query in mobile_queries:
    result = fofa_search(query, size=50)
    if result and result.get('results'):
        for item in result['results']:
            host = item[0] if len(item) > 0 else None
            if host:
                print(f"  [+] 移动服务: {host}")

# 统计结果
print(f"\n\n{'='*60}")
print(f"[+] FOFA 深度搜索结果")
print(f"{'='*60}")
print(f"发现域名总数: {len(all_results['domains'])}")
print(f"发现 IP 总数: {len(all_results['ips'])}")
print(f"发现服务总数: {len(all_results['services'])}")

# 显示新发现的域名
print(f"\n[*] 新发现的域名:")
known_domains = [
    'ems.com.vn', 'www.ems.com.vn', 'admin.ems.com.vn', 'api.ems.com.vn',
    'mail.ems.com.vn', 'portal.ems.com.vn', 'sso.ems.com.vn'
]

new_domains = [d for d in all_results['domains'] if d not in known_domains]
for domain in sorted(new_domains):
    print(f"  - {domain}")

# 显示重要 IP 段
print(f"\n[*] 发现的 IP 段:")
ip_segments = {}
for ip in all_results['ips']:
    segment = '.'.join(ip.split('.')[:3]) + '.0/24'
    if segment not in ip_segments:
        ip_segments[segment] = []
    ip_segments[segment].append(ip)

for segment, ips in ip_segments.items():
    if len(ips) > 2:  # 同网段有多个 IP
        print(f"  - {segment} ({len(ips)} 个 IP)")

# 保存详细结果
report = {
    'scan_time': datetime.now().isoformat(),
    'domains': list(all_results['domains']),
    'ips': list(all_results['ips']),
    'services': all_results['services'][:100],  # 限制数量
    'new_domains': new_domains,
    'ip_segments': ip_segments
}

report_file = f"fofa_deep_search_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
with open(report_file, 'w', encoding='utf-8') as f:
    json.dump(report, f, ensure_ascii=False, indent=2)

print(f"\n[+] 详细报告已保存: {report_file}")

# 推荐进一步操作
print(f"\n[!] 推荐进一步操作:")
print(f"1. 对新发现的域名进行深度扫描")
print(f"2. 检查开发/测试环境的安全性（通常防护较弱）")
print(f"3. 分析同 IP 段的其他服务")
print(f"4. 使用 Shodan 进行交叉验证")
print(f"5. 对发现的 API 端点进行安全测试")