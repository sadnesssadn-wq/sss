#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
最终安全评估报告
"""

import json
from datetime import datetime

print("""
╔══════════════════════════════════════════════════════════════════════════════╗
║                        EMS.COM.VN 安全评估报告                               ║
╚══════════════════════════════════════════════════════════════════════════════╝
""")

# 收集的资产
assets = {
    'domains': 123,  # 100 + 23 from deep scan
    'ips': 32,       # 29 + 3 from deep scan  
    'services': 45,
    'key_targets': [
        'ems.com.vn',
        'webapp.ems.com.vn', 
        'api.ems.com.vn',
        'admin.ems.com.vn',
        'sso.ems.com.vn',
        'portal.ems.com.vn'
    ]
}

# 真实确认的漏洞
confirmed_vulnerabilities = [
    {
        'target': 'admin.ems.com.vn',
        'type': 'CORS 配置错误',
        'severity': '高危',
        'details': 'Access-Control-Allow-Origin 设置为 *，允许任意源跨域访问',
        'impact': '可能导致用户凭据和敏感数据泄露',
        'recommendation': '将 CORS 限制为可信域名列表'
    },
    {
        'target': 'webapp.ems.com.vn',
        'type': '危险 HTTP 方法',
        'severity': '中危',
        'details': '支持 PATCH 方法',
        'impact': '可能被用于修改服务器资源',
        'recommendation': '禁用不必要的 HTTP 方法'
    },
    {
        'target': 'mail-vn.ems.com.vn',
        'type': '危险 HTTP 方法',
        'severity': '高危',
        'details': '支持 PUT, DELETE, PATCH 方法',
        'impact': '可能导致任意文件上传或删除',
        'recommendation': '立即禁用 PUT 和 DELETE 方法'
    },
    {
        'target': '多个目标',
        'type': '缺少安全响应头',
        'severity': '中危',
        'details': '缺少 X-Frame-Options, X-Content-Type-Options, X-XSS-Protection, Strict-Transport-Security, Content-Security-Policy',
        'impact': '增加 XSS、点击劫持等攻击风险',
        'recommendation': '配置完整的安全响应头'
    }
]

# 误报记录
false_positives = [
    {
        'target': '222.255.250.228',
        'claimed': 'Laravel Debug 模式开启',
        'reality': '302 重定向到登录页面'
    },
    {
        'target': '222.255.250.234',
        'claimed': '大量管理接口无认证访问',
        'reality': '所有路径返回相同的默认错误页面'
    },
    {
        'target': '222.255.250.234',
        'claimed': '24个备份文件泄露',
        'reality': '所有文件返回相同的默认错误页面'
    }
]

# CDN 保护情况
cdn_protection = {
    'protected': [
        'ems.com.vn',
        'admin.ems.com.vn',
        'api-dingdong.ems.com.vn',
        'sso.ems.com.vn'
    ],
    'real_ips': [
        '222.255.250.228 (webapp.ems.com.vn)',
        '222.255.250.247 (mail-vn.ems.com.vn)',
        '222.255.250.234 (internal.ems.com.vn)',
        '222.255.250.240 (portal-vn.ems.com.vn)',
        '115.146.121.131 (api.ems.com.vn)',
        '115.146.121.135 (admin-api.ems.com.vn)'
    ]
}

# 生成报告
print("\n[+] 资产统计")
print(f"="*60)
print(f"  发现域名: {assets['domains']} 个")
print(f"  发现 IP: {assets['ips']} 个")
print(f"  发现服务: {assets['services']} 个")
print(f"  核心目标: {len(assets['key_targets'])} 个")

print("\n[+] 确认的安全问题")
print(f"="*60)
for i, vuln in enumerate(confirmed_vulnerabilities, 1):
    print(f"\n{i}. {vuln['type']} ({vuln['severity']})")
    print(f"   目标: {vuln['target']}")
    print(f"   详情: {vuln['details']}")
    print(f"   影响: {vuln['impact']}")
    print(f"   建议: {vuln['recommendation']}")

print("\n[+] CDN 保护分析")
print(f"="*60)
print(f"  CDN 保护的域名: {len(cdn_protection['protected'])} 个")
print(f"  暴露的真实 IP: {len(cdn_protection['real_ips'])} 个")
print("\n  真实 IP 列表:")
for ip in cdn_protection['real_ips']:
    print(f"    - {ip}")

print("\n[+] 误报总结")
print(f"="*60)
print(f"  本次测试中发现 {len(false_positives)} 类误报:")
for fp in false_positives:
    print(f"    - {fp['target']}: 误判为'{fp['claimed']}'，实际是'{fp['reality']}'")

print("\n[+] 攻击面总结")
print(f"="*60)
print("""
1. 主要攻击面:
   - CORS 配置错误 (admin.ems.com.vn)
   - 危险 HTTP 方法 (mail-vn.ems.com.vn)
   - 真实 IP 暴露，可绕过 CDN 保护
   - 普遍缺少安全响应头

2. 建议深入测试:
   - API 端点的认证和授权机制
   - 文件上传功能的安全性
   - SQL 注入和 XSS 漏洞
   - 业务逻辑漏洞

3. 防御建议优先级:
   [紧急] 修复 mail-vn.ems.com.vn 的 PUT/DELETE 方法
   [高] 修复 admin.ems.com.vn 的 CORS 配置
   [中] 为所有站点添加安全响应头
   [中] 隐藏真实 IP，统一使用 CDN
""")

# 保存完整报告
report_data = {
    'scan_date': datetime.now().isoformat(),
    'target': 'ems.com.vn',
    'assets': assets,
    'vulnerabilities': confirmed_vulnerabilities,
    'false_positives': false_positives,
    'cdn_protection': cdn_protection,
    'summary': {
        'total_vulns': len(confirmed_vulnerabilities),
        'critical': 0,
        'high': 2,
        'medium': 2,
        'low': 0
    }
}

report_file = f"ems_final_report_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
with open(report_file, 'w', encoding='utf-8') as f:
    json.dump(report_data, f, ensure_ascii=False, indent=2)

print(f"\n[+] 完整报告已保存: {report_file}")
print(f"\n[+] 评估完成！")