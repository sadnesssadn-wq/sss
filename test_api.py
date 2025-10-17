#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import requests
import hashlib
import time

def test_api():
    """测试API连通性"""
    code = "EF047535666VN"
    private_key = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
    signature = hashlib.sha256((code.upper() + private_key).encode('utf-8')).hexdigest().upper()
    
    print(f"测试运单号: {code}")
    print(f"签名: {signature}")
    print("="*50)
    
    # 测试不同的API端点
    apis = [
        {
            "name": "TrackTrace/Lading",
            "url": "https://api-dingdong.ems.com.vn/api/TrackTrace/Lading",
            "method": "POST",
            "data": {"LadingCode": code, "Signature": signature},
            "headers": {"Content-Type": "application/json"}
        },
        {
            "name": "Delivery/Inquiry", 
            "url": "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry",
            "method": "POST",
            "data": {"ParcelCode": code, "Signature": signature},
            "headers": {
                "Authorization": "Basic bG90dG5ldDpkbXM=",
                "APIKey": private_key,
                "Content-Type": "application/x-www-form-urlencoded"
            }
        }
    ]
    
    for api in apis:
        print(f"\n测试 {api['name']}...")
        try:
            if api['method'] == 'POST':
                if api['headers'].get('Content-Type') == 'application/json':
                    response = requests.post(api['url'], json=api['data'], headers=api['headers'], timeout=10)
                else:
                    response = requests.post(api['url'], data=api['data'], headers=api['headers'], timeout=10)
            
            print(f"状态码: {response.status_code}")
            print(f"响应时间: {response.elapsed.total_seconds():.2f}秒")
            
            if response.status_code == 200:
                try:
                    result = response.json()
                    print(f"响应: {result}")
                except:
                    print(f"响应文本: {response.text[:200]}")
            else:
                print(f"错误响应: {response.text[:200]}")
                
        except requests.exceptions.Timeout:
            print("❌ 请求超时")
        except requests.exceptions.ConnectionError:
            print("❌ 连接错误")
        except Exception as e:
            print(f"❌ 其他错误: {e}")
        
        time.sleep(1)

if __name__ == "__main__":
    test_api()