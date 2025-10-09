#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
EMS.COM.VN 资产收集专项脚本
全面收集目标域名的资产信息，包括：
- 主域名资产
- 子域名枚举
- IP 段资产
- 边缘资产
- 相关组织资产
"""

import requests
import json
import base64
import time
from datetime import datetime
from typing import List, Dict, Set
import sys


class EMSAssetCollector:
    """EMS.COM.VN 资产收集器"""
    
    def __init__(self, fofa_email=None, fofa_key=None, shodan_key=None):
        self.target_domain = "ems.com.vn"
        self.fofa_email = fofa_email
        self.fofa_key = fofa_key
        self.shodan_key = shodan_key
        
        self.all_assets = {
            'target': self.target_domain,
            'timestamp': datetime.now().strftime('%Y-%m-%d %H:%M:%S'),
            'main_domain': [],
            'subdomains': [],
            'ip_addresses': set(),
            'ports': set(),
            'services': [],
            'organizations': set(),
            'edge_assets': [],
            'statistics': {}
        }
    
    def fofa_search(self, query: str, size: int = 1000) -> List[Dict]:
        """执行 FOFA 查询"""
        if not self.fofa_email or not self.fofa_key:
            print("[警告] FOFA API 未配置，跳过 FOFA 查询")
            return []
        
        try:
            qbase64 = base64.b64encode(query.encode()).decode()
            url = "https://fofa.info/api/v1/search/all"
            
            params = {
                'email': self.fofa_email,
                'key': self.fofa_key,
                'qbase64': qbase64,
                'size': size,
                'fields': 'host,ip,port,domain,title,country,city,protocol,server,cert,banner',
                'full': 'true'
            }
            
            print(f"[FOFA] 查询: {query}")
            response = requests.get(url, params=params, timeout=30)
            
            if response.status_code == 200:
                data = response.json()
                if data.get('error'):
                    print(f"[FOFA] 错误: {data.get('errmsg')}")
                    return []
                
                results = []
                fields = ['host', 'ip', 'port', 'domain', 'title', 'country', 'city', 
                         'protocol', 'server', 'cert', 'banner']
                
                for item in data.get('results', []):
                    result = {}
                    for i, field in enumerate(fields):
                        result[field] = item[i] if i < len(item) else None
                    results.append(result)
                
                print(f"[FOFA] 找到 {len(results)} 条结果")
                return results
            else:
                print(f"[FOFA] HTTP 错误: {response.status_code}")
                return []
                
        except Exception as e:
            print(f"[FOFA] 异常: {str(e)}")
            return []
    
    def shodan_search(self, query: str, limit: int = 1000) -> List[Dict]:
        """执行 Shodan 查询"""
        if not self.shodan_key:
            print("[警告] Shodan API 未配置，跳过 Shodan 查询")
            return []
        
        try:
            url = "https://api.shodan.io/shodan/host/search"
            params = {
                'key': self.shodan_key,
                'query': query,
                'limit': limit
            }
            
            print(f"[Shodan] 查询: {query}")
            response = requests.get(url, params=params, timeout=30)
            
            if response.status_code == 200:
                data = response.json()
                results = []
                
                for match in data.get('matches', []):
                    result = {
                        'ip': match.get('ip_str'),
                        'port': match.get('port'),
                        'transport': match.get('transport'),
                        'domains': match.get('hostnames', []),
                        'org': match.get('org', ''),
                        'isp': match.get('isp', ''),
                        'country': match.get('location', {}).get('country_name', ''),
                        'city': match.get('location', {}).get('city', ''),
                        'product': match.get('product', ''),
                        'version': match.get('version', ''),
                        'data': match.get('data', '')
                    }
                    results.append(result)
                
                print(f"[Shodan] 找到 {len(results)} 条结果")
                return results
            else:
                print(f"[Shodan] HTTP 错误: {response.status_code}")
                return []
                
        except Exception as e:
            print(f"[Shodan] 异常: {str(e)}")
            return []
    
    def collect_main_domain(self):
        """收集主域名资产"""
        print("\n" + "="*60)
        print("1. 收集主域名资产 (ems.com.vn)")
        print("="*60)
        
        # FOFA 查询
        fofa_queries = [
            f'domain="{self.target_domain}"',
            f'host="{self.target_domain}"',
        ]
        
        for query in fofa_queries:
            results = self.fofa_search(query, 1000)
            for r in results:
                self.all_assets['main_domain'].append(r)
                if r.get('ip'):
                    self.all_assets['ip_addresses'].add(r['ip'])
                if r.get('port'):
                    self.all_assets['ports'].add(str(r['port']))
        
        # Shodan 查询
        shodan_query = f'hostname:{self.target_domain}'
        results = self.shodan_search(shodan_query, 1000)
        for r in results:
            self.all_assets['main_domain'].append(r)
            if r.get('ip'):
                self.all_assets['ip_addresses'].add(r['ip'])
            if r.get('port'):
                self.all_assets['ports'].add(str(r['port']))
        
        print(f"✓ 主域名资产收集完成: {len(self.all_assets['main_domain'])} 条")
    
    def collect_subdomains(self):
        """收集子域名"""
        print("\n" + "="*60)
        print("2. 收集子域名")
        print("="*60)
        
        # FOFA 查询所有子域名
        fofa_queries = [
            f'domain="{self.target_domain}"',  # 会包含所有子域名
        ]
        
        subdomains = set()
        
        for query in fofa_queries:
            results = self.fofa_search(query, 1000)
            for r in results:
                domain = r.get('domain')
                if domain and domain.endswith(self.target_domain):
                    subdomains.add(domain)
                    self.all_assets['subdomains'].append(r)
                    if r.get('ip'):
                        self.all_assets['ip_addresses'].add(r['ip'])
        
        # Shodan 查询
        shodan_query = f'hostname:.{self.target_domain}'
        results = self.shodan_search(shodan_query, 1000)
        for r in results:
            for domain in r.get('domains', []):
                if domain.endswith(self.target_domain):
                    subdomains.add(domain)
            self.all_assets['subdomains'].append(r)
            if r.get('ip'):
                self.all_assets['ip_addresses'].add(r['ip'])
        
        print(f"✓ 发现子域名: {len(subdomains)} 个")
        print(f"  子域名列表: {sorted(subdomains)}")
    
    def collect_ip_assets(self):
        """基于已发现的 IP 收集更多资产"""
        print("\n" + "="*60)
        print("3. 收集 IP 段相关资产")
        print("="*60)
        
        if not self.all_assets['ip_addresses']:
            print("  未发现 IP，跳过此步骤")
            return
        
        # 分析 IP 段
        ip_list = list(self.all_assets['ip_addresses'])[:5]  # 取前 5 个 IP
        
        for ip in ip_list:
            # 查询同 C 段
            ip_prefix = '.'.join(ip.split('.')[:3])
            
            # FOFA 查询
            query = f'ip="{ip_prefix}.*"'
            results = self.fofa_search(query, 100)
            
            for r in results:
                if r not in self.all_assets['edge_assets']:
                    self.all_assets['edge_assets'].append(r)
                    if r.get('ip'):
                        self.all_assets['ip_addresses'].add(r['ip'])
            
            time.sleep(1)  # 避免请求过快
        
        print(f"✓ IP 段资产收集完成: {len(self.all_assets['edge_assets'])} 条")
    
    def collect_org_assets(self):
        """收集相关组织的资产"""
        print("\n" + "="*60)
        print("4. 收集组织相关资产")
        print("="*60)
        
        # 从已有结果中提取组织信息
        orgs = set()
        
        # 从证书信息中提取组织
        for asset in self.all_assets['main_domain'] + self.all_assets['subdomains']:
            if isinstance(asset, dict):
                cert = asset.get('cert', '')
                if cert and 'O=' in cert:
                    # 简单提取组织名
                    org = cert.split('O=')[1].split(',')[0] if 'O=' in cert else ''
                    if org:
                        orgs.add(org)
                
                # Shodan 结果中的组织
                org = asset.get('org', '')
                if org:
                    orgs.add(org)
        
        self.all_assets['organizations'] = orgs
        
        print(f"✓ 发现组织: {len(orgs)} 个")
        if orgs:
            print(f"  组织列表: {sorted(orgs)}")
    
    def collect_services(self):
        """整理服务信息"""
        print("\n" + "="*60)
        print("5. 整理服务信息")
        print("="*60)
        
        services = {}
        
        all_results = (self.all_assets['main_domain'] + 
                      self.all_assets['subdomains'] + 
                      self.all_assets['edge_assets'])
        
        for asset in all_results:
            if isinstance(asset, dict):
                port = asset.get('port')
                protocol = asset.get('protocol') or asset.get('transport', '')
                server = asset.get('server') or asset.get('product', '')
                
                if port:
                    key = f"{port}/{protocol}"
                    if key not in services:
                        services[key] = {
                            'port': port,
                            'protocol': protocol,
                            'servers': set(),
                            'count': 0
                        }
                    
                    if server:
                        services[key]['servers'].add(server)
                    services[key]['count'] += 1
        
        self.all_assets['services'] = [
            {
                'port': v['port'],
                'protocol': v['protocol'],
                'servers': list(v['servers']),
                'count': v['count']
            }
            for v in services.values()
        ]
        
        print(f"✓ 发现服务: {len(services)} 种")
    
    def generate_statistics(self):
        """生成统计信息"""
        self.all_assets['statistics'] = {
            'total_assets': (len(self.all_assets['main_domain']) + 
                           len(self.all_assets['subdomains']) + 
                           len(self.all_assets['edge_assets'])),
            'unique_ips': len(self.all_assets['ip_addresses']),
            'unique_ports': len(self.all_assets['ports']),
            'subdomains_count': len(set([
                r.get('domain') for r in self.all_assets['subdomains'] 
                if isinstance(r, dict) and r.get('domain')
            ])),
            'services_count': len(self.all_assets['services']),
            'organizations_count': len(self.all_assets['organizations'])
        }
    
    def export_results(self):
        """导出结果"""
        print("\n" + "="*60)
        print("6. 导出结果")
        print("="*60)
        
        # 转换 set 为 list 以便 JSON 序列化
        export_data = {
            'target': self.all_assets['target'],
            'timestamp': self.all_assets['timestamp'],
            'statistics': self.all_assets['statistics'],
            'ip_addresses': sorted(list(self.all_assets['ip_addresses'])),
            'ports': sorted(list(self.all_assets['ports']), key=lambda x: int(x) if x.isdigit() else 0),
            'organizations': sorted(list(self.all_assets['organizations'])),
            'services': self.all_assets['services'],
            'main_domain': self.all_assets['main_domain'],
            'subdomains': self.all_assets['subdomains'],
            'edge_assets': self.all_assets['edge_assets']
        }
        
        # 导出完整 JSON
        filename_full = f"ems_com_vn_assets_full_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        with open(filename_full, 'w', encoding='utf-8') as f:
            json.dump(export_data, f, ensure_ascii=False, indent=2)
        print(f"✓ 完整数据已保存: {filename_full}")
        
        # 导出摘要
        summary = {
            'target': export_data['target'],
            'timestamp': export_data['timestamp'],
            'statistics': export_data['statistics'],
            'ip_addresses': export_data['ip_addresses'],
            'ports': export_data['ports'],
            'organizations': export_data['organizations'],
            'subdomains': sorted(list(set([
                r.get('domain') for r in self.all_assets['subdomains'] 
                if isinstance(r, dict) and r.get('domain')
            ]))),
            'services': export_data['services']
        }
        
        filename_summary = f"ems_com_vn_summary_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        with open(filename_summary, 'w', encoding='utf-8') as f:
            json.dump(summary, f, ensure_ascii=False, indent=2)
        print(f"✓ 摘要数据已保存: {filename_summary}")
        
        return filename_full, filename_summary
    
    def print_summary(self):
        """打印收集摘要"""
        print("\n" + "="*60)
        print("资产收集摘要 - EMS.COM.VN")
        print("="*60)
        print(f"目标域名: {self.all_assets['target']}")
        print(f"收集时间: {self.all_assets['timestamp']}")
        print(f"\n统计信息:")
        print(f"  总资产数: {self.all_assets['statistics']['total_assets']}")
        print(f"  独立 IP: {self.all_assets['statistics']['unique_ips']}")
        print(f"  开放端口: {self.all_assets['statistics']['unique_ports']}")
        print(f"  子域名数: {self.all_assets['statistics']['subdomains_count']}")
        print(f"  服务类型: {self.all_assets['statistics']['services_count']}")
        print(f"  相关组织: {self.all_assets['statistics']['organizations_count']}")
        print("="*60)
    
    def run(self):
        """执行完整的资产收集流程"""
        print("\n" + "#"*60)
        print("# EMS.COM.VN 资产收集开始")
        print("#"*60)
        
        try:
            # 1. 收集主域名
            self.collect_main_domain()
            time.sleep(2)
            
            # 2. 收集子域名
            self.collect_subdomains()
            time.sleep(2)
            
            # 3. 收集 IP 段资产
            self.collect_ip_assets()
            time.sleep(2)
            
            # 4. 收集组织资产
            self.collect_org_assets()
            
            # 5. 整理服务
            self.collect_services()
            
            # 6. 生成统计
            self.generate_statistics()
            
            # 7. 打印摘要
            self.print_summary()
            
            # 8. 导出结果
            files = self.export_results()
            
            print("\n" + "#"*60)
            print("# 资产收集完成！")
            print("#"*60)
            
            return files
            
        except KeyboardInterrupt:
            print("\n\n[中断] 用户取消操作")
            sys.exit(0)
        except Exception as e:
            print(f"\n[错误] {str(e)}")
            import traceback
            traceback.print_exc()
            sys.exit(1)


def main():
    """主函数"""
    print("EMS.COM.VN 资产收集工具")
    print("="*60)
    
    # 尝试从配置文件加载
    fofa_email = None
    fofa_key = None
    shodan_key = None
    
    try:
        from config import FOFA_EMAIL, FOFA_KEY, SHODAN_KEY
        fofa_email = FOFA_EMAIL
        fofa_key = FOFA_KEY
        shodan_key = SHODAN_KEY
        print("✓ 已加载配置文件")
    except ImportError:
        print("⚠ 未找到 config.py，将仅使用公开信息收集")
        print("  提示: 复制 config.py.example 为 config.py 并配置 API 密钥以获得更多结果")
    
    # 初始化收集器
    collector = EMSAssetCollector(fofa_email, fofa_key, shodan_key)
    
    # 运行收集
    collector.run()


if __name__ == "__main__":
    main()
