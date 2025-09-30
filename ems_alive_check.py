#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
EMS.com.vn 资产存活性检测和深度分析
对所有 126 个资产进行全面检测
"""

import requests
import socket
import ssl
import concurrent.futures
import time
import json
from datetime import datetime
import subprocess
import dns.resolver
import urllib3

# 禁用 SSL 警告
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

class AssetAnalyzer:
    def __init__(self):
        self.results = {
            "alive_http": [],
            "alive_https": [],
            "redirect_chains": {},
            "status_codes": {},
            "technologies": {},
            "vulnerabilities": [],
            "interesting_findings": []
        }
        
        # 所有需要检测的资产
        self.all_domains = [
            "*.ems.com.vn", "*.my.ems.com.vn", "admin.ems.com.vn", "analytics.ems.com.vn",
            "api-dingdong.ems.com.vn", "api.ems.com.vn", "apilogistics.ems.com.vn",
            "apis.ems.com.vn", "auth.ems.com.vn", "baocao.ems.com.vn", "bill.ems.com.vn",
            "call.ems.com.vn", "chamcong.ems.net.vn", "chuyentuyen.ems.com.vn",
            "dangky.ems.com.vn", "dangkydaily.ems.com.vn", "daotaotructuyen.ems.com.vn",
            "demo.ems.com.vn", "docs.ems.com.vn", "docs.ws.ems.com.vn", "document.ems.com.vn",
            "docws.ems.com.vn", "dtkn.ems.com.vn", "edata.ems.com.vn", "ems.com.vn",
            "game.ems.com.vn", "gamecds.ems.com.vn", "git.ems.com.vn", "hotro.ems.com.vn",
            "huongdan.ems.com.vn", "imap.ems.com.vn", "internal.ems.com.vn",
            "khachhang.ems.com.vn", "lcs.ems.com.vn", "logistics.ems.com.vn",
            "mail.ems.com.vn", "monitor.ems.com.vn", "my.ems.com.vn", "pda.ems.com.vn",
            "pop.ems.com.vn", "portal.ems.com.vn", "qllogistics.ems.com.vn",
            "qlts.ems.com.vn", "qms.ems.com.vn", "rating.ems.com.vn", "sale.ems.com.vn",
            "sales.ems.com.vn", "smtp.ems.com.vn", "sso.ems.com.vn", "staging.edata.ems.com.vn",
            "staging.ems.com.vn", "tas.ems.com.vn", "track.ems.com.vn", "uat-back.emsone.com.vn",
            "webhookc2c.ems.com.vn", "wiki.ems.com.vn", "ws.ems.com.vn", "www.ems.com.vn",
            "zoho.ems.com.vn", "emsone.com.vn", "emsvn.com", "emsvietnam.com"
        ]
        
        # 带端口的域名
        self.domains_with_ports = [
            ("apilogistics.ems.com.vn", 8080), ("apilogistics.ems.com.vn", 9090),
            ("apis.ems.com.vn", 5004), ("demo.ems.com.vn", 100),
            ("email.ems.com.vn", 2082), ("email.ems.com.vn", 8080),
            ("hotro.ems.com.vn", 2086), ("mail.ems.com.vn", 2082),
            ("mail.ems.com.vn", 8880), ("tas.ems.com.vn", 8880),
            ("webhookc2c.ems.com.vn", 5555)
        ]
        
        # IP 地址
        self.ip_addresses = [
            "103.74.120.246", "103.92.30.179", "104.18.40.47", "104.21.25.27",
            "115.146.121.131", "115.146.121.133", "115.146.121.135", "115.146.121.141",
            "115.146.121.145", "115.146.121.147", "115.146.121.150", "115.146.121.151",
            "115.146.121.152", "115.146.121.154", "136.143.190.194", "136.143.190.56",
            "172.64.147.209", "172.67.222.13", "18.139.152.202", "204.141.43.131",
            "222.255.250.226", "222.255.250.227", "222.255.250.228", "222.255.250.232",
            "222.255.250.233", "222.255.250.234", "222.255.250.237", "222.255.250.240",
            "222.255.250.242", "222.255.250.243", "222.255.250.247"
        ]
        
        # 带端口的 IP
        self.ips_with_ports = [
            ("115.146.121.135", 8080), ("115.146.121.141", 8043),
            ("115.146.121.150", 8088), ("222.255.250.233", 8088),
            ("222.255.250.237", 5555), ("222.255.250.242", 8088)
        ]
    
    def check_http_status(self, url, timeout=5):
        """检查 HTTP/HTTPS 状态"""
        headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
            'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
        }
        
        try:
            response = requests.get(url, headers=headers, timeout=timeout, 
                                  verify=False, allow_redirects=True)
            
            # 记录重定向链
            if response.history:
                redirect_chain = []
                for resp in response.history:
                    redirect_chain.append({
                        'url': resp.url,
                        'status': resp.status_code
                    })
                redirect_chain.append({
                    'url': response.url,
                    'status': response.status_code
                })
                self.results['redirect_chains'][url] = redirect_chain
            
            # 分析响应头
            interesting_headers = {
                'Server': response.headers.get('Server', ''),
                'X-Powered-By': response.headers.get('X-Powered-By', ''),
                'Content-Type': response.headers.get('Content-Type', ''),
                'Set-Cookie': 'Yes' if 'Set-Cookie' in response.headers else 'No'
            }
            
            # 分析页面内容
            content_lower = response.text.lower()
            technologies = []
            
            # 检测技术栈
            tech_patterns = {
                'Laravel': ['laravel', 'csrf-token'],
                'ASP.NET': ['aspnet', '__viewstate', 'asp.net'],
                'WordPress': ['wp-content', 'wordpress'],
                'Django': ['django', 'csrfmiddlewaretoken'],
                'React': ['react', 'reactdom'],
                'Vue.js': ['vue.js', 'v-model'],
                'jQuery': ['jquery'],
                'Bootstrap': ['bootstrap'],
                'nginx': ['nginx'],
                'Apache': ['apache'],
                'IIS': ['iis', 'microsoft-iis']
            }
            
            for tech, patterns in tech_patterns.items():
                for pattern in patterns:
                    if pattern in content_lower or pattern in str(interesting_headers).lower():
                        technologies.append(tech)
                        break
            
            # 检测登录页面
            login_keywords = ['login', 'signin', 'đăng nhập', 'password', 'username']
            is_login_page = any(keyword in content_lower for keyword in login_keywords)
            
            # 检测错误页面
            error_keywords = ['404', '403', '500', 'not found', 'forbidden', 'error']
            is_error_page = any(keyword in response.text for keyword in error_keywords)
            
            return {
                'url': url,
                'status': response.status_code,
                'alive': True,
                'final_url': response.url,
                'headers': interesting_headers,
                'technologies': list(set(technologies)),
                'is_login_page': is_login_page,
                'is_error_page': is_error_page,
                'title': self.extract_title(response.text),
                'content_length': len(response.content)
            }
            
        except requests.exceptions.SSLError:
            return {
                'url': url,
                'status': 'SSL_ERROR',
                'alive': False,
                'error': 'SSL证书错误'
            }
        except requests.exceptions.Timeout:
            return {
                'url': url,
                'status': 'TIMEOUT',
                'alive': False,
                'error': '连接超时'
            }
        except requests.exceptions.ConnectionError:
            return {
                'url': url,
                'status': 'CONNECTION_ERROR',
                'alive': False,
                'error': '连接错误'
            }
        except Exception as e:
            return {
                'url': url,
                'status': 'ERROR',
                'alive': False,
                'error': str(e)
            }
    
    def extract_title(self, html):
        """提取页面标题"""
        import re
        match = re.search(r'<title[^>]*>([^<]+)</title>', html, re.IGNORECASE)
        return match.group(1).strip() if match else 'No Title'
    
    def check_domain(self, domain):
        """检查域名的 HTTP 和 HTTPS"""
        results = []
        
        # 跳过通配符域名
        if '*' in domain:
            return results
        
        # HTTP 检查
        http_result = self.check_http_status(f'http://{domain}')
        if http_result['alive']:
            results.append(http_result)
        
        # HTTPS 检查
        https_result = self.check_http_status(f'https://{domain}')
        if https_result['alive']:
            results.append(https_result)
        
        return results
    
    def check_domain_with_port(self, domain, port):
        """检查带端口的域名"""
        results = []
        
        # HTTP 检查
        http_result = self.check_http_status(f'http://{domain}:{port}')
        if http_result['alive']:
            results.append(http_result)
        
        # HTTPS 检查
        https_result = self.check_http_status(f'https://{domain}:{port}')
        if https_result['alive']:
            results.append(https_result)
        
        return results
    
    def check_ip(self, ip):
        """检查 IP 地址"""
        results = []
        
        # 检查常见端口
        common_ports = [80, 443, 8080, 8443]
        
        for port in common_ports:
            # HTTP
            http_result = self.check_http_status(f'http://{ip}:{port}')
            if http_result['alive']:
                results.append(http_result)
            
            # HTTPS
            if port in [443, 8443]:
                https_result = self.check_http_status(f'https://{ip}:{port}')
                if https_result['alive']:
                    results.append(https_result)
        
        return results
    
    def analyze_all_assets(self):
        """分析所有资产"""
        print("[+] 开始资产存活性检测...")
        print(f"[+] 待检测资产总数: {len(self.all_domains) + len(self.domains_with_ports) + len(self.ip_addresses) + len(self.ips_with_ports)}")
        
        all_results = []
        
        # 使用线程池进行并发检测
        with concurrent.futures.ThreadPoolExecutor(max_workers=20) as executor:
            # 提交所有任务
            futures = []
            
            # 域名检测
            print("\n[*] 检测域名...")
            for domain in self.all_domains:
                if '*' not in domain:  # 跳过通配符
                    futures.append(executor.submit(self.check_domain, domain))
            
            # 带端口的域名检测
            print("[*] 检测带端口的域名...")
            for domain, port in self.domains_with_ports:
                futures.append(executor.submit(self.check_domain_with_port, domain, port))
            
            # IP 地址检测
            print("[*] 检测 IP 地址...")
            for ip in self.ip_addresses:
                futures.append(executor.submit(self.check_ip, ip))
            
            # 带端口的 IP 检测
            print("[*] 检测带端口的 IP...")
            for ip, port in self.ips_with_ports:
                futures.append(executor.submit(self.check_http_status, f'http://{ip}:{port}'))
                futures.append(executor.submit(self.check_http_status, f'https://{ip}:{port}'))
            
            # 收集结果
            for future in concurrent.futures.as_completed(futures):
                try:
                    result = future.result()
                    if isinstance(result, list):
                        all_results.extend(result)
                    elif result:
                        all_results.append(result)
                except Exception as e:
                    print(f"[!] 检测错误: {e}")
        
        # 分析结果
        self.analyze_results(all_results)
    
    def analyze_results(self, results):
        """分析检测结果"""
        alive_count = 0
        status_distribution = {}
        technology_count = {}
        login_pages = []
        interesting_findings = []
        
        for result in results:
            if result.get('alive'):
                alive_count += 1
                
                # 统计状态码
                status = str(result.get('status'))
                status_distribution[status] = status_distribution.get(status, 0) + 1
                
                # 统计技术栈
                for tech in result.get('technologies', []):
                    technology_count[tech] = technology_count.get(tech, 0) + 1
                
                # 记录登录页面
                if result.get('is_login_page'):
                    login_pages.append(result['url'])
                
                # 记录有趣的发现
                if result.get('status') in [200, 301, 302] and not result.get('is_error_page'):
                    self.results['alive_http' if 'http://' in result['url'] else 'alive_https'].append({
                        'url': result['url'],
                        'title': result.get('title', ''),
                        'status': result['status'],
                        'server': result.get('headers', {}).get('Server', ''),
                        'technologies': result.get('technologies', [])
                    })
                
                # 特殊发现
                if 'git' in result['url'].lower() or 'gitlab' in result.get('title', '').lower():
                    interesting_findings.append(f"GitLab 发现: {result['url']}")
                
                if 'admin' in result['url'].lower() or 'admin' in result.get('title', '').lower():
                    interesting_findings.append(f"管理后台: {result['url']}")
                
                if 'api' in result['url'].lower():
                    interesting_findings.append(f"API 端点: {result['url']}")
                
                if result.get('headers', {}).get('Server', '').lower() in ['apache', 'nginx', 'iis']:
                    if 'apache' in result['headers']['Server'].lower() and '2.2' in result['headers']['Server']:
                        interesting_findings.append(f"过时的 Apache 版本: {result['url']}")
        
        # 保存分析结果
        self.results['statistics'] = {
            'total_checked': len(results),
            'alive_count': alive_count,
            'status_distribution': status_distribution,
            'technology_count': technology_count,
            'login_pages': login_pages,
            'interesting_findings': interesting_findings
        }
        
        # 生成报告
        self.generate_report()
    
    def generate_report(self):
        """生成详细报告"""
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        
        # 保存 JSON 结果
        with open(f'ems_alive_check_{timestamp}.json', 'w', encoding='utf-8') as f:
            json.dump(self.results, f, ensure_ascii=False, indent=2)
        
        # 生成 Markdown 报告
        report = f"""# EMS.com.vn 资产存活性检测报告
