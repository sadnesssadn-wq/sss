#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""测试所有未配送包裹的商品信息"""

import hashlib
import requests
import json
import time

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

headers = {
    "Authorization": f"Basic {BASIC_AUTH}",
    "APIKey": PRIVATE_KEY,
    "Content-Type": "application/json"
}

# 所有未配送的EP运单
undelivered = [
    "EP493184248VN",
    "EP492886647VN",
    "EP492940379VN",
    "EP492806272VN",
    "EP492894215VN",
    "EP492983480VN",
    "EP492980072VN",
    "EP492983388VN",
    "EP492968332VN",
    "EP492969488VN",
    "EP492895462VN",
]

print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                   🎁 商品名称完整提取报告 🎁                               ║
║  测试未配送包裹是否有商品名称                                              ║
╚════════════════════════════════════════════════════════════════════════════╝
""")

found_products = []

for tracking in undelivered:
    print(f"\n{'='*70}")
    print(f"运单号: {tracking}")
    print("-" * 70)
    
    url = f"{API_URL}api/Gateway/Bussiness"
    payload = {"Code": "LDP002", "Data": tracking}
    
    try:
        r = requests.post(url, headers=headers, json=payload, timeout=10)
        result = r.json()
        
        if result.get("Code") == "00" and result.get("Data"):
            products = json.loads(result["Data"])
            
            for product in products:
                product_name = product.get("ProductName", "")
                
                if product_name and product_name != "***":
                    print(f"✅ 商品名称: {product_name}")
                    found_products.append({
                        "tracking": tracking,
                        "product": product
                    })
                else:
                    print(f"⚠️ 商品名称: {product_name} (已隐藏或未填写)")
        
        time.sleep(0.3)
        
    except Exception as e:
        print(f"❌ 错误: {e}")

print("\n\n" + "="*80)
print("📊 商品信息汇总")
print("="*80)

if found_products:
    print(f"\n找到 {len(found_products)} 个包裹有商品名称信息：\n")
    
    for item in found_products:
        p = item["product"]
        print(f"{item['tracking']}:")
        print(f"  商品: {p.get('ProductName')}")
        print(f"  数量: {p.get('Quantity')}")
        print(f"  重量: {p.get('Weight')} g")
        print(f"  单价: {p.get('Price'):,} VND")
        print()
else:
    print("\n⚠️ 未找到明文的商品名称（可能被隐藏为***）")

print("\n" + "="*80)
print("🎯 关键发现")
print("="*80)
print("""
1. Gateway/Bussiness API (Code: LDP002) 可以返回商品信息！

2. 商品信息包含：
   - ProductName (商品名称)
   - Quantity (数量)
   - UnitName (单位)
   - Weight (重量)
   - Price (单价)
   - Amount (总金额)

3. 但商品名称经常被隐藏为"***"（隐私保护）

4. 有些未配送的包裹可能有真实商品名称！
""")

