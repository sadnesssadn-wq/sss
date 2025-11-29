#!/bin/bash
# 扩展目标 - 大规模域名生成

echo "[*] 扩展目标库..."

# 常见电商前缀/后缀
PREFIXES="shop store buy sell online e my vn vietnam hanoi saigon hcm 24h 365 mega mini super top best pro max plus new hot sale deal"
SUFFIXES="shop store online vn vietnam 24h 365"

# 越南城市
CITIES="hanoi saigon hcm danang haiphong cantho nhatrang dalat hue vungtau"

# 电商/物流关键词
KEYWORDS="muasam banhang cuahang thuongmai sieuth giaohang chuyenphat vanchuyen logistics express"

# 生成组合
for keyword in $KEYWORDS; do
    echo "${keyword}.vn" >> raw_data/expanded.txt
    
    for city in $CITIES; do
        echo "${keyword}${city}.vn" >> raw_data/expanded.txt
        echo "${city}${keyword}.vn" >> raw_data/expanded.txt
    done
    
    for prefix in $PREFIXES; do
        echo "${prefix}${keyword}.vn" >> raw_data/expanded.txt
    done
    
    for suffix in $SUFFIXES; do
        echo "${keyword}${suffix}.vn" >> raw_data/expanded.txt
    done
done

# 数字组合 (shop24h, 365market, etc)
for num in 24 365 247 168; do
    for word in shop store market mall; do
        echo "${word}${num}.vn" >> raw_data/expanded.txt
        echo "${num}${word}.vn" >> raw_data/expanded.txt
    done
done

# 去重
sort -u raw_data/expanded.txt -o raw_data/expanded.txt

echo "[✅] 扩展完成: $(wc -l < raw_data/expanded.txt) 个域名"
