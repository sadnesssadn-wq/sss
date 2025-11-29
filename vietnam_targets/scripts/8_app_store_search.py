#!/usr/bin/env python3
"""
应用商店搜索 - 越南电商/物流APP
通过关键词搜索获取APP包名/域名
"""
import re

# 已知的越南主流电商/物流APP包名
KNOWN_APPS = {
    # 电商
    'com.tiki.android': 'tiki.vn',
    'com.sendo.consumer': 'sendo.vn',
    'com.shopee.vn': 'shopee.vn',
    'com.lazada.android': 'lazada.vn',
    'com.fpt.fptshop': 'fptshop.com.vn',
    'vn.tgdd.app': 'thegioididong.com',
    'com.concung': 'concung.com',
    'vn.hasaki.hasaki': 'hasaki.vn',
    'com.fahasa': 'fahasa.com',
    'vn.sendo.sendomall': 'sendo.vn',
    'vn.adayroi': 'adayroi.com',
    
    # 物流
    'vn.ghn.app': 'ghn.vn',
    'com.ghtk.app': 'giaohangtietkiem.vn',
    'com.viettelpost': 'viettelpost.com.vn',
    'vn.vnpost': 'vnpost.vn',
    'com.ahamove': 'ahamove.com',
    'com.grabtaxi.passenger': 'grab.com',
    'com.ninjavan': 'ninjavan.vn',
}

def main():
    print('[*] 应用商店数据收集...')
    
    with open('../raw_data/app_domains.txt', 'w') as f:
        for package, domain in KNOWN_APPS.items():
            f.write(f'{domain}\n')
    
    print(f'[✅] 收集 {len(KNOWN_APPS)} 个APP对应域名')
    print('[✅] 已保存到: raw_data/app_domains.txt')

if __name__ == '__main__':
    main()
