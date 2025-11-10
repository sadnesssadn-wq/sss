#!/usr/bin/env python3
import requests
import time
import json
from urllib.parse import quote

def fetch_crtsh_segment(prefix):
    """分段查询 crt.sh"""
    url = f"https://crt.sh/?q={quote(prefix)}%25.ac.th&output=json"
    try:
        resp = requests.get(url, timeout=60)
        if resp.status_code == 200:
            return resp.json()
    except:
        pass
    return []

def extract_apex_domains(data):
    """提取裸域（xxx.ac.th）"""
    apex_set = set()
    for entry in data:
        names = entry.get('name_value', '').split('\n')
        for name in names:
            name = name.strip().lower().replace('*.', '')
            if name.endswith('.ac.th'):
                parts = name.split('.')
                if len(parts) == 3:  # xxx.ac.th
                    apex_set.add(name)
    return apex_set

def main():
    all_apex = set()
    
    # 按字母和数字分段查询（a-z, 0-9）
    prefixes = list('abcdefghijklmnopqrstuvwxyz0123456789')
    
    total = len(prefixes)
    for idx, prefix in enumerate(prefixes, 1):
        print(f"[{idx}/{total}] 查询前缀: {prefix}...")
        data = fetch_crtsh_segment(prefix)
        apex = extract_apex_domains(data)
        all_apex.update(apex)
        print(f"  -> 新增 {len(apex)} 个裸域，累计 {len(all_apex)}")
        time.sleep(2)  # 避免被限速
    
    # 保存结果
    with open('apex_only.txt', 'w') as f:
        for domain in sorted(all_apex):
            f.write(domain + '\n')
    
    print(f"\n[+] 完成！共找到 {len(all_apex)} 个裸域")
    print(f"[+] 已保存到: apex_only.txt")

if __name__ == '__main__':
    main()
