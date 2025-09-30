#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
检查所有资产是否都已分析
"""

import json
import requests
import urllib3

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

# 读取之前发现的所有资产
print("[+] 读取所有已发现的资产...")

# 从之前的扫描结果中提取所有域名和IP
all_assets = []

# 1. 从初始扫描结果
try:
    with open('ems_assets_20250930_052720.json', 'r') as f:
        data = json.load(f)
        all_assets.extend(data['assets']['domains'])
        all_assets.extend(data['assets']['ips'])
        print(f"初始扫描: {len(data['assets']['domains'])} 个域名, {len(data['assets']['ips'])} 个IP")
except:
    pass

# 2. 从深度扫描结果
try:
    with open('ems_deep_scan_20250930_053913.json', 'r') as f:
        data = json.load(f)
        if 'assets' in data and 'domains' in data['assets']:
            new_domains = [d for d in data['assets']['domains'] if d not in all_assets]
            all_assets.extend(new_domains)
            print(f"深度扫描: 新增 {len(new_domains)} 个域名")
except:
    pass

# 去重
all_assets = list(set(all_assets))
print(f"\n总计: {len(all_assets)} 个唯一资产")

# 过滤掉无效的（如通配符、带端口的重复项等）
valid_assets = []
for asset in all_assets:
    # 跳过通配符
    if '*' in asset:
        continue
    # 跳过纯 https:// 开头的（这些是重复的）
    if asset.startswith('https://') or asset.startswith('http://'):
        continue
    # 跳过带端口的域名（保留主域名即可）
    if ':' in asset and not asset.replace('.', '').replace(':', '').isdigit():
        base_domain = asset.split(':')[0]
        if base_domain not in valid_assets:
            valid_assets.append(base_domain)
    else:
        if asset not in valid_assets:
            valid_assets.append(asset)

print(f"有效资产: {len(valid_assets)} 个")

# 分类
domains = []
ips = []

for asset in valid_assets:
    # 简单判断是否为IP
    if asset.replace('.', '').isdigit():
        ips.append(asset)
    else:
        domains.append(asset)

print(f"\n分类结果:")
print(f"- 域名: {len(domains)} 个")
print(f"- IP地址: {len(ips)} 个")

# 已经深度分析过的目标
analyzed_targets = [
    '222.255.250.228',  # 已深度分析
    'auth.ems.com.vn',  # 已在简单检测中分析
    'internal.ems.com.vn',
    'apis.ems.com.vn',
    'ems.com.vn',
    'www.ems.com.vn'
]

# 高价值但未深度分析的目标
high_value_not_analyzed = []

# 检查哪些高价值目标还没分析
high_value_keywords = ['admin', 'api', 'auth', 'sso', 'git', 'internal', 'portal', 
                      'staging', 'dev', 'test', 'uat', 'monitor', 'dashboard']

print(f"\n[+] 检查未分析的高价值目标...")

for domain in domains:
    # 检查是否已分析
    if domain in analyzed_targets:
        continue
    
    # 检查是否为高价值目标
    for keyword in high_value_keywords:
        if keyword in domain.lower():
            high_value_not_analyzed.append(domain)
            break

# 关键IP段
key_ip_ranges = {
    '115.146.121': '主要业务服务器',
    '222.255.250': '内部系统',
    '103.74.120': '其他服务',
    '103.92.30': '其他服务'
}

print(f"\n未深度分析的高价值域名 ({len(high_value_not_analyzed)} 个):")
for domain in sorted(high_value_not_analyzed)[:20]:
    print(f"  - {domain}")

# 检查关键IP
print(f"\n未分析的关键IP:")
for ip in ips:
    if ip not in analyzed_targets:
        for ip_range, desc in key_ip_ranges.items():
            if ip.startswith(ip_range):
                print(f"  - {ip} ({desc})")
                break

# 快速检测一些未分析的高价值目标的存活性
print(f"\n[+] 快速检测未分析的高价值目标存活性...")

alive_targets = []
test_targets = high_value_not_analyzed[:10]  # 测试前10个

for target in test_targets:
    try:
        # HTTPS 测试
        resp = requests.get(f"https://{target}", timeout=3, verify=False, allow_redirects=True)
        if resp.status_code in [200, 301, 302, 401, 403]:
            alive_targets.append((target, 'HTTPS', resp.status_code))
            print(f"  ✓ https://{target} - {resp.status_code}")
    except:
        # HTTP 测试
        try:
            resp = requests.get(f"http://{target}", timeout=3, allow_redirects=True)
            if resp.status_code in [200, 301, 302, 401, 403]:
                alive_targets.append((target, 'HTTP', resp.status_code))
                print(f"  ✓ http://{target} - {resp.status_code}")
        except:
            pass

print(f"\n[+] 总结:")
print(f"- 总资产数: {len(valid_assets)}")
print(f"- 已深度分析: {len(analyzed_targets)}")
print(f"- 高价值未分析: {len(high_value_not_analyzed)}")
print(f"- 存活的未分析目标: {len(alive_targets)}")

print(f"\n[!] 建议优先分析以下目标:")
priority_targets = []

# 优先级1: 认证相关
for domain in high_value_not_analyzed:
    if any(kw in domain for kw in ['auth', 'sso', 'login', 'signin']):
        if domain not in priority_targets:
            priority_targets.append(domain)

# 优先级2: 管理后台
for domain in high_value_not_analyzed:
    if any(kw in domain for kw in ['admin', 'portal', 'dashboard', 'manage']):
        if domain not in priority_targets:
            priority_targets.append(domain)

# 优先级3: API和开发
for domain in high_value_not_analyzed:
    if any(kw in domain for kw in ['api', 'dev', 'staging', 'test']):
        if domain not in priority_targets:
            priority_targets.append(domain)

for i, target in enumerate(priority_targets[:10], 1):
    print(f"{i}. {target}")

# 保存未分析的资产列表
with open('unanalyzed_assets.json', 'w') as f:
    json.dump({
        'high_value_not_analyzed': high_value_not_analyzed,
        'alive_targets': alive_targets,
        'priority_targets': priority_targets[:10]
    }, f, indent=2)

print(f"\n未分析资产已保存到: unanalyzed_assets.json")