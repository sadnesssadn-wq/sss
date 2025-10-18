#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import hashlib
import requests
import json
import csv
from datetime import datetime
import time
from typing import Optional, Dict
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

PROXIES = """
23.27.184.245:5846:uadkcvtn:uo2rzar814ph
45.43.70.140:6427:uadkcvtn:uo2rzar814ph
82.24.233.117:5439:uadkcvtn:uo2rzar814ph
136.0.188.71:6034:uadkcvtn:uo2rzar814ph
161.123.130.168:5839:uadkcvtn:uo2rzar814ph
142.147.240.52:6574:uadkcvtn:uo2rzar814ph
166.88.224.145:6043:uadkcvtn:uo2rzar814ph
82.25.215.106:5457:uadkcvtn:uo2rzar814ph
91.211.87.215:7205:uadkcvtn:uo2rzar814ph
104.238.36.64:6071:uadkcvtn:uo2rzar814ph
104.239.40.211:6830:uadkcvtn:uo2rzar814ph
67.227.37.26:5568:uadkcvtn:uo2rzar814ph
108.165.218.84:5823:uadkcvtn:uo2rzar814ph
109.196.160.242:5988:uadkcvtn:uo2rzar814ph
104.238.38.204:6472:uadkcvtn:uo2rzar814ph
140.99.203.108:5985:uadkcvtn:uo2rzar814ph
82.25.224.37:7848:uadkcvtn:uo2rzar814ph
216.74.118.50:6205:uadkcvtn:uo2rzar814ph
104.239.13.199:6828:uadkcvtn:uo2rzar814ph
161.123.152.216:6461:uadkcvtn:uo2rzar814ph
185.72.240.218:7254:uadkcvtn:uo2rzar814ph
104.239.43.88:5816:uadkcvtn:uo2rzar814ph
92.113.115.48:5995:uadkcvtn:uo2rzar814ph
145.223.44.64:5747:uadkcvtn:uo2rzar814ph
155.254.34.216:6196:uadkcvtn:uo2rzar814ph
166.88.169.112:6719:uadkcvtn:uo2rzar814ph
82.23.223.60:7904:uadkcvtn:uo2rzar814ph
166.88.235.140:5768:uadkcvtn:uo2rzar814ph
23.129.252.17:6285:uadkcvtn:uo2rzar814ph
46.203.134.90:5714:uadkcvtn:uo2rzar814ph
82.23.227.49:7352:uadkcvtn:uo2rzar814ph
104.239.13.114:6743:uadkcvtn:uo2rzar814ph
50.114.98.129:5613:uadkcvtn:uo2rzar814ph
154.6.83.144:6615:uadkcvtn:uo2rzar814ph
45.38.86.229:6158:uadkcvtn:uo2rzar814ph
"""

class ProxyPool:
    def __init__(self, proxy_list):
        self.proxies = []
        for line in proxy_list.strip().split('\n'):
            if line.strip():
                parts = line.strip().split(':')
                if len(parts) == 4:
                    ip, port, username, password = parts
                    proxy_dict = {
                        'http': f'http://{username}:{password}@{ip}:{port}',
                        'https': f'http://{username}:{password}@{ip}:{port}'
                    }
                    self.proxies.append({
                        'proxy_dict': proxy_dict,
                        'failures': 0,
                        'successes': 0
                    })
        self.current_index = 0
        self.lock = threading.Lock()
    
    def get_next_proxy(self):
        with self.lock:
            if not self.proxies:
                return None
            proxy = self.proxies[self.current_index]
            self.current_index = (self.current_index + 1) % len(self.proxies)
            return proxy
    
    def mark_success(self, proxy_info):
        if proxy_info:
            proxy_info['successes'] += 1
            proxy_info['failures'] = 0
    
    def mark_failure(self, proxy_info):
        if proxy_info:
            proxy_info['failures'] += 1
            if proxy_info['failures'] >= 3:
                # 移除失败的代理
                with self.lock:
                    if proxy_info in self.proxies:
                        self.proxies.remove(proxy_info)

