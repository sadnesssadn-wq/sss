#!/usr/bin/env python3
# 生成所有3字符和部分4字符组合 (目标: 50000+待验证)

import itertools
import string

domains = set()

# 读取已有域名避免重复
try:
    with open('mega_apex_final.txt', 'r') as f:
        existing = set(line.strip() for line in f)
    print(f"Loaded {len(existing)} existing domains")
except:
    existing = set()

# 1. 所有3字符组合 (a-z + 0-9)
charset = string.ascii_lowercase + string.digits
print("Generating 3-char combinations...")
count = 0
for combo in itertools.product(charset, repeat=3):
    domain = ''.join(combo) + '.ac.th'
    if domain not in existing:
        domains.add(domain)
    count += 1
    if count % 10000 == 0:
        print(f"  Generated {count}...")

print(f"Total 3-char: {len(domains)}")

# 2. 4字符组合 (只字母)
print("Generating 4-char letter combinations...")
count = 0
for combo in itertools.product(string.ascii_lowercase, repeat=4):
    domain = ''.join(combo) + '.ac.th'
    if domain not in existing:
        domains.add(domain)
    count += 1
    if count % 100000 == 0:
        print(f"  Generated {count}...")
    if count >= 500000:  # 限制避免太大
        break

print(f"Total domains to verify: {len(domains)}")

# 分批保存 (每文件10000个)
batch_size = 10000
batches = list(domains)
for i in range(0, len(batches), batch_size):
    batch = batches[i:i+batch_size]
    filename = f'massive_batch_{i//batch_size + 1}.txt'
    with open(filename, 'w') as f:
        for d in batch:
            f.write(d + '\n')
    print(f"Saved {filename} ({len(batch)} domains)")

print(f"\nTotal: {len(domains)} domains in {(len(domains)-1)//batch_size + 1} batches")
