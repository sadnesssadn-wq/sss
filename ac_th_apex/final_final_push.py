#!/usr/bin/env python3
# 最后尝试：连字符、长域名、特殊模式

import itertools
import string

existing = set()
try:
    with open('/workspace/ac_th_final.txt', 'r') as f:
        existing = set(line.strip().replace('.ac.th', '') for line in f)
except:
    pass

print(f"[*] Current: {len(existing)}")

new_patterns = set()

# 1. 包含连字符的域名（泰国很多学校用连字符）
print("[+] Generating hyphenated patterns...")
common_words = [
    'anuban', 'school', 'wat', 'ban', 'tech', 'college',
    'north', 'south', 'east', 'west', 'central',
    'sri', 'nakhon', 'phra', 'thep', 'maha',
    'krung', 'muang', 'thani', 'buri'
]

# word-word组合
for w1 in common_words:
    for w2 in common_words:
        if w1 != w2:
            pattern = f"{w1}-{w2}"
            if pattern not in existing:
                new_patterns.add(pattern)

# word-number
for word in common_words:
    for i in range(1, 100):
        pattern = f"{word}-{i}"
        if pattern not in existing:
            new_patterns.add(pattern)

# 2字母-2字母
for c1 in string.ascii_lowercase[:15]:
    for c2 in string.ascii_lowercase[:15]:
        pattern = f"{c1}{c2}-{c2}{c1}"
        if pattern not in existing:
            new_patterns.add(pattern)

print(f"  Hyphenated: {len(new_patterns)}")

# 2. 9字母模式（CVCVCVCVC）
print("[+] Generating 9-letter patterns...")
vowels = 'aeiou'
consonants = 'bcdfghjklmnpqrstvwxyz'

count = 0
for c1 in consonants[:8]:
    for v1 in vowels[:3]:
        for c2 in consonants[:8]:
            for v2 in vowels[:3]:
                for c3 in consonants[:5]:
                    for v3 in vowels[:2]:
                        for c4 in consonants[:5]:
                            for v4 in vowels[:2]:
                                for c5 in consonants[:3]:
                                    pattern = c1+v1+c2+v2+c3+v3+c4+v4+c5
                                    if pattern not in existing:
                                        new_patterns.add(pattern)
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
            if count >= 200000:
                break
        if count >= 200000:
            break
    if count >= 200000:
        break

print(f"  9-letter: {len(new_patterns)}")

# 3. 泰国地名的各种拼写变体
print("[+] Generating Thai place name variants...")
places = {
    'bangkok': ['bkk', 'bangk', 'krungthep', 'krung'],
    'chiangmai': ['cmai', 'cmi', 'chmai', 'cnmai'],
    'phuket': ['pkt', 'phk', 'phuket'],
    'pattaya': ['pty', 'pat', 'patt'],
    'khonkaen': ['kkc', 'kk', 'khon', 'kaen'],
    'udon': ['udn', 'udon', 'ud'],
    'nakhon': ['nkn', 'nakorn', 'nach']
}

for place, variants in places.items():
    for var in variants:
        new_patterns.add(var)
        new_patterns.add(var + 'u')
        new_patterns.add(var + 'c')
        new_patterns.add('r' + var)
        new_patterns.add('r' + var + 'u')

# 4. 数字前缀/后缀
print("[+] Generating number patterns...")
for i in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 101, 102, 103]:
    for word in ['school', 'anuban', 'tech', 'college']:
        new_patterns.add(f"{i}{word}")
        new_patterns.add(f"{word}{i}")

print(f"\n[+] Total new patterns: {len(new_patterns)}")

# 保存
with open('final_final_patterns.txt', 'w') as f:
    for p in sorted(new_patterns):
        f.write(f"{p}.ac.th\n")

print(f"[+] Saved to final_final_patterns.txt")
