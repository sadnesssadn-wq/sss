#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""简单测试脚本"""

import requests
import hashlib
import time

print("开始测试...")

# 测试代理
proxy = "23.27.184.245:5846:uadkcvtn:uo2rzar814ph"
ip, port, user, pwd = proxy.split(':')
proxies = {
    'http': f'http://{user}:{pwd}@{ip}:{port}',
    'https': f'http://{user}:{pwd}@{ip}:{port}'
}

print(f"使用代理: {ip}:{port}")

# 测试一个已知存在的订单
code = "EC149780335VN"
url = "https://donhang.ghn.vn/api/v1/public/tracking/search"
signature = hashlib.md5(f"code={code}&source=tracking_page".encode()).hexdigest()
payload = {"code": code, "signature": signature, "source": "tracking_page"}
headers = {"Content-Type": "application/json", "User-Agent": "Mozilla/5.0"}

print(f"查询订单: {code}")

try:
    print("发送请求（不用代理）...")
    response = requests.post(url, json=payload, headers=headers, timeout=15)
    print(f"响应状态: {response.status_code}")
    print(f"响应头: {dict(response.headers)}")
    print(f"响应内容: {response.text[:500]}")
    
    if response.status_code == 200:
        data = response.json()
        print(f"返回Code: {data.get('Code')}")
        if data.get('Code') == 1:
            print("✅ 成功！订单存在")
        else:
            print(f"返回消息: {data.get('Message')}")
except Exception as e:
    print(f"❌ 错误: {type(e).__name__}: {e}")
