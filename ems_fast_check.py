#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
EMS.com.vn 快速存活检测
优先检测高价值目标
"""

import requests
import concurrent.futures
import time
import json
from datetime import datetime
import urllib3

# 禁用 SSL 警告
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

# 高优先级目标
HIGH_PRIORITY_DOMAINS = [
    # 认证系统
    "auth.ems.com.vn", "sso.ems.com.vn",
    # 管理后台
    "admin.ems.com.vn", "portal.ems.com.vn", "internal.ems.com.vn",
    # API 服务
    "api.ems.com.vn", "apis.ems.com.vn", "api-dingdong.ems.com.vn",
    # 开发环境
    "git.ems.com.vn", "staging.ems.com.vn", "demo.ems.com.vn",
    # 监控系统
    "monitor.ems.com.vn", "analytics.ems.com.vn",
    # 主站
    "ems.com.vn", "www.ems.com.vn"
]

# 中优先级目标
MEDIUM_PRIORITY_DOMAINS = [
    "apilogistics.ems.com.vn", "baocao.ems.com.vn", "bill.ems.com.vn",
    "call.ems.com.vn", "dangky.ems.com.vn", "docs.ems.com.vn",
    "game.ems.com.vn", "khachhang.ems.com.vn", "logistics.ems.com.vn",
    "mail.ems.com.vn", "sale.ems.com.vn", "wiki.ems.com.vn"
]

# 关键 IP
KEY_IPS = [
    "222.255.250.247",  # auth.ems.com.vn
    "222.255.250.228",  # GitLab
    "115.146.121.131",  # API services
    "115.146.121.135",  # Multiple services
    "222.255.250.234"   # Internal
]

def quick_check(target, protocol='https'):
    """快速检查单个目标"""
    url = f"{protocol}://{target}"
    
    try:
        resp = requests.get(url, timeout=3, verify=False, allow_redirects=True)
        
        # 提取关键信息
        title = 'No Title'
        if '<title>' in resp.text:
            title = resp.text.split('<title>')[1].split('</title>')[0].strip()[:50]
        
        # 检测技术
        techs = []
        content_lower = resp.text.lower()
        headers_lower = str(resp.headers).lower()
        
        if 'laravel' in content_lower or 'laravel' in headers_lower:
            techs.append('Laravel')
        if 'asp.net' in content_lower or 'asp.net' in headers_lower:
            techs.append('ASP.NET')
        if 'gitlab' in content_lower or 'gitlab' in title.lower():
            techs.append('GitLab')
        if 'nginx' in headers_lower:
            techs.append('Nginx')
        if 'iis' in headers_lower:
            techs.append('IIS')
        
        # 检测登录页面
        is_login = any(kw in content_lower for kw in ['login', 'đăng nhập', 'password', 'signin'])
        
        status_icon = "🟢" if resp.status_code == 200 else "🟡" if resp.status_code < 400 else "🔴"
        
        result = {
            'url': url,
            'status': resp.status_code,
            'title': title,
            'server': resp.headers.get('Server', 'Unknown'),
            'techs': techs,
            'is_login': is_login,
            'final_url': resp.url
        }
        
        # 实时输出
        login_flag = "🔐" if is_login else ""
        tech_str = f"[{', '.join(techs)}]" if techs else ""
        print(f"{status_icon} {url:<50} | {resp.status_code} | {title:<30} {tech_str} {login_flag}")
        
        return result
        
    except Exception as e:
        print(f"❌ {url:<50} | {str(e)[:30]}")
        return None

def batch_check(targets, name=""):
    """批量检查目标"""
    print(f"\n{'='*80}")
    print(f"[+] 检测{name}目标 ({len(targets)}个)")
    print(f"{'='*80}")
    
    results = []
    with concurrent.futures.ThreadPoolExecutor(max_workers=10) as executor:
        # HTTPS 检查
        https_futures = {executor.submit(quick_check, target, 'https'): target for target in targets}
        for future in concurrent.futures.as_completed(https_futures):
            result = future.result()
            if result:
                results.append(result)
        
        # HTTP 检查（仅对 HTTPS 失败的）
        http_targets = []
        for target in targets:
            https_found = any(r['url'] == f"https://{target}" for r in results if r)
            if not https_found:
                http_targets.append(target)
        
        if http_targets:
            print(f"\n[*] 检测 HTTP 服务...")
            http_futures = {executor.submit(quick_check, target, 'http'): target for target in http_targets}
            for future in concurrent.futures.as_completed(http_futures):
                result = future.result()
                if result:
                    results.append(result)
    
    return results

def main():
    print(f"""
