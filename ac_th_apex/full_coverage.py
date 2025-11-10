#!/usr/bin/env python3
# 全量覆盖生成器 - 目标：生成所有可能的合理域名

import itertools
import string

existing = set()
try:
    with open('FINAL_COMPLETE.txt', 'r') as f:
        existing = set(line.strip().replace('.ac.th', '') for line in f)
except:
    pass

print(f"[*] Existing: {len(existing)}")

all_patterns = set()

# ==================== 完整6字母组合 ====================
print("[+] Generating FULL 6-letter combinations...")
charset = string.ascii_lowercase
count = 0
# 全部6字母组合 (26^6 = 308,915,776) - 太大，用选择性策略
# 策略：CVCVCV, VCVCVC, CCVCCV等常见模式

vowels = 'aeiou'
consonants = 'bcdfghjklmnpqrstvwxyz'

# 模式1: CVCVCV
for c1 in consonants:
    for v1 in vowels:
        for c2 in consonants:
            for v2 in vowels:
                for c3 in consonants:
                    for v3 in vowels:
                        pattern = c1+v1+c2+v2+c3+v3
                        if pattern not in existing:
                            all_patterns.add(pattern)
                        count += 1
                        if count % 500000 == 0:
                            print(f"    Generated {count}...")

print(f"    6-letter CVCVCV: {len(all_patterns)}")

# 模式2: VCVCVC
for v1 in vowels:
    for c1 in consonants:
        for v2 in vowels:
            for c2 in consonants:
                for v3 in vowels:
                    for c3 in consonants:
                        pattern = v1+c1+v2+c2+v3+c3
                        if pattern not in existing:
                            all_patterns.add(pattern)

print(f"    6-letter VCVCVC: {len(all_patterns)}")

# ==================== 7字母组合（选择性）====================
print("[+] Generating 7-letter patterns...")
# anuban + 字母
for c in charset:
    all_patterns.add(f"anuban{c}")
    all_patterns.add(f"{c}anuban")

# school + 字母
for c in charset:
    all_patterns.add(f"school{c}")

# 常见前缀 + 4字母
prefixes = ['wat', 'ban', 'sri', 'raj', 'mah']
for pre in prefixes:
    for combo in itertools.product(charset, repeat=4):
        pattern = pre + ''.join(combo)
        all_patterns.add(pattern)
        if len(all_patterns) >= 3000000:
            break
    if len(all_patterns) >= 3000000:
        break

print(f"    7-letter: {len(all_patterns)}")

# ==================== 纯数字（完整）====================
print("[+] Generating all numeric patterns...")
for i in range(1, 100000):
    all_patterns.add(str(i))

# ==================== 数字+字母组合（完整）====================
print("[+] Generating comprehensive alphanumeric...")
# 字母+1-4位数字
for c in charset:
    for i in range(1, 10000):
        all_patterns.add(f"{c}{i}")
        all_patterns.add(f"{i}{c}")

# 2字母+1-3位数字
for c1 in charset:
    for c2 in charset:
        for i in range(1, 1000):
            all_patterns.add(f"{c1}{c2}{i}")
            all_patterns.add(f"{i}{c1}{c2}")

# 3字母+数字
for combo in itertools.product(charset, repeat=3):
    for i in range(1, 100):
        pattern = ''.join(combo) + str(i)
        all_patterns.add(pattern)
        if len(all_patterns) >= 4000000:
            break
    if len(all_patterns) >= 4000000:
        break

print(f"    Alphanumeric: {len(all_patterns)}")

# ==================== 泰国特殊词汇 ====================
print("[+] Generating Thai-specific patterns...")
thai_words = [
    'university', 'college', 'school', 'institute', 'academy',
    'anuban', 'anubarn', 'rajabhat', 'rajamangala', 
    'mahidol', 'chulalongkorn', 'kasetsart', 'thammasat',
    'prince', 'princess', 'king', 'queen', 'royal',
    'christian', 'catholic', 'buddhist', 'islam', 'islamic',
    'saint', 'holy', 'wat', 'temple', 'international',
    'bangkok', 'siam', 'thai', 'national', 'government'
]

for word in thai_words:
    all_patterns.add(word)
    all_patterns.add(word[:4])
    all_patterns.add(word[:5])
    for i in range(1, 200):
        all_patterns.add(f"{word}{i}")
        all_patterns.add(f"{word[:4]}{i}")

print(f"[+] Total patterns to verify: {len(all_patterns)}")

# 分批保存（每批50000）
batch_size = 50000
patterns_list = sorted(all_patterns)
total_batches = (len(patterns_list) - 1) // batch_size + 1

for i in range(0, len(patterns_list), batch_size):
    batch = patterns_list[i:i+batch_size]
    batch_num = i // batch_size + 1
    with open(f'full_batch_{batch_num}.txt', 'w') as f:
        for p in batch:
            f.write(f"{p}.ac.th\n")
    if batch_num % 10 == 0:
        print(f"[+] Saved batches 1-{batch_num}/{total_batches}")

print(f"\n[+] TOTAL: {len(all_patterns)} patterns in {total_batches} batches")
print(f"[+] Ready for mass DNS verification")
