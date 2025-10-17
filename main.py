#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import hashlib
import requests
import json
import re
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
64.137.73.19:5107:uadkcvtn:uo2rzar814ph
45.131.101.19:6286:uadkcvtn:uo2rzar814ph
104.239.40.197:6816:uadkcvtn:uo2rzar814ph
82.21.209.226:6555:uadkcvtn:uo2rzar814ph
23.26.71.157:5640:uadkcvtn:uo2rzar814ph
23.27.91.75:6154:uadkcvtn:uo2rzar814ph
23.95.150.72:6041:uadkcvtn:uo2rzar814ph
82.26.218.128:6436:uadkcvtn:uo2rzar814ph
91.223.126.118:6730:uadkcvtn:uo2rzar814ph
145.223.44.177:5860:uadkcvtn:uo2rzar814ph
45.38.94.42:5963:uadkcvtn:uo2rzar814ph
23.26.95.215:5697:uadkcvtn:uo2rzar814ph
50.114.15.8:5993:uadkcvtn:uo2rzar814ph
82.24.217.113:5443:uadkcvtn:uo2rzar814ph
136.0.109.46:6332:uadkcvtn:uo2rzar814ph
""".strip()

THREAD_COUNT = 20

class ProxyPool:
    def __init__(self, proxy_list_str):
        self.proxies = []
        self.failed_proxies = set()
        self.current_index = 0
        self.lock = threading.Lock()
        self._load_proxies(proxy_list_str)
    
    def _load_proxies(self, proxy_list_str):
        lines = [line.strip() for line in proxy_list_str.split('\n') if line.strip()]
        for line in lines:
            proxy_dict = self._parse_proxy(line)
            if proxy_dict:
                self.proxies.append({
                    'raw': line,
                    'proxy_dict': proxy_dict,
                    'success_count': 0,
                    'fail_count': 0
                })
        print(f"加载了 {len(self.proxies)} 个代理")
    
    def _parse_proxy(self, proxy_str):
        try:
            parts = proxy_str.split(':')
            if len(parts) == 4:
                ip, port, username, password = parts
                proxy_url = f"http://{username}:{password}@{ip}:{port}"
                return {'http': proxy_url, 'https': proxy_url}
        except:
            pass
        return None
    
    def get_next_proxy(self):
        if not self.proxies:
            return None
        with self.lock:
            attempts = 0
            while attempts < len(self.proxies):
                proxy = self.proxies[self.current_index]
                self.current_index = (self.current_index + 1) % len(self.proxies)
                if proxy['raw'] not in self.failed_proxies:
                    return proxy
                attempts += 1
            self.failed_proxies.clear()
            return self.proxies[0]
    
    def mark_success(self, proxy):
        if proxy:
            with self.lock:
                proxy['success_count'] += 1
                if proxy['raw'] in self.failed_proxies:
                    self.failed_proxies.discard(proxy['raw'])
    
    def mark_failure(self, proxy):
        if proxy:
            with self.lock:
                proxy['fail_count'] += 1
                if proxy['fail_count'] >= 2:
                    self.failed_proxies.add(proxy['raw'])
    
    def get_stats(self):
        if not self.proxies:
            return "无代理"
        total = len(self.proxies)
        failed = len(self.failed_proxies)
        total_success = sum(p['success_count'] for p in self.proxies)
        total_fail = sum(p['fail_count'] for p in self.proxies)
        return f"""
代理池统计:
  总代理数: {total}
  可用代理: {total - failed}
  失败代理: {failed}
  总成功: {total_success}
  总失败: {total_fail}
  成功率: {total_success/(total_success+total_fail)*100 if (total_success+total_fail)>0 else 0:.1f}%
