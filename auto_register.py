#!/usr/bin/env python3
"""
EMS Portal - 自动注册助手
帮助通过API注册账号并获取Token
"""

import requests
import json
import time
import sys

class Colors:
    RED = '\033[91m'
    GREEN = '\033[92m'
    YELLOW = '\033[93m'
    CYAN = '\033[96m'
    RESET = '\033[0m'
    BOLD = '\033[1m'

class EMSRegister:
    def __init__(self):
        self.base_url = "http://ws.ems.com.vn"
        self.session = requests.Session()
    
    def test_register_endpoints(self):
        """测试可能的注册端点"""
        print(f"\n{Colors.CYAN}[*] 测试注册API端点...{Colors.RESET}\n")
        
        endpoints = [
            "/api/v1/auth/register",
            "/api/v1/user/register",
            "/api/v1/register",
            "/api/v1/auth/signup",
        ]
        
        working_endpoint = None
        
        for endpoint in endpoints:
            print(f"  测试: {endpoint}", end=' ')
            
            try:
                r = self.session.post(
                    self.base_url + endpoint,
                    json={
                        "phone": "test",
                        "password": "test"
                    },
                    timeout=5
                )
                
                if r.status_code == 404:
                    print(f"{Colors.RED}✗ (不存在){Colors.RESET}")
                elif r.status_code == 200:
                    data = r.json()
                    
                    if 'token could not be parsed' not in data.get('message', ''):
                        print(f"{Colors.GREEN}✓ (可用){Colors.RESET}")
                        working_endpoint = endpoint
                        break
                    else:
                        print(f"{Colors.YELLOW}? (需要进一步测试){Colors.RESET}")
                        if not working_endpoint:
                            working_endpoint = endpoint
                else:
                    print(f"{Colors.YELLOW}? ({r.status_code}){Colors.RESET}")
            
            except Exception as e:
                print(f"{Colors.RED}✗ ({e}){Colors.RESET}")
        
        if working_endpoint:
            print(f"\n{Colors.GREEN}[+] 使用端点: {working_endpoint}{Colors.RESET}")
        else:
            print(f"\n{Colors.YELLOW}[!] 未找到明确的注册端点，使用默认{Colors.RESET}")
            working_endpoint = "/api/v1/auth/register"
        
        return working_endpoint
    
    def request_otp(self, phone):
        """请求验证码"""
        print(f"\n{Colors.CYAN}[*] 请求发送验证码到: {phone}{Colors.RESET}")
        
        endpoints = [
            "/api/v1/auth/send-otp",
            "/api/v1/auth/request-otp",
            "/api/v1/otp/send",
        ]
        
        for endpoint in endpoints:
            try:
                r = self.session.post(
                    self.base_url + endpoint,
                    json={"phone": phone},
                    timeout=5
                )
                
                if r.status_code == 200:
                    data = r.json()
                    
                    if data.get('code') == 'success':
                        print(f"{Colors.GREEN}[+] 验证码已发送{Colors.RESET}")
                        return True
                    else:
                        print(f"{Colors.YELLOW}[!] {data.get('message')}{Colors.RESET}")
            
            except Exception as e:
                pass
        
        print(f"{Colors.YELLOW}[!] 无法通过API发送验证码{Colors.RESET}")
        print(f"{Colors.YELLOW}    请在App中手动发送{Colors.RESET}")
        return False
    
    def register(self, phone, password, fullname, otp=None):
        """注册账号"""
        
        endpoint = self.test_register_endpoints()
        
        print(f"\n{Colors.CYAN}{'='*60}{Colors.RESET}")
        print(f"{Colors.CYAN}{Colors.BOLD}[开始注册]{Colors.RESET}")
        print(f"{Colors.CYAN}{'='*60}{Colors.RESET}\n")
        
        print(f"  手机号: {phone}")
        print(f"  姓名: {fullname}")
        print(f"  密码: {'*' * len(password)}")
        
        # 构建注册数据
        register_data = {
            "phone": phone,
            "password": password,
            "fullname": fullname,
            "device_id": "auto_register_" + str(int(time.time()))
        }
        
        if otp:
            register_data["otp"] = otp
        
        print(f"\n{Colors.CYAN}[*] 发送注册请求...{Colors.RESET}")
        
        try:
            r = self.session.post(
                self.base_url + endpoint,
                json=register_data,
                headers={"Content-Type": "application/json"},
                timeout=10
            )
            
            print(f"  HTTP状态: {r.status_code}")
            
            if r.status_code == 200:
                data = r.json()
                
                print(f"  响应Code: {data.get('code')}")
                print(f"  消息: {data.get('message', '')[:100]}")
                
                if data.get('code') == 'success':
                    print(f"\n{Colors.GREEN}{Colors.BOLD}[✓] 注册成功!{Colors.RESET}")
                    
                    # 检查是否直接返回了Token
                    if 'token' in str(data):
                        token = data.get('data', {}).get('token')
                        if token:
                            return {'success': True, 'token': token, 'need_otp': False}
                    
                    # 可能需要验证OTP
                    if 'otp' in str(data).lower() or 'verify' in str(data).lower():
                        return {'success': True, 'need_otp': True}
                    
                    return {'success': True, 'need_otp': False}
                
                else:
                    error_msg = data.get('message', 'Unknown error')
                    
                    print(f"\n{Colors.RED}[✗] 注册失败{Colors.RESET}")
                    print(f"  原因: {error_msg}")
                    
                    # 检查是否需要OTP
                    if 'otp' in error_msg.lower() or 'verification' in error_msg.lower():
                        return {'success': False, 'need_otp': True, 'message': error_msg}
                    
                    return {'success': False, 'message': error_msg}
            
            else:
                print(f"\n{Colors.RED}[✗] HTTP错误: {r.status_code}{Colors.RESET}")
                print(f"  响应: {r.text[:200]}")
                
                return {'success': False, 'message': f'HTTP {r.status_code}'}
        
        except Exception as e:
            print(f"\n{Colors.RED}[✗] 请求失败: {e}{Colors.RESET}")
            return {'success': False, 'message': str(e)}
    
    def verify_otp(self, phone, otp):
        """验证OTP"""
        print(f"\n{Colors.CYAN}[*] 验证OTP...{Colors.RESET}")
        
        endpoints = [
            "/api/v1/auth/verify-otp",
            "/api/v1/auth/verify",
            "/api/v1/otp/verify",
        ]
        
        for endpoint in endpoints:
            try:
                r = self.session.post(
                    self.base_url + endpoint,
                    json={"phone": phone, "otp": otp},
                    timeout=5
                )
                
                if r.status_code == 200:
                    data = r.json()
                    
                    if data.get('code') == 'success':
                        print(f"{Colors.GREEN}[+] OTP验证成功{Colors.RESET}")
                        return True
                    else:
                        print(f"{Colors.RED}[!] {data.get('message')}{Colors.RESET}")
            
            except Exception as e:
                pass
        
        return False
    
    def login(self, phone, password):
        """登录获取Token"""
        print(f"\n{Colors.CYAN}[*] 登录获取Token...{Colors.RESET}")
        
        try:
            r = self.session.post(
                self.base_url + "/api/v1/auth/login",
                json={
                    "phone": phone,
                    "password": password,
                    "device_id": "auto_login_" + str(int(time.time()))
                },
                timeout=10
            )
            
            if r.status_code == 200:
                data = r.json()
                
                if data.get('code') == 'success':
                    token = data.get('data', {}).get('token', '')
                    
                    if token:
                        print(f"{Colors.GREEN}[+] 登录成功!{Colors.RESET}")
                        print(f"\n{Colors.GREEN}{'='*60}{Colors.RESET}")
                        print(f"{Colors.GREEN}{Colors.BOLD}Token获取成功!{Colors.RESET}")
                        print(f"{Colors.GREEN}{'='*60}{Colors.RESET}\n")
                        
                        print(f"Token:")
                        print(token)
                        
                        # 保存Token
                        filename = f'token_{phone}.txt'
                        with open(filename, 'w') as f:
                            f.write(token)
                        
                        print(f"\n{Colors.GREEN}[+] Token已保存到: {filename}{Colors.RESET}")
                        
                        return token
                    else:
                        print(f"{Colors.RED}[!] 响应中没有Token{Colors.RESET}")
                else:
                    print(f"{Colors.RED}[!] 登录失败: {data.get('message')}{Colors.RESET}")
            else:
                print(f"{Colors.RED}[!] HTTP错误: {r.status_code}{Colors.RESET}")
        
        except Exception as e:
            print(f"{Colors.RED}[!] 登录失败: {e}{Colors.RESET}")
        
        return None

