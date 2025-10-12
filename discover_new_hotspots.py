#!/usr/bin/env python3
"""
系统性探索发现新的热点区域
策略：
1. 测试所有前缀（EA-EZ）的不同数字范围
2. 分析运单号编号规律
3. 发现新的密集区域
"""
import hashlib
import requests
import json
import time
from concurrent.futures import ThreadPoolExecutor, as_completed

KEY = '34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A'
API_URL = 'https://api-dingdong.ems.com.vn/api/TrackTrace/Lading'

def quick_test_range(prefix, start, end, sample_size=100):
    """快速测试一个范围的有效率"""
    import random
    
    # 随机抽样
    if end - start > sample_size:
        numbers = random.sample(range(start, end+1), sample_size)
    else:
        numbers = list(range(start, end+1))
    
    codes = [f"{prefix}{n}VN" for n in numbers]
    
    valid = 0
    unsigned = 0
    
    for code in codes:
        signature = hashlib.sha256((code.upper() + KEY).encode()).hexdigest().upper()
        payload = {'LadingCode': code, 'Signature': signature}
        
        try:
            r = requests.post(API_URL, json=payload, timeout=5)
            result = r.json()
            
            if result.get('Code') == '00':
                valid += 1
                # 检查是否未签收
                data = result.get('Value', {})
                if not data.get('SignatureCapture'):
                    unsigned += 1
        except:
            pass
        
        time.sleep(0.05)
    
    return {
        'tested': len(codes),
        'valid': valid,
        'unsigned': unsigned,
        'rate': valid * 100 / len(codes) if codes else 0,
        'unsigned_rate': unsigned * 100 / len(codes) if codes else 0,
    }

print("=" * 80)
print("🔍 系统性探索 - 发现新的热点区域")
print("=" * 80)

# 第一阶段：测试所有前缀的不同数字范围
print("\n📊 第一阶段：测试所有前缀（EA-EZ）")
print("="*80)
print("\n策略：每个前缀测试5个数字范围，每个范围抽样100个\n")

prefixes = ['EA', 'EB', 'EC', 'ED', 'EE', 'EF', 'EG', 'EH', 'EI', 'EJ', 
            'EK', 'EL', 'EM', 'EN', 'EP', 'EQ', 'ER', 'ES', 'ET', 'EU',
            'EV', 'EW', 'EX', 'EY', 'EZ']

# 测试不同的数字范围
number_ranges = [
    (0, 99999999, '0-99999999', '低段'),
    (100000000, 199999999, '100000000-199999999', '1亿段'),
    (200000000, 299999999, '200000000-299999999', '2亿段'),
    (700000000, 799999999, '700000000-799999999', '7亿段'),
    (900000000, 999999999, '900000000-999999999', '高段'),
]

hotspot_candidates = []

for prefix in prefixes:
    print(f"\n{prefix}前缀:")
    
    for start, end, label, desc in number_ranges:
        print(f"  测试 {label} ({desc})...", end=' ')
        
        result = quick_test_range(prefix, start, end, sample_size=100)
        
        if result['valid'] > 0:
            print(f"✅ 有效:{result['valid']}/100 ({result['rate']:.1f}%) 未签收:{result['unsigned']}")
            
            if result['rate'] > 0.5:  # 命中率>0.5%就是热点
                hotspot_candidates.append({
                    'prefix': prefix,
                    'start': start,
                    'end': end,
                    'label': label,
                    'rate': result['rate'],
                    'unsigned_rate': result['unsigned_rate'],
                })
        else:
            print(f"❌ 无效")

print()
print("=" * 80)
print("🔥 发现的新热点区域")
print("=" * 80)

# 按命中率排序
hotspot_candidates.sort(key=lambda x: x['rate'], reverse=True)

if hotspot_candidates:
    print(f"\n找到 {len(hotspot_candidates)} 个新热点区域:\n")
    
    for i, hotspot in enumerate(hotspot_candidates[:15], 1):
        prefix = hotspot['prefix']
        start = hotspot['start']
        end = hotspot['end']
        rate = hotspot['rate']
        unsigned_rate = hotspot['unsigned_rate']
        
        # 计算这个区域可能的运单数
        estimated = int((end - start) * rate / 100)
        
        print(f"{i:2d}. {prefix}{start} ~ {end}")
        print(f"    有效率: {rate:.2f}% | 未签收率: {unsigned_rate:.2f}%")
        print(f"    预计有效: {estimated:,}个")
        
        if rate > 2:
            print(f"    🔥🔥🔥 超级热点！")
        elif rate > 1:
            print(f"    🔥🔥 高效区域")
        elif rate > 0.5:
            print(f"    🔥 可用区域")
    
    # 保存热点区域
    with open('discovered_hotspots.json', 'w') as f:
        json.dump(hotspot_candidates, f, indent=2)
    
    print(f"\n💾 已保存到: discovered_hotspots.json")
    
    # 估算
    total_estimated = sum(int((h['end'] - h['start']) * h['unsigned_rate'] / 100) 
                         for h in hotspot_candidates[:10])
    
    print()
    print("="*80)
    print("📊 爬取建议")
    print("="*80)
    print(f"前10个热点区域预计可找到: {total_estimated:,}个未签收运单")
    print(f"加上已有725个，预计可达: {total_estimated + 725:,}个")
    
    if total_estimated + 725 >= 10000:
        print("\n✅ 足够达到10000个目标！")
    else:
        print(f"\n⚠️  还需探索更多区域")
else:
    print("\n❌ 没有发现新的热点区域")
    print("   可能需要:")
    print("   1. 测试更细的数字分段")
    print("   2. 测试更多样本")
    print("   3. 尝试其他运单号格式（不只是E*VN）")

print()
print("="*80)
print("💡 下一步:")
print("="*80)
print("1. 查看 discovered_hotspots.json 的详细信息")
print("2. 运行针对这些新热点的爬取脚本")
print("="*80)
