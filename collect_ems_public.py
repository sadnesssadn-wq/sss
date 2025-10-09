#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
EMS.COM.VN 公开信息收集脚本（无需 API 密钥）
使用公开的方法收集资产信息：
- DNS 查询
- 证书透明度日志 (crt.sh)
- 子域名枚举
- WHOIS 信息
"""

import requests
import json
import socket
import ssl
import subprocess
from datetime import datetime
from typing import List, Dict, Set
import re


class PublicAssetCollector:
    """公开资产收集器（无需 API 密钥）"""
    
    def __init__(self, domain: str):
        self.domain = domain
        self.results = {
            'target': domain,
            'timestamp': datetime.now().strftime('%Y-%m-%d %H:%M:%S'),
            'dns_records': {},
            'subdomains': set(),
            'ip_addresses': set(),
            'ssl_certificates': [],
            'http_responses': {},
            'statistics': {}
        }
    
    def dns_lookup(self):
        """DNS 查询"""
        print("\n" + "="*60)
        print("1. DNS 记录查询")
        print("="*60)
        
        record_types = ['A', 'AAAA', 'MX', 'NS', 'TXT', 'CNAME']
        
        for record_type in record_types:
            try:
                cmd = ['dig', '+short', self.domain, record_type]
                result = subprocess.run(cmd, capture_output=True, text=True, timeout=10)
                
                if result.returncode == 0 and result.stdout.strip():
                    records = [line.strip() for line in result.stdout.strip().split('\n') if line.strip()]
                    self.results['dns_records'][record_type] = records
                    print(f"  {record_type}: {len(records)} 条记录")
                    
                    # 提取 IP 地址
                    if record_type in ['A', 'AAAA']:
                        for record in records:
                            self.results['ip_addresses'].add(record)
            except Exception as e:
                print(f"  {record_type}: 查询失败 - {str(e)}")
        
        print(f"✓ DNS 查询完成")
    
    def certificate_transparency(self):
        """证书透明度日志查询 (crt.sh)"""
        print("\n" + "="*60)
        print("2. 证书透明度日志查询 (crt.sh)")
        print("="*60)
        
        try:
            url = f"https://crt.sh/"
            params = {
                'q': f'%.{self.domain}',
                'output': 'json'
            }
            
            print(f"  正在查询 crt.sh...")
            response = requests.get(url, params=params, timeout=30)
            
            if response.status_code == 200:
                data = response.json()
                
                subdomains = set()
                for entry in data:
                    name_value = entry.get('name_value', '')
                    # 处理多个域名（用换行符分隔）
                    for name in name_value.split('\n'):
                        name = name.strip().lower()
                        # 移除通配符
                        name = name.replace('*.', '')
                        if name.endswith(self.domain) and name not in ['', self.domain]:
                            subdomains.add(name)
                            self.results['subdomains'].add(name)
                
                print(f"  发现子域名: {len(subdomains)} 个")
                
                # 保存证书信息
                for entry in data[:10]:  # 只保存前10个证书详情
                    cert_info = {
                        'issuer': entry.get('issuer_name', ''),
                        'common_name': entry.get('common_name', ''),
                        'not_before': entry.get('not_before', ''),
                        'not_after': entry.get('not_after', '')
                    }
                    self.results['ssl_certificates'].append(cert_info)
                
                print(f"✓ 证书查询完成")
            else:
                print(f"  查询失败: HTTP {response.status_code}")
                
        except Exception as e:
            print(f"  查询异常: {str(e)}")
    
    def subdomain_bruteforce(self):
        """子域名爆破（常见前缀）"""
        print("\n" + "="*60)
        print("3. 子域名枚举（常见前缀）")
        print("="*60)
        
        common_prefixes = [
            'www', 'mail', 'webmail', 'smtp', 'pop', 'imap',
            'ftp', 'api', 'dev', 'test', 'staging', 'admin',
            'portal', 'app', 'mobile', 'cdn', 'static', 'assets',
            'img', 'images', 'blog', 'forum', 'shop', 'store',
            'vpn', 'remote', 'gateway', 'ns1', 'ns2', 'mx1', 'mx2'
        ]
        
        found = 0
        for prefix in common_prefixes:
            subdomain = f"{prefix}.{self.domain}"
            try:
                # 尝试 DNS 查询
                ip = socket.gethostbyname(subdomain)
                self.results['subdomains'].add(subdomain)
                self.results['ip_addresses'].add(ip)
                found += 1
                print(f"  ✓ {subdomain} -> {ip}")
            except socket.gaierror:
                pass
            except Exception as e:
                pass
        
        print(f"✓ 发现有效子域名: {found} 个")
    
    def check_http_services(self):
        """检查 HTTP/HTTPS 服务"""
        print("\n" + "="*60)
        print("4. HTTP/HTTPS 服务检查")
        print("="*60)
        
        domains_to_check = [self.domain] + list(self.results['subdomains'])[:10]  # 检查前10个子域名
        
        for domain in domains_to_check:
            for protocol in ['https', 'http']:
                try:
                    url = f"{protocol}://{domain}"
                    response = requests.get(url, timeout=10, verify=False, allow_redirects=True)
                    
                    info = {
                        'status_code': response.status_code,
                        'title': self._extract_title(response.text),
                        'server': response.headers.get('Server', 'Unknown'),
                        'content_length': len(response.content),
                        'final_url': response.url
                    }
                    
                    self.results['http_responses'][url] = info
                    print(f"  ✓ {url} [{response.status_code}] - {info['title'][:50]}")
                    break  # 如果 HTTPS 成功，不再尝试 HTTP
                    
                except requests.exceptions.SSLError:
                    if protocol == 'https':
                        continue  # HTTPS 失败，尝试 HTTP
                except Exception as e:
                    pass
        
        print(f"✓ HTTP 服务检查完成")
    
    def _extract_title(self, html: str) -> str:
        """从 HTML 中提取标题"""
        match = re.search(r'<title[^>]*>(.*?)</title>', html, re.IGNORECASE | re.DOTALL)
        if match:
            return match.group(1).strip()
        return 'No Title'
    
    def check_ssl_certificate(self):
        """获取 SSL 证书信息"""
        print("\n" + "="*60)
        print("5. SSL 证书信息")
        print("="*60)
        
        try:
            context = ssl.create_default_context()
            with socket.create_connection((self.domain, 443), timeout=10) as sock:
                with context.wrap_socket(sock, server_hostname=self.domain) as ssock:
                    cert = ssock.getpeercert()
                    
                    cert_info = {
                        'subject': dict(x[0] for x in cert['subject']),
                        'issuer': dict(x[0] for x in cert['issuer']),
                        'version': cert['version'],
                        'serial_number': cert['serialNumber'],
                        'not_before': cert['notBefore'],
                        'not_after': cert['notAfter'],
                        'subjectAltName': cert.get('subjectAltName', [])
                    }
                    
                    print(f"  颁发给: {cert_info['subject'].get('commonName', 'N/A')}")
                    print(f"  颁发者: {cert_info['issuer'].get('organizationName', 'N/A')}")
                    print(f"  有效期: {cert_info['not_before']} - {cert_info['not_after']}")
                    
                    # 从证书的 SAN 中提取更多域名
                    for san_type, san_value in cert.get('subjectAltName', []):
                        if san_type == 'DNS' and san_value.endswith(self.domain):
                            self.results['subdomains'].add(san_value)
                    
                    self.results['ssl_certificates'].insert(0, cert_info)
                    print(f"✓ SSL 证书信息获取完成")
                    
        except Exception as e:
            print(f"  获取失败: {str(e)}")
    
    def port_scan(self):
        """简单端口扫描（常见端口）"""
        print("\n" + "="*60)
        print("6. 常见端口扫描")
        print("="*60)
        
        common_ports = [21, 22, 23, 25, 53, 80, 110, 143, 443, 465, 587, 993, 995, 3306, 3389, 5432, 8080, 8443]
        
        if not self.results['ip_addresses']:
            print("  未发现 IP 地址，跳过端口扫描")
            return
        
        ip = list(self.results['ip_addresses'])[0]  # 扫描第一个 IP
        open_ports = []
        
        print(f"  扫描 IP: {ip}")
        for port in common_ports:
            try:
                sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                sock.settimeout(2)
                result = sock.connect_ex((ip, port))
                if result == 0:
                    open_ports.append(port)
                    print(f"    ✓ 端口 {port} 开放")
                sock.close()
            except Exception as e:
                pass
        
        self.results['open_ports'] = open_ports
        print(f"✓ 发现开放端口: {len(open_ports)} 个")
    
    def generate_statistics(self):
        """生成统计信息"""
        self.results['statistics'] = {
            'subdomains_count': len(self.results['subdomains']),
            'ip_count': len(self.results['ip_addresses']),
            'dns_record_types': len(self.results['dns_records']),
            'http_services': len(self.results['http_responses']),
            'ssl_certificates': len(self.results['ssl_certificates']),
            'open_ports': len(self.results.get('open_ports', []))
        }
    
    def export_results(self):
        """导出结果"""
        print("\n" + "="*60)
        print("7. 导出结果")
        print("="*60)
        
        # 转换 set 为 list
        export_data = {
            'target': self.results['target'],
            'timestamp': self.results['timestamp'],
            'statistics': self.results['statistics'],
            'dns_records': self.results['dns_records'],
            'subdomains': sorted(list(self.results['subdomains'])),
            'ip_addresses': sorted(list(self.results['ip_addresses'])),
            'open_ports': self.results.get('open_ports', []),
            'ssl_certificates': self.results['ssl_certificates'],
            'http_responses': self.results['http_responses']
        }
        
        # 完整数据
        filename_full = f"ems_public_full_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        with open(filename_full, 'w', encoding='utf-8') as f:
            json.dump(export_data, f, ensure_ascii=False, indent=2)
        print(f"✓ 完整数据已保存: {filename_full}")
        
        # 摘要
        summary = {
            'target': export_data['target'],
            'timestamp': export_data['timestamp'],
            'statistics': export_data['statistics'],
            'subdomains': export_data['subdomains'],
            'ip_addresses': export_data['ip_addresses'],
            'open_ports': export_data.get('open_ports', [])
        }
        
        filename_summary = f"ems_public_summary_{datetime.now().strftime('%Y%m%d_%H%M%S')}.txt"
        with open(filename_summary, 'w', encoding='utf-8') as f:
            f.write("="*60 + "\n")
            f.write(f"EMS.COM.VN 资产收集摘要（公开信息）\n")
            f.write("="*60 + "\n")
            f.write(f"目标: {summary['target']}\n")
            f.write(f"时间: {summary['timestamp']}\n\n")
            f.write("统计信息:\n")
            f.write(f"  子域名数: {summary['statistics']['subdomains_count']}\n")
            f.write(f"  IP 地址数: {summary['statistics']['ip_count']}\n")
            f.write(f"  开放端口: {summary['statistics']['open_ports']}\n")
            f.write(f"  HTTP 服务: {summary['statistics']['http_services']}\n\n")
            
            f.write("发现的子域名:\n")
            for sd in summary['subdomains']:
                f.write(f"  - {sd}\n")
            
            f.write("\n发现的 IP 地址:\n")
            for ip in summary['ip_addresses']:
                f.write(f"  - {ip}\n")
            
            if summary['open_ports']:
                f.write("\n开放的端口:\n")
                for port in summary['open_ports']:
                    f.write(f"  - {port}\n")
        
        print(f"✓ 摘要已保存: {filename_summary}")
        
        return filename_full, filename_summary
    
    def print_summary(self):
        """打印摘要"""
        print("\n" + "="*60)
        print("资产收集摘要 - EMS.COM.VN (公开信息)")
        print("="*60)
        print(f"目标域名: {self.results['target']}")
        print(f"收集时间: {self.results['timestamp']}")
        print(f"\n统计信息:")
        print(f"  子域名: {self.results['statistics']['subdomains_count']} 个")
        print(f"  IP 地址: {self.results['statistics']['ip_count']} 个")
        print(f"  DNS 记录类型: {self.results['statistics']['dns_record_types']} 种")
        print(f"  HTTP 服务: {self.results['statistics']['http_services']} 个")
        print(f"  SSL 证书: {self.results['statistics']['ssl_certificates']} 个")
        print(f"  开放端口: {self.results['statistics']['open_ports']} 个")
        print("="*60)
    
    def run(self):
        """执行收集"""
        print("\n" + "#"*60)
        print("# EMS.COM.VN 公开信息收集")
        print("# (无需 API 密钥)")
        print("#"*60)
        
        try:
            self.dns_lookup()
            self.certificate_transparency()
            self.subdomain_bruteforce()
            self.check_ssl_certificate()
            self.check_http_services()
            self.port_scan()
            
            self.generate_statistics()
            self.print_summary()
            self.export_results()
            
            print("\n" + "#"*60)
            print("# 收集完成！")
            print("#"*60)
            
        except KeyboardInterrupt:
            print("\n[中断] 用户取消")
        except Exception as e:
            print(f"\n[错误] {str(e)}")
            import traceback
            traceback.print_exc()


def main():
    collector = PublicAssetCollector("ems.com.vn")
    collector.run()


if __name__ == "__main__":
    main()