生成时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}

## 📊 统计概览

- **检测总数**: {self.results['statistics']['total_checked']}
- **存活数量**: {self.results['statistics']['alive_count']}
- **存活率**: {self.results['statistics']['alive_count'] / self.results['statistics']['total_checked'] * 100:.2f}%

## 🟢 存活的 HTTP 服务 ({len(self.results['alive_http'])})

| URL | 标题 | 状态码 | 服务器 | 技术栈 |
|-----|------|--------|--------|--------|
"""
        
        for item in sorted(self.results['alive_http'], key=lambda x: x['url']):
            tech_str = ', '.join(item['technologies']) if item['technologies'] else 'Unknown'
            report += f"| {item['url']} | {item['title'][:30]} | {item['status']} | {item['server']} | {tech_str} |\n"
        
        report += f"""

## 🔒 存活的 HTTPS 服务 ({len(self.results['alive_https'])})

| URL | 标题 | 状态码 | 服务器 | 技术栈 |
|-----|------|--------|--------|--------|
"""
        
        for item in sorted(self.results['alive_https'], key=lambda x: x['url']):
            tech_str = ', '.join(item['technologies']) if item['technologies'] else 'Unknown'
            report += f"| {item['url']} | {item['title'][:30]} | {item['status']} | {item['server']} | {tech_str} |\n"
        
        report += f"""