╔══════════════════════════════════════════════════════════════════════════════╗
║                    EMS.com.vn 资产快速存活检测                               ║
║                    时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}                                   ║
╚══════════════════════════════════════════════════════════════════════════════╝
    """)
    
    all_results = []
    
    # 1. 高优先级目标
    high_results = batch_check(HIGH_PRIORITY_DOMAINS, "高优先级")
    all_results.extend(high_results)
    
    # 2. 关键 IP
    ip_results = batch_check(KEY_IPS, "关键IP")
    all_results.extend(ip_results)
    
    # 3. 中优先级目标
    medium_results = batch_check(MEDIUM_PRIORITY_DOMAINS, "中优先级")
    all_results.extend(medium_results)
    
    # 4. 带端口的服务
    print(f"\n{'='*80}")
    print(f"[+] 检测特殊端口服务")
    print(f"{'='*80}")
    
    special_ports = [
        ("apis.ems.com.vn", 5004),
        ("apilogistics.ems.com.vn", 9090),
        ("webhookc2c.ems.com.vn", 5555),
        ("mail.ems.com.vn", 8880),
        ("115.146.121.135", 8080),
        ("222.255.250.237", 5555)
    ]
    
    for host, port in special_ports:
        url = f"https://{host}:{port}"
        result = quick_check(f"{host}:{port}", 'https')
        if result:
            all_results.append(result)
        else:
            result = quick_check(f"{host}:{port}", 'http')
            if result:
                all_results.append(result)
    
    # 生成报告
    print(f"\n{'='*80}")
    print(f"[+] 检测完成！生成报告...")
    print(f"{'='*80}")
    
    # 统计
    alive_count = len([r for r in all_results if r])
    login_pages = [r for r in all_results if r and r.get('is_login')]
    status_200 = [r for r in all_results if r and r.get('status') == 200]
    
    # 技术栈统计
    tech_stats = {}
    for r in all_results:
        if r and r.get('techs'):
            for tech in r['techs']:
                tech_stats[tech] = tech_stats.get(tech, 0) + 1
    
    # 输出统计
    print(f"""
📊 统计结果：
- 总检测数: {len(HIGH_PRIORITY_DOMAINS) + len(KEY_IPS) + len(MEDIUM_PRIORITY_DOMAINS) + len(special_ports)}
- 存活服务: {alive_count}
- 200 OK: {len(status_200)}
- 登录页面: {len(login_pages)}

🔧 技术栈分布：""")
    
    for tech, count in sorted(tech_stats.items(), key=lambda x: x[1], reverse=True):
        print(f"  - {tech}: {count}")
    
    print(f"""
🎯 高价值发现：""")
    
    # 高价值目标
    for r in all_results:
        if r and any(kw in r['url'] for kw in ['auth', 'admin', 'git', 'api', 'internal']):
            if r['status'] in [200, 301, 302]:
                print(f"  ⭐ {r['url']} - {r['title']}")
    
    # 保存结果
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    with open(f'ems_fast_check_{timestamp}.json', 'w', encoding='utf-8') as f:
        json.dump({
            'scan_time': timestamp,
            'results': all_results,
            'statistics': {
                'total': len(all_results),
                'alive': alive_count,
                'login_pages': len(login_pages),
                'tech_stats': tech_stats
            }
        }, f, ensure_ascii=False, indent=2)
    
    print(f"\n✅ 结果已保存到: ems_fast_check_{timestamp}.json")

if __name__ == "__main__":
    main()