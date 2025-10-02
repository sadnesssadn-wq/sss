#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
终极深度资产挖掘 - 全方位侦察
"""

import requests
import socket
import ssl
import dns.resolver
import concurrent.futures
import json
import re
import subprocess
from datetime import datetime
import base64
import urllib3

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

print("""
╔══════════════════════════════════════════════════════════════════════════════╗
║                    终极深度资产挖掘 - EMS.COM.VN                             ║
╚══════════════════════════════════════════════════════════════════════════════╝
""")

class UltimateRecon:
    def __init__(self):
        self.results = {
            'domains': set(),
            'subdomains': set(),
            'ips': set(),
            'ports': {},
            'emails': set(),
            'technologies': set(),
            'vulnerabilities': [],
            'api_endpoints': set(),
            'admin_panels': set(),
            'dev_environments': set(),
            'cloud_assets': set(),
            'certificates': set(),
            'dns_records': {},
            'wayback_urls': set(),
            'github_repos': set(),
            'employees': set(),
            'leaked_credentials': []
        }
        
    def certificate_transparency(self):
        """深度证书透明度搜索"""
        print("\n[*] 证书透明度深度搜索...")
        
        # 多个 CT 日志源
        ct_sources = [
            "https://crt.sh/?q=%.ems.com.vn&output=json",
            "https://crt.sh/?q=%.ems.net.vn&output=json",
            "https://crt.sh/?q=%.emsvietnam.com&output=json",
            "https://crt.sh/?q=%.emsone.com.vn&output=json"
        ]
        
        for url in ct_sources:
            try:
                resp = requests.get(url, timeout=30)
                if resp.status_code == 200:
                    certs = resp.json()
                    
                    for cert in certs:
                        # 提取所有域名
                        name_value = cert.get('name_value', '')
                        common_name = cert.get('common_name', '')
                        
                        # 处理通配符和多域名
                        domains = name_value.replace('*.', '').split('\n')
                        domains.append(common_name.replace('*.', ''))
                        
                        for domain in domains:
                            if domain and ('ems' in domain or 'EMS' in domain):
                                self.results['subdomains'].add(domain.lower())
                                
                                # 特殊标记
                                if any(kw in domain for kw in ['dev', 'test', 'staging', 'uat']):
                                    self.results['dev_environments'].add(domain)
                                elif any(kw in domain for kw in ['admin', 'manage', 'portal']):
                                    self.results['admin_panels'].add(domain)
                                elif 'api' in domain:
                                    self.results['api_endpoints'].add(domain)
                                    
                print(f"  [+] 从 {url.split('?')[1].split('&')[0]} 发现 {len(domains)} 个域名")
            except:
                pass
    
    def dns_enumeration(self):
        """全面 DNS 枚举"""
        print("\n[*] 全面 DNS 枚举...")
        
        # 扩展的子域名字典
        massive_wordlist = [
            # 基础
            'www', 'mail', 'ftp', 'admin', 'webmail', 'smtp', 'pop', 'imap',
            
            # 开发测试
            'dev', 'development', 'test', 'testing', 'test1', 'test2', 'test3',
            'qa', 'qa1', 'qa2', 'uat', 'staging', 'stage', 'stage1', 'stage2',
            'demo', 'demo1', 'demo2', 'sandbox', 'lab', 'labs', 'experiment',
            'alpha', 'beta', 'gamma', 'delta', 'preview', 'pre', 'preprod',
            
            # API
            'api', 'api1', 'api2', 'api3', 'api-v1', 'api-v2', 'api-v3',
            'api-dev', 'api-test', 'api-staging', 'api-prod', 'api-mobile',
            'rest', 'restapi', 'ws', 'websocket', 'graphql', 'grpc',
            'endpoint', 'endpoints', 'service', 'services', 'microservice',
            
            # 管理
            'admin', 'administrator', 'root', 'superuser', 'manage', 'manager',
            'management', 'console', 'control', 'controlpanel', 'cp', 'cpanel',
            'dashboard', 'dash', 'panel', 'backend', 'backoffice', 'bo',
            
            # 数据库
            'db', 'database', 'mysql', 'postgres', 'postgresql', 'mongo',
            'mongodb', 'redis', 'memcache', 'memcached', 'elastic', 'es',
            'elasticsearch', 'kibana', 'grafana', 'prometheus', 'influx',
            
            # 监控
            'monitor', 'monitoring', 'mon', 'metrics', 'stats', 'statistics',
            'analytics', 'analyze', 'logs', 'logging', 'log', 'logger',
            'trace', 'tracing', 'apm', 'status', 'health', 'healthcheck',
            
            # 安全
            'security', 'secure', 'ssl', 'tls', 'vpn', 'firewall', 'fw',
            'waf', 'ids', 'ips', 'siem', 'soc', 'cert', 'certificate',
            'pki', 'ca', 'auth', 'authentication', 'oauth', 'oauth2',
            'sso', 'saml', 'ldap', 'ad', 'identity', 'iam',
            
            # 业务功能
            'app', 'application', 'apps', 'portal', 'portals', 'gateway',
            'billing', 'payment', 'pay', 'checkout', 'cart', 'shop',
            'store', 'ecommerce', 'commerce', 'marketplace', 'vendor',
            'customer', 'client', 'user', 'users', 'member', 'members',
            'account', 'accounts', 'profile', 'profiles', 'settings',
            
            # 内容
            'content', 'cms', 'blog', 'news', 'media', 'assets', 'static',
            'cdn', 'cache', 'images', 'img', 'imgs', 'image', 'photo',
            'photos', 'video', 'videos', 'download', 'downloads', 'file',
            'files', 'doc', 'docs', 'documentation', 'help', 'support',
            'kb', 'knowledge', 'knowledgebase', 'faq', 'forum', 'forums',
            
            # 通信
            'mail', 'email', 'smtp', 'imap', 'pop', 'pop3', 'webmail',
            'mx', 'mx1', 'mx2', 'mx3', 'relay', 'newsletter', 'list',
            'lists', 'campaign', 'campaigns', 'marketing', 'crm',
            'chat', 'message', 'messaging', 'im', 'slack', 'teams',
            
            # 基础设施
            'server', 'srv', 'srv1', 'srv2', 'node', 'node1', 'node2',
            'host', 'host1', 'host2', 'web', 'web1', 'web2', 'app1',
            'app2', 'lb', 'loadbalancer', 'proxy', 'reverse', 'forward',
            'gateway', 'gw', 'edge', 'origin', 'mirror', 'backup',
            'dr', 'failover', 'standby', 'replica', 'slave', 'master',
            
            # 云服务
            'aws', 'azure', 'gcp', 'cloud', 'k8s', 'kubernetes', 'docker',
            'container', 'registry', 'repo', 'repository', 'git', 'gitlab',
            'github', 'bitbucket', 'svn', 'jenkins', 'ci', 'cd', 'cicd',
            'build', 'deploy', 'deployment', 'pipeline', 'artifact',
            
            # 地域
            'us', 'eu', 'asia', 'vn', 'vietnam', 'hanoi', 'hn', 'hcm',
            'hochiminh', 'saigon', 'sg', 'danang', 'dn', 'cantho', 'ct',
            'north', 'south', 'central', 'east', 'west',
            
            # 特殊
            'temp', 'tmp', 'old', 'new', 'legacy', 'v1', 'v2', 'v3',
            '2019', '2020', '2021', '2022', '2023', '2024', '2025',
            'mobile', 'm', 'lite', 'pro', 'plus', 'premium', 'enterprise',
            
            # EMS 特定
            'ems', 'postal', 'post', 'shipping', 'ship', 'delivery',
            'deliver', 'logistics', 'warehouse', 'wh', 'distribution',
            'tracking', 'track', 'trace', 'parcel', 'package', 'pkg',
            'express', 'fast', 'quick', 'rapid', 'priority', 'standard',
            'economy', 'international', 'domestic', 'local', 'global',
            'import', 'export', 'customs', 'clearance', 'fulfillment',
            'fleet', 'vehicle', 'driver', 'route', 'routing', 'dispatch',
            'hub', 'center', 'depot', 'branch', 'office', 'location'
        ]
        
        # 批量 DNS 查询
        with concurrent.futures.ThreadPoolExecutor(max_workers=100) as executor:
            futures = []
            
            for word in massive_wordlist:
                subdomain = f"{word}.ems.com.vn"
                future = executor.submit(self._resolve_domain, subdomain)
                futures.append((subdomain, future))
            
            for subdomain, future in futures:
                try:
                    result = future.result(timeout=1)
                    if result:
                        self.results['subdomains'].add(subdomain)
                        self.results['ips'].add(result)
                except:
                    pass
        
        print(f"  [+] DNS 枚举发现 {len(self.results['subdomains'])} 个子域名")
    
    def _resolve_domain(self, domain):
        """快速 DNS 解析"""
        try:
            return socket.gethostbyname(domain)
        except:
            return None
    
    def reverse_ip_lookup(self):
        """反向 IP 查询"""
        print("\n[*] 反向 IP 查询...")
        
        # 已知的 IP 段
        ip_ranges = [
            "222.255.250.",  # VNPT
            "115.146.121.",  # FPT
            "103.74.120.",   # 其他
            "103.92.30."
        ]
        
        for ip_range in ip_ranges:
            print(f"  扫描 {ip_range}0/24")
            
            for i in range(1, 255):
                ip = f"{ip_range}{i}"
                
                # 快速端口检查
                for port in [80, 443]:
                    try:
                        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                        sock.settimeout(0.5)
                        result = sock.connect_ex((ip, port))
                        sock.close()
                        
                        if result == 0:
                            self.results['ips'].add(ip)
                            
                            # 尝试获取域名
                            try:
                                hostname = socket.gethostbyaddr(ip)[0]
                                if 'ems' in hostname:
                                    self.results['subdomains'].add(hostname)
                            except:
                                pass
                            break
                    except:
                        pass
    
    def wayback_machine_deep(self):
        """Wayback Machine 深度搜索"""
        print("\n[*] Wayback Machine 历史数据挖掘...")
        
        domains = ['ems.com.vn', 'www.ems.com.vn', 'api.ems.com.vn']
        
        for domain in domains:
            try:
                # 获取所有历史快照
                url = f"http://web.archive.org/cdx/search/cdx?url={domain}/*&output=json&fl=original&collapse=urlkey&limit=10000"
                resp = requests.get(url, timeout=30)
                
                if resp.status_code == 200:
                    data = resp.json()
                    
                    for item in data[1:]:  # 跳过标题
                        url = item[0]
                        self.results['wayback_urls'].add(url)
                        
                        # 提取子域名
                        match = re.match(r'https?://([^/]+)', url)
                        if match:
                            subdomain = match.group(1)
                            if subdomain.endswith('.ems.com.vn'):
                                self.results['subdomains'].add(subdomain)
                        
                        # 查找 API 端点
                        if '/api/' in url or '/v1/' in url or '/v2/' in url:
                            self.results['api_endpoints'].add(url)
                        
                        # 查找管理页面
                        if any(kw in url for kw in ['/admin', '/manage', '/dashboard', '/panel']):
                            self.results['admin_panels'].add(url)
                            
                print(f"  [+] 发现 {len(data)-1} 个历史 URL")
            except:
                pass
    
    def github_search(self):
        """GitHub 代码搜索"""
        print("\n[*] GitHub 代码搜索...")
        
        # 搜索查询
        queries = [
            'filename:.env "ems.com.vn"',
            'filename:config "ems.com.vn"',
            'filename:.git "ems.com.vn"',
            'filename:password "ems.com.vn"',
            'filename:secret "ems.com.vn"',
            'filename:key "ems.com.vn"',
            'filename:token "ems.com.vn"',
            'filename:api "ems.com.vn"',
            '"ems.com.vn" password',
            '"ems.com.vn" api_key',
            '"ems.com.vn" secret',
            '"@ems.com.vn"',
            'org:ems-vietnam',
            'org:emsvn',
            'org:emsvietnam'
        ]
        
        print("  请在 GitHub 搜索以下内容:")
        for query in queries:
            print(f"    - {query}")
            self.results['github_repos'].add(query)
    
    def cloud_assets_discovery(self):
        """云资产发现"""
        print("\n[*] 云资产发现...")
        
        # AWS S3 桶
        s3_patterns = [
            'ems-backup',
            'ems-data',
            'ems-logs',
            'ems-static',
            'ems-media',
            'ems-dev',
            'ems-prod',
            'emsvietnam',
            'emsvn'
        ]
        
        for pattern in s3_patterns:
            for suffix in ['', '-backup', '-data', '-logs', '-dev', '-prod']:
                bucket = f"{pattern}{suffix}"
                url = f"https://{bucket}.s3.amazonaws.com"
                
                try:
                    resp = requests.head(url, timeout=3)
                    if resp.status_code != 404:
                        self.results['cloud_assets'].add(f"S3: {bucket}")
                except:
                    pass
        
        # Azure Blob
        azure_patterns = ['ems', 'emsvn', 'emsvietnam']
        for pattern in azure_patterns:
            url = f"https://{pattern}.blob.core.windows.net"
            try:
                resp = requests.head(url, timeout=3)
                if resp.status_code != 404:
                    self.results['cloud_assets'].add(f"Azure: {pattern}")
            except:
                pass
    
    def technology_fingerprinting(self):
        """技术指纹识别"""
        print("\n[*] 技术指纹识别...")
        
        test_domains = [
            'ems.com.vn', 'www.ems.com.vn', 'admin.ems.com.vn',
            'api.ems.com.vn', 'portal.ems.com.vn'
        ]
        
        for domain in test_domains:
            for protocol in ['http', 'https']:
                url = f"{protocol}://{domain}"
                
                try:
                    resp = requests.get(url, timeout=5, verify=False, allow_redirects=True)
                    
                    # 服务器识别
                    headers = resp.headers
                    if 'Server' in headers:
                        self.results['technologies'].add(f"Server: {headers['Server']}")
                    
                    if 'X-Powered-By' in headers:
                        self.results['technologies'].add(f"Powered-By: {headers['X-Powered-By']}")
                    
                    # 内容分析
                    content = resp.text.lower()
                    
                    # 框架检测
                    frameworks = {
                        'Laravel': ['laravel', 'csrf-token'],
                        'ASP.NET': ['asp.net', '__viewstate', 'aspnetcore'],
                        'Django': ['django', 'csrfmiddlewaretoken'],
                        'Spring': ['spring', 'springframework'],
                        'Express': ['express', 'x-powered-by: express'],
                        'Ruby on Rails': ['rails', 'authenticity_token'],
                        'WordPress': ['wp-content', 'wordpress'],
                        'Drupal': ['drupal', '/sites/default/'],
                        'Joomla': ['joomla', '/components/'],
                        'Vue.js': ['vue', 'v-if', 'v-for'],
                        'React': ['react', 'reactdom', '_react'],
                        'Angular': ['angular', 'ng-', 'angularjs']
                    }
                    
                    for framework, indicators in frameworks.items():
                        if any(indicator in content for indicator in indicators):
                            self.results['technologies'].add(framework)
                    
                    # CMS 检测
                    cms_indicators = {
                        'SharePoint': ['sharepoint', '_layouts'],
                        'Confluence': ['confluence', 'atlassian'],
                        'GitLab': ['gitlab', 'gitlab-ce'],
                        'Jenkins': ['jenkins', 'hudson'],
                        'Nexus': ['nexus', 'sonatype'],
                        'SonarQube': ['sonarqube', 'sonar']
                    }
                    
                    for cms, indicators in cms_indicators.items():
                        if any(indicator in content for indicator in indicators):
                            self.results['technologies'].add(f"CMS: {cms}")
                    
                except:
                    pass
    
    def email_harvesting(self):
        """邮箱收集"""
        print("\n[*] 邮箱地址收集...")
        
        # Google dork 搜索建议
        email_patterns = [
            '"@ems.com.vn"',
            '"@ems.net.vn"',
            '"@emsvietnam.com"',
            'site:ems.com.vn intext:"@"',
            'site:linkedin.com "ems vietnam" "@ems.com.vn"',
            'filetype:pdf site:ems.com.vn "@ems.com.vn"'
        ]
        
        print("  请使用以下搜索查询:")
        for pattern in email_patterns:
            print(f"    - {pattern}")
    
    def vulnerability_patterns(self):
        """漏洞模式识别"""
        print("\n[*] 潜在漏洞模式...")
        
        # 检查常见漏洞路径
        vuln_paths = [
            '/.git/config',
            '/.svn/entries',
            '/.env',
            '/web.config',
            '/.htaccess',
            '/phpinfo.php',
            '/info.php',
            '/test.php',
            '/backup.sql',
            '/dump.sql',
            '/database.sql',
            '/backup.zip',
            '/backup.tar.gz',
            '/www.zip',
            '/admin.zip',
            '/.DS_Store',
            '/crossdomain.xml',
            '/clientaccesspolicy.xml',
            '/robots.txt',
            '/sitemap.xml',
            '/.well-known/security.txt',
            '/swagger.json',
            '/api-docs',
            '/graphql',
            '/__debug__/',
            '/debug/default/view',
            '/elmah.axd',
            '/trace.axd'
        ]
        
        test_domains = ['ems.com.vn', 'admin.ems.com.vn', 'api.ems.com.vn']
        
        for domain in test_domains:
            for path in vuln_paths:
                url = f"https://{domain}{path}"
                
                try:
                    resp = requests.get(url, timeout=3, verify=False, allow_redirects=False)
                    
                    if resp.status_code == 200:
                        # 验证是否真的是敏感文件
                        if path == '/.git/config' and '[core]' in resp.text:
                            self.results['vulnerabilities'].append({
                                'type': 'Git Config Exposure',
                                'url': url,
                                'severity': 'HIGH'
                            })
                        elif path == '/.env' and ('APP_' in resp.text or 'DB_' in resp.text):
                            self.results['vulnerabilities'].append({
                                'type': 'Environment File Exposure',
                                'url': url,
                                'severity': 'CRITICAL'
                            })
                        elif path in ['/phpinfo.php', '/info.php'] and 'phpinfo()' in resp.text:
                            self.results['vulnerabilities'].append({
                                'type': 'PHPInfo Exposure',
                                'url': url,
                                'severity': 'MEDIUM'
                            })
                except:
                    pass
    
    def generate_final_report(self):
        """生成最终报告"""
        print("\n\n" + "="*80)
        print("                        终极资产挖掘报告")
        print("="*80)
        
        # 去重和整理
        all_domains = self.results['subdomains'] | self.results['domains']
        
        # 分类整理
        categorized = {
            '开发测试环境': [],
            'API端点': [],
            '管理后台': [],
            '邮件服务': [],
            '数据库相关': [],
            '监控系统': [],
            '云服务': [],
            '移动应用': [],
            '内部系统': [],
            '其他服务': []
        }
        
        for domain in all_domains:
            domain_lower = domain.lower()
            
            if any(kw in domain_lower for kw in ['dev', 'test', 'staging', 'uat', 'demo', 'sandbox']):
                categorized['开发测试环境'].append(domain)
            elif any(kw in domain_lower for kw in ['api', 'ws', 'webhook', 'graphql', 'rest']):
                categorized['API端点'].append(domain)
            elif any(kw in domain_lower for kw in ['admin', 'manage', 'portal', 'dashboard', 'console']):
                categorized['管理后台'].append(domain)
            elif any(kw in domain_lower for kw in ['mail', 'smtp', 'imap', 'pop', 'email']):
                categorized['邮件服务'].append(domain)
            elif any(kw in domain_lower for kw in ['db', 'database', 'mysql', 'postgres', 'mongo', 'redis']):
                categorized['数据库相关'].append(domain)
            elif any(kw in domain_lower for kw in ['monitor', 'metrics', 'logs', 'analytics', 'stats']):
                categorized['监控系统'].append(domain)
            elif any(kw in domain_lower for kw in ['cloud', 'aws', 'azure', 'k8s', 'docker']):
                categorized['云服务'].append(domain)
            elif any(kw in domain_lower for kw in ['mobile', 'app', 'android', 'ios']):
                categorized['移动应用'].append(domain)
            elif any(kw in domain_lower for kw in ['internal', 'intranet', 'private', 'vpn']):
                categorized['内部系统'].append(domain)
            else:
                categorized['其他服务'].append(domain)
        
        # 输出统计
        print(f"\n[统计信息]")
        print(f"  总域名数: {len(all_domains)}")
        print(f"  IP地址数: {len(self.results['ips'])}")
        print(f"  技术栈: {len(self.results['technologies'])}")
        print(f"  潜在漏洞: {len(self.results['vulnerabilities'])}")
        print(f"  API端点: {len(self.results['api_endpoints'])}")
        print(f"  云资产: {len(self.results['cloud_assets'])}")
        
        # 输出分类结果
        print(f"\n[域名分类]")
        for category, domains in categorized.items():
            if domains:
                print(f"\n{category} ({len(domains)}个):")
                for domain in sorted(set(domains))[:20]:  # 每类最多显示20个
                    print(f"  - {domain}")
                if len(domains) > 20:
                    print(f"  ... 还有 {len(domains)-20} 个")
        
        # 输出IP段
        print(f"\n[IP地址段]")
        ip_segments = {}
        for ip in self.results['ips']:
            segment = '.'.join(ip.split('.')[:3]) + '.0/24'
            if segment not in ip_segments:
                ip_segments[segment] = []
            ip_segments[segment].append(ip)
        
        for segment, ips in sorted(ip_segments.items()):
            print(f"  {segment}: {len(ips)} 个IP")
        
        # 输出技术栈
        if self.results['technologies']:
            print(f"\n[技术栈]")
            for tech in sorted(self.results['technologies']):
                print(f"  - {tech}")
        
        # 输出漏洞
        if self.results['vulnerabilities']:
            print(f"\n[潜在漏洞]")
            for vuln in self.results['vulnerabilities']:
                print(f"  - {vuln['type']}: {vuln['url']} ({vuln['severity']})")
        
        # 输出云资产
        if self.results['cloud_assets']:
            print(f"\n[云资产]")
            for asset in sorted(self.results['cloud_assets']):
                print(f"  - {asset}")
        
        # 保存完整报告
        final_report = {
            'scan_time': datetime.now().isoformat(),
            'target': 'ems.com.vn',
            'statistics': {
                'total_domains': len(all_domains),
                'total_ips': len(self.results['ips']),
                'technologies': len(self.results['technologies']),
                'vulnerabilities': len(self.results['vulnerabilities']),
                'api_endpoints': len(self.results['api_endpoints']),
                'cloud_assets': len(self.results['cloud_assets'])
            },
            'categorized_domains': {k: sorted(list(set(v))) for k, v in categorized.items()},
            'all_domains': sorted(list(all_domains)),
            'all_ips': sorted(list(self.results['ips'])),
            'technologies': list(self.results['technologies']),
            'vulnerabilities': self.results['vulnerabilities'],
            'api_endpoints': list(self.results['api_endpoints']),
            'admin_panels': list(self.results['admin_panels']),
            'dev_environments': list(self.results['dev_environments']),
            'cloud_assets': list(self.results['cloud_assets']),
            'github_queries': list(self.results['github_repos'])
        }
        
        report_file = f"ultimate_ems_recon_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        with open(report_file, 'w', encoding='utf-8') as f:
            json.dump(final_report, f, ensure_ascii=False, indent=2)
        
        print(f"\n[+] 完整报告已保存: {report_file}")
        
        # 高价值目标
        print(f"\n[高价值目标推荐]")
        high_value = []
        
        # 开发测试环境（通常安全性较弱）
        for domain in categorized['开发测试环境'][:5]:
            high_value.append(f"DEV: {domain}")
        
        # API端点（可能存在认证问题）
        for domain in categorized['API端点'][:5]:
            high_value.append(f"API: {domain}")
        
        # 管理后台（可能存在弱密码）
        for domain in categorized['管理后台'][:5]:
            high_value.append(f"ADMIN: {domain}")
        
        for target in high_value:
            print(f"  ★ {target}")
        
        return final_report

# 执行终极侦察
recon = UltimateRecon()

print("[*] 开始终极深度侦察...")

# 1. 证书透明度
recon.certificate_transparency()

# 2. 大规模DNS枚举
recon.dns_enumeration()

# 3. 反向IP查询
recon.reverse_ip_lookup()

# 4. Wayback Machine
recon.wayback_machine_deep()

# 5. 云资产发现
recon.cloud_assets_discovery()

# 6. 技术指纹
recon.technology_fingerprinting()

# 7. 漏洞模式
recon.vulnerability_patterns()

# 8. GitHub搜索
recon.github_search()

# 9. 邮箱收集
recon.email_harvesting()

# 生成最终报告
final_report = recon.generate_final_report()

print(f"\n[!] 侦察完成！")
print(f"[!] 请务必检查 GitHub 搜索结果")
print(f"[!] 建议使用专业工具进行进一步验证")