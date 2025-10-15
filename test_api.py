#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""测试API是否可用"""
import hashlib, requests, json, time

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def test_tracking(tracking):
    """测试单个运单号"""
    print(f"\n测试运单号: {tracking}")
    sig = sign(tracking)
    headers_form = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    try:
        print(f"  发送请求到API...")
        start = time.time()
        r = requests.post(
            f"{API_URL}api/Delivery/Inquiry",
            headers=headers_form,
            data={"ParcelCode": tracking, "Signature": sig},
            timeout=10
        )
        elapsed = time.time() - start
        
        print(f"  响应时间: {elapsed:.2f}秒")
        print(f"  HTTP状态码: {r.status_code}")
        
        if r.status_code == 200:
            try:
                data = r.json()
                print(f"  响应Code: {data.get('Code', 'N/A')}")
                print(f"  响应Message: {data.get('Message', 'N/A')}")
                if data.get('Value'):
                    print(f"  ✅ 找到订单数据")
                    print(f"     - 运单号: {data['Value'].get('ParcelCode', 'N/A')}")
                    print(f"     - 收件人: {data['Value'].get('ReceiverName', 'N/A')}")
                    print(f"     - 发件日期: {data['Value'].get('IssueDate', 'N/A')}")
                    print(f"     - 配送日期: {data['Value'].get('DeliveryDate', 'N/A')}")
                else:
                    print(f"  ⚠️ 无订单数据")
                return True
            except json.JSONDecodeError:
                print(f"  ❌ JSON解析失败")
                print(f"  响应内容: {r.text[:200]}")
                return False
        else:
            print(f"  ❌ HTTP错误")
            print(f"  响应内容: {r.text[:200]}")
            return False
            
    except requests.exceptions.Timeout:
        print(f"  ❌ 请求超时")
        return False
    except requests.exceptions.ConnectionError as e:
        print(f"  ❌ 连接错误: {e}")
        return False
    except Exception as e:
        print(f"  ❌ 未知错误: {e}")
        return False

# 测试几个运单号
test_numbers = [
    "EP493011083VN",  # 原脚本中提到的号码
    "EP493018285VN",  # 原脚本中提到的号码
    "EF047530814VN",  # 原脚本中提到的号码
    "EP492999000VN",  # 扫描范围内的号码
    "EP493000000VN",  # 扫描范围内的号码
]

print("="*60)
print("开始测试API连接...")
print("="*60)

success_count = 0
for tracking in test_numbers:
    result = test_tracking(tracking)
    if result:
        success_count += 1
    time.sleep(1)  # 避免太快

print("\n" + "="*60)
print(f"测试完成: {success_count}/{len(test_numbers)} 成功")
print("="*60)
