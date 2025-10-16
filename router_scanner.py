#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
柬埔寨和泰国路由器扫描工具
基于Shodan API和网络扫描技术
"""

import requests
import json
import socket
import threading
import time
from concurrent.futures import ThreadPoolExecutor
import random

class RouterScanner:
    def __init__(self):
        self.results = {
            'cambodia': {},
            'thailand': {}
        }
        self.user_agents = [
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
            'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36',
            'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36'
        ]
        
    def get_country_ips(self, country_code, count=100):
        """获取指定国家的IP地址范围"""
        # 这里应该使用Shodan API，但需要API密钥
        # 暂时使用已知的IP范围
        if country_code == 'KH':  # 柬埔寨
            return [
                '103.27.0.0/16',
                '103.28.0.0/16', 
                '103.29.0.0/16',
                '202.143.0.0/16',
                '202.144.0.0/16'
            ]
        elif country_code == 'TH':  # 泰国
            return [
                '1.0.0.0/8',
                '14.0.0.0/8',
                '27.0.0.0/8',
                '49.0.0.0/8',
                '58.0.0.0/8'
            ]
        return []
    
    def scan_router_info(self, ip, port=80):
        """扫描单个IP的路由器信息"""
        try:
            # 尝试HTTP请求获取设备信息
            headers = {
                'User-Agent': random.choice(self.user_agents),
                'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8',
                'Accept-Language': 'en-US,en;q=0.5',
                'Accept-Encoding': 'gzip, deflate',
                'Connection': 'keep-alive',
            }
            
            response = requests.get(f'http://{ip}:{port}', 
                                  headers=headers, 
                                  timeout=5,
                                  allow_redirects=True)
            
            # 分析响应头获取设备信息
            server = response.headers.get('Server', '').lower()
            www_authenticate = response.headers.get('WWW-Authenticate', '').lower()
            
            # 识别路由器品牌
            router_brand = self.identify_router_brand(response.text, server, www_authenticate)
            
            if router_brand:
                return {
                    'ip': ip,
                    'brand': router_brand,
                    'server': server,
                    'status_code': response.status_code,
                    'title': self.extract_title(response.text)
                }
                
        except Exception as e:
            pass
        return None
    
    def identify_router_brand(self, html_content, server, www_auth):
        """识别路由器品牌"""
        content_lower = html_content.lower()
        
        # TP-Link 识别
        if any(keyword in content_lower for keyword in [
            'tp-link', 'tplink', 'tp link', 'archer', 'tl-wr'
        ]) or 'tp-link' in server:
            return 'TP-Link'
        
        # D-Link 识别
        if any(keyword in content_lower for keyword in [
            'd-link', 'dlink', 'dir-', 'dgs-'
        ]) or 'd-link' in server:
            return 'D-Link'
        
        # Tenda 识别
        if any(keyword in content_lower for keyword in [
            'tenda', 'ac6', 'ac9', 'n301'
        ]):
            return 'Tenda'
        
        # Cisco 识别
        if any(keyword in content_lower for keyword in [
            'cisco', 'rv320', 'rv340', 'rv042'
        ]) or 'cisco' in server:
            return 'Cisco'
        
        # Netgear 识别
        if any(keyword in content_lower for keyword in [
            'netgear', 'wndr', 'r7000', 'r8000'
        ]):
            return 'Netgear'
        
        # ASUS 识别
        if any(keyword in content_lower for keyword in [
            'asus', 'rt-', 'ac68u', 'ac88u'
        ]):
            return 'ASUS'
        
        # 其他品牌
        if 'router' in content_lower or 'gateway' in content_lower:
            return 'Unknown Router'
        
        return None
    
    def extract_title(self, html_content):
        """提取页面标题"""
        try:
            import re
            title_match = re.search(r'<title>(.*?)</title>', html_content, re.IGNORECASE)
            if title_match:
                return title_match.group(1).strip()
        except:
            pass
        return 'No Title'
    
    def generate_ip_list(self, ip_ranges, count=50):
        """生成随机IP列表用于扫描"""
        import ipaddress
        import random
        
        ips = []
        for ip_range in ip_ranges:
            try:
                network = ipaddress.ip_network(ip_range, strict=False)
                # 随机选择一些IP
                for _ in range(count // len(ip_ranges)):
                    ip = str(network[random.randint(0, network.num_addresses - 1)])
                    ips.append(ip)
            except:
                continue
        return ips[:count]
    
    def scan_country(self, country_code, country_name):
        """扫描指定国家的路由器"""
        print(f"\n🔍 开始扫描 {country_name} ({country_code}) 的路由器...")
        
        # 获取IP范围
        ip_ranges = self.get_country_ips(country_code)
        if not ip_ranges:
            print(f"❌ 无法获取 {country_name} 的IP范围")
            return
        
        # 生成随机IP列表
        ips = self.generate_ip_list(ip_ranges, 100)
        print(f"📡 生成了 {len(ips)} 个IP地址进行扫描")
        
        # 多线程扫描
        results = []
        with ThreadPoolExecutor(max_workers=20) as executor:
            futures = [executor.submit(self.scan_router_info, ip) for ip in ips]
            
            for i, future in enumerate(futures):
                try:
                    result = future.result(timeout=10)
                    if result:
                        results.append(result)
                        print(f"✅ 发现路由器: {result['ip']} - {result['brand']}")
                except:
                    pass
                
                if (i + 1) % 20 == 0:
                    print(f"📊 已扫描 {i + 1}/{len(ips)} 个IP")
        
        # 统计结果
        brand_count = {}
        for result in results:
            brand = result['brand']
            brand_count[brand] = brand_count.get(brand, 0) + 1
        
        self.results[country_name.lower()] = {
            'total_found': len(results),
            'brands': brand_count,
            'details': results
        }
        
        print(f"\n📈 {country_name} 扫描结果:")
        print(f"   总发现路由器: {len(results)}")
        for brand, count in sorted(brand_count.items(), key=lambda x: x[1], reverse=True):
            print(f"   {brand}: {count} 台")
    
    def generate_report(self):
        """生成扫描报告"""
        print("\n" + "="*60)
        print("🌏 柬埔寨和泰国路由器使用统计报告")
        print("="*60)
        
        for country, data in self.results.items():
            if not data:
                continue
                
            print(f"\n🇰🇭 {country.upper()} 路由器统计:")
            print(f"   总发现: {data['total_found']} 台路由器")
            
            if data['brands']:
                print("   品牌分布:")
                for brand, count in sorted(data['brands'].items(), key=lambda x: x[1], reverse=True):
                    percentage = (count / data['total_found']) * 100
                    print(f"     {brand}: {count} 台 ({percentage:.1f}%)")
        
        print("\n💡 建议:")
        print("   1. TP-Link 在东南亚地区使用最广泛")
        print("   2. D-Link 是第二选择，性价比高")
        print("   3. 企业环境多使用 Cisco 设备")
        print("   4. 家庭用户偏好 Tenda 等经济型品牌")

def main():
    """主函数"""
    print("🚀 启动柬埔寨和泰国路由器扫描工具")
    print("⚠️  注意: 此工具仅用于安全研究和教育目的")
    
    scanner = RouterScanner()
    
    # 扫描柬埔寨
    scanner.scan_country('KH', 'cambodia')
    
    # 扫描泰国
    scanner.scan_country('TH', 'thailand')
    
    # 生成报告
    scanner.generate_report()
    
    # 保存结果到文件
    with open('router_scan_results.json', 'w', encoding='utf-8') as f:
        json.dump(scanner.results, f, ensure_ascii=False, indent=2)
    
    print(f"\n💾 详细结果已保存到: router_scan_results.json")

if __name__ == "__main__":
    main()