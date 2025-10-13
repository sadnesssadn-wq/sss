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

THREAD_COUNT = 20  # 并发线程数

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
    data = code.upper() + PRIVATE_KEY
    return hashlib.sha256(data.encode('utf-8')).hexdigest().upper()

def extract_phones_from_text(text):
    if not text:
        return []
    phones = re.findall(r'0\d{9}', str(text))
    return list(set(phones))

def query_order(code, proxy_pool):
    url = "https://api-dingdong.ems.com.vn/api/TrackTrace/Lading"
    signature = generate_signature(code)
    payload = {'LadingCode': code.upper(), 'Signature': signature}
    
    max_retries = 10
    
    for attempt in range(max_retries):
        proxy_info = proxy_pool.get_next_proxy()
        try:
            proxies = proxy_info['proxy_dict'] if proxy_info else None
            response = requests.post(url, json=payload, proxies=proxies, timeout=15)
            result = response.json()
            response_code = result.get('Code', '')
            error_msg = result.get('Message', '未知错误')
            
            if response_code == '00':
                if proxy_info:
                    proxy_pool.mark_success(proxy_info)
                data = result.get('Value') or result.get('Data')
                if isinstance(data, str):
                    try:
                        data = json.loads(data)
                    except:
                        pass
                if isinstance(data, dict):
                    return {'success': True, 'code': code, 'data': data}
            
            elif response_code == '98':
                if proxy_info:
                    proxy_pool.mark_failure(proxy_info)
                time.sleep(0.2)
                continue
            
            else:
                if response_code == '01' or 'không tìm thấy' in error_msg.lower():
                    if proxy_info:
                        proxy_pool.mark_success(proxy_info)
                return {'success': False, 'code': code, 'error': error_msg, 'api_code': response_code}
            
        except:
            if proxy_info:
                proxy_pool.mark_failure(proxy_info)
            time.sleep(0.3)
            continue
    
    return {'success': False, 'code': code, 'error': '超过最大重试次数', 'api_code': 'MAX_RETRY'}

def extract_info(order_data):
    data = order_data['data']
    receiver_phones = []
    phone_field = data.get('ReceiverMobile', '')
    if phone_field and phone_field != '0' and 'xxx' not in str(phone_field).lower():
        receiver_phones.extend(extract_phones_from_text(phone_field))
    for field in ['ReceiverAddress', 'ReceiverName']:
        text = data.get(field, '')
        if text:
            receiver_phones.extend(extract_phones_from_text(text))
    receiver_phones = list(set(receiver_phones))
    return {
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

def process_code(code, proxy_pool, progress):
    result = query_order(code, proxy_pool)
    
    status = ""
    if result['success']:
        info = extract_info(result)
        status = f"OK [00] {info['收件人电话']}"
        return (True, info, status, code)
    else:
        api_code = result.get('api_code', 'N/A')
        if api_code == '01':
            status = f"FAIL [01]"
        elif api_code == '98':
            status = f"FAIL [98]"
        else:
            status = f"FAIL [{api_code}]"
        return (False, None, status, code)

def main():
    print("="*80)
    print("批量查询运单号（多线程 + 代理池）")
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
    print("遇到Code:98自动换IP重试\n")
    
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
            
            if success:
                results.append(info)
            
            print(f"[{current}/{len(codes)}] {code} {status}")
            
            if current % 100 == 0:
                elapsed = time.time() - start_time
                speed = current / elapsed
                success_rate = len(results) / current * 100
                print(f"\n--- 进度: {current}/{len(codes)} | 成功: {len(results)} ({success_rate:.1f}%) | 速度: {speed:.1f}条/秒 ---\n")
    
    elapsed_time = time.time() - start_time
    
    print("\n" + "="*80)
    print("查询统计")
    print("="*80)
    print(f"总查询数: {len(codes)}")
    print(f"成功: {len(results)}")
    print(f"失败: {len(codes) - len(results)}")
    print(f"耗时: {elapsed_time:.1f} 秒")
    print(f"平均速度: {len(codes)/elapsed_time:.1f} 条/秒")
    
    print(proxy_pool.get_stats())
    
    if not results:
        print("\n没有成功的查询结果")
        return
    
    timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
    csv_file = f'result_{timestamp}.csv'
    json_file = f'result_{timestamp}.json'
    
    with open(csv_file, 'w', encoding='utf-8-sig', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=results[0].keys())
        writer.writeheader()
        writer.writerows(results)
    
    with open(json_file, 'w', encoding='utf-8') as f:
        json.dump(results, f, indent=2, ensure_ascii=False)
    
    print(f"\n完成！结果已保存:")
    print(f"   {csv_file}")
    print(f"   {json_file}")
    print("\n" + "="*80)

if __name__ == '__main__':
    main()
