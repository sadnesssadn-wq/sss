#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
高级SSH连接工具 - 红队安全专家专用
"""

import subprocess
import sys
import time
import socket
import threading

class SSHConnector:
    def __init__(self, host, port=22):
        self.host = host
        self.port = port
        
    def test_connection(self):
        """测试连接"""
        print(f"🔍 测试连接到 {self.host}:{self.port}")
        try:
            sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            sock.settimeout(5)
            result = sock.connect_ex((self.host, self.port))
            sock.close()
            
            if result == 0:
                print("✅ 端口连接成功")
                return True
            else:
                print("❌ 端口连接失败")
                return False
        except Exception as e:
            print(f"❌ 连接测试失败: {e}")
            return False
    
    def get_ssh_banner(self):
        """获取SSH横幅"""
        print("🔍 获取SSH横幅信息...")
        try:
            sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            sock.settimeout(5)
            sock.connect((self.host, self.port))
            
            data = sock.recv(1024).decode('utf-8')
            sock.close()
            
            if data.startswith('SSH-'):
                print(f"✅ SSH横幅: {data.strip()}")
                return data.strip()
            else:
                print("❌ 未检测到SSH服务")
                return None
        except Exception as e:
            print(f"❌ 获取SSH横幅失败: {e}")
            return None
    
    def try_connect(self, username, password):
        """尝试连接"""
        print(f"🔐 尝试连接: {username}@{self.host}")
        
        try:
            cmd = [
                "sshpass", "-p", password,
                "ssh", "-o", "ConnectTimeout=10",
                "-o", "StrictHostKeyChecking=no",
                "-o", "PreferredAuthentications=password",
                f"{username}@{self.host}"
            ]
            
            print("🚀 启动SSH连接...")
            print("如果连接成功，你将看到服务器提示符")
            print("按 Ctrl+C 可以退出连接")
            print("=" * 50)
            
            subprocess.run(cmd)
            
        except KeyboardInterrupt:
            print("\n👋 连接已断开")
        except Exception as e:
            print(f"❌ 连接失败: {e}")
    
    def interactive_connect(self):
        """交互式连接"""
        print("🚀 高级SSH连接工具 - 红队安全专家专用")
        print("=" * 50)
        
        # 测试连接
        if not self.test_connection():
            return
        
        # 获取SSH横幅
        self.get_ssh_banner()
        
        print("\n请选择连接方式:")
        print("1. 使用密码连接")
        print("2. 使用密钥连接")
        print("3. 手动输入命令")
        
        try:
            choice = input("\n请选择 (1-3): ").strip()
            
            if choice == "1":
                username = input("用户名 (默认: root): ").strip() or "root"
                password = input("密码: ").strip()
                self.try_connect(username, password)
                
            elif choice == "2":
                username = input("用户名 (默认: root): ").strip() or "root"
                key_path = input("私钥路径: ").strip()
                self.try_key_connect(username, key_path)
                
            elif choice == "3":
                self.manual_connect()
            else:
                print("❌ 无效选择")
                
        except KeyboardInterrupt:
            print("\n👋 操作已取消")
    
    def try_key_connect(self, username, key_path):
        """尝试密钥连接"""
        try:
            cmd = [
                "ssh", "-i", key_path,
                "-o", "ConnectTimeout=10",
                "-o", "StrictHostKeyChecking=no",
                f"{username}@{self.host}"
            ]
            
            print("🚀 启动SSH密钥连接...")
            subprocess.run(cmd)
            
        except KeyboardInterrupt:
            print("\n👋 连接已断开")
        except Exception as e:
            print(f"❌ 密钥连接失败: {e}")
    
    def manual_connect(self):
        """手动连接"""
        print("\n🔧 手动SSH连接命令:")
        print(f"ssh root@{self.host}")
        print(f"ssh -p {self.port} root@{self.host}")
        print(f"ssh -o PreferredAuthentications=password root@{self.host}")
        print("\n请手动执行上述命令之一")

def main():
    if len(sys.argv) < 2:
        print("使用方法: python3 ssh_connect_advanced.py <IP地址> [端口]")
        print("示例: python3 ssh_connect_advanced.py 82.29.71.156 22")
        sys.exit(1)
    
    host = sys.argv[1]
    port = int(sys.argv[2]) if len(sys.argv) > 2 else 22
    
    connector = SSHConnector(host, port)
    connector.interactive_connect()

if __name__ == "__main__":
    main()