#!/usr/bin/env python3
# 极限生成：目标10000+真实裸域

import itertools
import string

# 读取已有
try:
    with open('final_all_apex.txt', 'r') as f:
        existing = set(line.strip().replace('.ac.th', '') for line in f if line.strip())
except:
    existing = set()

print(f"[*] Existing: {len(existing)} domains")

new_patterns = set()

# 1. 所有4字母组合 (26^4 = 456,976)
print("[+] Generating 4-letter combinations...")
count = 0
for combo in itertools.product(string.ascii_lowercase, repeat=4):
    pattern = ''.join(combo)
    if pattern not in existing:
        new_patterns.add(pattern)
    count += 1
    if count % 50000 == 0:
        print(f"    {count} generated...")

print(f"    Total 4-letter: {len(new_patterns)}")

# 2. 3字母+数字 (26^3 * 10 = 175,760)
print("[+] Generating 3-letter + 1-digit...")
for combo in itertools.product(string.ascii_lowercase, repeat=3):
    for digit in string.digits:
        pattern = ''.join(combo) + digit
        if pattern not in existing:
            new_patterns.add(pattern)

print(f"    Total patterns: {len(new_patterns)}")

# 3. 数字+3字母
print("[+] Generating 1-digit + 3-letter...")
for digit in string.digits:
    for combo in itertools.product(string.ascii_lowercase, repeat=3):
        pattern = digit + ''.join(combo)
        if pattern not in existing:
            new_patterns.add(pattern)

print(f"    Total patterns: {len(new_patterns)}")

# 4. 2字母+2数字
print("[+] Generating 2-letter + 2-digit...")
for combo in itertools.product(string.ascii_lowercase, repeat=2):
    for d1 in string.digits:
        for d2 in string.digits:
            pattern = ''.join(combo) + d1 + d2
            if pattern not in existing:
                new_patterns.add(pattern)

print(f"    Total patterns: {len(new_patterns)}")

# 5. 常见单词
common_thai_edu = [
    'university', 'college', 'school', 'institute', 'academy',
    'anuban', 'anubarn', 'rajabhat', 'rajamangala', 'mahasarakham',
    'mahidol', 'chula', 'chulalong', 'kasetsart', 'thammasat',
    'silpakorn', 'assumption', 'bangkok', 'siam', 'dhurakij',
    'king', 'queen', 'prince', 'princess', 'royal', 'national',
    'international', 'christian', 'catholic', 'islamic', 'buddhist',
    'saint', 'holy', 'wat', 'temple', 'church', 'mosque'
]

for word in common_thai_edu:
    if word not in existing:
        new_patterns.add(word)

# 添加数字变体
for word in ['school', 'anuban', 'wat', 'college', 'university']:
    for i in range(1, 201):
        pattern = f"{word}{i}"
        if pattern not in existing:
            new_patterns.add(pattern)

print(f"[+] Final total patterns: {len(new_patterns)}")

# 分批保存
batch_size = 20000
patterns_list = sorted(new_patterns)
total_batches = (len(patterns_list) - 1) // batch_size + 1

for i in range(0, len(patterns_list), batch_size):
    batch = patterns_list[i:i+batch_size]
    batch_num = i // batch_size + 1
    filename = f'extreme_batch_{batch_num}.txt'
    with open(filename, 'w') as f:
        for p in batch:
            f.write(f"{p}.ac.th\n")
    print(f"[+] Saved {filename}: {len(batch)} patterns")

print(f"\n[+] Total: {len(new_patterns)} patterns in {total_batches} batches")
print(f"[+] Ready for verification")
