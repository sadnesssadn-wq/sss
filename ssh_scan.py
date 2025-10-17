#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
SSH扫描工具 - 红队安全专家专用
"""

import subprocess
import sys
import socket
import threading
import time

class SSHScanner:
    def __init__(self, host, port=22):
        self.host = host
        self.port = port
        
    def scan_users(self):
        """扫描常见用户名"""
        common_users = [
            "root", "admin", "administrator", "user", "ubuntu", "centos", 
            "debian", "fedora", "kali", "parrot", "arch", "gentoo", 
            "alpine", "test", "guest", "demo", "temp", "default"
        ]
        
        print("🔍 扫描常见用户名...")
        valid_users = []
        
        for user in common_users:
            try:
                cmd = [
                    "ssh", "-o", "ConnectTimeout=3",
                    "-o", "StrictHostKeyChecking=no",
                    "-o", "PreferredAuthentications=none",
                    f"{user}@{self.host}"
                ]
                
                result = subprocess.run(cmd, capture_output=True, text=True, timeout=5)
                
                if "Permission denied" in result.stderr and "password" in result.stderr.lower():
                    print(f"✅ 用户 {user} 存在且支持密码认证")
                    valid_users.append(user)
                elif "Permission denied" in result.stderr and "publickey" in result.stderr.lower():
                    print(f"🔑 用户 {user} 存在但只支持密钥认证")
                    valid_users.append(user)
                elif "Connection refused" in result.stderr:
                    print(f"❌ 用户 {user} 连接被拒绝")
                else:
                    print(f"❓ 用户 {user} 状态未知")
                    
            except Exception as e:
                print(f"❌ 用户 {user} 检查失败: {e}")
        
        return valid_users
    
    def scan_ports(self):
        """扫描SSH相关端口"""
        print("🔍 扫描SSH相关端口...")
        ssh_ports = [22, 2222, 2200, 2022, 22000, 22001, 22002, 22003]
        open_ports = []
        
        for port in ssh_ports:
            try:
                sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                sock.settimeout(2)
                result = sock.connect_ex((self.host, port))
                sock.close()
                
                if result == 0:
                    print(f"✅ 端口 {port} 开放")
                    open_ports.append(port)
                else:
                    print(f"❌ 端口 {port} 关闭")
                    
            except Exception as e:
                print(f"❌ 端口 {port} 检查失败: {e}")
        
        return open_ports
    
    def get_ssh_info(self):
        """获取SSH信息"""
        print("🔍 获取SSH服务信息...")
        try:
            sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            sock.settimeout(5)
            sock.connect((self.host, self.port))
            
            data = sock.recv(1024).decode('utf-8')
            sock.close()
            
            if data.startswith('SSH-'):
                print(f"✅ SSH版本: {data.strip()}")
                return data.strip()
            else:
                print("❌ 未检测到SSH服务")
                return None
        except Exception as e:
            print(f"❌ 获取SSH信息失败: {e}")
            return None
    
    def test_authentication_methods(self):
        """测试认证方法"""
        print("🔍 测试认证方法...")
        try:
            cmd = [
                "ssh", "-o", "ConnectTimeout=5",
                "-o", "StrictHostKeyChecking=no",
                "-o", "PreferredAuthentications=none",
                f"root@{self.host}"
            ]
            
            result = subprocess.run(cmd, capture_output=True, text=True, timeout=10)
            
            stderr = result.stderr.lower()
            if "password" in stderr:
                print("✅ 支持密码认证")
            if "publickey" in stderr:
                print("✅ 支持公钥认证")
            if "keyboard-interactive" in stderr:
                print("✅ 支持键盘交互认证")
            if "gssapi" in stderr:
                print("✅ 支持GSSAPI认证")
                
        except Exception as e:
            print(f"❌ 认证方法测试失败: {e}")
    
    def run_full_scan(self):
        """运行完整扫描"""
        print("🚀 SSH扫描工具 - 红队安全专家专用")
        print("=" * 50)
        
        # 扫描端口
        open_ports = self.scan_ports()
        if not open_ports:
            print("❌ 未找到开放的SSH端口")
            return
        
        # 获取SSH信息
        ssh_info = self.get_ssh_info()
        
        # 测试认证方法
        self.test_authentication_methods()
        
        # 扫描用户
        valid_users = self.scan_users()
        
        print("\n📊 扫描结果:")
        print(f"开放端口: {open_ports}")
        print(f"SSH版本: {ssh_info}")
        print(f"有效用户: {valid_users}")
        
        if valid_users:
            print("\n💡 建议:")
            print("1. 尝试暴力破解密码")
            print("2. 尝试密钥认证")
            print("3. 检查是否有其他认证方法")
        else:
            print("\n❌ 未找到有效用户")

def main():
    if len(sys.argv) < 2:
        print("使用方法: python3 ssh_scan.py <IP地址> [端口]")
        print("示例: python3 ssh_scan.py 82.29.71.156 22")
        sys.exit(1)
    
    host = sys.argv[1]
    port = int(sys.argv[2]) if len(sys.argv) > 2 else 22
    
    scanner = SSHScanner(host, port)
    scanner.run_full_scan()

if __name__ == "__main__":
    main()