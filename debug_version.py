#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
调试版本 - 诊断网络和代理问题
"""
import hashlib, requests, json, time, random
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TODAY = datetime.now().strftime("%d/%m/%Y")
print_lock = threading.Lock()

# 少量代理用于测试
PROXIES = [
    "23.27.184.245:5846:uadkcvtn:uo2rzar814ph",
    "45.43.70.140:6427:uadkcvtn:uo2rzar814ph",
    "82.24.233.117:5439:uadkcvtn:uo2rzar814ph",
]

def safe_print(msg):
    with print_lock:
        print(f"[{datetime.now().strftime('%H:%M:%S')}] {msg}")

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def test_network():
    """测试基础网络连接"""
    safe_print("🔍 测试网络连接...")
    
    try:
        # 测试直连
        response = requests.get("https://httpbin.org/ip", timeout=10)
        if response.status_code == 200:
            safe_print("✅ 网络连接正常")
            return True
        else:
            safe_print(f"❌ 网络测试失败: HTTP {response.status_code}")
            return False
    except Exception as e:
        safe_print(f"❌ 网络连接失败: {e}")
        return False

def test_api_direct():
    """测试直连API"""
    safe_print("🔍 测试直连API...")
    
    tracking = "EF047530814VN"  # 已知存在的订单
    sig = sign(tracking)
    
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    try:
        response = requests.post(
            f"{API_URL}api/Delivery/Inquiry",
            headers=headers,
            data={"ParcelCode": tracking, "Signature": sig},
            timeout=15
        )
        
        if response.status_code == 200:
            data = response.json()
            safe_print(f"✅ API直连成功: Code={data.get('Code', 'N/A')}")
            if data.get('Code') == '00':
                safe_print("✅ API返回正常数据")
                return True
            else:
                safe_print(f"⚠️ API返回错误: {data.get('Message', '未知错误')}")
                return False
        else:
            safe_print(f"❌ API直连失败: HTTP {response.status_code}")
            return False
            
    except Exception as e:
        safe_print(f"❌ API直连异常: {e}")
        return False

def test_proxy(proxy_str):
    """测试单个代理"""
    try:
        parts = proxy_str.split(':')
        if len(parts) == 4:
            ip, port, user, pwd = parts
            proxy = {'http': f'http://{user}:{pwd}@{ip}:{port}', 'https': f'http://{user}:{pwd}@{ip}:{port}'}
            
            # 测试代理连接
            response = requests.get("https://httpbin.org/ip", proxies=proxy, timeout=10)
            if response.status_code == 200:
                safe_print(f"✅ 代理可用: {ip}:{port}")
                return True
            else:
                safe_print(f"❌ 代理失败: {ip}:{port} - HTTP {response.status_code}")
                return False
        else:
            safe_print(f"❌ 代理格式错误: {proxy_str}")
            return False
            
    except Exception as e:
        safe_print(f"❌ 代理测试异常: {proxy_str} - {e}")
        return False

def test_api_with_proxy(proxy_str):
    """测试代理访问API"""
    try:
        parts = proxy_str.split(':')
        if len(parts) == 4:
            ip, port, user, pwd = parts
            proxy = {'http': f'http://{user}:{pwd}@{ip}:{port}', 'https': f'http://{user}:{pwd}@{ip}:{port}'}
            
            tracking = "EF047530814VN"
            sig = sign(tracking)
            
            headers = {
                "Authorization": f"Basic {BASIC_AUTH}",
                "APIKey": PRIVATE_KEY,
                "Content-Type": "application/x-www-form-urlencoded"
            }
            
            response = requests.post(
                f"{API_URL}api/Delivery/Inquiry",
                headers=headers,
                data={"ParcelCode": tracking, "Signature": sig},
                proxies=proxy,
                timeout=15
            )
            
            if response.status_code == 200:
                data = response.json()
                safe_print(f"✅ 代理API成功: {ip}:{port} - Code={data.get('Code', 'N/A')}")
                return True
            else:
                safe_print(f"❌ 代理API失败: {ip}:{port} - HTTP {response.status_code}")
                return False
                
    except Exception as e:
        safe_print(f"❌ 代理API异常: {proxy_str} - {e}")
        return False

def main():
    print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║                    🔧 网络和代理诊断工具                                   ║
╚════════════════════════════════════════════════════════════════════════════╝

🎯 诊断目标: 找出脚本卡住的原因
📋 测试项目: 网络连接、API访问、代理状态
⏰ 当前时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}
""")
    
    # 1. 测试基础网络
    if not test_network():
        safe_print("❌ 网络连接有问题，请检查网络设置")
        return
    
    # 2. 测试API直连
    if not test_api_direct():
        safe_print("❌ API直连有问题，可能需要代理")
    else:
        safe_print("✅ API直连正常，可以不用代理运行")
    
    # 3. 测试代理
    safe_print(f"\n🔍 测试 {len(PROXIES)} 个代理...")
    working_proxies = []
    
    with ThreadPoolExecutor(max_workers=5) as executor:
        # 测试代理基础连接
        proxy_futures = {executor.submit(test_proxy, proxy): proxy for proxy in PROXIES}
        
        for future in as_completed(proxy_futures):
            proxy = proxy_futures[future]
            try:
                if future.result():
                    working_proxies.append(proxy)
            except Exception as e:
                safe_print(f"❌ 代理测试异常: {proxy} - {e}")
    
    safe_print(f"\n📊 代理测试结果: {len(working_proxies)}/{len(PROXIES)} 可用")
    
    # 4. 测试可用代理访问API
    if working_proxies:
        safe_print(f"\n🔍 测试可用代理访问API...")
        api_working_proxies = []
        
        with ThreadPoolExecutor(max_workers=3) as executor:
            api_futures = {executor.submit(test_api_with_proxy, proxy): proxy for proxy in working_proxies[:3]}
            
            for future in as_completed(api_futures):
                proxy = api_futures[future]
                try:
                    if future.result():
                        api_working_proxies.append(proxy)
                except Exception as e:
                    safe_print(f"❌ 代理API测试异常: {proxy} - {e}")
        
        safe_print(f"\n📊 代理API测试结果: {len(api_working_proxies)}/{len(working_proxies)} 可用")
        
        if api_working_proxies:
            safe_print("✅ 有可用代理，脚本应该能正常运行")
        else:
            safe_print("❌ 所有代理都无法访问API")
    else:
        safe_print("❌ 没有可用代理")
    
    # 5. 给出建议
    safe_print(f"\n💡 诊断建议:")
    if test_api_direct():
        safe_print("   ✅ 可以不使用代理直接运行脚本")
        safe_print("   💡 建议: 修改脚本，去掉代理或设为可选")
    elif api_working_proxies:
        safe_print("   ✅ 有可用代理，检查脚本代理配置")
        safe_print(f"   💡 建议: 使用这些可用代理: {api_working_proxies[:2]}")
    else:
        safe_print("   ❌ 网络环境有问题")
        safe_print("   💡 建议: 检查防火墙、VPN或网络设置")

if __name__ == "__main__":
    main()