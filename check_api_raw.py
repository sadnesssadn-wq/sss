#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""检查API原始返回数据"""
import hashlib, requests, json

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

# 测试几个运单号
trackings = ["EP492999365VN", "EP492999578VN", "EP493005750VN"]

for tracking in trackings:
    print(f"\n{'='*80}")
    print(f"运单号: {tracking}")
    print('='*80)
    
    sig = sign(tracking)
    
    try:
        r = requests.post(
            f"{API_URL}api/Delivery/Inquiry",
            headers={
                "Authorization": f"Basic {BASIC_AUTH}",
                "APIKey": PRIVATE_KEY,
                "Content-Type": "application/x-www-form-urlencoded"
            },
            data={"ParcelCode": tracking, "Signature": sig},
            timeout=10
        )
        
        if r.status_code == 200:
            data = r.json()
            
            if data.get('Code') == '00' and data.get('Value'):
                v = data['Value']
                
                print(f"\n📦 发件人信息:")
                print(f"  SenderName: {v.get('SenderName', 'N/A')}")
                print(f"  SenderPhone: {v.get('SenderPhone', 'N/A')}")
                print(f"  SenderAddress: {v.get('SenderAddress', 'N/A')[:50]}...")
                
                print(f"\n📬 收件人信息:")
                print(f"  ReceiverName: {v.get('ReceiverName', 'N/A')}")
                print(f"  ReceiverPhone: {v.get('ReceiverPhone', 'N/A')}")
                print(f"  ReceiverAddress: {v.get('ReceiverAddress', 'N/A')[:50]}...")
                
                print(f"\n💰 其他信息:")
                print(f"  发件日期: {v.get('IssueDate', 'N/A')}")
                print(f"  装载日期: {v.get('LoadDate', 'N/A')}")
                print(f"  配送日期: {v.get('DeliveryDate', 'N/A')}")
                print(f"  COD金额: {v.get('CollectAmount', 'N/A')}")
                
                # 保存完整JSON
                filename = f"api_response_{tracking}.json"
                with open(filename, 'w', encoding='utf-8') as f:
                    json.dump(data, f, ensure_ascii=False, indent=2)
                print(f"\n📄 完整响应已保存: {filename}")
                
                # 显示所有字段名
                print(f"\n📋 所有字段: {list(v.keys())}")
            else:
                print(f"❌ 无数据或错误: Code={data.get('Code')}, Message={data.get('Message')}")
        else:
            print(f"❌ HTTP错误: {r.status_code}")
            
    except Exception as e:
        print(f"❌ 异常: {e}")

print(f"\n{'='*80}")
print("✅ 检查完成！")
