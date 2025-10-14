#!/usr/bin/env python3
"""
基于755个种子运单号，爬取邻近号码到10,000个
策略：从已知有效号码向前后扩展
"""
import requests
import hashlib
import time
import json
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading
import re

# API配置
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
API_URL = "https://api-dingdong.ems.com.vn/api/TrackTrace/Lading"

# 全局统计
lock = threading.Lock()
total_found = 0
total_checked = 0
results = {}  # 用dict去重

def generate_signature(code):
    """生成API签名"""
    data = code.upper() + PRIVATE_KEY
    return hashlib.sha256(data.encode('utf-8')).hexdigest().upper()

def verify_tracking(code):
    """验证运单号"""
    global total_checked, total_found
    
    signature = generate_signature(code)
    payload = {'LadingCode': code.upper(), 'Signature': signature}
    
    try:
        response = requests.post(API_URL, json=payload, timeout=8)
        result = response.json()
        
        with lock:
            total_checked += 1
            if total_checked % 100 == 0:
                print(f"\r   🔍 验证: {total_checked} | 找到: {total_found}/10000 | 有效率: {total_found/total_checked*100:.1f}%", end='')
        
        if result.get('Code') == '00':
            data = result.get('Value', {})
            
            # 只要未签收的
            signed = bool(data.get('SignatureCapture'))
            if signed:
                return None
            
            info = {
                'code': code,
                'value': data.get('Value', 0) or 0,
                'fee': data.get('Fee', 0) or 0,
                'receiver_phone': data.get('ReceiverMobile', ''),
            }
            
            with lock:
                if code not in results:
                    results[code] = info
                    total_found = len(results)
            
            return info
            
    except Exception as e:
        pass
    
    time.sleep(0.05)
    return None

def parse_tracking_number(code):
    """解析运单号：EA123456789VN -> (EA, 123456789)"""
    match = re.match(r'([A-Z]{2})(\d+)(VN)', code)
    if match:
        return match.group(1), int(match.group(2)), match.group(3)
    return None, None, None

def generate_nearby_codes(seed_code, radius=50):
    """基于种子运单号生成邻近号码"""
    prefix, num, suffix = parse_tracking_number(seed_code)
    if not prefix:
        return []
    
    codes = []
    for offset in range(-radius, radius + 1):
        new_num = num + offset
        if new_num > 0:
            new_code = f"{prefix}{new_num:09d}{suffix}"
            codes.append(new_code)
    
    return codes

def save_progress():
    """保存进度"""
    if results:
        result_list = list(results.values())
        
        with open('unsigned_progress.json', 'w', encoding='utf-8') as f:
            json.dump(result_list, f, indent=2, ensure_ascii=False)
        
        with open('unsigned_progress.txt', 'w', encoding='utf-8') as f:
            for item in result_list:
                f.write(f"{item['code']}\n")

def main():
    global total_found, total_checked
    
    print("="*80)
    print("🚀 基于755个种子爬取到10,000个未签收订单")
    print("="*80)
    print()
    
    # 读取种子运单号
    print("📖 读取种子运单号...")
    with open('user_provided_tracking.txt', 'r') as f:
        seeds = [line.strip() for line in f if line.strip()]
    
    print(f"   ✅ 读取 {len(seeds)} 个种子")
    
    # 先验证种子本身
    print("\n🌱 验证种子运单号...")
    with ThreadPoolExecutor(max_workers=5) as executor:
        futures = {executor.submit(verify_tracking, code): code for code in seeds}
        for future in as_completed(futures):
            future.result()
            time.sleep(0.1)
    
    print(f"\n   ✅ 种子验证完成: {total_found}个有效")
    
    # 保存种子结果
    save_progress()
    
    # 基于种子扩展爬取
    print(f"\n🎯 开始扩展爬取...")
    print(f"   目标: 10,000个")
    print()
    
    batch_num = 0
    while total_found < 10000:
        batch_num += 1
        print(f"\n第{batch_num}轮扩展:")
        
        # 生成候选号码
        candidates = set()
        for seed in list(results.keys())[:100]:  # 每轮从前100个种子扩展
            nearby = generate_nearby_codes(seed, radius=30)
            candidates.update(nearby)
        
        # 去除已验证的
        candidates = candidates - set(results.keys())
        candidates = list(candidates)[:2000]  # 每轮最多验证2000个
        
        if not candidates:
            print("   ⚠️  没有更多候选号码")
            break
        
        print(f"   候选: {len(candidates)}个")
        
        # 验证
        with ThreadPoolExecutor(max_workers=5) as executor:
            futures = {executor.submit(verify_tracking, code): code for code in candidates}
            for future in as_completed(futures):
                if total_found >= 10000:
                    break
                future.result()
                time.sleep(0.1)
        
        print(f"\n   ✅ 本轮完成: 找到 {total_found}/10000")
        
        # 保存进度
        save_progress()
        
        if total_found >= 10000:
            break
    
    print("\n" + "="*80)
    print("🎉 完成！")
    print("="*80)
    print(f"✅ 找到: {total_found} 个未签收订单")
    print(f"📊 验证: {total_checked} 个运单号")
    print(f"✨ 有效率: {total_found/total_checked*100:.2f}%")
    print("="*80)
    
    # 保存最终结果
    if results:
        result_list = list(results.values())
        
        with open('unsigned_10000_final.json', 'w', encoding='utf-8') as f:
            json.dump(result_list, f, indent=2, ensure_ascii=False)
        
        with open('unsigned_10000_final.txt', 'w', encoding='utf-8') as f:
            for item in result_list:
                f.write(f"{item['code']}\n")
        
        print(f"\n💾 已保存:")
        print(f"   unsigned_10000_final.json")
        print(f"   unsigned_10000_final.txt")

if __name__ == '__main__':
    main()
