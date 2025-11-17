#!/bin/bash
# 生成针对VNPost的超级密码字典

echo "[*] 生成VNPost专用超级字典..."

# 基础词汇
cat > base_words.txt << 'EOF'
vnpost
vietnam
post
viet
nam
luong
chamcong
manga
peplink
balance
vps
admin
manager
quan
tri
he
thong
mat
khau
buu
dien
EOF

# 数字组合
cat > numbers.txt << 'EOF'
123
1234
12345
123456
2024
2025
2023
2022
2019
!
@
#
$
EOF

# 生成组合
echo "[*] 生成组合密码..."

# 规则1: 单词+数字
while read word; do
  while read num; do
    echo "${word}${num}"
    echo "${word^}${num}"  # 首字母大写
    echo "${word^^}${num}" # 全大写
  done < numbers.txt
done < base_words.txt > wordlist_part1.txt

# 规则2: 单词+符号+数字
while read word; do
  echo "${word}@123"
  echo "${word}!123"
  echo "${word}@2024"
  echo "${word}@2025"
  echo "${word}_123"
  echo "${word}.123"
  echo "${word}#123"
done < base_words.txt >> wordlist_part1.txt

# 规则3: 越南语拼音组合
cat >> wordlist_part1.txt << 'EOF'
matkhau123
matkhau2024
quantri123
quantri2024
hethong123
buudien123
buudien2024
vnpost@123
vnpost@2024
Vnpost123
Vnpost2024
Vnpost@123
VnPost123
VnPost2024
VnPost@2024
Vietnam123
Vietnam2024
Vietnam@123
Post@123
Post@2024
Manager123
Manager@123
Admin@vnpost
Admin@2024
Peplink@123
Balance@123
EOF

# 规则4: 特殊模式
cat >> wordlist_part1.txt << 'EOF'
P@ssw0rd
P@ssw0rd1
P@ssw0rd123
Welcome123
Welcome@123
Default123
Changeme123
Super@123
Root@123
EOF

# 规则5: 泄露密码变形
cat >> wordlist_part1.txt << 'EOF'
123
1234
12345
123456
1234567
12345678
123456789
abc123
abc@123
thuNa911
thuNa@911
khanhmv2009
khanhvm123
khanhvm@123
long31122003
EOF

# 去重并统计
sort wordlist_part1.txt | uniq > vnpost_mega_wordlist.txt
rm wordlist_part1.txt base_words.txt numbers.txt

echo "[✅] 字典生成完成："
wc -l vnpost_mega_wordlist.txt
echo "[*] 预览前20个："
head -20 vnpost_mega_wordlist.txt
