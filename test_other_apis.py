#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""测试其他可能的API"""
import hashlib, requests, json

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

# 测试运单号
tracking = "EP492999365VN"
sig = sign(tracking)

headers_form = {
    "Authorization": f"Basic {BASIC_AUTH}",
    "APIKey": PRIVATE_KEY,
    "Content-Type": "application/x-www-form-urlencoded"
}

headers_json = {
    "Authorization": f"Basic {BASIC_AUTH}",
    "APIKey": PRIVATE_KEY,
    "Content-Type": "application/json"
}

# 可能的API端点
apis = [
    ("Inquiry", f"{API_URL}api/Delivery/Inquiry", {"ParcelCode": tracking, "Signature": sig}),
    ("Track", f"{API_URL}api/Delivery/Track", {"ParcelCode": tracking, "Signature": sig}),
    ("GetInfo", f"{API_URL}api/Delivery/GetInfo", {"ParcelCode": tracking, "Signature": sig}),
    ("Detail", f"{API_URL}api/Delivery/Detail", {"ParcelCode": tracking, "Signature": sig}),
    ("GetDetail", f"{API_URL}api/Delivery/GetDetail", {"ParcelCode": tracking, "Signature": sig}),
    ("Info", f"{API_URL}api/Delivery/Info", {"ParcelCode": tracking, "Signature": sig}),
    ("Query", f"{API_URL}api/Delivery/Query", {"ParcelCode": tracking, "Signature": sig}),
    ("Search", f"{API_URL}api/Delivery/Search", {"ParcelCode": tracking, "Signature": sig}),
]

print(f"测试运单号: {tracking}\n")
print("="*80)

for name, url, data in apis:
    print(f"\n🔍 测试API: {name}")
    print(f"   URL: {url}")
    
    try:
        # 先试form数据
        r = requests.post(url, headers=headers_form, data=data, timeout=5)
        
        print(f"   状态码: {r.status_code}")
        
        if r.status_code == 200:
            try:
                result = r.json()
                code = result.get('Code', 'N/A')
                msg = result.get('Message', 'N/A')
                
                print(f"   响应Code: {code}")
                print(f"   响应Message: {msg}")
                
                if result.get('Value'):
                    value = result['Value']
                    print(f"   ✅ 有数据!")
                    
                    # 显示关键字段
                    if isinstance(value, dict):
                        receiver_phone = value.get('ReceiverPhone', 'N/A')
                        receiver_name = value.get('ReceiverName', 'N/A')
                        sender_phone = value.get('SenderPhone', 'N/A')
                        
                        print(f"   收件人: {receiver_name}")
                        print(f"   收件电话: {receiver_phone}")
                        print(f"   发件电话: {sender_phone}")
                        
                        # 保存完整响应
                        with open(f'response_{name}.json', 'w', encoding='utf-8') as f:
                            json.dump(result, f, ensure_ascii=False, indent=2)
                        print(f"   📄 完整响应已保存到: response_{name}.json")
                else:
                    print(f"   ⚠️  无数据")
                    
            except json.JSONDecodeError:
                print(f"   ❌ JSON解析失败")
                print(f"   响应内容: {r.text[:200]}")
        else:
            print(f"   ❌ HTTP错误: {r.status_code}")
            print(f"   响应: {r.text[:200]}")
            
    except Exception as e:
        print(f"   ❌ 错误: {e}")
    
    print("-"*80)

print("\n✅ 测试完成!")
