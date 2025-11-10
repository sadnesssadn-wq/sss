#!/usr/bin/env python3
# 生成超大规模字典 (目标10000+域名)

words = set()

# 1. 单字母 a-z
for c in 'abcdefghijklmnopqrstuvwxyz':
    words.add(c)

# 2. 双字母所有组合 (26*26=676)
for c1 in 'abcdefghijklmnopqrstuvwxyz':
    for c2 in 'abcdefghijklmnopqrstuvwxyz':
        words.add(c1+c2)

# 3. 三字母常见组合 (选择性)
for c1 in 'abcdefghijklmnopqrstuvwxyz':
    for c2 in 'aeiou':  # 元音
        for c3 in 'abcdefghijklmnopqrstuvwxyz':
            words.add(c1+c2+c3)

# 4. 数字 1-1000
for i in range(1, 1001):
    words.add(str(i))

# 5. 字母+数字组合
for c in 'abcdefghijklmnopqrstuvwxyz':
    for i in range(1, 100):
        words.add(f"{c}{i}")
        words.add(f"{i}{c}")

# 6. 常见英文单词
common_words = [
    'school', 'college', 'university', 'institute', 'tech', 'poly',
    'academy', 'education', 'learning', 'science', 'art', 'business',
    'engineering', 'medical', 'law', 'international', 'christian', 'catholic',
    'buddhist', 'islam', 'saint', 'holy', 'royal', 'king', 'queen', 'prince',
    'princess', 'national', 'government', 'public', 'private', 'community',
    'city', 'town', 'bangkok', 'siam', 'thai', 'thep', 'krung', 'wat',
    'ban', 'muang', 'nong', 'don', 'thon', 'sri', 'nakhon', 'phra',
    'north', 'south', 'east', 'west', 'central', 'new', 'old', 'modern',
    'smart', 'green', 'blue', 'red', 'white', 'golden', 'silver'
]

for w in common_words:
    words.add(w)
    # 数字组合
    for i in [1,2,3,4,5,10,20,50,100]:
        words.add(f"{w}{i}")

# 7. 泰国地名缩写
provinces_abbr = [
    'bkk', 'cmi', 'cmr', 'hdy', 'kbi', 'kkc', 'nma', 'pkt', 'rin', 'ubn', 'udn',
    'bkn', 'bph', 'bri', 'cbi', 'chn', 'cpn', 'cri', 'lbr', 'lpg', 'msk', 'nbi',
    'nrt', 'phk', 'ray', 'rbr', 'skn', 'sri', 'trt', 'udi', 'ubr', 'npt', 'phs'
]

for abbr in provinces_abbr:
    words.add(abbr)
    words.add(f"{abbr}u")  # university
    words.add(f"{abbr}c")  # college
    words.add(f"r{abbr}u")  # rajamangala
    words.add(f"anuban{abbr}")

# 8. 常见前缀+后缀组合
prefixes = ['ab', 'an', 'wat', 'ban', 'sri', 'raja', 'maha', 'chula', 'kasem', 
            'silpa', 'suan', 'dhura', 'assum', 'st', 'christian', 'thai', 'inter']
suffixes = ['school', 'wit', 'wittaya', 'pra', 'thep', 'karn', 'suek']

for pre in prefixes:
    for suf in suffixes:
        words.add(pre+suf)

# 9. anuban + 常见词
anuban_names = []
for w in common_words[:50]:
    anuban_names.append(f"anuban{w}")
words.update(anuban_names)

# 10. 宗教相关
religious = ['christian', 'catholic', 'islam', 'islamic', 'muslim', 'buddhist', 
             'buddh', 'wat', 'mosque', 'church', 'temple', 'saint', 'holy']
for r in religious:
    words.add(r)
    for i in [1,2,3,4,5]:
        words.add(f"{r}{i}")

print(f"Generated {len(words)} unique words")

# 保存
with open('ultra_wordlist.txt', 'w') as f:
    for w in sorted(words):
        f.write(f"{w}.ac.th\n")

print(f"Saved to ultra_wordlist.txt")
