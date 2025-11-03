#!/usr/bin/env python3
"""
完成注册 - 输入OTP验证码
"""

import requests
import json
import sys

def complete_registration(phone, otp_code, password="Test123456"):
    """完成注册流程"""
    
    base = "http://ws.ems.com.vn"
    
    print("="*60)
    print(" 完成注册")
    print("="*60)
    
    print(f"\n[信息]")
    print(f"  手机号: {phone}")
    print(f"  OTP: {otp_code}")
    print(f"  密码: {password}")
    
    # 步骤1: 验证OTP
    print(f"\n[步骤1] 验证OTP...")
    
    # 可能的验证端点
    verify_endpoints = [
        ("/rc/confirm-otp", {'account': phone, 'otp': otp_code}),
        ("/rc/verify-otp", {'account': phone, 'code': otp_code}),
        ("/auth/verify-otp", {'phone': phone, 'otp': otp_code}),
        ("/rc/complete", {'account': phone, 'otp': otp_code, 'password': password}),
    ]
    
    session = requests.Session()
    session.headers.update({'User-Agent': 'EMSPortal/1.1.5'})
    
    verified = False
    
    for endpoint, data in verify_endpoints:
        try:
            r = session.post(f"{base}{endpoint}", data=data, timeout=10)
            
            if r.status_code != 404:
                print(f"  端点: {endpoint}")
                print(f"  状态码: {r.status_code}")
                
                try:
                    resp = r.json()
                    print(f"  响应: {json.dumps(resp, indent=2, ensure_ascii=False)[:300]}")
                    
                    if resp.get('code') == 'success':
                        print(f"\n  [+] ✓ OTP验证成功!")
                        verified = True
                        break
                except:
                    pass
        except:
            pass
    
    if not verified:
        print(f"\n  [*] 尝试直接登录 (可能OTP验证自动完成)...")
    
    # 步骤2: 登录获取Token
    print(f"\n[步骤2] 登录获取Token...")
    
    login_data = {
        'phone': phone,
        'password': password,
        'device_id': 'registered_device_001'
    }
    
    r = session.post(
        f"{base}/auth/login",
        json=login_data,
        headers={'Content-Type': 'application/json'},
        timeout=10
    )
    
    print(f"  状态码: {r.status_code}")
    
    try:
        resp = r.json()
        print(f"  响应: {json.dumps(resp, indent=2, ensure_ascii=False)}")
        
        if resp.get('code') == 'success':
            token = resp.get('data', {}).get('token')
            
            if token:
                print(f"\n[+] ✓✓✓ 注册并登录成功!")
                print(f"[+] Token: {token}")
                
                # 保存Token
                with open('/workspace/registered_token.txt', 'w') as f:
                    f.write(f"Token: {token}\n")
                    f.write(f"Phone: {phone}\n")
                    f.write(f"Password: {password}\n")
                
                print(f"\n[+] Token已保存到 registered_token.txt")
                
                # 立即测试Token
                print(f"\n[步骤3] 测试Token有效性...")
                
                r = session.get(
                    f"{base}/api/v1/orders/list",
                    headers={'Authorization': f'Bearer {token}'},
                    params={'page': 1},
                    timeout=10
                )
                
                print(f"  状态码: {r.status_code}")
                
                if r.status_code == 200:
                    try:
                        data = r.json()
                        
                        if data.get('code') == 'success':
                            print(f"  [+] ✓ Token有效!")
                            
                            print(f"\n[完成] 可以立即测试IDOR:")
                            print(f"  python3 tracking_scanner.py --token {token[:30]}...")
                            
                            return token
                    except:
                        pass
        
        else:
            print(f"\n  [!] 登录失败: {resp.get('message')}")
            
            # 如果密码错误，可能需要先设置密码
            if 'password' in resp.get('message', '').lower():
                print(f"\n  [*] 可能需要先完成注册流程")
                print(f"  [*] OTP验证后应该会自动创建账号")
    
    except Exception as e:
        print(f"  [!] 错误: {str(e)}")
    
    return None

if __name__ == '__main__':
    # 从文件读取号码
    try:
        with open('/workspace/registration_pending.txt', 'r') as f:
            lines = f.readlines()
            phone = lines[0].split(': ')[1].strip()
    except:
        phone = "0764955842"
    
    print(f"\n请输入收到的OTP验证码:")
    
    if len(sys.argv) > 1:
        otp = sys.argv[1]
    else:
        otp = input("OTP: ")
    
    complete_registration(phone, otp)
