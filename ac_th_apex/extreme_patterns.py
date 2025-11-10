#!/usr/bin/env python3
# 极限模式：6字母+特殊组合

import itertools
import string

existing = set()
try:
    with open('ULTIMATE_APEX_FINAL.txt', 'r') as f:
        existing = set(line.strip().replace('.ac.th', '') for line in f)
except:
    pass

print(f"[*] Existing: {len(existing)}")

patterns = set()

# 1. 纯数字域名 (1-10000)
print("[+] Generating numeric patterns...")
for i in range(1, 10001):
    pattern = str(i)
    if pattern not in existing:
        patterns.add(pattern)

# 2. 字母+数字组合 (更多变体)
print("[+] Generating alphanumeric patterns...")
# a1, a2... a9999
for c in string.ascii_lowercase:
    for i in range(1, 1000):
        patterns.add(f"{c}{i}")
        patterns.add(f"{i}{c}")

# aa1, ab1... zz999
for c1 in string.ascii_lowercase:
    for c2 in string.ascii_lowercase:
        for i in range(1, 100):
            patterns.add(f"{c1}{c2}{i}")

# 3. 常见单词+数字
common = ['anuban', 'school', 'college', 'wat', 'ban', 'mu', 'ru', 'uni']
for word in common:
    for i in range(1, 1000):
        patterns.add(f"{word}{i}")

# 4. 6字母模式（选择性 - CVCVCV）
print("[+] Generating 6-letter patterns (selective)...")
vowels = 'aeiou'
consonants = 'bcdfghjklmnpqrstvwxyz'

count = 0
# 只生成前100000个
for c1 in consonants[:10]:  # 限制范围
    for v1 in vowels:
        for c2 in consonants[:10]:
            for v2 in vowels:
                for c3 in consonants[:5]:
                    for v3 in vowels:
                        pattern = c1+v1+c2+v2+c3+v3
                        if pattern not in existing:
                            patterns.add(pattern)
                        count += 1
                        if count >= 200000:
                            break
                    if count >= 200000:
                        break
                if count >= 200000:
                    break
            if count >= 200000:
                break
        if count >= 200000:
            break
    if count >= 200000:
        break

# 5. 缩写模式
print("[+] Generating abbreviation patterns...")
# 泰国府名缩写
provinces = ['bkk', 'cmi', 'cmr', 'pkt', 'hdy', 'udn', 'kkc', 'nma', 'rin', 'ubn']
for prov in provinces:
    patterns.add(prov)
    patterns.add(f"{prov}u")
    patterns.add(f"{prov}c")
    patterns.add(f"r{prov}u")
    for i in range(1, 10):
        patterns.add(f"{prov}{i}")

# 6. 三字母+三字母
print("[+] Generating 3+3 letter combos...")
for combo1 in itertools.product(string.ascii_lowercase, repeat=3):
    for combo2 in ['uni', 'edu', 'sch', 'col']:
        pattern = ''.join(combo1) + combo2
        if pattern not in existing:
            patterns.add(pattern)
        if len(patterns) >= 800000:
            break
    if len(patterns) >= 800000:
        break

print(f"[+] Total patterns: {len(patterns)}")

# 分批保存
batch_size = 30000
patterns_list = sorted(patterns)
for i in range(0, len(patterns_list), batch_size):
    batch = patterns_list[i:i+batch_size]
    batch_num = i // batch_size + 1
    with open(f'extreme_patterns_{batch_num}.txt', 'w') as f:
        for p in batch:
            f.write(f"{p}.ac.th\n")
    print(f"[+] Saved extreme_patterns_{batch_num}.txt: {len(batch)}")

print(f"\n[+] Total: {len(patterns)} new patterns")
