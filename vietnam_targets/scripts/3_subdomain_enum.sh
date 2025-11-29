#!/bin/bash
# 子域名枚举 - 扩展目标

echo "[*] 开始子域名枚举..."

# 从已知站点提取主域名
cat raw_data/known_sites.txt | while read domain; do
    echo "[*] 枚举: $domain"
    
    # 方法1: crt.sh证书查询
    curl -sk "https://crt.sh/?q=%.${domain}&output=json" 2>/dev/null | \
        jq -r '.[].name_value' 2>/dev/null | \
        sed 's/\*\.//g' | sort -u >> raw_data/subdomains_temp.txt
    
    # 方法2: DNS枚举常见前缀
    for prefix in www api m mobile admin test dev staging shop store uat pre demo beta sandbox; do
        host ${prefix}.${domain} 2>/dev/null | grep "has address" | awk '{print $1}' >> raw_data/subdomains_temp.txt
    done
    
    sleep 1
done

# 去重
sort -u raw_data/subdomains_temp.txt > raw_data/subdomains.txt
rm -f raw_data/subdomains_temp.txt

echo "[✅] 子域名枚举完成: $(wc -l < raw_data/subdomains.txt) 个"
