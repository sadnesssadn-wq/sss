#!/usr/bin/env python3
# 生成5字母组合（选择性）

import itertools
import string

existing = set()
try:
    with open('FINAL_APEX_COMPLETE.txt', 'r') as f:
        existing = set(line.strip().replace('.ac.th', '') for line in f)
except:
    pass

print(f"[*] Existing: {len(existing)}")

patterns = set()

# 1. 常见5字母模式（元音+辅音组合）
vowels = 'aeiou'
consonants = 'bcdfghjklmnpqrstvwxyz'

print("[+] Generating 5-letter patterns (selective)...")

# 模式1: CVCVC (辅音-元音-辅音-元音-辅音)
count = 0
for c1 in consonants:
    for v1 in vowels:
        for c2 in consonants:
            for v2 in vowels:
                for c3 in consonants:
                    pattern = c1+v1+c2+v2+c3
                    if pattern not in existing:
                        patterns.add(pattern)
                    count += 1
                    if count % 100000 == 0:
                        print(f"  Generated {count}...")

print(f"[+] Total 5-letter CVCVC: {len(patterns)}")

# 模式2: 学校名称模式
common_5letter = []
# anuban + 字母
for c in string.ascii_lowercase:
    common_5letter.append(f"anuba{c}")
    common_5letter.append(f"school{c}".replace('ol','')[:5])
    common_5letter.append(f"wat{c}{c}")
    common_5letter.append(f"ban{c}{c}")

patterns.update(common_5letter)

# 模式3: 数字结尾
for combo in itertools.product(string.ascii_lowercase, repeat=4):
    for digit in '12345':
        pattern = ''.join(combo) + digit
        if pattern not in existing:
            patterns.add(pattern)
            if len(patterns) >= 500000:  # 限制
                break
    if len(patterns) >= 500000:
        break

print(f"[+] Total patterns: {len(patterns)}")

# 分批保存
batch_size = 25000
patterns_list = sorted(patterns)
for i in range(0, len(patterns_list), batch_size):
    batch = patterns_list[i:i+batch_size]
    batch_num = i // batch_size + 1
    with open(f'5letter_batch_{batch_num}.txt', 'w') as f:
        for p in batch:
            f.write(f"{p}.ac.th\n")
    print(f"[+] Saved 5letter_batch_{batch_num}.txt: {len(batch)}")

print(f"\n[+] Total: {len(patterns)} patterns")
