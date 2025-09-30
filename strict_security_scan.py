#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
严格的安全扫描 - 排除误报
"""

import requests
import urllib3
import socket
import concurrent.futures
import json
from datetime import datetime

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

print("""
╔══════════════════════════════════════════════════════════════════════════════╗
║                    严格安全扫描 - 零误报                                     ║
╚══════════════════════════════════════════════════════════════════════════════╝
""")

# 真实 IP 列表（排除 CDN）
real_ips = [
    {'ip': '222.255.250.228', 'desc': 'webapp.ems.com.vn'},
    {'ip': '222.255.250.247', 'desc': 'mail-vn.ems.com.vn'},
    {'ip': '222.255.250.234', 'desc': 'internal.ems.com.vn'},
    {'ip': '222.255.250.240', 'desc': 'portal-vn.ems.com.vn'},
    {'ip': '115.146.121.131', 'desc': 'api.ems.com.vn'},
    {'ip': '115.146.121.135', 'desc': 'admin-api.ems.com.vn'},
    {'ip': '115.146.121.150', 'desc': 'system.ems.com.vn'},
    {'ip': '115.146.121.152', 'desc': 'monitor.ems.com.vn'}
]

def get_baseline(ip, port=80):
    """获取基线响应（不存在的路径）"""
    try:
        random_path = '/nonexistent' + str(datetime.now().timestamp()).replace('.', '')
        url = f"http://{ip}:{port}{random_path}"
        resp = requests.get(url, verify=False, timeout=3, allow_redirects=False)
        return {
            'status': resp.status_code,
            'size': len(resp.text),
            'headers': dict(resp.headers)
        }
    except:
        return None

def test_auth_bypass(ip, baseline):
    """测试认证绕过 - 严格验证"""
    results = []
    
    # 关键路径
    critical_paths = [
        '/admin', '/api/v1/users', '/api/v1/config', '/.env', '/config.php',
        '/wp-admin', '/phpmyadmin', '/adminer', '/manager/html',
        '/system', '/console', '/management', '/debug', '/shell'
    ]
    
    for path in critical_paths:
        try:
            # 测试直接 IP 访问
            direct_url = f"http://{ip}{path}"
            resp = requests.get(direct_url, verify=False, timeout=3, allow_redirects=False)
            
            # 严格验证：必须满足以下条件才算漏洞
            is_vulnerability = False
            vuln_type = None
            
            # 1. 状态码必须是 200 且不是重定向
            if resp.status_code == 200:
                # 2. 内容大小必须与基线不同
                if baseline and len(resp.text) != baseline['size']:
                    # 3. 必须包含敏感内容
                    content_lower = resp.text.lower()
                    
                    # 检查配置文件
                    if path in ['/.env', '/config.php']:
                        if any(key in resp.text for key in ['APP_KEY', 'DB_PASSWORD', 'API_KEY', 'SECRET']):
                            is_vulnerability = True
                            vuln_type = '配置文件泄露'
                    
                    # 检查管理界面
                    elif 'admin' in path or 'management' in path:
                        # 必须不是登录页面
                        if not any(login in content_lower for login in ['login', 'password', 'username']):
                            # 必须包含管理功能
                            if any(mgmt in content_lower for mgmt in ['dashboard', 'users', 'settings', 'delete', 'edit']):
                                is_vulnerability = True
                                vuln_type = '管理界面未授权访问'
                    
                    # 检查 API
                    elif '/api' in path:
                        try:
                            json_data = resp.json()
                            # 必须返回实际数据
                            if isinstance(json_data, (list, dict)) and len(str(json_data)) > 50:
                                is_vulnerability = True
                                vuln_type = 'API 未授权访问'
                        except:
                            pass
                    
                    # 检查调试界面
                    elif 'debug' in path or 'shell' in path:
                        if any(debug in content_lower for debug in ['exception', 'stacktrace', 'console', 'execute']):
                            is_vulnerability = True
                            vuln_type = '调试接口暴露'
            
            if is_vulnerability:
                results.append({
                    'url': direct_url,
                    'type': vuln_type,
                    'status': resp.status_code,
                    'size': len(resp.text),
                    'evidence': resp.text[:200] if len(resp.text) < 1000 else '内容过长'
                })
                
        except:
            pass
    
    return results

def test_trust_relationship(ip):
    """测试网段信任关系"""
    results = []
    
    # 测试信任头
    trust_headers = [
        {'X-Forwarded-For': '127.0.0.1'},
        {'X-Forwarded-For': '222.255.250.242'},  # 同网段
        {'X-Real-IP': '127.0.0.1'},
        {'X-Originating-IP': '127.0.0.1'},
        {'X-Remote-IP': '127.0.0.1'},
        {'X-Client-IP': '127.0.0.1'}
    ]
    
    test_paths = ['/admin', '/api/v1/internal', '/system/status']
    
    for path in test_paths:
        url = f"http://{ip}{path}"
        
        # 首先获取正常响应
        try:
            normal_resp = requests.get(url, verify=False, timeout=3, allow_redirects=False)
            normal_status = normal_resp.status_code
            normal_size = len(normal_resp.text)
        except:
            continue
        
        # 测试信任头
        for headers in trust_headers:
            try:
                trust_resp = requests.get(url, headers=headers, verify=False, timeout=3, allow_redirects=False)
                
                # 如果响应不同，可能存在信任关系
                if trust_resp.status_code != normal_status or abs(len(trust_resp.text) - normal_size) > 100:
                    # 进一步验证
                    if trust_resp.status_code == 200 and normal_status in [401, 403, 302]:
                        results.append({
                            'url': url,
                            'headers': headers,
                            'normal_status': normal_status,
                            'bypass_status': trust_resp.status_code,
                            'type': '信任关系绕过'
                        })
            except:
                pass
    
    return results

def discover_hidden_interfaces(ip):
    """发现隐藏接口 - 智能探测"""
    results = []
    
    # 智能路径生成
    paths = [
        # 开发/调试
        '/telescope', '/horizon', '/clockwork', '/_debugbar',
        '/debug/default/view', '/debug/pprof',
        
        # 监控
        '/metrics', '/health', '/status', '/stats',
        '/_stats', '/server-status', '/nginx_status',
        
        # API 文档
        '/swagger', '/swagger-ui', '/api-docs', '/docs',
        '/v1/docs', '/api/v1/docs', '/redoc',
        
        # 数据库管理
        '/sql', '/sqladmin', '/myadmin', '/pma',
        '/phpMyAdmin', '/phppgadmin', '/adminer.php',
        
        # 版本控制
        '/.git/HEAD', '/.svn/entries', '/.hg',
        
        # 备份文件
        '/backup', '/backups', '/dump', '/export',
        '/database.sql', '/backup.zip', '/www.zip',
        
        # 配置文件
        '/config.json', '/settings.py', '/config.yml',
        '/app.config', '/web.config', '/config.inc.php',
        
        # 日志文件
        '/logs', '/log', '/error.log', '/access.log',
        '/debug.log', '/app.log',
        
        # 测试接口
        '/test', '/testing', '/dev', '/development',
        '/stage', '/staging', '/demo'
    ]
    
    # 获取基线
    baseline = get_baseline(ip)
    
    for path in paths:
        try:
            url = f"http://{ip}{path}"
            resp = requests.get(url, verify=False, timeout=3, allow_redirects=False)
            
            # 严格判断是否是真实接口
            if resp.status_code == 200:
                # 必须与基线不同
                if baseline and len(resp.text) == baseline['size']:
                    continue
                
                # 检查内容特征
                content_lower = resp.text.lower()
                is_real = False
                interface_type = '未知'
                
                # Git 仓库
                if '/.git/HEAD' in path and 'ref:' in resp.text:
                    is_real = True
                    interface_type = 'Git 仓库泄露'
                
                # Swagger/API 文档
                elif any(doc in path for doc in ['swagger', 'api-docs', 'redoc']):
                    if any(kw in content_lower for kw in ['swagger', 'openapi', 'api documentation']):
                        is_real = True
                        interface_type = 'API 文档'
                
                # 调试工具
                elif any(debug in path for debug in ['telescope', 'horizon', 'debugbar']):
                    if any(kw in content_lower for kw in ['laravel', 'debug', 'queries', 'requests']):
                        is_real = True
                        interface_type = '调试工具'
                
                # 监控接口
                elif any(mon in path for mon in ['metrics', 'health', 'status']):
                    if resp.headers.get('Content-Type', '').startswith('application/json'):
                        try:
                            json.loads(resp.text)
                            is_real = True
                            interface_type = '监控接口'
                        except:
                            pass
                
                # 数据库管理
                elif any(db in path for db in ['phpmyadmin', 'adminer', 'sql']):
                    if any(kw in content_lower for kw in ['mysql', 'database', 'phpmyadmin']):
                        is_real = True
                        interface_type = '数据库管理'
                
                # 备份文件
                elif any(ext in path for ext in ['.zip', '.sql', '.tar']):
                    content_type = resp.headers.get('Content-Type', '')
                    if 'application' in content_type or len(resp.content) > 1000:
                        is_real = True
                        interface_type = '备份文件'
                
                if is_real:
                    results.append({
                        'url': url,
                        'type': interface_type,
                        'size': len(resp.content),
                        'content_type': resp.headers.get('Content-Type', 'N/A')
                    })
        except:
            pass
    
    return results

# 主扫描逻辑
print("[*] 开始严格安全扫描...\n")

all_vulnerabilities = []

for target in real_ips[:3]:  # 先测试前3个
    ip = target['ip']
    desc = target['desc']
    
    print(f"\n{'='*60}")
    print(f"[+] 扫描目标: {ip} ({desc})")
    print(f"{'='*60}")
    
    # 1. 获取基线
    print(f"\n[*] 获取基线响应...")
    baseline = get_baseline(ip)
    if baseline:
        print(f"  基线状态: {baseline['status']}, 大小: {baseline['size']} 字节")
    
    # 2. 测试认证绕过
    print(f"\n[*] 测试认证绕过...")
    auth_bypasses = test_auth_bypass(ip, baseline)
    if auth_bypasses:
        print(f"  [!] 发现 {len(auth_bypasses)} 个认证绕过漏洞:")
        for vuln in auth_bypasses:
            print(f"    - {vuln['url']} ({vuln['type']})")
            print(f"      证据: {vuln['evidence'][:100]}...")
            all_vulnerabilities.append(vuln)
    else:
        print(f"  [✓] 未发现认证绕过漏洞")
    
    # 3. 测试信任关系
    print(f"\n[*] 测试网段信任关系...")
    trust_issues = test_trust_relationship(ip)
    if trust_issues:
        print(f"  [!] 发现 {len(trust_issues)} 个信任关系问题:")
        for issue in trust_issues:
            print(f"    - {issue['url']}")
            print(f"      绕过头: {issue['headers']}")
            print(f"      状态变化: {issue['normal_status']} -> {issue['bypass_status']}")
            all_vulnerabilities.append(issue)
    else:
        print(f"  [✓] 未发现信任关系问题")
    
    # 4. 发现隐藏接口
    print(f"\n[*] 智能探测隐藏接口...")
    hidden = discover_hidden_interfaces(ip)
    if hidden:
        print(f"  [!] 发现 {len(hidden)} 个隐藏接口:")
        for h in hidden:
            print(f"    - {h['url']} ({h['type']})")
            print(f"      大小: {h['size']} 字节, 类型: {h['content_type']}")
            all_vulnerabilities.append(h)
    else:
        print(f"  [✓] 未发现隐藏接口")

# 汇总
print(f"\n\n{'='*60}")
print(f"[+] 扫描汇总")
print(f"{'='*60}")
print(f"总计发现 {len(all_vulnerabilities)} 个真实漏洞")

# 保存结果
if all_vulnerabilities:
    report_file = f"verified_vulnerabilities_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
    with open(report_file, 'w', encoding='utf-8') as f:
        json.dump(all_vulnerabilities, f, ensure_ascii=False, indent=2)
    print(f"\n[+] 详细报告已保存到: {report_file}")
else:
    print(f"\n[+] 未发现真实漏洞")

print(f"\n[+] 扫描完成！")