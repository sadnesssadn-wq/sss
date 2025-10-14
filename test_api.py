#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
简单的API测试脚本
快速测试DingDong API
"""

import hashlib
import base64
import requests
import sys

# API配置
API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="  # lottnet:dms

def sign(text):
    """生成签名"""
    full = text + PRIVATE_KEY
    return hashlib.sha256(full.encode()).hexdigest().upper()

def test_parcel(parcel_code):
    """测试查询运单"""
    print(f"\n{'='*50}")
    print(f"查询运单: {parcel_code}")
    print(f"{'='*50}")
    
    sig = sign(parcel_code)
    print(f"签名: {sig}\n")
    
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    data = {
        "ParcelCode": parcel_code,
        "Signature": sig
    }
    
    try:
        r = requests.post(f"{API_URL}api/Delivery/CheckLadingCode", 
                         headers=headers, data=data, timeout=10)
        print(f"状态码: {r.status_code}")
        print(f"响应: {r.text[:500]}")
        return r.json()
    except Exception as e:
        print(f"错误: {e}")
        return None

def test_postman(postman_id, date):
    """测试查询快递员订单"""
    print(f"\n{'='*50}")
    print(f"查询快递员订单")
    print(f"快递员ID: {postman_id}")
    print(f"日期: {date}")
    print(f"{'='*50}\n")
    
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    data = {
        "PostmanId": postman_id,
        "FromDate": date,
        "ShiftID": "",
        "ChThu": "",
        "TuiSo": ""
    }
    
    try:
        r = requests.post(f"{API_URL}api/Delivery/DeliveryPostman",
                         headers=headers, data=data, timeout=10)
        print(f"状态码: {r.status_code}")
        print(f"响应: {r.text[:500]}")
        return r.json()
    except Exception as e:
        print(f"错误: {e}")
        return None

if __name__ == "__main__":
    print("""
╔════════════════════════════════════════════════╗
║      DingDong API 快速测试工具                 ║
║  ⚠️  仅用于安全研究和教育目的                  ║
╚════════════════════════════════════════════════╝
    """)
    
    if len(sys.argv) < 2:
        print("使用方法:")
        print("  1. 查询运单:")
        print("     python test_api.py parcel EH123456789VN")
        print("\n  2. 查询快递员订单:")
        print("     python test_api.py postman 12345 2025-10-14")
        print("\n  3. 生成签名:")
        print("     python test_api.py sign EH123456789VN")
        sys.exit(1)
    
    cmd = sys.argv[1]
    
    if cmd == "parcel" and len(sys.argv) >= 3:
        test_parcel(sys.argv[2])
    
    elif cmd == "postman" and len(sys.argv) >= 4:
        test_postman(sys.argv[2], sys.argv[3])
    
    elif cmd == "sign" and len(sys.argv) >= 3:
        text = sys.argv[2]
        sig = sign(text)
        print(f"\n文本: {text}")
        print(f"签名: {sig}\n")
    
    else:
        print("❌ 参数错误！请查看使用方法。")
