#!/usr/bin/env python3
"""
EMS Portal - 完整注册流程
包含OTP验证
"""

import requests
import json
import time

class EMSRegister:
    def __init__(self):
        self.base_url = "http://ws.ems.com.vn"
        self.session = requests.Session()
        self.session.headers.update({
            'User-Agent': 'EMSPortal/1.1.5 (Android)',
            'Content-Type': 'application/x-www-form-urlencoded',
        })
    
    def send_otp(self, phone):
        """步骤1: 发送OTP验证码"""
        print(f"\n[步骤1] 发送OTP验证码...")
        print(f"  手机号: {phone}")
        
        data = {
            'account': phone
        }
        
        r = self.session.post(
            f"{self.base_url}/rc/send-confirmation-code",
            data=data,
            timeout=10
        )
        
        print(f"  状态码: {r.status_code}")
        
        try:
            resp = r.json()
            print(f"  响应: {json.dumps(resp, indent=2, ensure_ascii=False)}")
            
            if resp.get('code') == 'success':
                print(f"\n  [+] ✓ OTP已发送!")
                print(f"  [*] 请查收短信验证码")
                return True
            else:
                print(f"\n  [!] 发送失败: {resp.get('message')}")
                return False
        
        except Exception as e:
            print(f"  [!] 错误: {str(e)}")
            print(f"  响应: {r.text[:300]}")
            return False
    
    def verify_otp(self, phone, otp_code):
        """步骤2: 验证OTP"""
        print(f"\n[步骤2] 验证OTP...")
        print(f"  验证码: {otp_code}")
        
        # 可能的验证端点
        verify_endpoints = [
            "/rc/confirm-otp",
            "/rc/verify-otp",
            "/auth/verify-otp",
        ]
        
        for endpoint in verify_endpoints:
            data = {
                'account': phone,
                'otp': otp_code,
                'code': otp_code,
            }
            
            try:
                r = self.session.post(
                    f"{self.base_url}{endpoint}",
                    data=data,
                    timeout=10
                )
                
                if r.status_code != 404:
                    print(f"  端点: {endpoint}")
                    print(f"  状态码: {r.status_code}")
                    
                    try:
                        resp = r.json()
                        print(f"  响应: {json.dumps(resp, indent=2, ensure_ascii=False)[:300]}")
                        
                        if resp.get('code') == 'success':
                            print(f"\n  [+] ✓ OTP验证成功!")
                            return True
                    except:
                        pass
            
            except:
                pass
        
        return False
    
    def complete_register(self, phone, password, fullname='Test User'):
        """步骤3: 完成注册"""
        print(f"\n[步骤3] 完成注册...")
        
        data = {
            'phone': phone,
            'password': password,
            'fullname': fullname,
        }
        
        # 可能的注册完成端点
        complete_endpoints = [
            "/rc/register",
            "/rc/complete",
            "/auth/register",
        ]
        
        for endpoint in complete_endpoints:
            try:
                r = self.session.post(
                    f"{self.base_url}{endpoint}",
                    data=data,
                    timeout=10
                )
                
                if r.status_code != 404:
                    print(f"  端点: {endpoint}")
                    print(f"  状态码: {r.status_code}")
                    
                    try:
                        resp = r.json()
                        print(f"  响应: {json.dumps(resp, indent=2, ensure_ascii=False)}")
                        
                        if resp.get('code') == 'success':
                            print(f"\n  [+] ✓✓✓ 注册成功!")
                            return True
                    except:
                        pass
            
            except:
                pass
        
        return False
    
    def login_after_register(self, phone, password):
        """步骤4: 注册后登录获取Token"""
        print(f"\n[步骤4] 登录获取Token...")
        
        data = {
            'phone': phone,
            'password': password,
            'device_id': 'registered_device_001'
        }
        
        r = self.session.post(
            f"{self.base_url}/auth/login",
            json=data,
            headers={'Content-Type': 'application/json'},
            timeout=10
        )
        
        print(f"  状态码: {r.status_code}")
        
        try:
            resp = r.json()
            
            if resp.get('code') == 'success':
                token = resp.get('data', {}).get('token')
                
                if token:
                    print(f"\n  [+] ✓✓✓ 登录成功!")
                    print(f"  [+] Token: {token}")
                    
                    # 保存Token
                    with open('/workspace/registered_token.txt', 'w') as f:
                        f.write(f"Token: {token}\n")
                        f.write(f"Phone: {phone}\n")
                        f.write(f"Password: {password}\n")
                    
                    print(f"  [+] Token已保存到 registered_token.txt")
                    
                    return token
            
            else:
                print(f"  [!] 登录失败: {resp.get('message')}")
        
        except Exception as e:
            print(f"  [!] 错误: {str(e)}")
        
        return None

def main():
    print("="*60)
    print(" EMS Portal - 完整注册流程")
    print("="*60)
    
    register = EMSRegister()
    
    print("\n[!] 需要真实的越南手机号码")
    print("")
    
    # 方式1: 交互式
    if False:  # 改为True启用交互式
        phone = input("手机号 (例如: 0901234567): ")
        password = input("密码: ")
        fullname = input("姓名: ")
        
        # 发送OTP
        if register.send_otp(phone):
            otp = input("\n请输入收到的验证码: ")
            
            # 验证OTP
            if register.verify_otp(phone, otp):
                # 完成注册
                if register.complete_register(phone, password, fullname):
                    # 登录获取Token
                    token = register.login_after_register(phone, password)
                    
                    if token:
                        print(f"\n[完成] 可以使用Token测试IDOR:")
                        print(f"  python3 tracking_scanner.py --token {token[:30]}...")
    
    # 方式2: 使用接码平台
    else:
        print("[使用接码平台]")
        print("")
        print("1. 访问 https://sms-activate.org")
        print("2. 充值 $1-2")
        print("3. 购买越南号码 (+84)")
        print("4. 获取号码后，运行:")
        print("")
        print("   phone = '你购买的号码'")
        print("   register.send_otp(phone)")
        print("   # 从接码平台获取验证码")
        print("   otp = '验证码'")
        print("   register.verify_otp(phone, otp)")
        print("   register.complete_register(phone, 'Test123456', 'Test User')")
        print("   token = register.login_after_register(phone, 'Test123456')")
        print("")
        
        # 测试发送OTP功能
        print("[测试] 测试OTP发送功能...")
        
        test_phone = "0901234567"
        
        if register.send_otp(test_phone):
            print("\n[+] ✓ OTP发送功能正常!")
            print("")
            print("[下一步]")
            print("  1. 使用真实越南号码")
            print("  2. 接收OTP")
            print("  3. 完成注册")
            print("  4. 获取Token")
            print("  5. 测试IDOR")

if __name__ == '__main__':
    main()
