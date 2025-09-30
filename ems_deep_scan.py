#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
EMS.com.vn 深度资产挖掘脚本
使用更多技术手段发现隐藏资产
"""

import requests
import json
import base64
import time
import socket
import ssl
import dns.resolver
from datetime import datetime
import subprocess
import re

# API Keys
FOFA_EMAIL = "admin@fofa.so"
FOFA_KEY = "21bf54950a62858792f22daa8474f42f"

# 目标域名
TARGET_DOMAIN = "ems.com.vn"

class DeepAssetDiscovery:
    def __init__(self):
        self.all_assets = {
            "domains": set(),
            "ips": set(),
            "certificates": [],
            "dns_records": {},
            "related_domains": set(),
            "emails": set(),
            "technologies": set()
        }
    
    def extended_subdomain_enum(self):
        """扩展子域名枚举 - 使用更多字典"""
        print(f"\n[+] 深度子域名枚举")
        
        # 扩展的子域名字典
        extended_subdomains = [
            # 开发/测试相关
            'dev', 'development', 'test', 'testing', 'uat', 'qa', 'stg', 'stage', 'sandbox',
            'alpha', 'beta', 'preview', 'pre', 'preprod', 'preproduction', 'prod', 'production',
            
            # API相关
            'api-v1', 'api-v2', 'api-admin', 'api-internal', 'api-public', 'api-private',
            'rest', 'restapi', 'graphql', 'webhook', 'webhooks', 'callback', 'gateway',
            
            # 管理相关
            'cpanel', 'whm', 'webadmin', 'siteadmin', 'manager', 'manage', 'console',
            'controlpanel', 'cp', 'administration', 'administrator', 'root', 'su', 'sudo',
            
            # 服务相关
            'service', 'services', 'svc', 'app', 'apps', 'application', 'mobile', 'm',
            'android', 'ios', 'client', 'desktop', 'web', 'webapp', 'webservice',
            
            # 基础设施
            'db', 'database', 'mysql', 'postgres', 'mongo', 'redis', 'elastic', 'elasticsearch',
            'kibana', 'grafana', 'prometheus', 'monitoring', 'monitor', 'logs', 'logging',
            'metrics', 'stats', 'statistics', 'analytics', 'data', 'bigdata',
            
            # 安全相关
            'security', 'secure', 'auth', 'authentication', 'oauth', 'oauth2', 'saml',
            'ldap', 'ad', 'activedirectory', 'identity', 'iam', 'access', 'permission',
            
            # 文件/存储
            'files', 'file', 'storage', 'store', 'cdn', 'static', 'assets', 'media',
            'images', 'img', 'pics', 'pictures', 'photos', 'videos', 'upload', 'uploads',
            'download', 'downloads', 'backup', 'backups', 'archive', 'archives',
            
            # 通信相关
            'chat', 'messaging', 'im', 'slack', 'teams', 'zoom', 'meet', 'meeting',
            'conference', 'webinar', 'broadcast', 'stream', 'streaming', 'live',
            
            # 业务相关（越南语）
            'khachhang', 'dichvu', 'thanhtoan', 'hoadon', 'donhang', 'sanpham',
            'tintuc', 'thongbao', 'lienhe', 'giupdo', 'hotro', 'taikhoan',
            
            # 其他
            'old', 'new', 'legacy', 'v1', 'v2', 'v3', 'temp', 'tmp', 'bak', 'backup',
            'test1', 'test2', 'demo1', 'demo2', 'poc', 'pilot', 'prototype'
        ]
        
        # 结合原有发现的子域名生成变体
        known_prefixes = ['api', 'admin', 'portal', 'internal', 'staging', 'git']
        
        for prefix in known_prefixes:
            for suffix in ['1', '2', '3', 'new', 'old', 'dev', 'test', 'v1', 'v2']:
                extended_subdomains.append(f"{prefix}-{suffix}")
                extended_subdomains.append(f"{prefix}{suffix}")
        
        # DNS 解析
        resolver = dns.resolver.Resolver()
        resolver.timeout = 2
        resolver.lifetime = 2
        
        for subdomain in extended_subdomains:
            try:
                full_domain = f"{subdomain}.{TARGET_DOMAIN}"
                answers = resolver.resolve(full_domain, 'A')
                for rdata in answers:
                    print(f"  [*] 发现: {full_domain} -> {rdata}")
                    self.all_assets['domains'].add(full_domain)
                    self.all_assets['ips'].add(str(rdata))
            except:
                pass
    
    def certificate_transparency_search(self):
        """证书透明度日志搜索"""
        print(f"\n[+] 证书透明度日志搜索")
        
        # 使用 crt.sh API
        try:
            url = f"https://crt.sh/?q=%.{TARGET_DOMAIN}&output=json"
            response = requests.get(url, timeout=10)
            
            if response.status_code == 200:
                certs = response.json()
                unique_names = set()
                
                for cert in certs:
                    name_value = cert.get('name_value', '')
                    common_name = cert.get('common_name', '')
                    
                    # 提取所有域名
                    for name in name_value.split('\n'):
                        if name and TARGET_DOMAIN in name:
                            unique_names.add(name.strip())
                    
                    if common_name and TARGET_DOMAIN in common_name:
                        unique_names.add(common_name.strip())
                
                print(f"  [*] 从证书透明度日志发现 {len(unique_names)} 个唯一域名")
                for name in sorted(unique_names):
                    print(f"      - {name}")
                    self.all_assets['domains'].add(name)
                    
        except Exception as e:
            print(f"  [!] 证书透明度搜索错误: {str(e)}")
    
    def dns_records_analysis(self):
        """深度 DNS 记录分析"""
        print(f"\n[+] DNS 记录深度分析")
        
        record_types = ['A', 'AAAA', 'MX', 'TXT', 'NS', 'SOA', 'CNAME', 'PTR', 'SRV', 'CAA']
        resolver = dns.resolver.Resolver()
        
        # 分析主域名和已发现的子域名
        domains_to_check = [TARGET_DOMAIN] + list(self.all_assets['domains'])[:20]  # 限制数量
        
        for domain in domains_to_check:
            self.all_assets['dns_records'][domain] = {}
            
            for record_type in record_types:
                try:
                    answers = resolver.resolve(domain, record_type)
                    self.all_assets['dns_records'][domain][record_type] = []
                    
                    for rdata in answers:
                        value = str(rdata)
                        self.all_assets['dns_records'][domain][record_type].append(value)
                        
                        # 从记录中提取信息
                        if record_type == 'MX':
                            mx_host = value.split()[-1].rstrip('.')
                            if TARGET_DOMAIN in mx_host:
                                self.all_assets['domains'].add(mx_host)
                                print(f"  [*] MX记录发现: {mx_host}")
                        
                        elif record_type == 'TXT':
                            # 查找 SPF 记录中的 IP
                            if 'spf' in value.lower():
                                ips = re.findall(r'ip4:(\d+\.\d+\.\d+\.\d+)', value)
                                for ip in ips:
                                    self.all_assets['ips'].add(ip)
                                    print(f"  [*] SPF记录发现IP: {ip}")
                            
                            # 查找验证域名
                            if 'google-site-verification' in value or 'facebook-domain-verification' in value:
                                print(f"  [*] 发现第三方验证: {value[:50]}...")
                        
                        elif record_type == 'CNAME':
                            if TARGET_DOMAIN in value:
                                self.all_assets['domains'].add(value.rstrip('.'))
                                print(f"  [*] CNAME发现: {value}")
                
                except Exception as e:
                    pass
    
    def fofa_advanced_search(self):
        """FOFA 高级搜索"""
        print(f"\n[+] FOFA 高级搜索")
        
        # 更多高级查询
        advanced_queries = [
            f'domain="{TARGET_DOMAIN}" && status_code="200"',
            f'domain="{TARGET_DOMAIN}" && title!=""',
            f'domain="{TARGET_DOMAIN}" && body="login"',
            f'domain="{TARGET_DOMAIN}" && body="admin"',
            f'domain="{TARGET_DOMAIN}" && body="api"',
            f'domain="{TARGET_DOMAIN}" && header="Set-Cookie"',
            f'cert.subject="{TARGET_DOMAIN}"',
            f'cert.subject.org="EMS" && country="VN"',
            f'ip="115.146.121.0/24" && country="VN"',
            f'ip="222.255.250.0/24" && country="VN"',
            f'body="ems.com.vn" && country="VN"',
            f'title="EMS" && country="VN"'
        ]
        
        for query in advanced_queries:
            try:
                query_base64 = base64.b64encode(query.encode()).decode()
                
                url = "https://fofa.info/api/v1/search/all"
                params = {
                    "email": FOFA_EMAIL,
                    "key": FOFA_KEY,
                    "qbase64": query_base64,
                    "fields": "host,ip,port,protocol,title,header,body,cert",
                    "size": 50
                }
                
                response = requests.get(url, params=params, timeout=10)
                
                if response.status_code == 200:
                    data = response.json()
                    
                    if data.get('error') is False:
                        results = data.get('results', [])
                        if results:
                            print(f"  [*] 查询: {query} - 找到 {len(results)} 个结果")
                        
                        for result in results:
                            if len(result) >= 3:
                                host = result[0]
                                if host and (TARGET_DOMAIN in host or 'ems' in host.lower()):
                                    self.all_assets['domains'].add(host)
                
                time.sleep(1)
                
            except Exception as e:
                print(f"  [!] FOFA 高级搜索错误: {str(e)}")
    
    def related_assets_discovery(self):
        """相关资产发现"""
        print(f"\n[+] 相关资产发现")
        
        # 搜索相关域名
        related_patterns = [
            'emsone.com.vn',  # 已发现的相关域名
            'ems.net.vn',
            'ems-vietnam.com',
            'emsvn.com',
            'emsvietnam.com'
        ]
        
        for pattern in related_patterns:
            try:
                # 简单的 DNS 检查
                socket.gethostbyname(pattern)
                print(f"  [*] 发现相关域名: {pattern}")
                self.all_assets['related_domains'].add(pattern)
            except:
                pass
        
        # 搜索 IP 段中的其他服务
        ip_ranges = [
            '115.146.121.',
            '222.255.250.'
        ]
        
        for ip_range in ip_ranges:
            print(f"  [*] 扫描 IP 段: {ip_range}0/24")
            for i in range(1, 255):
                ip = f"{ip_range}{i}"
                try:
                    # 反向 DNS 查询
                    hostname = socket.gethostbyaddr(ip)[0]
                    if 'ems' in hostname.lower():
                        print(f"      - {ip} -> {hostname}")
                        self.all_assets['domains'].add(hostname)
                        self.all_assets['ips'].add(ip)
                except:
                    pass
    
    def github_search(self):
        """GitHub 代码搜索"""
        print(f"\n[+] GitHub 代码搜索（模拟）")
        
        # 搜索可能的代码泄露
        search_patterns = [
            'ems.com.vn password',
            'ems.com.vn api key',
            'ems.com.vn token',
            'ems.com.vn secret',
            'ems.com.vn config',
            'site:github.com "ems.com.vn"'
        ]
        
        print("  [*] 建议在 GitHub 上搜索以下关键词：")
        for pattern in search_patterns:
            print(f"      - {pattern}")
    
    def wayback_machine_search(self):
        """Wayback Machine 历史快照"""
        print(f"\n[+] Wayback Machine 历史快照搜索")
        
        try:
            # 获取历史快照
            url = f"http://web.archive.org/cdx/search/cdx?url={TARGET_DOMAIN}/*&output=json&fl=original&collapse=urlkey"
            response = requests.get(url, timeout=10)
            
            if response.status_code == 200:
                data = response.json()
                unique_urls = set()
                
                for item in data[1:]:  # 跳过标题行
                    if item and len(item) > 0:
                        url = item[0]
                        # 提取子域名
                        match = re.search(r'https?://([^/]+)', url)
                        if match:
                            domain = match.group(1)
                            if TARGET_DOMAIN in domain:
                                unique_urls.add(domain)
                
                print(f"  [*] 从历史快照发现 {len(unique_urls)} 个唯一域名")
                for domain in sorted(unique_urls)[:20]:  # 限制输出
                    print(f"      - {domain}")
                    self.all_assets['domains'].add(domain)
                    
        except Exception as e:
            print(f"  [!] Wayback Machine 搜索错误: {str(e)}")
    
    def google_dork_suggestions(self):
        """Google Dork 建议"""
        print(f"\n[+] Google Dork 搜索建议")
        
        dorks = [
            f'site:{TARGET_DOMAIN} filetype:pdf',
            f'site:{TARGET_DOMAIN} filetype:doc',
            f'site:{TARGET_DOMAIN} filetype:xls',
            f'site:{TARGET_DOMAIN} filetype:sql',
            f'site:{TARGET_DOMAIN} filetype:conf',
            f'site:{TARGET_DOMAIN} intitle:"index of"',
            f'site:{TARGET_DOMAIN} inurl:admin',
            f'site:{TARGET_DOMAIN} inurl:login',
            f'site:{TARGET_DOMAIN} inurl:api',
            f'site:{TARGET_DOMAIN} intext:"password"',
            f'site:{TARGET_DOMAIN} intext:"username"',
            f'site:{TARGET_DOMAIN} ext:php',
            f'site:{TARGET_DOMAIN} ext:asp',
            f'site:{TARGET_DOMAIN} ext:aspx',
            f'site:{TARGET_DOMAIN} ext:jsp',
            f'site:{TARGET_DOMAIN} ext:log',
            f'site:{TARGET_DOMAIN} ext:bak',
            f'site:{TARGET_DOMAIN} "confidential"',
            f'site:{TARGET_DOMAIN} "internal use only"',
            f'related:{TARGET_DOMAIN}'
        ]
        
        print("  [*] 建议使用以下 Google Dork 进行搜索：")
        for dork in dorks:
            print(f"      - {dork}")
    
    def save_results(self):
        """保存深度扫描结果"""
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        filename = f"ems_deep_scan_{timestamp}.json"
        
        save_data = {
            "target": TARGET_DOMAIN,
            "scan_time": timestamp,
            "statistics": {
                "total_domains": len(self.all_assets['domains']),
                "total_ips": len(self.all_assets['ips']),
                "related_domains": len(self.all_assets['related_domains'])
            },
            "assets": {
                "domains": sorted(list(self.all_assets['domains'])),
                "ips": sorted(list(self.all_assets['ips'])),
                "related_domains": sorted(list(self.all_assets['related_domains'])),
                "dns_records": self.all_assets['dns_records']
            }
        }
        
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump(save_data, f, ensure_ascii=False, indent=2)
        
        print(f"\n[+] 深度扫描结果已保存到: {filename}")
        
        # 输出新发现的域名
        print(f"\n[+] 深度扫描新发现的域名：")
        new_domains = self.all_assets['domains']
        for domain in sorted(new_domains):
            if domain not in ['ems.com.vn', 'www.ems.com.vn']:  # 排除已知的
                print(f"    - {domain}")
    
    def run(self):
        """运行深度资产发现"""
        print(f"[+] 开始深度资产挖掘: {TARGET_DOMAIN}")
        print(f"[+] 时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
        
        # 执行各项深度扫描
        self.extended_subdomain_enum()
        self.certificate_transparency_search()
        self.dns_records_analysis()
        self.fofa_advanced_search()
        self.related_assets_discovery()
        self.wayback_machine_search()
        self.github_search()
        self.google_dork_suggestions()
        
        # 保存结果
        self.save_results()
        
        print(f"\n[+] 深度资产挖掘完成!")

if __name__ == "__main__":
    discovery = DeepAssetDiscovery()
    discovery.run()