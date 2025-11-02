#!/usr/bin/env python3
"""
批量获取EMS订单 - 使用Token
"""
import requests
import json
import time
import sys

def batch_get_orders(token, max_pages=100):
    """批量获取所有订单"""
    
    headers = {'Authorization': f'Bearer {token}'}
    base_url = "http://ws.ems.com.vn/api/v1/orders/list"
    
    all_orders = []
    
    print(f"[*] 开始批量获取订单...")
    print(f"[*] Token: {token[:30]}...\n")
    
    for page in range(1, max_pages + 1):
        print(f"[*] 获取第{page}页...", end=' ')
        
        try:
            r = requests.get(
                base_url,
                params={'limit': 100, 'page': page},
                headers=headers,
                timeout=10
            )
            
            if r.status_code == 200:
                data = r.json()
                
                if data.get('code') == 'success':
                    orders = data.get('data', {}).get('orders', [])
                    
                    if not orders:
                        print(f"无数据，结束")
                        break
                    
                    all_orders.extend(orders)
                    print(f"✓ 获取{len(orders)}个订单")
                    
                else:
                    print(f"✗ 错误: {data.get('message')}")
                    break
            else:
                print(f"✗ HTTP {r.status_code}")
                break
        
        except Exception as e:
            print(f"✗ 异常: {e}")
            break
        
        time.sleep(0.5)  # 避免速率限制
    
    # 保存
    filename = f'all_orders_{int(time.time())}.json'
    with open(filename, 'w', encoding='utf-8') as f:
        json.dump(all_orders, f, indent=2, ensure_ascii=False)
    
    print(f"\n[✓] 总共获取 {len(all_orders)} 个订单")
    print(f"[✓] 已保存到 {filename}")
    
    # 显示样例
    if all_orders:
        print(f"\n[*] 订单样例:\n")
        for i, order in enumerate(all_orders[:3], 1):
            print(f"订单 {i}:")
            print(f"  ID: {order.get('id')}")
            print(f"  客户: {order.get('customer_name')}")
            print(f"  电话: {order.get('phone')}")
            print(f"  地址: {order.get('address', '')[:50]}...")
            print(f"  金额: {order.get('total')} VND")
            print()
    
    return all_orders

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("使用方法: python3 batch_orders.py <TOKEN>")
        print("\n或从文件读取:")
        print("  python3 batch_orders.py --from-file extracted_tokens.json")
        sys.exit(1)
    
    if sys.argv[1] == '--from-file':
        with open(sys.argv[2]) as f:
            tokens = json.load(f)
            token = tokens.get('PREF_TOKEN_USER')
    else:
        token = sys.argv[1]
    
    batch_get_orders(token)