def generate_signature(code):
    """生成签名：SHA256(运单号 + APIKey)"""
    data = code.upper() + PRIVATE_KEY
    return hashlib.sha256(data.encode('utf-8')).hexdigest().upper()

def call_api_with_retry(url, headers, data=None, json_data=None, proxies=None, max_retries=3):
    """调用API并支持重试"""
    for attempt in range(max_retries):
        try:
            if json_data:
                response = requests.post(url, headers=headers, json=json_data, proxies=proxies, timeout=10)
            else:
                response = requests.post(url, headers=headers, data=data, proxies=proxies, timeout=10)
            
            if response.status_code == 200:
                return response.json()
            else:
                print(f"HTTP错误: {response.status_code}")
                if attempt < max_retries - 1:
                    time.sleep(0.5)
                    continue
        except requests.exceptions.Timeout:
            print(f"超时错误 (尝试 {attempt + 1}/{max_retries})")
            if attempt < max_retries - 1:
                time.sleep(1)
                continue
        except requests.exceptions.ConnectionError:
            print(f"连接错误 (尝试 {attempt + 1}/{max_retries})")
            if attempt < max_retries - 1:
                time.sleep(1)
                continue
        except Exception as e:
            print(f"其他错误: {e} (尝试 {attempt + 1}/{max_retries})")
            if attempt < max_retries - 1:
                time.sleep(0.5)
                continue
    
    return None

def query_cod_status(code, proxy_pool):
    """查询单个订单的COD状态"""
    signature = generate_signature(code)
    
    # 使用API 2: Delivery/Inquiry 获取最详细的COD信息
    url = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    data = {"ParcelCode": code, "Signature": signature}
    
    max_retries = 5
    
    for attempt in range(max_retries):
        proxy_info = proxy_pool.get_next_proxy()
        proxies = proxy_info['proxy_dict'] if proxy_info else None
        
        try:
            api_result = call_api_with_retry(url, headers, data=data, proxies=proxies)
            
            if api_result and api_result.get('Code') == '00':
                inquiry_data = api_result.get('Value', {})
                is_cod = inquiry_data.get('IsCOD')
                
                if proxy_info:
                    proxy_pool.mark_success(proxy_info)
                
                return {
                    'success': True,
                    'is_cod': is_cod,
                    'data': inquiry_data,
                    'code': code
                }
            else:
                # API返回错误
                if api_result and api_result.get('Code') == '01':
                    if proxy_info:
                        proxy_pool.mark_success(proxy_info)
                    return {
                        'success': False,
                        'error': '运单号不存在',
                        'code': code
                    }
                
                # Code 98 或其他错误，换代理重试
                if proxy_info:
                    proxy_pool.mark_failure(proxy_info)
                time.sleep(0.2)
                continue
                
        except Exception as e:
            if proxy_info:
                proxy_pool.mark_failure(proxy_info)
            time.sleep(0.3)
            continue
    
    return {
        'success': False,
        'error': '查询失败',
        'code': code
    }

def process_code(code, proxy_pool, progress):
    """处理单个运单号 - 只保存非COD订单"""
    result = query_cod_status(code, proxy_pool)
    
    if result['success']:
        is_cod = result['is_cod']
        data = result['data']
        
        if is_cod == 'N':  # 非COD订单
            # 提取关键信息
            info = {
                '运单号': code,
                'COD状态': '非货到付款',
                '收件人': data.get('ReceiverName', ''),
                '收件人电话': data.get('ReceiverPhone', ''),
                '发件人': data.get('SenderName', ''),
                '发件人电话': data.get('SenderPhone', ''),
                '收件地址': data.get('ReceiverAddress', ''),
                '发件地址': data.get('SenderAddress', ''),
                '代收金额': data.get('CollectAmount', 0),
                'COD金额': data.get('AmountCOD', 0),
                '状态': data.get('Status', ''),
                '状态名称': data.get('StatusName', ''),
                '重量': data.get('Weigh', ''),
                '备注': data.get('Note', ''),
                '查询时间': datetime.now().strftime('%Y-%m-%d %H:%M:%S')
            }
            
            status = f"✅ 非COD订单 - {info['收件人']} - {info['收件人电话']}"
            return (True, info, status, code)
        else:  # COD订单
            status = f"💰 COD订单 - {data.get('ReceiverName', '')} - {data.get('ReceiverPhone', '')}"
            return (False, None, status, code)
    else:
        status = f"❌ {result['error']}"
        return (False, None, status, code)

