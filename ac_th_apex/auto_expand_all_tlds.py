#!/usr/bin/env python3
# 自动扩展到所有泰国TLD

import subprocess
import os

tlds = [
    'co.th',     # 商业
    'go.th',     # 政府
    'or.th',     # 组织
    'in.th',     # 个人
    'net.th',    # 网络
    'mi.th',     # 军事
]

print("=" * 60)
print("🚀 自动扩展到所有泰国TLD")
print("=" * 60)
print(f"  目标TLD: {len(tlds)}")
print(f"  预估总域名: 70,000+")
print("=" * 60)
print("")

all_domains = set()

# 先加载ac.th
try:
    with open('/workspace/ac_th_apex_domains.txt', 'r') as f:
        all_domains.update(line.strip() for line in f)
    print(f"[+] Loaded ac.th: {len(all_domains)} domains")
except:
    pass

for tld in tlds:
    print(f"\n[+] Enumerating .{tld}...")
    
    # 使用subfinder
    cmd = f"subfinder -d {tld} -all -silent"
    try:
        result = subprocess.run(cmd, shell=True, capture_output=True, text=True, timeout=300)
        raw_domains = result.stdout.strip().split('\n')
        
        # 只保留裸域
        apex_domains = []
        for domain in raw_domains:
            if domain and domain.count('.') == 2:  # xxx.co.th
                apex_domains.append(domain)
        
        all_domains.update(apex_domains)
        print(f"    Found: {len(apex_domains)} apex domains")
        print(f"    Total so far: {len(all_domains)}")
        
    except Exception as e:
        print(f"    Error: {e}")

# 保存所有域名
output_file = '/workspace/thailand_all_tlds_apex.txt'
with open(output_file, 'w') as f:
    for domain in sorted(all_domains):
        f.write(domain + '\n')

print("")
print("=" * 60)
print(f"✓ COMPLETE!")
print(f"  Total apex domains: {len(all_domains)}")
print(f"  Saved to: {output_file}")
print("=" * 60)
