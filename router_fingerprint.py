#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
路由器指纹识别工具
基于已知的柬埔寨和泰国常用路由器特征
"""

import requests
import socket
import json
import re
from urllib.parse import urlparse

class RouterFingerprint:
    def __init__(self):
        # 柬埔寨和泰国最常用的路由器特征库
        self.router_signatures = {
            'TP-Link': {
                'patterns': [
                    r'tp-link|tplink|tp link',
                    r'archer\s+(c\d+|ac\d+)',
                    r'tl-wr\d+',
                    r'tl-wa\d+',
                    r'tl-wd\d+'
                ],
                'headers': {
                    'Server': r'tp-link|tplink',
                    'WWW-Authenticate': r'tp-link'
                },
                'default_creds': [
                    ('admin', 'admin'),
                    ('admin', ''),
                    ('root', 'admin'),
                    ('admin', 'password')
                ],
                'common_models': [
                    'Archer C7', 'Archer C9', 'Archer AC1200',
                    'TL-WR841N', 'TL-WR940N', 'TL-WR841HP',
                    'TL-WA801RE', 'TL-WA850RE'
                ]
            },
            'D-Link': {
                'patterns': [
                    r'd-link|dlink',
                    r'dir-\d+',
                    r'dgs-\d+',
                    r'dap-\d+'
                ],
                'headers': {
                    'Server': r'd-link|dlink',
                    'WWW-Authenticate': r'd-link'
                },
                'default_creds': [
                    ('admin', ''),
                    ('admin', 'admin'),
                    ('user', 'user'),
                    ('admin', 'password')
                ],
                'common_models': [
                    'DIR-615', 'DIR-825', 'DIR-300', 'DIR-600',
                    'DGS-1008A', 'DAP-1360', 'DAP-1522'
                ]
            },
            'Tenda': {
                'patterns': [
                    r'tenda',
                    r'ac\d+',
                    r'n\d+',
                    r'w\d+'
                ],
                'headers': {
                    'Server': r'tenda'
                },
                'default_creds': [
                    ('admin', ''),
                    ('admin', 'admin'),
                    ('root', 'admin')
                ],
                'common_models': [
                    'AC6', 'AC9', 'AC10', 'AC15', 'AC18',
                    'N301', 'N300', 'W311R', 'W311M'
                ]
            },
            'Cisco': {
                'patterns': [
                    r'cisco',
                    r'rv\d+',
                    r'wrt\d+',
                    r'asa\d+'
                ],
                'headers': {
                    'Server': r'cisco',
                    'WWW-Authenticate': r'cisco'
                },
                'default_creds': [
                    ('admin', 'admin'),
                    ('cisco', 'cisco'),
                    ('admin', 'cisco'),
                    ('root', 'cisco')
                ],
                'common_models': [
                    'RV320', 'RV340', 'RV042G', 'RV016',
                    'WRT54G', 'WRT120N', 'WRT300N'
                ]
            },
            'Netgear': {
                'patterns': [
                    r'netgear',
                    r'wndr\d+',
                    r'r\d+',
                    r'jwnr\d+'
                ],
                'headers': {
                    'Server': r'netgear'
                },
                'default_creds': [
                    ('admin', 'password'),
                    ('admin', '1234'),
                    ('admin', 'admin')
                ],
                'common_models': [
                    'R7000', 'R8000', 'WNDR3700', 'WNDR4000',
                    'JNR1010', 'JNR2010', 'JNR3210'
                ]
            },
            'ASUS': {
                'patterns': [
                    r'asus',
                    r'rt-\w+',
                    r'ac\d+u',
                    r'dsl-\w+'
                ],
                'headers': {
                    'Server': r'asus'
                },
                'default_creds': [
                    ('admin', 'admin'),
                    ('admin', ''),
                    ('root', 'admin')
                ],
                'common_models': [
                    'RT-AC68U', 'RT-AC88U', 'RT-AC3100',
                    'RT-N66U', 'RT-N56U', 'DSL-AC68U'
                ]
            }
        }
        
        # 柬埔寨和泰国的IP范围（示例）
        self.country_ranges = {
            'Cambodia': [
                '103.27.0.0/16', '103.28.0.0/16', '103.29.0.0/16',
                '202.143.0.0/16', '202.144.0.0/16', '203.189.0.0/16'
            ],
            'Thailand': [
                '1.0.0.0/8', '14.0.0.0/8', '27.0.0.0/8',
                '49.0.0.0/8', '58.0.0.0/8', '61.0.0.0/8'
            ]
        }
    
    def identify_router(self, ip, port=80):
        """识别单个IP的路由器类型"""
        try:
            # 尝试HTTP请求
            response = requests.get(
                f'http://{ip}:{port}',
                timeout=10,
                allow_redirects=True,
                headers={
                    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
                }
            )
            
            # 分析响应
            content = response.text.lower()
            headers = {k.lower(): v.lower() for k, v in response.headers.items()}
            
            # 匹配路由器品牌
            for brand, signature in self.router_signatures.items():
                if self._match_signature(content, headers, signature):
                    return {
                        'ip': ip,
                        'brand': brand,
                        'model': self._extract_model(content, brand),
                        'version': self._extract_version(content),
                        'status_code': response.status_code,
                        'title': self._extract_title(content),
                        'default_creds': signature['default_creds']
                    }
            
            return None
            
        except Exception as e:
            return None
    
    def _match_signature(self, content, headers, signature):
        """匹配路由器特征"""
        # 检查内容模式
        for pattern in signature['patterns']:
            if re.search(pattern, content):
                return True
        
        # 检查HTTP头
        for header_name, pattern in signature['headers'].items():
            if header_name in headers and re.search(pattern, headers[header_name]):
                return True
        
        return False
    
    def _extract_model(self, content, brand):
        """提取路由器型号"""
        for model in self.router_signatures[brand]['common_models']:
            if model.lower() in content:
                return model
        return 'Unknown Model'
    
    def _extract_version(self, content):
        """提取固件版本"""
        version_patterns = [
            r'version\s*:?\s*([0-9.]+)',
            r'firmware\s*:?\s*([0-9.]+)',
            r'v([0-9.]+)',
            r'([0-9]+\.[0-9]+\.[0-9]+)'
        ]
        
        for pattern in version_patterns:
            match = re.search(pattern, content, re.IGNORECASE)
            if match:
                return match.group(1)
        return 'Unknown Version'
    
    def _extract_title(self, content):
        """提取页面标题"""
        title_match = re.search(r'<title>(.*?)</title>', content, re.IGNORECASE)
        if title_match:
            return title_match.group(1).strip()
        return 'No Title'
    
    def generate_scan_list(self, country, count=100):
        """生成扫描IP列表"""
        import ipaddress
        import random
        
        if country not in self.country_ranges:
            return []
        
        ips = []
        for ip_range in self.country_ranges[country]:
            try:
                network = ipaddress.ip_network(ip_range, strict=False)
                # 随机选择IP
                for _ in range(count // len(self.country_ranges[country])):
                    ip = str(network[random.randint(0, network.num_addresses - 1)])
                    ips.append(ip)
            except:
                continue
        
        return ips[:count]
    
    def scan_country_routers(self, country, count=50):
        """扫描指定国家的路由器"""
        print(f"\n🔍 开始扫描 {country} 的路由器...")
        
        ips = self.generate_scan_list(country, count)
        if not ips:
            print(f"❌ 无法生成 {country} 的IP列表")
            return []
        
        print(f"📡 生成了 {len(ips)} 个IP地址")
        
        results = []
        for i, ip in enumerate(ips):
            result = self.identify_router(ip)
            if result:
                results.append(result)
                print(f"✅ 发现: {ip} - {result['brand']} {result['model']}")
            
            if (i + 1) % 10 == 0:
                print(f"📊 已扫描 {i + 1}/{len(ips)} 个IP")
        
        return results
    
    def generate_statistics(self, results):
        """生成统计报告"""
        if not results:
            return
        
        brand_count = {}
        model_count = {}
        
        for result in results:
            brand = result['brand']
            model = result['model']
            
            brand_count[brand] = brand_count.get(brand, 0) + 1
            model_count[model] = model_count.get(model, 0) + 1
        
        print(f"\n📈 扫描统计:")
        print(f"   总发现路由器: {len(results)}")
        
        print(f"\n🏷️  品牌分布:")
        for brand, count in sorted(brand_count.items(), key=lambda x: x[1], reverse=True):
            percentage = (count / len(results)) * 100
            print(f"   {brand}: {count} 台 ({percentage:.1f}%)")
        
        print(f"\n📱 热门型号:")
        for model, count in sorted(model_count.items(), key=lambda x: x[1], reverse=True)[:10]:
            print(f"   {model}: {count} 台")
        
        return {
            'total': len(results),
            'brands': brand_count,
            'models': model_count
        }

def main():
    """主函数"""
    print("🚀 柬埔寨和泰国路由器指纹识别工具")
    print("⚠️  注意: 此工具仅用于安全研究和教育目的")
    
    scanner = RouterFingerprint()
    
    # 扫描柬埔寨
    cambodia_results = scanner.scan_country_routers('Cambodia', 30)
    cambodia_stats = scanner.generate_statistics(cambodia_results)
    
    # 扫描泰国
    thailand_results = scanner.scan_country_routers('Thailand', 30)
    thailand_stats = scanner.generate_statistics(thailand_results)
    
    # 保存结果
    all_results = {
        'cambodia': {
            'results': cambodia_results,
            'statistics': cambodia_stats
        },
        'thailand': {
            'results': thailand_results,
            'statistics': thailand_stats
        }
    }
    
    with open('router_fingerprint_results.json', 'w', encoding='utf-8') as f:
        json.dump(all_results, f, ensure_ascii=False, indent=2)
    
    print(f"\n💾 详细结果已保存到: router_fingerprint_results.json")
    
    # 显示默认凭据信息
    print(f"\n🔑 常用默认凭据:")
    for brand, signature in scanner.router_signatures.items():
        print(f"\n{brand}:")
        for username, password in signature['default_creds']:
            print(f"   {username}:{password}")

if __name__ == "__main__":
    main()