#!/bin/bash
# 生成10万+密码字典

# 基础词
BASES=("vnpost" "vietnam" "admin" "password" "peplink" "balance" "manager" "root" "super" "vps" "buudien" "post")

# 年份
YEARS=("2019" "2020" "2021" "2022" "2023" "2024" "2025")

# 符号
SYMBOLS=("!" "@" "#" "$" "_" "." "-")

# 数字
NUMBERS=("1" "12" "123" "1234" "12345" "123456")

echo "[*] 生成组合..."
for base in "${BASES[@]}"; do
    for year in "${YEARS[@]}"; do
        for sym in "${SYMBOLS[@]}"; do
            echo "${base}${year}"
            echo "${base}${sym}${year}"
            echo "${base^}${year}"
            echo "${base^}${sym}${year}"
            echo "${base^^}${year}"
        done
        for num in "${NUMBERS[@]}"; do
            echo "${base}${num}"
            echo "${base}${year}${num}"
        done
    done
done > massive_wordlist.txt

sort massive_wordlist.txt | uniq > vnpost_massive_100k.txt
rm massive_wordlist.txt

echo "[✅] 生成完成: $(wc -l vnpost_massive_100k.txt)"