## 📈 状态码分布

"""
        for status, count in sorted(self.results['statistics']['status_distribution'].items()):
            report += f"- **{status}**: {count} 个\n"
        
        report += f"""

## 💻 技术栈统计

"""
        for tech, count in sorted(self.results['statistics']['technology_count'].items(), key=lambda x: x[1], reverse=True):
            report += f"- **{tech}**: {count} 个站点\n"
        
        report += f"""

## 🔐 登录页面 ({len(self.results['statistics']['login_pages'])})

"""
        for url in self.results['statistics']['login_pages']:
            report += f"- {url}\n"
        
        report += f"""

## ⚠️ 有趣的发现

"""
        for finding in self.results['statistics']['interesting_findings']:
            report += f"- {finding}\n"
        
        # 保存报告
        with open(f'ems_alive_report_{timestamp}.md', 'w', encoding='utf-8') as f:
            f.write(report)
        
        print(f"\n[+] 报告已保存:")
        print(f"    - JSON: ems_alive_check_{timestamp}.json")
        print(f"    - Markdown: ems_alive_report_{timestamp}.md")
        
        # 输出概要
        print(f"\n[+] 检测完成!")
        print(f"    - 存活服务: {self.results['statistics']['alive_count']}")
        print(f"    - HTTP: {len(self.results['alive_http'])}")
        print(f"    - HTTPS: {len(self.results['alive_https'])}")
        print(f"    - 登录页面: {len(self.results['statistics']['login_pages'])}")

if __name__ == "__main__":
    analyzer = AssetAnalyzer()
    analyzer.analyze_all_assets()