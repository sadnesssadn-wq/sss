#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
EMS.com.vn 简化存活检测
"""

import requests
import urllib3
from datetime import datetime

# 禁用 SSL 警告
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

# 关键目标
KEY_TARGETS = [
    # 认证和管理
    "auth.ems.com.vn",
    "admin.ems.com.vn", 
    "portal.ems.com.vn",
    "internal.ems.com.vn",
    "sso.ems.com.vn",
    
    # API
    "api.ems.com.vn",
    "apis.ems.com.vn",
    
    # 开发
    "git.ems.com.vn",
    "staging.ems.com.vn",
    
    # 主站
    "ems.com.vn",
    "www.ems.com.vn",
    
    # 新发现
    "monitor.ems.com.vn",
    "khachhang.ems.com.vn",
    
    # 关键 IP
    "222.255.250.247",  # auth
    "222.255.250.228",  # git
    "115.146.121.131"   # api
]

def check_target(target):
    """检查单个目标"""
    results = []
    
    for protocol in ['https', 'http']:
        url = f"{protocol}://{target}"
        
        try:
            print(f"[*] 检测 {url}...", end='', flush=True)
            resp = requests.get(url, timeout=5, verify=False, allow_redirects=True)
            
            # 提取标题
            title = 'No Title'
            if '<title>' in resp.text:
                try:
                    title = resp.text.split('<title>')[1].split('</title>')[0].strip()[:40]
                except:
                    pass
            
            # 简单技术检测
            tech = []
            if 'gitlab' in resp.text.lower() or 'gitlab' in title.lower():
                tech.append('GitLab')
            if 'laravel' in resp.text.lower():
                tech.append('Laravel')
            if 'asp.net' in resp.text.lower():
                tech.append('ASP.NET')
            
            # 登录检测
            is_login = any(kw in resp.text.lower() for kw in ['login', 'đăng nhập', 'password'])
            
            print(f" ✅ {resp.status_code} | {title} {tech} {'🔐' if is_login else ''}")
            
            results.append({
                'url': url,
                'status': resp.status_code,
                'title': title,
                'tech': tech,
                'is_login': is_login,
                'alive': True
            })
            
        except Exception as e:
            print(f" ❌ {str(e)[:30]}")
    
    return results

def main():
    print(f"""
============================================================
EMS.com.vn 核心资产存活检测
时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}
============================================================
""")
    
    all_results = []
    alive_count = 0
    login_pages = []
    
    for target in KEY_TARGETS:
        results = check_target(target)
        all_results.extend(results)
        
        for r in results:
            if r['alive']:
                alive_count += 1
                if r['is_login']:
                    login_pages.append(r['url'])
    
    # 特殊端口
    print("\n[+] 检测特殊端口...")
    special = [
        ("apis.ems.com.vn", 5004),
        ("apilogistics.ems.com.vn", 9090),
        ("115.146.121.135", 8080),
        ("222.255.250.228", 443)  # GitLab
    ]
    
    for host, port in special:
        for protocol in ['https', 'http']:
            url = f"{protocol}://{host}:{port}"
            try:
                print(f"[*] 检测 {url}...", end='', flush=True)
                resp = requests.get(url, timeout=5, verify=False)
                print(f" ✅ {resp.status_code}")
                alive_count += 1
            except:
                print(f" ❌")
    
    # 总结
    print(f"""
============================================================
检测总结:
- 检测目标: {len(KEY_TARGETS)}
- 存活服务: {alive_count}
- 登录页面: {len(login_pages)}

🎯 重要发现:
""")
    
    for r in all_results:
        if r['alive'] and r['status'] in [200, 301, 302]:
            if any(kw in r['url'] for kw in ['auth', 'admin', 'git', 'api', 'internal']):
                print(f"⭐ {r['url']} - {r['title']} {r['tech']}")

if __name__ == "__main__":
    main()