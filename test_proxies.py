#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
代理测试工具 - 检查你的代理是否可用
"""

import requests
import time
import sys

def test_proxy(proxy_str):
    """测试单个代理"""
    
    # 规范化代理格式
    if not proxy_str.startswith('http'):
        proxy_str = f"http://{proxy_str}"
    
    proxy_dict = {
        'http': proxy_str,
        'https': proxy_str
    }
    
    print(f"\n测试代理: {proxy_str}")
    print("-" * 60)
    
    # 测试1: 连接测试 (检查IP)
    print("1. 连接测试... ", end="", flush=True)
    try:
        response = requests.get(
            'http://ip-api.com/json',
            proxies=proxy_dict,
            timeout=10
        )
        
        if response.status_code == 200:
            ip_info = response.json()
            print(f"✅ 成功")
            print(f"   代理IP: {ip_info.get('query')}")
            print(f"   地区: {ip_info.get('country')}, {ip_info.get('city')}")
        else:
            print(f"❌ 失败 (HTTP {response.status_code})")
            return False
    except requests.exceptions.Timeout:
        print("❌ 超时")
        return False
    except requests.exceptions.ProxyError as e:
        print(f"❌ 代理错误: {e}")
        return False
    except Exception as e:
        print(f"❌ 错误: {e}")
        return False
    
    # 测试2: 访问目标API
    print("2. API连接测试... ", end="", flush=True)
    try:
        import hashlib
        
        API_URL = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
        API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
        BASIC_AUTH = "bG90dG5ldDpkbXM="
        
        tracking = "EP493018285VN"
        sig = hashlib.sha256((tracking + API_KEY).encode()).hexdigest().upper()
        
        headers = {
            "Authorization": f"Basic {BASIC_AUTH}",
            "APIKey": API_KEY,
            "Content-Type": "application/x-www-form-urlencoded"
        }
        
        data = {
            "ParcelCode": tracking,
            "Signature": sig
        }
        
        response = requests.post(
            API_URL,
            headers=headers,
            data=data,
            proxies=proxy_dict,
            timeout=10
        )
        
        if response.status_code == 200:
            result = response.json()
            if result.get('Code') == '00':
                print("✅ 成功")
                print(f"   可以访问目标API")
                return True
            else:
                print(f"⚠️  API返回错误: {result.get('Message')}")
                return False
        else:
            print(f"❌ HTTP {response.status_code}")
            return False
            
    except Exception as e:
        print(f"❌ 错误: {e}")
        return False

def main():
    print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                          🔍 代理测试工具                                    ║
╚════════════════════════════════════════════════════════════════════════════╝
""")
    
    # 检查 proxies.txt 文件
    import os
    
    if os.path.exists('proxies.txt'):
        print("✅ 找到 proxies.txt 文件\n")
        
        with open('proxies.txt', 'r') as f:
            lines = f.readlines()
        
        proxies = []
        for line in lines:
            line = line.strip()
            if line and not line.startswith('#'):
                proxies.append(line)
        
        if not proxies:
            print("❌ proxies.txt 文件是空的或只有注释！")
            print("\n请添加真实的代理IP，格式示例：")
            print("103.152.112.1:80")
            print("user:pass@proxy.example.com:8080")
            return
        
        print(f"📊 共找到 {len(proxies)} 个代理\n")
        print("=" * 60)
        
        # 测试前3个代理
        test_count = min(3, len(proxies))
        print(f"测试前 {test_count} 个代理...\n")
        
        success_count = 0
        for i, proxy in enumerate(proxies[:test_count], 1):
            print(f"\n【代理 {i}/{test_count}】")
            if test_proxy(proxy):
                success_count += 1
            time.sleep(1)
        
        print("\n" + "=" * 60)
        print(f"📊 测试结果: {success_count}/{test_count} 个代理可用")
        
        if success_count == 0:
            print("\n❌ 所有测试的代理都不可用！")
            print("\n可能的问题：")
            print("1. 代理IP已失效")
            print("2. 代理需要认证（用户名密码）")
            print("3. 代理服务器拒绝连接")
            print("4. 代理不支持HTTPS")
            print("\n建议：")
            print("1. 从代理服务商获取新的代理")
            print("2. 使用付费代理（免费代理通常不稳定）")
            print("3. 或者先用无代理版本测试")
        elif success_count < test_count:
            print("\n⚠️  部分代理不可用，建议检查或更换")
        else:
            print("\n✅ 代理工作正常！可以运行主程序")
        
    else:
        print("❌ 未找到 proxies.txt 文件！")
        print("\n请创建 proxies.txt 并添加代理IP")
        print("\n示例1: 创建文件并添加代理")
        print("cat > proxies.txt << 'EOF'")
        print("103.152.112.1:80")
        print("103.152.112.2:80")
        print("EOF")
        print("\n示例2: 测试单个代理")
        print("如果你有一个代理IP，可以直接测试：")
        
        if len(sys.argv) > 1:
            proxy = sys.argv[1]
            test_proxy(proxy)
        else:
            print("\n用法: python3 test_proxies.py 103.152.112.1:80")

if __name__ == "__main__":
    main()
