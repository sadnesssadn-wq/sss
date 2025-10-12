#!/usr/bin/env python3
"""
智能探索新热点区域
策略：
1. 分析已知有效运单号的编号规律
2. 测试相邻区域（±1000, ±10000等）
3. 测试同类前缀的其他变体
4. 密集测试高概率区域
"""
import hashlib
import requests
import json
import time
from concurrent.futures import ThreadPoolExecutor, as_completed

KEY = '34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A'
API_URL = 'https://api-dingdong.ems.com.vn/api/TrackTrace/Lading'

def test_sequential(prefix, start, count=100):
    """测试连续的运单号（发现密集区）"""
    valid = 0
    unsigned = 0
    
    for i in range(count):
        code = f"{prefix}{start+i}VN"
        signature = hashlib.sha256((code.upper() + KEY).encode()).hexdigest().upper()
        payload = {'LadingCode': code, 'Signature': signature}
        
        try:
            r = requests.post(API_URL, json=payload, timeout=5)
            result = r.json()
            
            if result.get('Code') == '00':
                valid += 1
                data = result.get('Value', {})
                if not data.get('SignatureCapture'):
                    unsigned += 1
        except:
            pass
        
        time.sleep(0.05)
    
    return valid, unsigned

print("=" * 80)
print("🔍 智能探索新热点区域")
print("=" * 80)

# 策略1: 从已知热点扩展相邻区域
print("\n📊 策略1: 测试已知热点的相邻区域")
print("="*80)

known_hotspots = [
    ('EF047', 680000),  # 已知208个
    ('EF047', 550000),  # 已知124个
    ('EF043', 571000),  # 已知203个
    ('EJ711', 462000),  # 已知59个
    ('EJ711', 461000),  # 已知24个
]

print("\n测试相邻±10000的区域:")
new_hotspots = []

for prefix, base in known_hotspots[:3]:  # 先测试前3个
    print(f"\n{prefix}{base}附近:")
    
    # 测试前后区域
    for offset in [-20000, -10000, +10000, +20000]:
        test_start = base + offset
        if test_start < 0:
            continue
        
        print(f"  测试 {prefix}{test_start}...", end=' ')
        
        valid, unsigned = test_sequential(prefix, test_start, count=100)
        
        if valid > 0:
            rate = valid
            print(f"✅ {valid}/100 有效 | {unsigned}/100 未签收")
            
            if rate >= 2:  # 2%以上是热点
                new_hotspots.append({
                    'prefix': prefix,
                    'start': test_start,
                    'end': test_start + 9999,
                    'rate': rate,
                    'unsigned': unsigned,
                    'label': '新发现热点🔥'
                })
        else:
            print(f"❌")

# 策略2: 测试相同数字但不同前缀
print("\n\n📊 策略2: 测试其他前缀的相同数字范围")
print("="*80)

print("\n已知 EF047680000 有效率2%，测试其他前缀的680000区域:\n")

high_density_number = 680000
test_prefixes = ['EA047', 'EB047', 'EC047', 'ED047', 'EE047', 'EG047', 'EH047',
                 'EI047', 'EJ047', 'EK047', 'EL047', 'EM047', 'EN047', 'EP047']

for test_prefix in test_prefixes[:10]:
    print(f"  {test_prefix}{high_density_number}...", end=' ')
    
    valid, unsigned = test_sequential(test_prefix, high_density_number, count=50)
    
    if valid > 0:
        print(f"✅ {valid}/50 有效 | {unsigned}/50 未签收")
        
        if valid >= 1:
            new_hotspots.append({
                'prefix': test_prefix,
                'start': high_density_number,
                'end': high_density_number + 9999,
                'rate': valid * 2,  # 50个样本，乘2得百分比
                'unsigned': unsigned * 2,
                'label': '新前缀发现🆕'
            })
    else:
        print(f"❌")

# 策略3: 测试EFxxx的其他三位变体
print("\n\n📊 策略3: 测试EF的其他三位组合")
print("="*80)

print("\n已知 EF043, EF047 有效，测试 EF040-EF049:\n")

for middle in range(40, 50):
    if middle in [43, 47]:  # 跳过已知的
        continue
    
    test_prefix = f'EF0{middle}'
    test_start = 500000  # 测试50万段
    
    print(f"  {test_prefix}{test_start}...", end=' ')
    
    valid, unsigned = test_sequential(test_prefix, test_start, count=50)
    
    if valid > 0:
        print(f"✅ {valid}/50 有效 | {unsigned}/50 未签收")
        
        new_hotspots.append({
            'prefix': test_prefix,
            'start': test_start,
            'end': test_start + 99999,
            'rate': valid * 2,
            'unsigned': unsigned * 2,
            'label': '新EFxxx变体🆕'
        })
    else:
        print(f"❌")

# 策略4: 测试更新的数字（可能是最近的运单）
print("\n\n📊 策略4: 测试更大的数字（最新运单号）")
print("="*80)

print("\n测试 EF047 的 800000-900000 范围（比已知的747396更大）:\n")

for test_start in [800000, 850000, 900000, 950000]:
    print(f"  EF047{test_start}...", end=' ')
    
    valid, unsigned = test_sequential('EF047', test_start, count=50)
    
    if valid > 0:
        print(f"✅ {valid}/50 有效 | {unsigned}/50 未签收")
        
        new_hotspots.append({
            'prefix': 'EF047',
            'start': test_start,
            'end': test_start + 9999,
            'rate': valid * 2,
            'unsigned': unsigned * 2,
            'label': '最新区域🆕'
        })
    else:
        print(f"❌")

# 输出结果
print()
print("=" * 80)
print("✅ 探索完成")
print("=" * 80)

if new_hotspots:
    print(f"\n🎉 发现 {len(new_hotspots)} 个新热点区域！\n")
    
    # 按有效率排序
    new_hotspots.sort(key=lambda x: x['unsigned'], reverse=True)
    
    print("🔥 新热点列表（按未签收数量排序）:\n")
    for i, hotspot in enumerate(new_hotspots, 1):
        print(f"{i:2d}. {hotspot['prefix']}{hotspot['start']} ~ {hotspot['end']}")
        print(f"    未签收率: {hotspot['unsigned']:.1f}% | 有效率: {hotspot['rate']:.1f}%")
        print(f"    {hotspot['label']}")
    
    # 保存
    with open('new_hotspots.json', 'w') as f:
        json.dump(new_hotspots, f, indent=2, ensure_ascii=False)
    
    print(f"\n💾 已保存到: new_hotspots.json")
    
    # 估算总量
    total_unsigned = sum(int((h['end'] - h['start'] + 1) * h['unsigned'] / 100) 
                        for h in new_hotspots)
    
    print()
    print("="*80)
    print("📊 估算")
    print("="*80)
    print(f"新发现区域预计可找到: {total_unsigned:,}个未签收运单")
    print(f"加上已有725个，预计: {total_unsigned + 725:,}个")
    
    if total_unsigned + 725 >= 10000:
        print("\n✅ 足够达到10000个目标！")
    else:
        needed = 10000 - 725 - total_unsigned
        print(f"\n⚠️  还需要找到 {needed:,} 个")
else:
    print("\n❌ 没有发现新的热点区域")

print()
print("="*80)
print("💡 如果发现了新热点，可以:")
print("="*80)
print("1. 针对新热点区域进行密集爬取")
print("2. 继续探索这些新热点的相邻区域")
print("3. 组合所有热点区域达到10000个目标")
print("="*80)
