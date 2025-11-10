#!/usr/bin/env python3
# 生成更完整的泰国学校/机构名称字典

prefixes = []

# 单字母 a-z
for c in 'abcdefghijklmnopqrstuvwxyz':
    prefixes.append(c)

# 双字母组合 (常见组合)
for c1 in 'abcdefghijklmnopqrstuvwxyz':
    for c2 in 'abcdefghijklmnopqrstuvwxyz':
        prefixes.append(c1 + c2)

# 三字母组合 (选择性，避免太多)
common_3 = ['abc', 'abn', 'abs', 'act', 'ait', 'amu', 'ban', 'bkk', 'cmu', 'dpu', 
            'kku', 'kmitl', 'kmutt', 'psu', 'rbru', 'rmu', 'spu', 'sru', 'sut', 'swu']
prefixes.extend(common_3)

# 数字
for i in range(1, 201):
    prefixes.append(str(i))

# 泰国常见词汇
thai_words = [
    'anuban', 'anubarn', 'wat', 'ban', 'school', 'tech', 'college', 
    'university', 'poly', 'institute', 'rmu', 'mu', 'su', 'tu', 
    'chula', 'mahidol', 'kasetsart', 'thammasat', 'silpakorn',
    'nida', 'assumption', 'abac', 'bangkok', 'siam', 'dhurakij',
    'ram', 'rajamangala', 'thon', 'nong', 'thani', 'sri', 'don',
    'phra', 'wang', 'muang', 'buri', 'thai', 'krung', 'international'
]
prefixes.extend(thai_words)

# 去重并保存
prefixes = list(set(prefixes))
with open('expanded_wordlist.txt', 'w') as f:
    for p in sorted(prefixes):
        f.write(p + '\n')

print(f"Generated {len(prefixes)} prefixes")
