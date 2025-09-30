#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
严格验证发现，排除误报
"""

import requests
import urllib3
import json

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

print("""
╔══════════════════════════════════════════════════════════════════════════════╗
║                    验证扫描结果 - 排除误报                                   ║
╚══════════════════════════════════════════════════════════════════════════════╝
""")

# 关键 IP 和路径
test_cases = [
    {
        'ip': '222.255.250.234',
        'desc': 'internal.ems.com.vn',
        'critical_paths': [
            '/admin',
            '/.env',
            '/phpmyadmin',
            '/shell',
            '/api/v1/users'
        ]
    }
]

def verify_response(url):
    """验证响应是否真的是无认证访问"""
    try:
        resp = requests.get(url, verify=False, timeout=5, allow_redirects=False)
        
        result = {
            'url': url,
            'status': resp.status_code,
            'size': len(resp.text),
            'is_login_page': False,
            'is_error_page': False,
            'is_real_content': False,
            'redirect': None,
            'title': '',
            'content_preview': ''
        }
        
        # 检查重定向
        if resp.status_code in [301, 302, 303, 307, 308]:
            result['redirect'] = resp.headers.get('Location', '')
            if 'login' in result['redirect'].lower():
                result['is_login_page'] = True
        
        # 检查是否是登录页面
        content_lower = resp.text.lower()
        login_indicators = ['login', 'sign in', 'password', 'username', 'đăng nhập', 'authentication']
        if any(indicator in content_lower for indicator in login_indicators):
            # 但要排除登录后的页面（如dashboard包含logout）
            if 'logout' not in content_lower and 'dashboard' not in content_lower:
                result['is_login_page'] = True
        
        # 检查是否是错误页面
        error_indicators = ['404', '403', '500', 'not found', 'forbidden', 'access denied', 'error']
        if any(indicator in resp.text for indicator in error_indicators):
            result['is_error_page'] = True
        
        # 提取标题
        import re
        title_match = re.search(r'<title[^>]*>([^<]+)</title>', resp.text, re.IGNORECASE)
        if title_match:
            result['title'] = title_match.group(1).strip()
        
        # 判断是否是真实内容
        if resp.status_code == 200:
            # 检查特定路径的预期内容
            if '/.env' in url:
                if 'APP_' in resp.text or 'DB_' in resp.text:
                    result['is_real_content'] = True
                    result['content_preview'] = resp.text[:200]
            elif '/phpmyadmin' in url:
                if 'phpmyadmin' in content_lower or 'mysql' in content_lower:
                    result['is_real_content'] = True
            elif '/admin' in url:
                if result['is_login_page']:
                    result['is_real_content'] = False
                elif 'admin' in content_lower or 'dashboard' in content_lower:
                    result['is_real_content'] = True
            elif '/api' in url:
                # 检查是否返回 JSON
                try:
                    json_data = resp.json()
                    result['is_real_content'] = True
                    result['content_preview'] = json.dumps(json_data)[:200]
                except:
                    pass
            
            # 通用检查
            if not result['is_real_content'] and not result['is_login_page'] and not result['is_error_page']:
                if len(resp.text) > 500:  # 有实质内容
                    result['is_real_content'] = True
                    result['content_preview'] = resp.text[:200].strip()
        
        return result
        
    except Exception as e:
        return {
            'url': url,
            'error': str(e),
            'status': None
        }

# 执行验证
for test in test_cases:
    print(f"\n{'='*60}")
    print(f"验证目标: {test['ip']} ({test['desc']})")
    print(f"{'='*60}")
    
    verified_vulnerabilities = []
    false_positives = []
    
    for path in test['critical_paths']:
        print(f"\n[*] 测试路径: {path}")
        
        # 测试 HTTP
        http_url = f"http://{test['ip']}{path}"
        http_result = verify_response(http_url)
        
        print(f"\nHTTP 结果:")
        print(f"  状态码: {http_result['status']}")
        
        if http_result.get('redirect'):
            print(f"  重定向: {http_result['redirect']}")
        
        if http_result['status'] == 200:
            print(f"  页面大小: {http_result['size']} 字节")
            print(f"  标题: {http_result.get('title', 'N/A')}")
            
            if http_result['is_login_page']:
                print(f"  [!] 这是登录页面 - 非漏洞")
                false_positives.append(http_url)
            elif http_result['is_error_page']:
                print(f"  [!] 这是错误页面 - 非漏洞")
                false_positives.append(http_url)
            elif http_result['is_real_content']:
                print(f"  [!!!] 确认漏洞 - 无认证访问到真实内容")
                if http_result.get('content_preview'):
                    print(f"  内容预览: {http_result['content_preview']}")
                verified_vulnerabilities.append({
                    'url': http_url,
                    'type': '无认证访问',
                    'severity': 'HIGH'
                })
            else:
                print(f"  [?] 需要人工验证")
        
        # 测试 HTTPS
        https_url = f"https://{test['ip']}{path}"
        https_result = verify_response(https_url)
        
        if https_result['status'] and https_result['status'] != http_result['status']:
            print(f"\nHTTPS 结果 (不同于HTTP):")
            print(f"  状态码: {https_result['status']}")
            # 类似的验证逻辑...
    
    # 汇总
    print(f"\n\n[+] 验证结果汇总:")
    print(f"确认的漏洞: {len(verified_vulnerabilities)}")
    for vuln in verified_vulnerabilities:
        print(f"  - {vuln['url']} ({vuln['type']})")
    
    print(f"\n误报: {len(false_positives)}")
    for fp in false_positives:
        print(f"  - {fp}")

# 额外验证：检查是否所有路径都返回相同内容（可能是默认页面）
print(f"\n\n[*] 检查是否为默认页面...")
test_ip = '222.255.250.234'
test_paths = ['/admin', '/nonexistent123', '/random456']
responses = []

for path in test_paths:
    url = f"http://{test_ip}{path}"
    try:
        resp = requests.get(url, verify=False, timeout=3)
        responses.append({
            'path': path,
            'size': len(resp.text),
            'status': resp.status_code
        })
    except:
        pass

# 如果所有路径返回相同大小的内容，可能是默认页面
if len(set(r['size'] for r in responses)) == 1:
    print(f"  [!] 警告：所有路径返回相同大小的内容 ({responses[0]['size']} 字节)")
    print(f"      可能是默认错误页面或通配符路由")
else:
    print(f"  [✓] 不同路径返回不同内容，验证通过")
    for r in responses:
        print(f"      {r['path']}: {r['size']} 字节")

print(f"\n[+] 验证完成！")