def main():
    print(f"""
{Colors.CYAN}{Colors.BOLD}
╔══════════════════════════════════════════════════════════════╗
║       EMS Portal - 自动注册助手                             ║
╚══════════════════════════════════════════════════════════════╝
{Colors.RESET}

{Colors.YELLOW}说明:{Colors.RESET}
  尝试通过API自动注册账号并获取Token
  
{Colors.YELLOW}注意:{Colors.RESET}
  • 需要真实的越南手机号
  • 需要能接收短信验证码
  • 如果API注册失败，请在App中手动注册

{Colors.CYAN}建议:{Colors.RESET}
  使用接码平台获取越南号码:
    • https://sms-activate.org/ (付费, ~$0.5)
    • https://www.receive-sms-online.info/ (免费)
    """)
    
    # 获取注册信息
    print(f"{Colors.CYAN}{'='*60}{Colors.RESET}")
    print(f"{Colors.CYAN}{Colors.BOLD}[输入注册信息]{Colors.RESET}")
    print(f"{Colors.CYAN}{'='*60}{Colors.RESET}\n")
    
    phone = input(f"{Colors.YELLOW}手机号 (例如 0901234567): {Colors.RESET}")
    fullname = input(f"{Colors.YELLOW}姓名 (例如 Test User): {Colors.RESET}")
    password = input(f"{Colors.YELLOW}密码 (例如 Test123456): {Colors.RESET}")
    
    # 创建注册器
    register = EMSRegister()
    
    # 尝试注册
    result = register.register(phone, password, fullname)
    
    if result.get('need_otp'):
        # 需要验证码
        print(f"\n{Colors.YELLOW}[!] 需要手机验证码{Colors.RESET}")
        
        # 尝试发送OTP
        register.request_otp(phone)
        
        print(f"\n{Colors.CYAN}请查看手机短信{Colors.RESET}")
        otp = input(f"{Colors.YELLOW}输入验证码: {Colors.RESET}")
        
        if result.get('success'):
            # 注册成功但需要验证OTP
            if register.verify_otp(phone, otp):
                # OTP验证成功，登录
                token = register.login(phone, password)
                
                if token:
                    print(f"\n{Colors.GREEN}[完成] 注册并获取Token成功!{Colors.RESET}")
                    print(f"\n{Colors.CYAN}下一步:{Colors.RESET}")
                    print(f"  export TOKEN=\"{token[:50]}...\"")
                    print(f"  python3 backend_validation_test.py $TOKEN $TOKEN")
                    return
        else:
            # 注册时就需要OTP，重新注册
            result = register.register(phone, password, fullname, otp)
            
            if result.get('success'):
                # 登录
                token = register.login(phone, password)
                
                if token:
                    print(f"\n{Colors.GREEN}[完成] 注册并获取Token成功!{Colors.RESET}")
                    return
    
    elif result.get('success'):
        # 注册成功，直接登录
        if result.get('token'):
            # 已经返回了Token
            print(f"\n{Colors.GREEN}[完成] 注册并获取Token成功!{Colors.RESET}")
        else:
            # 需要登录
            token = register.login(phone, password)
            
            if token:
                print(f"\n{Colors.GREEN}[完成] 注册并获取Token成功!{Colors.RESET}")
                print(f"\n{Colors.CYAN}下一步:{Colors.RESET}")
                print(f"  export TOKEN=\"{token[:50]}...\"")
                print(f"  python3 backend_validation_test.py $TOKEN $TOKEN")
                return
    
    # 注册失败
    print(f"\n{Colors.YELLOW}{'='*60}{Colors.RESET}")
    print(f"{Colors.YELLOW}[建议] API注册可能不支持或有限制{Colors.RESET}")
    print(f"{Colors.YELLOW}{'='*60}{Colors.RESET}\n")
    
    print(f"{Colors.CYAN}推荐方案:{Colors.RESET}")
    print(f"  1. 在App中手动注册 (最可靠)")
    print(f"     详细步骤: REGISTER_GUIDE.md")
    print()
    print(f"  2. 使用MITM拦截Token")
    print(f"     mitmweb -p 8080")
    print(f"     手机设置代理 → 在App中注册登录 → 复制Token")
    print()
    print(f"  3. 使用Frida提取Token")
    print(f"     python3 extract_token_frida.py")

if __name__ == '__main__':
    main()
