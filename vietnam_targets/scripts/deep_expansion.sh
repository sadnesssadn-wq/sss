#!/bin/bash
# 深度扩展 - 覆盖更多细分领域

echo "[*] 深度扩展越南本土网站..."

> raw_data/expansion_domains.txt

# 1. 越南63省市地方电商
PROVINCES="angiang bacgiang backan baclieu bacninh baria bentre binhdinh binhduong binhphuoc binhthuan camau cantho caobang danang daklak daknong dienbien dongnai dongthap gialai hagiang haiduong haiphong hanam hanoi hatinh haugiang hoabinh hungyen khanhhoa kiengiang kontum laichau lamdong langson laocai longan namdinh nghean ninhbinh ninhthuan phuyen phutho quangbinh quangnam quangngai quangninh quangtri soctrang sonla tayninh thaibinh thainguyen thanhhoa thuathien tientiang travinh tuyenquang vinhlong vinhphuc yenbai hcm saigon"

for province in $PROVINCES; do
    echo "muasam${province}.vn" >> raw_data/expansion_domains.txt
    echo "${province}shop.vn" >> raw_data/expansion_domains.txt
    echo "shop${province}.vn" >> raw_data/expansion_domains.txt
    echo "${province}mart.vn" >> raw_data/expansion_domains.txt
done

# 2. 细分垂直领域（100+关键词）
VERTICALS="
baohiem dienlanh maylanh maygiat tulanh tivi amthanh loa
camera giamsat khoaphu thietbidien dongho kinhmat
trangsuc vang bac kimcuong nhanco daychuyen
taphoa gao bot duong gia bot sua thit ca rau
nuocngot bia ruou khomuoi do-hop thucphamkho
vitamin thucphamchucnang thuocbothuoc thuocnam sinhly duocpham
kinhcan matkinh saptu daydo ganh matxa giuong nem
trangtri tranh binhhoa denchiasang rembanhrem
phongkhach phongbep phongngu phonglamviec vanphongpham
balo capi tuchdiem vitien tuixach dungcu
xe-dap xe-may xe-hoi phuton lop vo nhot
thietbi phongtap yoga bongda bongro caulong boi
sach truyen tieuthuyet sachthieunhi sachkynang sachtieng
ngoaingu hoctieng kynang laptrinhlaptrinhvien marketting
xe bat-dong-san du-lich khachsan tour visa thue
"

for keyword in $VERTICALS; do
    echo "mua${keyword}.vn" >> raw_data/expansion_domains.txt
    echo "ban${keyword}.vn" >> raw_data/expansion_domains.txt
    echo "${keyword}online.vn" >> raw_data/expansion_domains.txt
    echo "${keyword}gia-re.vn" >> raw_data/expansion_domains.txt
    echo "${keyword}.com.vn" >> raw_data/expansion_domains.txt
done

# 3. 商业模式关键词
MODELS="
pintuan nhommuanhommua tuanmua flashsale muachung
livestream livestreamban truckien diemban sieuthidem
giare khuyenmai uudai magiamgia voucher coupon
daugia daubang camdo trahang doicu thanhlysanpham
caplainha cuahangchanchancunhacung
"

for model in $MODELS; do
    echo "${model}.vn" >> raw_data/expansion_domains.txt
    echo "${model}online.vn" >> raw_data/expansion_domains.txt
    echo "${model}24h.vn" >> raw_data/expansion_domains.txt
done

# 4. 数字组合
for num in 24 247 365 24h 7days 360; do
    echo "shop${num}.vn" >> raw_data/expansion_domains.txt
    echo "mall${num}.vn" >> raw_data/expansion_domains.txt
    echo "deal${num}.vn" >> raw_data/expansion_domains.txt
    echo "${num}deal.vn" >> raw_data/expansion_domains.txt
    echo "${num}shop.vn" >> raw_data/expansion_domains.txt
done

# 5. 品类组合词
CATEGORIES="laptop phone tablet watch tv laptop camera headphone speaker keyboard mouse"
for cat in $CATEGORIES; do
    echo "${cat}vn.vn" >> raw_data/expansion_domains.txt
    echo "${cat}giare.vn" >> raw_data/expansion_domains.txt
    echo "mua${cat}.vn" >> raw_data/expansion_domains.txt
done

# 去重
sort -u raw_data/expansion_domains.txt -o raw_data/expansion_domains.txt

echo "[✅] 扩展域名: $(wc -l < raw_data/expansion_domains.txt)"
