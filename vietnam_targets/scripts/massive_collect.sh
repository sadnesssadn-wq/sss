#!/bin/bash
# 大规模收集越南本土电商/物流

echo "[*] 开始大规模收集越南本土公司..."

# 1. 垂直电商关键词（越南语）
VERTICAL_KEYWORDS="
thucpham sach dientu thoitrang giaydep noithat
myPham duoclieu muaban cuahang sieuthi
traicay raucu thitca haisan gao bot
dochoi embe mebao nuochoaqua
laptop dienthoai maytinh camera amthanh
quanao giay dep tui balo dongho
nha dat xe oto xemay
"

# 2. 地区前缀（越南63省）
CITIES="
hanoi saigon hcm danang haiphong cantho
nhatrang dalat hue vungtau quangninh
halong namdinh thaibinh nghean
thanhhoa quangtri quangnam quangngai
binhdinh phuyen khanhhoa ninhthuan
binhthuan lamdong dongnai binhduong
tayninh longan tiengiang bentre
travinh vinhlong dongthap angiang
kiengiang camau baclieu socrang
haugiang cantho backan caobang
hagiang laocai dienbian sonla
hoabinh yenbai thainguyen langson
bacgiang bacninh hungyen hanam
namdinh ninhbinh thaibinh
"

# 生成域名组合
> raw_data/massive_domains.txt

# 综合电商
for word in shop store mall market muasam banhang cuahang sieuth; do
    echo "${word}.vn" >> raw_data/massive_domains.txt
    echo "${word}online.vn" >> raw_data/massive_domains.txt
    echo "${word}24h.vn" >> raw_data/massive_domains.txt
    echo "${word}vn.com" >> raw_data/massive_domains.txt
    
    # 地区组合
    for city in hanoi saigon hcm danang; do
        echo "${word}${city}.vn" >> raw_data/massive_domains.txt
        echo "${city}${word}.vn" >> raw_data/massive_domains.txt
    done
done

# 垂直电商
for keyword in thucpham sach dientu thoitrang myPham dochoi laptop xe nha; do
    for suffix in vn online 24h; do
        echo "${keyword}${suffix}.vn" >> raw_data/massive_domains.txt
        echo "mua${keyword}.vn" >> raw_data/massive_domains.txt
        echo "ban${keyword}.vn" >> raw_data/massive_domains.txt
    done
done

# 物流关键词
for word in giaohang chuyenphat vanchuyen logistics express post; do
    echo "${word}.vn" >> raw_data/massive_domains.txt
    echo "${word}nhanh.vn" >> raw_data/massive_domains.txt
    echo "${word}tietkiem.vn" >> raw_data/massive_domains.txt
    
    for city in hanoi saigon danang; do
        echo "${word}${city}.vn" >> raw_data/massive_domains.txt
    done
done

# 去重
sort -u raw_data/massive_domains.txt -o raw_data/massive_domains.txt

echo "[✅] 生成域名: $(wc -l < raw_data/massive_domains.txt)"
