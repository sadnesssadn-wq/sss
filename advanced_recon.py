#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
高级资产侦察 - 多种技术结合
"""

import requests
import socket
import ssl
import dns.resolver
import concurrent.futures
import json
from datetime import datetime
import re
import subprocess

print("""
╔══════════════════════════════════════════════════════════════════════════════╗
║                    高级资产侦察 - 深度挖掘                                   ║
╚══════════════════════════════════════════════════════════════════════════════╝
""")

class AdvancedRecon:
    def __init__(self, target):
        self.target = target
        self.results = {
            'subdomains': set(),
            'ips': set(),
            'asn_info': {},
            'whois_info': {},
            'dns_records': {},
            'technologies': set(),
            'emails': set(),
            'social_media': set()
        }
    
    def crt_sh_search(self):
        """Certificate Transparency 日志搜索"""
        print(f"\n[*] Certificate Transparency 搜索...")
        
        try:
            url = f"https://crt.sh/?q=%.{self.target}&output=json"
            resp = requests.get(url, timeout=30)
            
            if resp.status_code == 200:
                data = resp.json()
                
                for cert in data:
                    name_value = cert.get('name_value', '')
                    # 分割多个域名
                    domains = name_value.replace('*.', '').split('\n')
                    
                    for domain in domains:
                        if domain and self.target in domain:
                            self.results['subdomains'].add(domain)
                            
                            # 特别关注的域名
                            if any(kw in domain for kw in ['dev', 'test', 'staging', 'api', 'admin']):
                                print(f"  [!] 重要发现: {domain}")
                
                print(f"  [+] 发现 {len(self.results['subdomains'])} 个域名")
        except Exception as e:
            print(f"  [-] 错误: {e}")
    
    def dns_brute_force(self):
        """DNS 暴力破解"""
        print(f"\n[*] DNS 暴力破解...")
        
        # 扩展的子域名字典
        wordlist = [
            # 常见前缀
            'www', 'mail', 'ftp', 'localhost', 'webmail', 'smtp', 'imap', 'pop', 'ns1', 'ns2',
            'admin', 'administrator', 'api', 'app', 'apps', 'beta', 'blog', 'cdn', 'chat',
            'cloud', 'cms', 'crm', 'dashboard', 'data', 'db', 'demo', 'dev', 'development',
            
            # 业务相关
            'customer', 'client', 'user', 'users', 'member', 'members', 'account', 'accounts',
            'payment', 'payments', 'billing', 'invoice', 'order', 'orders', 'shop', 'store',
            'portal', 'gateway', 'secure', 'ssl', 'vpn', 'remote', 'access',
            
            # 开发测试
            'test', 'testing', 'test1', 'test2', 'qa', 'uat', 'staging', 'stage', 'preprod',
            'preview', 'sandbox', 'debug', 'temp', 'tmp', 'cache', 'backup', 'old', 'new',
            
            # 地区相关
            'vn', 'vietnam', 'hanoi', 'hcm', 'saigon', 'asia', 'sea',
            
            # 数字组合
            'api1', 'api2', 'api3', 'app1', 'app2', 'web1', 'web2', 'srv1', 'srv2',
            
            # 物流相关（针对 EMS）
            'tracking', 'track', 'trace', 'ship', 'shipping', 'delivery', 'logistics',
            'warehouse', 'wms', 'transport', 'fleet', 'driver', 'route', 'dispatch'
        ]
        
        found = []
        
        # 使用线程池
        with concurrent.futures.ThreadPoolExecutor(max_workers=50) as executor:
            futures = []
            
            for word in wordlist:
                subdomain = f"{word}.{self.target}"
                future = executor.submit(self._resolve_domain, subdomain)
                futures.append((subdomain, future))
            
            for subdomain, future in futures:
                try:
                    ip = future.result(timeout=2)
                    if ip:
                        self.results['subdomains'].add(subdomain)
                        self.results['ips'].add(ip)
                        found.append(subdomain)
                except:
                    pass
        
        if found:
            print(f"  [+] 暴力破解发现 {len(found)} 个域名:")
            for domain in sorted(found)[:10]:  # 只显示前10个
                print(f"    - {domain}")
    
    def _resolve_domain(self, domain):
        """解析域名"""
        try:
            result = socket.gethostbyname(domain)
            return result
        except:
            return None
    
    def passive_dns_search(self):
        """被动 DNS 搜索"""
        print(f"\n[*] 被动 DNS 搜索...")
        
        # SecurityTrails (需要 API key)
        # VirusTotal (需要 API key)
        # 这里使用 HackerTarget 的免费 API
        
        try:
            # DNS 历史记录
            url = f"https://api.hackertarget.com/hostsearch/?q={self.target}"
            resp = requests.get(url, timeout=10)
            
            if resp.status_code == 200 and 'error' not in resp.text:
                lines = resp.text.strip().split('\n')
                
                for line in lines:
                    if ',' in line:
                        domain, ip = line.split(',')
                        self.results['subdomains'].add(domain)
                        self.results['ips'].add(ip)
                
                print(f"  [+] 发现 {len(lines)} 条 DNS 记录")
        except:
            pass
    
    def whois_enumeration(self):
        """WHOIS 信息收集"""
        print(f"\n[*] WHOIS 信息收集...")
        
        try:
            # 使用 Python whois 或系统命令
            import subprocess
            
            result = subprocess.run(['whois', self.target], 
                                  capture_output=True, 
                                  text=True, 
                                  timeout=10)
            
            if result.returncode == 0:
                whois_text = result.stdout
                
                # 提取邮箱
                emails = re.findall(r'[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}', whois_text)
                for email in emails:
                    self.results['emails'].add(email)
                    if '@ems' in email:
                        print(f"  [!] 发现邮箱: {email}")
                
                # 提取组织信息
                org_match = re.search(r'org-name:\s*(.+)', whois_text, re.I)
                if org_match:
                    self.results['whois_info']['organization'] = org_match.group(1)
                
                # 提取名称服务器
                ns_matches = re.findall(r'Name Server:\s*(.+)', whois_text, re.I)
                if ns_matches:
                    self.results['whois_info']['nameservers'] = ns_matches
        except:
            pass
    
    def technology_detection(self):
        """技术栈检测"""
        print(f"\n[*] 技术栈检测...")
        
        test_urls = [
            f"https://{self.target}",
            f"https://www.{self.target}",
            f"https://admin.{self.target}",
            f"https://api.{self.target}"
        ]
        
        for url in test_urls:
            try:
                resp = requests.get(url, timeout=5, verify=False)
                
                # 检测服务器
                server = resp.headers.get('Server', '')
                if server:
                    self.results['technologies'].add(f"Server: {server}")
                
                # 检测框架
                if 'x-powered-by' in resp.headers:
                    self.results['technologies'].add(f"Powered-By: {resp.headers['x-powered-by']}")
                
                # 检测 CMS/框架 特征
                content = resp.text.lower()
                
                # Laravel
                if 'laravel' in content or 'csrf-token' in content:
                    self.results['technologies'].add('Laravel')
                
                # WordPress
                if 'wp-content' in content or 'wordpress' in content:
                    self.results['technologies'].add('WordPress')
                
                # ASP.NET
                if 'asp.net' in content or '__viewstate' in content:
                    self.results['technologies'].add('ASP.NET')
                
                # React/Vue/Angular
                if 'react' in content:
                    self.results['technologies'].add('React')
                if 'vue' in content:
                    self.results['technologies'].add('Vue.js')
                if 'angular' in content:
                    self.results['technologies'].add('Angular')
                
                print(f"  [+] {url}: {server}")
            except:
                pass
    
    def social_media_search(self):
        """社交媒体搜索"""
        print(f"\n[*] 社交媒体和在线资源搜索...")
        
        platforms = {
            'LinkedIn': f'site:linkedin.com "ems vietnam" OR "ems.com.vn"',
            'Facebook': f'site:facebook.com "ems vietnam"',
            'GitHub': f'site:github.com "ems.com.vn"',
            'GitLab': f'site:gitlab.com "ems.com.vn"',
            'Twitter': f'site:twitter.com "ems vietnam"',
            'YouTube': f'site:youtube.com "ems vietnam"'
        }
        
        print("  请在以下平台搜索:")
        for platform, query in platforms.items():
            print(f"    - {platform}: {query}")
    
    def ip_range_discovery(self):
        """IP 段发现"""
        print(f"\n[*] IP 段发现...")
        
        # 已知的 IP
        known_ips = [
            '222.255.250.228',
            '222.255.250.234',
            '222.255.250.240',
            '222.255.250.247',
            '115.146.121.131',
            '115.146.121.135',
            '115.146.121.150'
        ]
        
        # 计算 IP 段
        ip_ranges = {}
        for ip in known_ips:
            prefix = '.'.join(ip.split('.')[:3])
            if prefix not in ip_ranges:
                ip_ranges[prefix] = []
            ip_ranges[prefix].append(ip)
        
        print(f"  [+] 发现的 IP 段:")
        for prefix, ips in ip_ranges.items():
            print(f"    - {prefix}.0/24 ({len(ips)} 个已知 IP)")
            
            # 扫描同网段的其他 IP
            print(f"      扫描邻近 IP...")
            for last_octet in range(1, 255):
                test_ip = f"{prefix}.{last_octet}"
                if test_ip not in known_ips:
                    # 快速端口检查
                    if self._check_ip_alive(test_ip):
                        self.results['ips'].add(test_ip)
                        print(f"      [+] 发现活跃 IP: {test_ip}")
    
    def _check_ip_alive(self, ip):
        """检查 IP 是否活跃"""
        common_ports = [80, 443, 22, 21, 25, 8080]
        
        for port in common_ports:
            try:
                sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                sock.settimeout(0.5)
                result = sock.connect_ex((ip, port))
                sock.close()
                
                if result == 0:
                    return True
            except:
                pass
        
        return False
    
    def generate_report(self):
        """生成报告"""
        print(f"\n\n{'='*60}")
        print(f"[+] 高级侦察总结")
        print(f"{'='*60}")
        
        print(f"\n[*] 统计:")
        print(f"  - 子域名: {len(self.results['subdomains'])} 个")
        print(f"  - IP 地址: {len(self.results['ips'])} 个")
        print(f"  - 技术栈: {len(self.results['technologies'])} 种")
        print(f"  - 邮箱: {len(self.results['emails'])} 个")
        
        print(f"\n[*] 重要发现:")
        
        # 开发/测试环境
        dev_domains = [d for d in self.results['subdomains'] 
                      if any(kw in d for kw in ['dev', 'test', 'staging', 'uat', 'demo'])]
        if dev_domains:
            print(f"\n  开发/测试环境:")
            for domain in sorted(dev_domains):
                print(f"    - {domain}")
        
        # API 端点
        api_domains = [d for d in self.results['subdomains'] if 'api' in d]
        if api_domains:
            print(f"\n  API 端点:")
            for domain in sorted(api_domains):
                print(f"    - {domain}")
        
        # 管理后台
        admin_domains = [d for d in self.results['subdomains'] 
                        if any(kw in d for kw in ['admin', 'manage', 'console', 'portal'])]
        if admin_domains:
            print(f"\n  管理后台:")
            for domain in sorted(admin_domains):
                print(f"    - {domain}")
        
        # 保存详细报告
        report = {
            'target': self.target,
            'scan_time': datetime.now().isoformat(),
            'subdomains': sorted(list(self.results['subdomains'])),
            'ips': sorted(list(self.results['ips'])),
            'technologies': list(self.results['technologies']),
            'emails': list(self.results['emails']),
            'whois_info': self.results['whois_info'],
            'important_findings': {
                'dev_environments': dev_domains,
                'api_endpoints': api_domains,
                'admin_panels': admin_domains
            }
        }
        
        report_file = f"advanced_recon_{self.target}_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        with open(report_file, 'w', encoding='utf-8') as f:
            json.dump(report, f, ensure_ascii=False, indent=2)
        
        print(f"\n[+] 详细报告已保存: {report_file}")
        
        return report

# 执行高级侦察
recon = AdvancedRecon('ems.com.vn')

# 1. Certificate Transparency
recon.crt_sh_search()

# 2. DNS 暴力破解
recon.dns_brute_force()

# 3. 被动 DNS
recon.passive_dns_search()

# 4. WHOIS 枚举
recon.whois_enumeration()

# 5. 技术栈检测
recon.technology_detection()

# 6. IP 段发现
recon.ip_range_discovery()

# 7. 社交媒体提示
recon.social_media_search()

# 生成报告
report = recon.generate_report()

# 推荐下一步
print(f"\n[!] 推荐下一步行动:")
print(f"1. 对发现的开发/测试环境进行安全测试（通常安全性较弱）")
print(f"2. 测试 API 端点的认证机制")
print(f"3. 检查管理后台是否存在弱密码")
print(f"4. 扫描新发现的 IP 段")
print(f"5. 在 GitHub 搜索泄露的代码和配置文件")