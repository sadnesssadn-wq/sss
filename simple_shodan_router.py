#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
简化的Shodan路由器搜索工具
基于有效的API密钥进行搜索
"""

import requests
import json
import time
from datetime import datetime

class SimpleShodanRouter:
    def __init__(self, api_key):
        self.api_key = api_key
        self.base_url = "https://api.shodan.io"
        self.session = requests.Session()
        self.session.headers.update({
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
        })
    
    def search_routers(self, country_code, limit=100):
        """搜索指定国家的路由器"""
        print(f"\n🔍 搜索 {country_code} 的路由器...")
        
        # 路由器相关的搜索查询
        queries = [
            f'country:{country_code} title:"router"',
            f'country:{country_code} title:"gateway"',
            f'country:{country_code} product:"router"',
            f'country:{country_code} title:"TP-Link"',
            f'country:{country_code} title:"D-Link"',
            f'country:{country_code} title:"Tenda"',
            f'country:{country_code} title:"Cisco"',
            f'country:{country_code} title:"Netgear"',
            f'country:{country_code} title:"ASUS"',
            f'country:{country_code} port:80 title:"admin"',
            f'country:{country_code} port:8080',
            f'country:{country_code} port:443 title:"login"'
        ]
        
        all_results = []
        
        for i, query in enumerate(queries):
            try:
                print(f"   查询 {i+1}/{len(queries)}: {query}")
                
                url = f"{self.base_url}/shodan/host/search"
                params = {
                    'key': self.api_key,
                    'query': query,
                    'facets': 'port,country,city,org',
                    'limit': min(limit // len(queries), 50)
                }
                
                response = self.session.get(url, params=params, timeout=30)
                
                if response.status_code == 200:
                    data = response.json()
                    matches = data.get('matches', [])
                    
                    for match in matches:
                        result = {
                            'ip': match.get('ip_str', ''),
                            'port': match.get('port', 0),
                            'country': match.get('location', {}).get('country_name', ''),
                            'city': match.get('location', {}).get('city', ''),
                            'title': match.get('title', ''),
                            'product': match.get('product', ''),
                            'version': match.get('version', ''),
                            'org': match.get('org', ''),
                            'isp': match.get('isp', ''),
                            'timestamp': match.get('timestamp', ''),
                            'vulnerabilities': match.get('vulns', []),
                            'query_used': query
                        }
                        all_results.append(result)
                    
                    print(f"   ✅ 找到 {len(matches)} 个结果")
                else:
                    print(f"   ❌ 查询失败: {response.status_code}")
                
                # API限制保护
                time.sleep(1)
                
            except Exception as e:
                print(f"   ❌ 查询出错: {e}")
                continue
        
        # 去重
        unique_results = []
        seen_ips = set()
        for result in all_results:
            if result['ip'] not in seen_ips:
                unique_results.append(result)
                seen_ips.add(result['ip'])
        
        print(f"   📊 去重后共找到 {len(unique_results)} 个唯一设备")
        return unique_results
    
    def identify_router_brand(self, result):
        """识别路由器品牌"""
        title = result['title'].lower()
        product = result['product'].lower()
        
        # TP-Link
        if any(keyword in title for keyword in ['tp-link', 'tplink', 'archer', 'tl-wr', 'tl-wa']):
            return 'TP-Link'
        
        # D-Link
        if any(keyword in title for keyword in ['d-link', 'dlink', 'dir-', 'dgs-']):
            return 'D-Link'
        
        # Tenda
        if any(keyword in title for keyword in ['tenda', 'ac6', 'ac9', 'n301']):
            return 'Tenda'
        
        # Cisco
        if any(keyword in title for keyword in ['cisco', 'rv320', 'rv340', 'wrt']):
            return 'Cisco'
        
        # Netgear
        if any(keyword in title for keyword in ['netgear', 'r7000', 'wndr']):
            return 'Netgear'
        
        # ASUS
        if any(keyword in title for keyword in ['asus', 'rt-', 'ac68u']):
            return 'ASUS'
        
        # 通用路由器
        if any(keyword in title for keyword in ['router', 'gateway', 'admin', 'login']):
            return 'Generic Router'
        
        return 'Unknown'
    
    def analyze_results(self, results):
        """分析结果"""
        if not results:
            return {}
        
        analysis = {
            'total_devices': len(results),
            'brand_distribution': {},
            'port_distribution': {},
            'country_distribution': {},
            'organization_distribution': {},
            'vulnerable_devices': 0,
            'common_ports': [],
            'security_issues': {
                'default_credentials': 0,
                'open_ports': 0,
                'vulnerabilities': 0
            }
        }
        
        for result in results:
            # 识别品牌
            brand = self.identify_router_brand(result)
            analysis['brand_distribution'][brand] = analysis['brand_distribution'].get(brand, 0) + 1
            
            # 统计端口
            port = result['port']
            analysis['port_distribution'][port] = analysis['port_distribution'].get(port, 0) + 1
            
            # 统计国家
            country = result['country']
            analysis['country_distribution'][country] = analysis['country_distribution'].get(country, 0) + 1
            
            # 统计组织
            org = result['org']
            if org:
                analysis['organization_distribution'][org] = analysis['organization_distribution'].get(org, 0) + 1
            
            # 安全分析
            if result['vulnerabilities']:
                analysis['vulnerable_devices'] += 1
                analysis['security_issues']['vulnerabilities'] += len(result['vulnerabilities'])
            
            # 检查开放端口
            if result['port'] in [80, 8080, 443, 8443, 23, 21, 22]:
                analysis['security_issues']['open_ports'] += 1
            
            # 检查可能的默认凭据
            title = result['title'].lower()
            if any(keyword in title for keyword in ['admin', 'login', 'router', 'gateway']):
                analysis['security_issues']['default_credentials'] += 1
        
        # 获取常用端口
        analysis['common_ports'] = sorted(
            analysis['port_distribution'].items(), 
            key=lambda x: x[1], 
            reverse=True
        )[:10]
        
        return analysis
    
    def print_analysis(self, country_name, results, analysis):
        """打印分析结果"""
        print(f"\n🇰🇭 {country_name} 路由器分析结果:")
        print(f"   总设备数: {analysis['total_devices']:,}")
        
        if analysis['brand_distribution']:
            print(f"\n   品牌分布:")
            for brand, count in sorted(analysis['brand_distribution'].items(), key=lambda x: x[1], reverse=True):
                percentage = (count / analysis['total_devices']) * 100
                print(f"     {brand}: {count} 台 ({percentage:.1f}%)")
        
        if analysis['common_ports']:
            print(f"\n   常用端口:")
            for port, count in analysis['common_ports'][:5]:
                print(f"     端口 {port}: {count} 台")
        
        if analysis['organization_distribution']:
            print(f"\n   主要ISP/组织:")
            for org, count in sorted(analysis['organization_distribution'].items(), key=lambda x: x[1], reverse=True)[:5]:
                print(f"     {org}: {count} 台")
        
        print(f"\n   安全指标:")
        print(f"     有漏洞设备: {analysis['vulnerable_devices']} 台")
        print(f"     开放端口设备: {analysis['security_issues']['open_ports']} 台")
        print(f"     可能默认凭据: {analysis['security_issues']['default_credentials']} 台")
    
    def save_results(self, results, filename):
        """保存结果到文件"""
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump(results, f, ensure_ascii=False, indent=2)
        print(f"💾 结果已保存到: {filename}")

def main():
    """主函数"""
    print("🚀 启动简化的Shodan路由器搜索工具")
    print("⚠️  注意: 此工具仅用于安全研究和教育目的")
    
    api_key = "8U3fd9BSqyzentffLrhocQm7rSvy44jx"
    scanner = SimpleShodanRouter(api_key)
    
    # 搜索柬埔寨
    cambodia_results = scanner.search_routers('KH', limit=200)
    cambodia_analysis = scanner.analyze_results(cambodia_results)
    scanner.print_analysis('柬埔寨', cambodia_results, cambodia_analysis)
    
    # 搜索泰国
    thailand_results = scanner.search_routers('TH', limit=200)
    thailand_analysis = scanner.analyze_results(thailand_results)
    scanner.print_analysis('泰国', thailand_results, thailand_analysis)
    
    # 保存结果
    all_results = {
        'cambodia': {
            'results': cambodia_results,
            'analysis': cambodia_analysis
        },
        'thailand': {
            'results': thailand_results,
            'analysis': thailand_analysis
        },
        'timestamp': datetime.now().isoformat()
    }
    
    scanner.save_results(all_results, 'shodan_router_analysis.json')
    
    # 显示一些具体例子
    print(f"\n📋 柬埔寨路由器示例:")
    for i, result in enumerate(cambodia_results[:5]):
        brand = scanner.identify_router_brand(result)
        print(f"   {i+1}. {result['ip']}:{result['port']} - {brand} - {result['title']}")
    
    print(f"\n📋 泰国路由器示例:")
    for i, result in enumerate(thailand_results[:5]):
        brand = scanner.identify_router_brand(result)
        print(f"   {i+1}. {result['ip']}:{result['port']} - {brand} - {result['title']}")

if __name__ == "__main__":
    main()