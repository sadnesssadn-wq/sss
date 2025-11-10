#!/usr/bin/env python3
# ac.th 裸域终极穷尽

import itertools
import string

existing = set()
try:
    with open('ABSOLUTE_FINAL.txt', 'r') as f:
        existing = set(line.strip().replace('.ac.th', '') for line in f)
except:
    pass

print(f"[*] Current: {len(existing)} ac.th apex domains")

new_patterns = set()

# 1. 完整7字母（CVCVCVC + VCVCVCV）
print("[+] Generating 7-letter patterns...")
vowels = 'aeiou'
consonants = 'bcdfghjklmnpqrstvwxyz'

# CVCVCVC (限制避免太大)
count = 0
for c1 in consonants[:15]:  # 前15个辅音
    for v1 in vowels:
        for c2 in consonants[:15]:
            for v2 in vowels:
                for c3 in consonants[:10]:
                    for v3 in vowels:
                        for c4 in consonants[:5]:
                            pattern = c1+v1+c2+v2+c3+v3+c4
                            if pattern not in existing:
                                new_patterns.add(pattern)
                            count += 1
                            if count % 500000 == 0:
                                print(f"    {count}...")
                            if count >= 2000000:
                                break
                        if count >= 2000000:
                            break
                    if count >= 2000000:
                        break
                if count >= 2000000:
                    break
            if count >= 2000000:
                break
        if count >= 2000000:
            break
    if count >= 2000000:
        break

print(f"  7-letter: {len(new_patterns)}")

# 2. 纯数字 (1-999999)
print("[+] Generating numbers 1-999999...")
for i in range(1, 1000000):
    pattern = str(i)
    if pattern not in existing:
        new_patterns.add(pattern)

# 3. 所有可能的大学/学院缩写
print("[+] Generating university/college abbreviations...")
# 泰国大学常见命名
prefixes = ['r', 's', 'k', 'm', 'b', 'n', 'p', 't', 'c']
middle = ['mu', 'pu', 'su', 'ku', 'nu', 'bu', 'tu', 'cu', 'wu']
suffixes = ['t', 'c', 'p', 'k', 'b', 's', 'r', 'l']

for pre in prefixes:
    for mid in middle:
        pattern = pre + mid
        new_patterns.add(pattern)
        for suf in suffixes:
            pattern = pre + mid + suf
            new_patterns.add(pattern)

# rajabhat系列 (泰国皇家大学)
provinces = ['bkk', 'cmi', 'cmr', 'pkt', 'udn', 'kkc', 'nma', 'rin', 'ubn',
             'ray', 'cbi', 'tri', 'sur', 'ski', 'bri', 'nan', 'phr', 'lam']
for prov in provinces:
    new_patterns.add(f"r{prov}")
    new_patterns.add(f"r{prov}u")
    new_patterns.add(f"{prov}u")
    new_patterns.add(f"{prov}c")

# 4. 常见教育机构词汇（泰语音译）
thai_edu = [
    'wittaya', 'suksa', 'anuban', 'anubarn', 'witthaya', 'witaya',
    'ratcha', 'raja', 'maha', 'chula', 'silpa', 'kasem', 'dhurak',
    'assum', 'christ', 'catho', 'islam', 'buddh'
]

for word in thai_edu:
    new_patterns.add(word)
    new_patterns.add(word[:5])
    new_patterns.add(word[:4])
    new_patterns.add(word[:3])

# 5. 地名 + 常见后缀
places = ['bangkok', 'chiang', 'phuket', 'pattaya', 'krabi', 'samui', 
          'koh', 'nakhon', 'udon', 'khon', 'songkhla', 'surat']
edu_suffixes = ['tech', 'poly', 'college', 'uni', 'school', 'institute']

for place in places:
    for suf in edu_suffixes:
        pattern = place[:4] + suf[:3]
        new_patterns.add(pattern)

# 6. 8字母模式（CVCVCVCV）- 限制数量
print("[+] Generating 8-letter patterns (limited)...")
count = 0
for c1 in consonants[:10]:
    for v1 in vowels:
        for c2 in consonants[:10]:
            for v2 in vowels:
                for c3 in consonants[:5]:
                    for v3 in vowels:
                        for c4 in consonants[:5]:
                            for v4 in vowels[:2]:
                                pattern = c1+v1+c2+v2+c3+v3+c4+v4
                                if pattern not in existing:
                                    new_patterns.add(pattern)
                                count += 1
                                if count >= 500000:
                                    break
                            if count >= 500000:
                                break
                        if count >= 500000:
                            break
                    if count >= 500000:
                        break
                if count >= 500000:
                    break
            if count >= 500000:
                break
        if count >= 500000:
            break
    if count >= 500000:
        break

print(f"\n[+] Total new patterns: {len(new_patterns)}")

# 分批保存
batch_size = 100000
patterns_list = sorted(new_patterns)
total_batches = (len(patterns_list) - 1) // batch_size + 1

for i in range(0, len(patterns_list), batch_size):
    batch = patterns_list[i:i+batch_size]
    batch_num = i // batch_size + 1
    with open(f'final_push_batch_{batch_num}.txt', 'w') as f:
        for p in batch:
            f.write(f"{p}.ac.th\n")
    if batch_num % 5 == 0:
        print(f"[+] Saved batch {batch_num}/{total_batches}")

print(f"\n[+] Total: {len(new_patterns)} patterns in {total_batches} batches")
