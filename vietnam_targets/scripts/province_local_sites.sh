#!/bin/bash
# 越南各省市本地电商网站

echo "[*] 生成越南各省市本地电商..."

> raw_data/province_sites.txt

# 越南63个省市
PROVINCES=(
"hanoi" "hochiminh" "haiphong" "danang" "cantho"
"binhduong" "dongnai" "longan" "baclieu" "bacninh"
"bentre" "binhdinh" "binhphuoc" "binhthuan" "camau"
"caobang" "daklak" "daknong" "dienbien" "dongnai"
"dongthap" "gialai" "hagiang" "haiduong" "hanam"
"hatinh" "hoabinh" "hungyen" "khanhhoa" "kiengiang"
"kontum" "laichau" "lamdong" "langson" "laocai"
"namdinh" "nghean" "ninhbinh" "ninhthuan" "phutho"
"phuyen" "quangbinh" "quangnam" "quangngai" "quangninh"
"quangtri" "soctrang" "sonla" "tayninh" "thaibinh"
"thainguyen" "thanhhoa" "thuathienhue" "tiengiang" "travinh"
"tuyenquang" "vinhlong" "vinhphuc" "yenbai"
)

# 本地电商关键词
for province in "${PROVINCES[@]}"; do
    echo "https://shop${province}.vn" >> raw_data/province_sites.txt
    echo "https://${province}shop.vn" >> raw_data/province_sites.txt
    echo "https://mua${province}.vn" >> raw_data/province_sites.txt
    echo "https://ban${province}.vn" >> raw_data/province_sites.txt
done

sort -u raw_data/province_sites.txt -o raw_data/province_sites.txt

echo "[✅] 省市网站生成: $(wc -l < raw_data/province_sites.txt)"
