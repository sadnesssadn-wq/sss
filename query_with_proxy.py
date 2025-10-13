#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
带代理池的运单查询工具
支持自动切换代理、限流控制、失败重试
"""

import hashlib
import requests
import json
import re
import csv
from datetime import datetime
import time
from proxy_pool import ProxyPool, make_request_with_proxy

PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"

def generate_signature(code):
    data = code.upper() + PRIVATE_KEY
    return hashlib.sha256(data.encode('utf-8')).hexdigest().upper()

def extract_phones_from_text(text):
    if not text:
        return []
    phones = re.findall(r'0\d{9}', str(text))
    return list(set(phones))

def query_order(code, proxy_pool=None, max_retries=3):
    """
    查询订单信息（支持代理池）
    
    Args:
        code: 运单号
        proxy_pool: 代理池实例（可选）
        max_retries: 最大重试次数
    """
    url = "https://api-dingdong.ems.com.vn/api/TrackTrace/Lading"
    signature = generate_signature(code)
    payload = {'LadingCode': code.upper(), 'Signature': signature}
    
    for attempt in range(max_retries):
        proxy_info = None
        
        try:
            # 获取代理
            if proxy_pool and proxy_pool.proxies:
                proxy_info = proxy_pool.get_next_proxy()
                proxies = proxy_info['proxy_dict']
            else:
                proxies = None
            
            # 发起请求
            response = requests.post(
                url,
                json=payload,
                proxies=proxies,
                timeout=10
            )
            result = response.json()
            
            # 标记成功
            if proxy_info:
                proxy_pool.mark_success(proxy_info)
            
            if result.get('Code') == '00':
                data = result.get('Value') or result.get('Data')
                if isinstance(data, str):
                    try:
                        data = json.loads(data)
                    except:
                        pass
                
                if isinstance(data, dict):
                    return {'success': True, 'code': code, 'data': data}
            
            return {'success': False, 'code': code, 'error': result.get('Message', '订单不存在')}
            
        except Exception as e:
            # 标记失败
            if proxy_info:
                proxy_pool.mark_failure(proxy_info)
            
            error_msg = str(e)
            
            # 如果是最后一次重试
            if attempt == max_retries - 1:
                return {'success': False, 'code': code, 'error': error_msg}
            
            # 等待后重试
            wait_time = (2 ** attempt) * 0.5
            time.sleep(wait_time)
    
    return {'success': False, 'code': code, 'error': '超过最大重试次数'}

def extract_info(order_data):
    data = order_data['data']
    
    # 提取电话
    receiver_phones = []
    
    phone_field = data.get('ReceiverMobile', '')
    if phone_field and phone_field != '0' and 'xxx' not in str(phone_field).lower():
        receiver_phones.extend(extract_phones_from_text(phone_field))
    
    for field in ['ReceiverAddress', 'ReceiverName']:
        text = data.get(field, '')
        if text:
            receiver_phones.extend(extract_phones_from_text(text))
    
    receiver_phones = list(set(receiver_phones))
    
    info = {
        '运单号': data.get('Code', order_data['code']),
        '订单ID': data.get('ID', ''),
        '包裹价值': data.get('Value', ''),
        '运费': data.get('Fee', ''),
        '收件人姓名': data.get('ReceiverName', ''),
        '收件人电话': ', '.join(receiver_phones) if receiver_phones else data.get('ReceiverMobile', ''),
        '收件人地址': data.get('ReceiverAddress', ''),
        '寄件人姓名': data.get('SenderName', ''),
        '寄件人电话': data.get('SenderMobile', ''),
        '寄件人地址': data.get('SenderAddress', ''),
        '是否已签收': '是' if data.get('SignatureCapture') else '否',
        '签收照片': data.get('SignatureCapture', '') or '',
    }
    
    return info

def main():
    print("="*80)
    print("🚀 批量查询运单号（带代理池 + 限流控制）")
    print("="*80)
    
    # 初始化代理池
    print("\n📡 初始化代理池...")
    proxy_pool = ProxyPool('proxies.txt', check_health=False)
    
    if proxy_pool.proxies:
        print(f"✅ 加载了 {len(proxy_pool.proxies)} 个代理")
        
        # 可选：健康检查（比较耗时，默认关闭）
        check_health = input("\n是否进行代理健康检查？(y/N): ").strip().lower() == 'y'
        if check_health:
            proxy_pool._health_check()
    else:
        print("⚠️  未找到代理配置，将直连访问")
    
    # 读取运单号
    try:
        with open('key.txt', 'r', encoding='utf-8') as f:
            codes = [line.strip() for line in f if line.strip() and not line.strip().startswith('#')]
    except FileNotFoundError:
        print("\n❌ 找不到 key.txt 文件！")
        print("💡 请创建 key.txt 文件，每行一个运单号")
        return
    
    if not codes:
        print("\n❌ key.txt 文件为空！")
        return
    
    print(f"\n📋 读取到 {len(codes)} 个运单号")
    
    # 配置限流
    delay_between_requests = 0.5  # 每次请求之间的延迟（秒）
    print(f"⏱️  请求间隔: {delay_between_requests} 秒")
    
    # 开始查询
    print("\n" + "="*80)
    print("开始查询...")
    print("="*80 + "\n")
    
    results = []
    start_time = time.time()
    
    for i, code in enumerate(codes, 1):
        proxy_info = "直连"
        if proxy_pool.proxies:
            # 预览将要使用的代理
            next_proxy = proxy_pool.proxies[proxy_pool.current_index]
            proxy_info = f"代理 {next_proxy['raw'].split(':')[0]}"
        
        print(f"[{i}/{len(codes)}] {code} ({proxy_info})...", end=' ', flush=True)
        
        result = query_order(code, proxy_pool)
        
        if result['success']:
            info = extract_info(result)
            results.append(info)
            print(f"✅ {info['收件人电话']}")
        else:
            print(f"❌ {result.get('error', '未知错误')}")
        
        # 限流控制（最后一个请求不需要延迟）
        if i < len(codes):
            time.sleep(delay_between_requests)
    
    elapsed_time = time.time() - start_time
    
    # 显示统计
    print("\n" + "="*80)
    print("📊 查询统计")
    print("="*80)
    print(f"总查询数: {len(codes)}")
    print(f"成功: {len(results)}")
    print(f"失败: {len(codes) - len(results)}")
    print(f"耗时: {elapsed_time:.1f} 秒")
    print(f"平均速度: {len(codes)/elapsed_time:.2f} 条/秒")
    
    # 代理池统计
    if proxy_pool.proxies:
        print(proxy_pool.get_stats())
        proxy_pool.print_top_proxies(5)
    
    # 保存结果
    if not results:
        print("\n⚠️  没有成功的查询结果，不生成文件")
        return
    
    print("\n" + "="*80)
    print("💾 保存结果...")
    print("="*80)
    
    timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
    csv_file = f'result_{timestamp}.csv'
    json_file = f'result_{timestamp}.json'
    
    # 保存 CSV
    with open(csv_file, 'w', encoding='utf-8-sig', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=results[0].keys())
        writer.writeheader()
        writer.writerows(results)
    
    # 保存 JSON
    with open(json_file, 'w', encoding='utf-8') as f:
        json.dump(results, f, indent=2, ensure_ascii=False)
    
    print(f"\n✅ 完成！结果已保存:")
    print(f"   📄 {csv_file}")
    print(f"   📄 {json_file}")
    print("\n" + "="*80)

if __name__ == '__main__':
    main()
