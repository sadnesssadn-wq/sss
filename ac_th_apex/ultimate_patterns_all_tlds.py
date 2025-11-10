#!/usr/bin/env python3
# 对所有泰国TLD生成并验证全量模式

import subprocess
import itertools
import string

# 读取已有域名
existing = set()
try:
    with open('/workspace/thailand_complete.txt', 'r') as f:
        existing = set(line.strip() for line in f)
except:
    pass

print(f"[*] Existing: {len(existing)}")

# 提取已有的pattern（去掉TLD后缀）
existing_patterns = set()
for domain in existing:
    # 提取xxx.yy.th中的xxx部分
    pattern = domain.split('.')[0]
    existing_patterns.add(pattern)

print(f"[*] Existing patterns: {len(existing_patterns)}")

# 生成新模式
new_patterns = set()

print("[+] Generating comprehensive patterns...")

# 1. 完整5字母 (限制26^5太大，用选择性)
vowels = 'aeiou'
consonants = 'bcdfghjklmnpqrstvwxyz'

# CVCVC
count = 0
for c1 in consonants:
    for v1 in vowels:
        for c2 in consonants:
            for v2 in vowels:
                for c3 in consonants:
                    pattern = c1+v1+c2+v2+c3
                    if pattern not in existing_patterns:
                        new_patterns.add(pattern)
                    count += 1
                    if count % 100000 == 0:
                        print(f"    Generated {count}...")

print(f"  5-letter: {len(new_patterns)}")

# 2. 常见企业/组织词汇
common = [
    'company', 'corp', 'group', 'limited', 'ltd', 'inc',
    'enterprise', 'business', 'trade', 'service',
    'tech', 'technology', 'digital', 'online', 'net',
    'media', 'design', 'studio', 'agency', 'solution',
    'system', 'software', 'data', 'cloud', 'web',
    'mobile', 'app', 'game', 'shop', 'store',
    'food', 'restaurant', 'hotel', 'travel', 'tour',
    'health', 'medical', 'clinic', 'hospital', 'care',
    'edu', 'education', 'school', 'college', 'academy',
    'bank', 'finance', 'insurance', 'realty', 'property'
]

for word in common:
    new_patterns.add(word)
    new_patterns.add(word[:4])
    new_patterns.add(word[:3])
    for i in range(1, 100):
        new_patterns.add(f"{word}{i}")
        new_patterns.add(f"{word[:3]}{i}")

# 3. 泰国公司命名模式
thai_prefixes = ['thai', 'siam', 'bangkok', 'krung', 'asia']
for pre in thai_prefixes:
    for word in common[:20]:
        new_patterns.add(f"{pre}{word}")
        new_patterns.add(f"{pre[:2]}{word[:3]}")

# 4. 行业缩写
abbrevs = ['it', 'ai', 'iot', 'vr', 'ar', 'ml', 'hr', 'pr', 'ad', 'seo']
for abbr in abbrevs:
    for i in range(1, 500):
        new_patterns.add(f"{abbr}{i}")
    for c in string.ascii_lowercase:
        new_patterns.add(f"{abbr}{c}")

print(f"[+] Total new patterns: {len(new_patterns)}")

# 保存模式
with open('ultimate_patterns.txt', 'w') as f:
    for p in sorted(new_patterns):
        f.write(p + '\n')

print(f"[+] Saved ultimate_patterns.txt")
