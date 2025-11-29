#!/usr/bin/env python3
"""
搜索.vn域名 - 电商/物流关键词
"""
import requests
import re
import time

# 越南电商/物流关键词（越南语）
KEYWORDS = [
    # 电商关键词
    'muasam', 'shop', 'store', 'mall', 'market', 'buy', 'sell',
    'online', 'ecommerce', 'thuongmai', 'banhang', 'cuahang',
    # 物流关键词  
    'giaohang', 'chuyenphat', 'vanchuyen', 'logistics', 
    'express', 'delivery', 'shipping', 'post',
]

def search_vn_domains():
    """搜索.vn域名"""
    domains = set()
    
    # 组合生成可能的域名
    common_words = ['viet', 'vietnam', 'saigon', 'hanoi', 'hcm']
    
    for keyword in KEYWORDS:
        # 直接关键词
        domains.add(f'{keyword}.vn')
        
        # 组合
        for word in common_words:
            domains.add(f'{keyword}{word}.vn')
            domains.add(f'{word}{keyword}.vn')
            domains.add(f'{keyword}-{word}.vn')
    
    return list(domains)

def main():
    print('[*] 生成可能的.vn域名...')
    domains = search_vn_domains()
    
    with open('../raw_data/vn_domains.txt', 'w') as f:
        for domain in sorted(domains):
            f.write(domain + '\n')
    
    print(f'[✅] 生成 {len(domains)} 个可能的域名')
    print('[✅] 已保存到: raw_data/vn_domains.txt')

if __name__ == '__main__':
    main()
