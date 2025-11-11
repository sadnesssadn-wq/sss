#!/usr/bin/env python3
"""
订单API逆向工程分析
"""
import re
import json

# 从bundle中提取的原始数据
bundle_content = open("/workspace/vwms_extracted/main_apk/assets/index.android.bundle", "rb").read()

def extract_order_apis():
    """提取所有订单相关API"""
    apis = set()
    
    # 匹配API路径模式
    patterns = [
        rb'/api/v\d+/[a-z0-9/_-]*order[a-z0-9/_-]*',
        rb'/api/v\d+/[a-z0-9/_-]*outbound[a-z0-9/_-]*',
        rb'/api/v\d+/[a-z0-9/_-]*inbound[a-z0-9/_-]*',
        rb'/api/v\d+/[a-z0-9/_-]*pickup[a-z0-9/_-]*',
        rb'/api/v\d+/[a-z0-9/_-]*shipment[a-z0-9/_-]*',
    ]
    
    for pattern in patterns:
        matches = re.findall(pattern, bundle_content)
        for match in matches:
            try:
                apis.add(match.decode('utf-8', errors='ignore'))
            except:
                pass
    
    return sorted(apis)

def extract_api_params():
    """提取API参数名"""
    params = set()
    
    param_patterns = [
        rb'"(order_id|order_code|order_number|tracking_code)"',
        rb'"(from|to|status|page|page_size)"',
        rb'"(warehouse_id|partner_id|customer_id)"',
    ]
    
    for pattern in param_patterns:
        matches = re.findall(pattern, bundle_content)
        for match in matches:
            try:
                params.add(match.decode('utf-8', errors='ignore'))
            except:
                pass
    
    return sorted(params)

if __name__ == "__main__":
    print("="*60)
    print("订单API逆向工程分析")
    print("="*60)
    
    print("\n[+] 发现的订单API端点:")
    apis = extract_order_apis()
    for i, api in enumerate(apis[:50], 1):
        print(f"  {i}. {api}")
    
    print(f"\n[+] 总计: {len(apis)} 个订单相关API")
    
    print("\n[+] 常见参数:")
    params = extract_api_params()
    for param in params:
        print(f"  - {param}")
