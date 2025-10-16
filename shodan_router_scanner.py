#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
基于Shodan API的柬埔寨和泰国路由器扫描工具
使用真实数据进行路由器统计和分析
"""

import requests
import json
import time
from datetime import datetime
import csv

class ShodanRouterScanner:
    def __init__(self, api_key):
        self.api_key = api_key
        self.base_url = "https://api.shodan.io"
        self.session = requests.Session()
        self.session.headers.update({
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
        })
        
        # 路由器品牌特征库
        self.router_signatures = {
            'TP-Link': {
                'queries': [
                    'title:"TP-Link"',
                    'title:"tplink"',
                    'product:"TP-Link"',
                    'title:"Archer"',
                    'title:"TL-WR"',
                    'title:"TL-WA"'
                ],
                'patterns': ['tp-link', 'tplink', 'archer', 'tl-wr', 'tl-wa']
            },
            'D-Link': {
                'queries': [
                    'title:"D-Link"',
                    'title:"dlink"',
                    'product:"D-Link"',
                    'title:"DIR-"',
                    'title:"DGS-"'
                ],
                'patterns': ['d-link', 'dlink', 'dir-', 'dgs-']
            },
            'Tenda': {
                'queries': [
                    'title:"Tenda"',
                    'product:"Tenda"',
                    'title:"AC6"',
                    'title:"AC9"',
                    'title:"N301"'
                ],
                'patterns': ['tenda', 'ac6', 'ac9', 'n301']
            },
            'Cisco': {
                'queries': [
                    'title:"Cisco"',
                    'product:"Cisco"',
                    'title:"RV320"',
                    'title:"RV340"',
                    'title:"WRT"'
                ],
                'patterns': ['cisco', 'rv320', 'rv340', 'wrt']
            },
            'Netgear': {
                'queries': [
                    'title:"Netgear"',
                    'product:"Netgear"',
                    'title:"R7000"',
                    'title:"WNDR"'
                ],
                'patterns': ['netgear', 'r7000', 'wndr']
            },
            'ASUS': {
                'queries': [
                    'title:"ASUS"',
                    'product:"ASUS"',
                    'title:"RT-"',
                    'title:"AC68U"'
                ],
                'patterns': ['asus', 'rt-', 'ac68u']
            }
        }
        
        # 国家代码
        self.countries = {
            'Cambodia': 'KH',
            'Thailand': 'TH'
        }
    
    def search_routers(self, country, brand, limit=100):
        """搜索指定国家的路由器"""
        results = []
        
        for query_template in self.router_signatures[brand]['queries']:
            # 添加国家过滤
            query = f"{query_template} country:{self.countries[country]}"
            
            try:
                url = f"{self.base_url}/shodan/host/search"
                params = {
                    'key': self.api_key,
                    'query': query,
                    'facets': 'port,country,city',
                    'limit': limit
                }
                
                response = self.session.get(url, params=params, timeout=30)
                response.raise_for_status()
                
                data = response.json()
                
                if 'matches' in data:
                    for match in data['matches']:
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
                            'brand': brand,
                            'vulnerabilities': match.get('vulns', [])
                        }
                        results.append(result)
                
                # 避免API限制
                time.sleep(1)
                
            except requests.exceptions.RequestException as e:
                print(f"❌ 搜索 {brand} 时出错: {e}")
                continue
        
        return results
    
    def scan_country_routers(self, country, limit_per_brand=50):
        """扫描指定国家的所有路由器品牌"""
        print(f"\n🔍 开始扫描 {country} 的路由器...")
        
        all_results = []
        brand_stats = {}
        
        for brand in self.router_signatures.keys():
            print(f"   正在搜索 {brand}...")
            results = self.search_routers(country, brand, limit_per_brand)
            
            if results:
                all_results.extend(results)
                brand_stats[brand] = len(results)
                print(f"   ✅ 发现 {len(results)} 台 {brand} 路由器")
            else:
                print(f"   ❌ 未发现 {brand} 路由器")
            
            # API限制保护
            time.sleep(2)
        
        return all_results, brand_stats
    
    def analyze_results(self, results):
        """分析扫描结果"""
        if not results:
            return {}
        
        analysis = {
            'total_routers': len(results),
            'brand_distribution': {},
            'port_distribution': {},
            'country_distribution': {},
            'vulnerable_routers': 0,
            'common_ports': [],
            'top_organizations': {},
            'security_issues': {
                'default_credentials': 0,
                'outdated_firmware': 0,
                'open_ports': 0,
                'vulnerabilities': 0
            }
        }
        
        # 统计品牌分布
        for result in results:
            brand = result['brand']
            analysis['brand_distribution'][brand] = analysis['brand_distribution'].get(brand, 0) + 1
        
        # 统计端口分布
        for result in results:
            port = result['port']
            analysis['port_distribution'][port] = analysis['port_distribution'].get(port, 0) + 1
        
        # 统计国家分布
        for result in results:
            country = result['country']
            analysis['country_distribution'][country] = analysis['country_distribution'].get(country, 0) + 1
        
        # 统计组织
        for result in results:
            org = result['org']
            if org:
                analysis['top_organizations'][org] = analysis['top_organizations'].get(org, 0) + 1
        
        # 安全分析
        for result in results:
            # 检查漏洞
            if result['vulnerabilities']:
                analysis['vulnerable_routers'] += 1
                analysis['security_issues']['vulnerabilities'] += len(result['vulnerabilities'])
            
            # 检查开放端口
            if result['port'] in [80, 8080, 443, 8443]:
                analysis['security_issues']['open_ports'] += 1
            
            # 检查默认凭据（基于标题特征）
            title_lower = result['title'].lower()
            if any(pattern in title_lower for pattern in ['admin', 'login', 'router', 'gateway']):
                analysis['security_issues']['default_credentials'] += 1
        
        # 获取常用端口
        analysis['common_ports'] = sorted(
            analysis['port_distribution'].items(), 
            key=lambda x: x[1], 
            reverse=True
        )[:10]
        
        return analysis
    
    def generate_report(self, cambodia_results, thailand_results):
        """生成综合报告"""
        report = {
            'timestamp': datetime.now().isoformat(),
            'cambodia': {
                'results': cambodia_results[0],
                'brand_stats': cambodia_results[1],
                'analysis': self.analyze_results(cambodia_results[0])
            },
            'thailand': {
                'results': thailand_results[0],
                'brand_stats': thailand_results[1],
                'analysis': self.analyze_results(thailand_results[0])
            }
        }
        
        return report
    
    def print_report(self, report):
        """打印报告"""
        print("\n" + "="*80)
        print("🌏 基于Shodan API的柬埔寨和泰国路由器统计报告")
        print("="*80)
        print(f"📅 生成时间: {report['timestamp']}")
        
        # 总体统计
        cambodia_total = report['cambodia']['analysis']['total_routers']
        thailand_total = report['thailand']['analysis']['total_routers']
        
        print(f"\n📊 总体统计:")
        print(f"   总路由器数量: {cambodia_total + thailand_total:,}")
        print(f"   柬埔寨: {cambodia_total:,} 台")
        print(f"   泰国: {thailand_total:,} 台")
        
        # 各国详细统计
        for country_name, country_data in [('柬埔寨', report['cambodia']), ('泰国', report['thailand'])]:
            analysis = country_data['analysis']
            
            print(f"\n🇰🇭 {country_name} 详细统计:")
            print(f"   总路由器: {analysis['total_routers']:,} 台")
            
            if analysis['brand_distribution']:
                print(f"\n   品牌分布:")
                for brand, count in sorted(analysis['brand_distribution'].items(), key=lambda x: x[1], reverse=True):
                    percentage = (count / analysis['total_routers']) * 100
                    print(f"     {brand}: {count} 台 ({percentage:.1f}%)")
            
            if analysis['common_ports']:
                print(f"\n   常用端口:")
                for port, count in analysis['common_ports'][:5]:
                    print(f"     端口 {port}: {count} 台")
            
            if analysis['top_organizations']:
                print(f"\n   主要ISP/组织:")
                for org, count in sorted(analysis['top_organizations'].items(), key=lambda x: x[1], reverse=True)[:5]:
                    print(f"     {org}: {count} 台")
            
            print(f"\n   安全指标:")
            print(f"     有漏洞设备: {analysis['vulnerable_routers']} 台")
            print(f"     开放端口设备: {analysis['security_issues']['open_ports']} 台")
            print(f"     可能默认凭据: {analysis['security_issues']['default_credentials']} 台")
    
    def save_results(self, report, filename='shodan_router_results.json'):
        """保存结果到文件"""
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump(report, f, ensure_ascii=False, indent=2)
        print(f"\n💾 详细结果已保存到: {filename}")
    
    def export_csv(self, results, filename='router_scan_results.csv'):
        """导出CSV格式结果"""
        if not results:
            return
        
        with open(filename, 'w', newline='', encoding='utf-8') as f:
            writer = csv.writer(f)
            writer.writerow([
                'IP', 'Port', 'Country', 'City', 'Title', 'Product', 
                'Version', 'Organization', 'ISP', 'Brand', 'Vulnerabilities'
            ])
            
            for result in results:
                writer.writerow([
                    result['ip'],
                    result['port'],
                    result['country'],
                    result['city'],
                    result['title'],
                    result['product'],
                    result['version'],
                    result['org'],
                    result['isp'],
                    result['brand'],
                    ', '.join(result['vulnerabilities']) if result['vulnerabilities'] else ''
                ])
        
        print(f"📊 CSV结果已保存到: {filename}")

def main():
    """主函数"""
    print("🚀 启动基于Shodan API的路由器扫描工具")
    print("⚠️  注意: 此工具仅用于安全研究和教育目的")
    
    # 使用提供的API密钥
    api_key = "8U3fd9BSqyzentffLrhocQm7rSvy44jx"
    
    scanner = ShodanRouterScanner(api_key)
    
    # 扫描柬埔寨
    print("\n🔍 开始扫描柬埔寨...")
    cambodia_results = scanner.scan_country_routers('Cambodia', limit_per_brand=30)
    
    # 扫描泰国
    print("\n🔍 开始扫描泰国...")
    thailand_results = scanner.scan_country_routers('Thailand', limit_per_brand=30)
    
    # 生成报告
    report = scanner.generate_report(cambodia_results, thailand_results)
    
    # 打印报告
    scanner.print_report(report)
    
    # 保存结果
    scanner.save_results(report)
    
    # 导出CSV
    all_results = report['cambodia']['results'] + report['thailand']['results']
    scanner.export_csv(all_results)
    
    print(f"\n🎯 扫描完成！")
    print(f"   柬埔寨发现: {len(report['cambodia']['results'])} 台路由器")
    print(f"   泰国发现: {len(report['thailand']['results'])} 台路由器")

if __name__ == "__main__":
    main()