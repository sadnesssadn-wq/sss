#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
EMS.com.vn 资产收集脚本
使用 Shodan 和 FOFA API 进行资产发现
"""

import requests
import json
import base64
import time
from datetime import datetime

# API Keys
SHODAN_API_KEY = "8U3fd9BSqyzentffLrhocQm7rSvy44jx"
FOFA_EMAIL = "admin@fofa.so"  # 使用默认邮箱
FOFA_KEY = "21bf54950a62858792f22daa8474f42f"

# 目标域名
TARGET_DOMAIN = "ems.com.vn"

class AssetDiscovery:
    def __init__(self):
        self.shodan_results = {}
        self.fofa_results = {}
        self.all_assets = {
            "domains": set(),
            "ips": set(),
            "ports": {},
            "services": {},
            "technologies": set(),
            "certificates": []
        }
    
    def shodan_search(self):
        """使用 Shodan API 搜索资产"""
        print(f"\n[+] 开始 Shodan 搜索: {TARGET_DOMAIN}")
        
        # Shodan 搜索查询
        queries = [
            f'hostname:"{TARGET_DOMAIN}"',
            f'hostname:"*.{TARGET_DOMAIN}"',
            f'ssl.cert.subject.CN:"{TARGET_DOMAIN}"',
            f'ssl.cert.subject.CN:"*.{TARGET_DOMAIN}"'
        ]
        
        headers = {
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"
        }
        
        for query in queries:
            try:
                url = f"https://api.shodan.io/shodan/host/search"
                params = {
                    "key": SHODAN_API_KEY,
                    "query": query,
                    "facets": "port,org"
                }
                
                response = requests.get(url, params=params, headers=headers, timeout=10)
                
                if response.status_code == 200:
                    data = response.json()
                    print(f"  [*] 查询: {query} - 找到 {data.get('total', 0)} 个结果")
                    
                    # 处理结果
                    for result in data.get('matches', []):
                        # 收集 IP
                        ip = result.get('ip_str')
                        if ip:
                            self.all_assets['ips'].add(ip)
                        
                        # 收集域名
                        hostnames = result.get('hostnames', [])
                        for hostname in hostnames:
                            self.all_assets['domains'].add(hostname)
                        
                        # 收集端口
                        port = result.get('port')
                        if port and ip:
                            if ip not in self.all_assets['ports']:
                                self.all_assets['ports'][ip] = []
                            if port not in self.all_assets['ports'][ip]:
                                self.all_assets['ports'][ip].append(port)
                        
                        # 收集服务信息
                        if ip and port:
                            service_key = f"{ip}:{port}"
                            service_info = {
                                "product": result.get('product', ''),
                                "version": result.get('version', ''),
                                "service": result.get('_shodan', {}).get('module', ''),
                                "banner": result.get('data', '')[:200]  # 截取前200字符
                            }
                            self.all_assets['services'][service_key] = service_info
                        
                        # 收集技术栈
                        if 'http' in result:
                            components = result.get('http', {}).get('components', {})
                            for component in components:
                                self.all_assets['technologies'].add(component)
                
                else:
                    print(f"  [!] Shodan API 错误: {response.status_code} - {response.text}")
                
                time.sleep(1)  # API 速率限制
                
            except Exception as e:
                print(f"  [!] Shodan 搜索错误: {str(e)}")
    
    def fofa_search(self):
        """使用 FOFA API 搜索资产"""
        print(f"\n[+] 开始 FOFA 搜索: {TARGET_DOMAIN}")
        
        # FOFA 搜索查询
        queries = [
            f'domain="{TARGET_DOMAIN}"',
            f'cert="{TARGET_DOMAIN}"',
            f'host=".{TARGET_DOMAIN}"',
            f'title="{TARGET_DOMAIN}"'
        ]
        
        for query in queries:
            try:
                # Base64 编码查询
                query_base64 = base64.b64encode(query.encode()).decode()
                
                url = "https://fofa.info/api/v1/search/all"
                params = {
                    "email": FOFA_EMAIL,
                    "key": FOFA_KEY,
                    "qbase64": query_base64,
                    "fields": "host,ip,port,protocol,title,server,product,country,city",
                    "size": 100
                }
                
                response = requests.get(url, params=params, timeout=10)
                
                if response.status_code == 200:
                    data = response.json()
                    
                    if data.get('error') is False:
                        results = data.get('results', [])
                        print(f"  [*] 查询: {query} - 找到 {len(results)} 个结果")
                        
                        # 处理结果
                        for result in results:
                            if len(result) >= 9:
                                host, ip, port, protocol, title, server, product, country, city = result[:9]
                                
                                # 收集数据
                                if ip:
                                    self.all_assets['ips'].add(ip)
                                if host:
                                    self.all_assets['domains'].add(host)
                                if port and ip:
                                    if ip not in self.all_assets['ports']:
                                        self.all_assets['ports'][ip] = []
                                    try:
                                        port_int = int(port)
                                        if port_int not in self.all_assets['ports'][ip]:
                                            self.all_assets['ports'][ip].append(port_int)
                                    except:
                                        pass
                                
                                # 收集服务信息
                                if ip and port:
                                    service_key = f"{ip}:{port}"
                                    service_info = {
                                        "product": product or '',
                                        "server": server or '',
                                        "title": title or '',
                                        "protocol": protocol or '',
                                        "location": f"{country}/{city}" if country else ''
                                    }
                                    if service_key in self.all_assets['services']:
                                        self.all_assets['services'][service_key].update(service_info)
                                    else:
                                        self.all_assets['services'][service_key] = service_info
                    else:
                        print(f"  [!] FOFA API 错误: {data.get('errmsg', 'Unknown error')}")
                
                else:
                    print(f"  [!] FOFA 请求错误: {response.status_code}")
                
                time.sleep(1)  # API 速率限制
                
            except Exception as e:
                print(f"  [!] FOFA 搜索错误: {str(e)}")
    
    def dns_enumeration(self):
        """DNS 子域名枚举"""
        print(f"\n[+] 开始 DNS 枚举")
        
        # 常见子域名
        subdomains = [
            'www', 'mail', 'ftp', 'api', 'app', 'admin', 'portal', 'test', 'dev',
            'staging', 'beta', 'demo', 'secure', 'vpn', 'remote', 'webmail',
            'smtp', 'pop', 'imap', 'blog', 'forum', 'support', 'help', 'docs',
            'wiki', 'cdn', 'static', 'images', 'assets', 'download', 'uploads'
        ]
        
        import socket
        
        for subdomain in subdomains:
            try:
                full_domain = f"{subdomain}.{TARGET_DOMAIN}"
                ip = socket.gethostbyname(full_domain)
                print(f"  [*] 发现: {full_domain} -> {ip}")
                self.all_assets['domains'].add(full_domain)
                self.all_assets['ips'].add(ip)
            except:
                pass
    
    def save_results(self):
        """保存搜索结果"""
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        filename = f"ems_assets_{timestamp}.json"
        
        # 转换 set 为 list 以便 JSON 序列化
        save_data = {
            "target": TARGET_DOMAIN,
            "scan_time": timestamp,
            "statistics": {
                "total_ips": len(self.all_assets['ips']),
                "total_domains": len(self.all_assets['domains']),
                "total_services": len(self.all_assets['services'])
            },
            "assets": {
                "domains": sorted(list(self.all_assets['domains'])),
                "ips": sorted(list(self.all_assets['ips'])),
                "ports": self.all_assets['ports'],
                "services": self.all_assets['services'],
                "technologies": sorted(list(self.all_assets['technologies']))
            }
        }
        
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump(save_data, f, ensure_ascii=False, indent=2)
        
        print(f"\n[+] 结果已保存到: {filename}")
        
        # 生成简易报告
        self.generate_report()
    
    def generate_report(self):
        """生成资产报告"""
        print(f"\n{'='*60}")
        print(f"资产发现报告 - {TARGET_DOMAIN}")
        print(f"{'='*60}")
        
        print(f"\n[*] 发现的域名 ({len(self.all_assets['domains'])} 个):")
        for domain in sorted(list(self.all_assets['domains']))[:10]:
            print(f"    - {domain}")
        if len(self.all_assets['domains']) > 10:
            print(f"    ... 还有 {len(self.all_assets['domains']) - 10} 个域名")
        
        print(f"\n[*] 发现的 IP 地址 ({len(self.all_assets['ips'])} 个):")
        for ip in sorted(list(self.all_assets['ips']))[:10]:
            ports = self.all_assets['ports'].get(ip, [])
            print(f"    - {ip} (开放端口: {', '.join(map(str, sorted(ports[:5])))}{'...' if len(ports) > 5 else ''})")
        if len(self.all_assets['ips']) > 10:
            print(f"    ... 还有 {len(self.all_assets['ips']) - 10} 个 IP")
        
        print(f"\n[*] 发现的服务 (Top 10):")
        for service_key, info in list(self.all_assets['services'].items())[:10]:
            print(f"    - {service_key}: {info.get('product', 'Unknown')} {info.get('version', '')}")
        
        if self.all_assets['technologies']:
            print(f"\n[*] 发现的技术栈:")
            for tech in sorted(list(self.all_assets['technologies']))[:10]:
                print(f"    - {tech}")
        
        print(f"\n{'='*60}")
    
    def run(self):
        """运行资产发现"""
        print(f"[+] 开始资产发现: {TARGET_DOMAIN}")
        print(f"[+] 时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
        
        # 执行搜索
        self.shodan_search()
        self.fofa_search()
        self.dns_enumeration()
        
        # 保存结果
        self.save_results()
        
        print(f"\n[+] 资产发现完成!")

if __name__ == "__main__":
    discovery = AssetDiscovery()
    discovery.run()