"""

def generate_signature(code):
    """生成签名：SHA256(运单号 + APIKey)"""
    data = code.upper() + PRIVATE_KEY
    return hashlib.sha256(data.encode('utf-8')).hexdigest().upper()

def extract_phones_from_text(text):
    if not text:
        return []
    phones = re.findall(r'0\d{9}', str(text))
    return list(set(phones))

def call_api_with_retry(url, headers, data=None, json_data=None, proxies=None, max_retries=3):
    """调用API并支持重试"""
    for attempt in range(max_retries):
        try:
            if json_data:
                r = requests.post(url, headers=headers, json=json_data, proxies=proxies, timeout=10)
            else:
                r = requests.post(url, headers=headers, data=data, proxies=proxies, timeout=10)
            
            if r.status_code == 200:
                return r.json()
        except:
            if attempt < max_retries - 1:
                time.sleep(0.2)
                continue
    return None

def query_all_apis(code, proxy_pool):
    """调用所有4个API获取完整数据"""
    code = code.upper()
    signature = generate_signature(code)
    
    result_data = {
        'tracking_code': code,
        'api_tracktrace': None,
        'api_inquiry': None,
        'api_journey': None,
        'api_gateway': None,
        'success': False
    }
    
    max_retries = 5
    
    for attempt in range(max_retries):
        proxy_info = proxy_pool.get_next_proxy()
        proxies = proxy_info['proxy_dict'] if proxy_info else None
        
        try:
            # API 1: TrackTrace/Lading (原有API)
            url1 = "https://api-dingdong.ems.com.vn/api/TrackTrace/Lading"
            payload1 = {'LadingCode': code, 'Signature': signature}
            api1_result = call_api_with_retry(url1, {}, json_data=payload1, proxies=proxies)
            
            if api1_result and api1_result.get('Code') == '00':
                data = api1_result.get('Value') or api1_result.get('Data')
                if isinstance(data, str):
                    try:
                        data = json.loads(data)
                    except:
                        pass
                result_data['api_tracktrace'] = data
            
            # API 2: Inquiry
            url2 = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
            headers2 = {
                "Authorization": f"Basic {BASIC_AUTH}",
                "APIKey": PRIVATE_KEY,
                "Content-Type": "application/x-www-form-urlencoded"
            }
            data2 = {"ParcelCode": code, "Signature": signature}
            api2_result = call_api_with_retry(url2, headers2, data=data2, proxies=proxies)
            
            if api2_result and api2_result.get('Code') == '00':
                result_data['api_inquiry'] = api2_result.get('Value')
            
            # API 3: Journey
            url3 = "https://api-dingdong.ems.com.vn/api/Delivery/DeliveryLadingJourney"
            data3 = {"ParcelCode": code}
            api3_result = call_api_with_retry(url3, headers2, data=data3, proxies=proxies)
            
            if api3_result and api3_result.get('Code') == '00':
                result_data['api_journey'] = api3_result.get('ListValue')
            
            # API 4: Gateway
            url4 = "https://api-dingdong.ems.com.vn/api/Gateway/Bussiness"
            headers4 = {
                "Authorization": f"Basic {BASIC_AUTH}",
                "APIKey": PRIVATE_KEY,
                "Content-Type": "application/json"
            }
            json4 = {"Code": "LDP002", "Data": code}
            api4_result = call_api_with_retry(url4, headers4, json_data=json4, proxies=proxies)
            
            if api4_result and api4_result.get('Code') == '00':
                try:
                    products = json.loads(api4_result.get('Data', '[]'))
                    result_data['api_gateway'] = products
                except:
                    result_data['api_gateway'] = []
            
            # 判断是否成功（至少有一个API返回数据）
            if any([result_data['api_tracktrace'], result_data['api_inquiry'], 
                   result_data['api_journey'], result_data['api_gateway']]):
                result_data['success'] = True
                if proxy_info:
                    proxy_pool.mark_success(proxy_info)
                return result_data
            else:
                # 所有API都失败，可能是运单不存在
                if api1_result and api1_result.get('Code') == '01':
                    if proxy_info:
                        proxy_pool.mark_success(proxy_info)
                    return result_data  # 运单不存在，返回空数据
                
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
    
    return result_data

def merge_all_data(result_data):
    """合并所有API的数据到一个字典"""
    merged = {
        '运单号': result_data['tracking_code'],
        
        # 从 Inquiry API 获取的字段
        'Count': '',
        'IsCOD': '',
        'ParcelCode': '',
        'SenderName': '',
        'SenderAddress': '',
        'SenderPhone': '',
        'ReceiverName': '',
        'ReceiverAddress': '',
        'ReceiverPhone': '',
        'ReceiverIDNumber': '',
        'CollectAmount': '',
        'IsPaypost': '',
        'ReceiveCollectFee': '',
        'IssuePOCode': '',
        'IssueDate': '',
        'LoadDate': '',
        'DeliveryPOCode': '',
        'DeliveryDate': '',
        'Weigh': '',
        'Status': '',
        'StatusName': '',
        'ReasonName': '',
        'SolutionName': '',
        'CheckStatus': '',
        'CheckStatusNo': '',
        'Note': '',
        'RouteCode': '',
        'IsPaypostName': '',
        'DeliverySignature': '',
        'DeliveryImage': '',
        'DeliveryImageAuthen': '',
        'AmountCOD': '',
        'FeePPA': '',
        'FeeC': '',
        'FeeShip': '',
        'FeeCancelOrder': '',
        'FeeCollectLater': '',
        'Instruction': '',
        'VATCode': '',
        
        # 从 TrackTrace API 获取的字段
        'TrackTrace_ID': '',
        'TrackTrace_Value': '',
        'TrackTrace_Fee': '',
        'TrackTrace_ReceiverMobile': '',
        'TrackTrace_SenderMobile': '',
        'TrackTrace_SignatureCapture': '',
        
        # Journey 信息
        'JourneyCount': 0,
        'IsDelivered': '否',
        
        # Gateway 商品信息
        'ProductCount': 0,
        'ProductName': '',
        'ProductQuantity': '',
        'ProductPrice': '',
        'ProductAmount': '',
        'ProductWeight': '',
    }
    
    # 填充 Inquiry 数据
    if result_data['api_inquiry']:
        inquiry = result_data['api_inquiry']
        for key in inquiry.keys():
            if key in merged:
                val = inquiry[key]
                merged[key] = val if val is not None else ''
    
    # 填充 TrackTrace 数据
    if result_data['api_tracktrace']:
        tt = result_data['api_tracktrace']
        if isinstance(tt, dict):
            merged['TrackTrace_ID'] = tt.get('ID', '')
            merged['TrackTrace_Value'] = tt.get('Value', '')
            merged['TrackTrace_Fee'] = tt.get('Fee', '')
            merged['TrackTrace_ReceiverMobile'] = tt.get('ReceiverMobile', '')
            merged['TrackTrace_SenderMobile'] = tt.get('SenderMobile', '')
            merged['TrackTrace_SignatureCapture'] = tt.get('SignatureCapture', '')
            
            # 如果 Inquiry API 没有电话，使用 TrackTrace 的
            if not merged['ReceiverPhone'] and merged['TrackTrace_ReceiverMobile']:
                merged['ReceiverPhone'] = merged['TrackTrace_ReceiverMobile']
            if not merged['SenderPhone'] and merged['TrackTrace_SenderMobile']:
                merged['SenderPhone'] = merged['TrackTrace_SenderMobile']
    
    # 填充 Journey 数据
    if result_data['api_journey']:
        journey = result_data['api_journey']
        if isinstance(journey, list):
            merged['JourneyCount'] = len(journey)
            merged['IsDelivered'] = '是' if len(journey) > 0 else '否'
    
    # 填充 Gateway 商品数据
    if result_data['api_gateway']:
        products = result_data['api_gateway']
        if isinstance(products, list) and len(products) > 0:
            merged['ProductCount'] = len(products)
            first_product = products[0]
            merged['ProductName'] = first_product.get('ProductName', '')
            merged['ProductQuantity'] = first_product.get('Quantity', '')
            merged['ProductPrice'] = first_product.get('Price', '')
            merged['ProductAmount'] = first_product.get('Amount', '')
            merged['ProductWeight'] = first_product.get('Weight', '')
    
    # 提取所有电话号码
    all_phones = []
    if merged['ReceiverPhone']:
        all_phones.extend(extract_phones_from_text(merged['ReceiverPhone']))
    if merged['ReceiverAddress']:
        all_phones.extend(extract_phones_from_text(merged['ReceiverAddress']))
    if merged['ReceiverName']:
        all_phones.extend(extract_phones_from_text(merged['ReceiverName']))
    if merged['TrackTrace_ReceiverMobile']:
        all_phones.extend(extract_phones_from_text(merged['TrackTrace_ReceiverMobile']))
    
    if all_phones:
        merged['ReceiverPhone'] = ', '.join(list(set(all_phones)))
    
    return merged

def process_code(code, proxy_pool, progress):
    """处理单个运单号 - 修改：无论是否有电话号码都保存"""
    result_data = query_all_apis(code, proxy_pool)
    
    # 修改：无论成功与否都保存结果，都调用merge_all_data
    merged_info = merge_all_data(result_data)
    
    if result_data['success']:
        status = f"OK [4API] {merged_info['ReceiverPhone'][:20] if merged_info['ReceiverPhone'] else '无电话'}"
    else:
        status = f"FAIL [不存在]"
    
    return (True, merged_info, status, code)  # 始终返回True，确保保存

def main():
    print("="*80)
    print("批量查询运单号 - 完整版（4个API + 所有字段 + 全格式保存）")
    print("="*80)
    
    print("\n初始化代理池...")
    proxy_pool = ProxyPool(PROXIES)
    
    try:
        with open('key.txt', 'r', encoding='utf-8') as f:
            codes = [line.strip() for line in f if line.strip() and not line.strip().startswith('#')]
    except FileNotFoundError:
        print("\n找不到 key.txt 文件！")
        return
    
    if not codes:
        print("\nkey.txt 文件为空！")
        return
    
    print(f"读取到 {len(codes)} 个运单号")
    print(f"并发线程: {THREAD_COUNT} 个")
    print("调用API: TrackTrace + Inquiry + Journey + Gateway")
    print("遇到Code:98自动换IP重试")
    print("全格式保存：无论是否有电话号码都保存所有结果\n")
    
    print("="*80)
    print("开始查询...")
    print("="*80 + "\n")
    
    results = []
    progress = {'count': 0, 'lock': threading.Lock()}
    start_time = time.time()
    
    with ThreadPoolExecutor(max_workers=THREAD_COUNT) as executor:
        futures = {executor.submit(process_code, code, proxy_pool, progress): code for code in codes}
        
        for future in as_completed(futures):
            with progress['lock']:
                progress['count'] += 1
                current = progress['count']
            
            success, info, status, code = future.result()
            
            # 修改：所有结果都保存
            results.append(info)
            
            print(f"[{current}/{len(codes)}] {code} {status}")
            
            if current % 50 == 0:
                elapsed = time.time() - start_time
                speed = current / elapsed
                success_count = len([r for r in results if r.get('ReceiverPhone', '')])
                success_rate = success_count / current * 100 if current > 0 else 0
                print(f"\n--- 进度: {current}/{len(codes)} | 有电话: {success_count} ({success_rate:.1f}%) | 速度: {speed:.1f}条/秒 ---\n")
    
    elapsed_time = time.time() - start_time
    
    print("\n" + "="*80)
    print("查询统计")
    print("="*80)
    print(f"总查询数: {len(codes)}")
    print(f"有电话数据: {len([r for r in results if r.get('ReceiverPhone', '')])}")
    print(f"无电话数据: {len([r for r in results if not r.get('ReceiverPhone', '')])}")
    print(f"总保存数: {len(results)}")
    print(f"耗时: {elapsed_time:.1f} 秒")
    print(f"平均速度: {len(codes)/elapsed_time:.1f} 条/秒")
    
    print(proxy_pool.get_stats())
    
    if not results:
        print("\n没有查询结果")
        return
    
    timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
    csv_file = f'result_full_{timestamp}.csv'
    json_file = f'result_full_{timestamp}.json'
    
    # 保存CSV（所有字段）
    with open(csv_file, 'w', encoding='utf-8-sig', newline='') as f:
        if results:
            writer = csv.DictWriter(f, fieldnames=results[0].keys())
            writer.writeheader()
            writer.writerows(results)
    
    # 保存JSON（所有字段）
    with open(json_file, 'w', encoding='utf-8') as f:
        json.dump(results, f, indent=2, ensure_ascii=False)
    
    print(f"\n完成！结果已保存:")
    print(f"   {csv_file} - 包含所有 {len(results[0].keys()) if results else 0} 个字段")
    print(f"   {json_file}")
    print("注意：现在所有查询结果都会保存，无论是否有电话号码")
    print("\n" + "="*80)

if __name__ == '__main__':
    main()