def main():
    """主函数 - 专门查询非COD订单"""
    print("🔍 非COD订单查询工具")
    print("=" * 60)
    
    # 读取运单号列表
    try:
        with open('key.txt', 'r', encoding='utf-8') as f:
            lines = f.readlines()
    except FileNotFoundError:
        print("❌ 找不到 key.txt 文件")
        return
    
    # 过滤出有效的运单号
    codes = []
    for line in lines:
        line = line.strip()
        if line and not line.startswith('#'):
            codes.append(line)
    
    if not codes:
        print("❌ key.txt 中没有找到有效的运单号")
        return
    
    print(f"📦 找到 {len(codes)} 个运单号")
    print("🎯 目标: 只保存非COD订单")
    print("=" * 60)
    
    # 初始化代理池
    proxy_pool = ProxyPool(PROXIES)
    print(f"🌐 代理池: {len(proxy_pool.proxies)} 个代理")
    
    # 并发处理
    THREAD_COUNT = 20
    results = []
    cod_count = 0
    failed_count = 0
    
    with ThreadPoolExecutor(max_workers=THREAD_COUNT) as executor:
        # 提交所有任务
        future_to_code = {
            executor.submit(process_code, code, proxy_pool, None): code 
            for code in codes
        }
        
        # 处理完成的任务
        for i, future in enumerate(as_completed(future_to_code), 1):
            code = future_to_code[future]
            try:
                success, info, status, _ = future.result()
                
                print(f"[{i}/{len(codes)}] {code} - {status}")
                
                if success and info:
                    results.append(info)
                elif not success and info is None:
                    if "COD订单" in status:
                        cod_count += 1
                    else:
                        failed_count += 1
                else:
                    failed_count += 1
                    
            except Exception as e:
                print(f"[{i}/{len(codes)}] {code} - ❌ 处理异常: {e}")
                failed_count += 1
    
    # 保存结果
    if results:
        # 保存为CSV
        csv_filename = f"non_cod_orders_{datetime.now().strftime('%Y%m%d_%H%M%S')}.csv"
        with open(csv_filename, 'w', newline='', encoding='utf-8-sig') as csvfile:
            fieldnames = results[0].keys()
            writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
            writer.writeheader()
            writer.writerows(results)
        
        # 保存为JSON
        json_filename = f"non_cod_orders_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        with open(json_filename, 'w', encoding='utf-8') as jsonfile:
            json.dump(results, jsonfile, ensure_ascii=False, indent=2)
        
        print(f"\n💾 结果已保存:")
        print(f"   CSV: {csv_filename}")
        print(f"   JSON: {json_filename}")
    
    # 统计结果
    print(f"\n📊 查询统计:")
    print(f"   总运单号: {len(codes)}")
    print(f"   非COD订单: {len(results)}")
    print(f"   COD订单: {cod_count}")
    print(f"   查询失败: {failed_count}")
    
    if results:
        print(f"\n📦 非COD订单列表:")
        for i, order in enumerate(results, 1):
            print(f"   {i}. {order['运单号']} - {order['收件人']} - {order['收件人电话']} - 代收金额: {order['代收金额']}")

if __name__ == "__main__":
    main()