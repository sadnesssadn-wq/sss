#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
测试Shodan API密钥有效性
"""

import requests
import json

def test_shodan_api(api_key):
    """测试Shodan API密钥"""
    print("🔍 测试Shodan API密钥...")
    
    # 测试API信息
    try:
        url = "https://api.shodan.io/api-info"
        params = {'key': api_key}
        
        response = requests.get(url, params=params, timeout=10)
        
        if response.status_code == 200:
            data = response.json()
            print("✅ API密钥有效!")
            print(f"   查询限制: {data.get('query_credits', 'N/A')}")
            print(f"   扫描限制: {data.get('scan_credits', 'N/A')}")
            print(f"   计划: {data.get('plan', 'N/A')}")
            return True
        else:
            print(f"❌ API密钥无效: {response.status_code}")
            print(f"   响应: {response.text}")
            return False
            
    except Exception as e:
        print(f"❌ 测试失败: {e}")
        return False

def test_simple_search(api_key):
    """测试简单搜索"""
    print("\n🔍 测试简单搜索...")
    
    try:
        url = "https://api.shodan.io/shodan/host/search"
        params = {
            'key': api_key,
            'query': 'country:TH',
            'limit': 5
        }
        
        response = requests.get(url, params=params, timeout=10)
        
        if response.status_code == 200:
            data = response.json()
            print("✅ 搜索成功!")
            print(f"   总结果: {data.get('total', 0)}")
            print(f"   返回结果: {len(data.get('matches', []))}")
            return True
        else:
            print(f"❌ 搜索失败: {response.status_code}")
            print(f"   响应: {response.text}")
            return False
            
    except Exception as e:
        print(f"❌ 搜索测试失败: {e}")
        return False

def main():
    """主函数"""
    api_key = "8U3fd9BSqyzentffLrhocQm7rSvy44jx"
    
    # 测试API密钥
    if test_shodan_api(api_key):
        # 测试搜索功能
        test_simple_search(api_key)
    else:
        print("\n💡 建议:")
        print("   1. 检查API密钥是否正确")
        print("   2. 确认账户是否有足够权限")
        print("   3. 检查账户是否被限制")

if __name__ == "__main__":
    main()