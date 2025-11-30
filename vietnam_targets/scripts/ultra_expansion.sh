#!/bin/bash
# 超级扩展 - 目标2000+域名

echo "[*] 超级扩展开始..."

> raw_data/ultra_domains.txt

# 1. 更多越南语电商词汇
VIETNAM_WORDS="
cuahangonline sieuthinh
om chodem muangay bannhanh muare
sieuthionline cuahangtructuyen cuahang24h cuahang365
thitruong marketplace hoinghimua hoinghiban
sangtaonline muabantrucmmonnine muabannhanh
sieurenhanh giasieuchieu
"

for word in $VIETNAM_WORDS; do
    echo "${word}.vn" >> raw_data/ultra_domains.txt
    echo "${word}.com.vn" >> raw_data/ultra_domains.txt
    echo "${word}247.vn" >> raw_data/ultra_domains.txt
done

# 2. 产品细分（200+品类）
PRODUCTS="
ao quan vay dam vest giachannosung giacuoc caocap
giaytay giaythethao giaycaogot dep sandal
dongho donghonam donghonu donghotre donghodeo
kinhmat kinhcan kinhramsieuthitran
nhanvong nhankim daychuyen bongtai vongtay
tuixach balotui capvi vinam vinu
laptop dell hp asus acer lenovo mac
dienthoai iphone samsung oppo vivo xiaomi
tablet ipad android matbang
tivi samsung lg sony tcl
tulanh maylanh maygiat tudonglanhmbay
loaamthanh tai-nghe loa speaker
camera gopro canon nikon sony
drone maybay mayquay
chuot banphim manhinh webcam usb
sac capsac daycap pinduphong sacduphong
modem wifi router mang 4g 5g
sachdientu kindle ebook sachnoi audiboodle
trucnanguye tieuthuyet kinh-te khoa-hoc
truyentranh manga comictre thiếunhi
vanphongthan butvieng thước kéo giày binhhoa
sua bot damam binhsau em taem lốem
bimta quanao giatogiấy uomứng thucanu-truee
rau traicai quathit ca trung suachua
gaong bot duong gia dau muoi tuong
nuocngot trano ruou bivang
thuocboc vitamin khoang canxi sattieu
thietbikhoa camara chuandoo dongcođô
sautu giuonong nemdeá gối chanran
bantraò ghe dengă quatlam tủ
doikhoi doitrang dotrang dobep
xeđạxe moto phutung lop nhot
noi chanag tigăat dao nỉm chảo
thambam garph tranh tuong dengá đèbàn
caycanh hoa bonthể
sachsach saubo choithể dumvimayý
maytinh pcgame gamingvăng laptopgame
"

for product in $PRODUCTS; do
    echo "ban${product}.vn" >> raw_data/ultra_domains.txt
    echo "mua${product}.vn" >> raw_data/ultra_domains.txt
    echo "${product}online.vn" >> raw_data/ultra_domains.txt
    echo "${product}giare.vn" >> raw_data/ultra_domains.txt
    echo "${product}vn.vn" >> raw_data/ultra_domains.txt
done

# 3. 所有63省市完整版
ALL_PROVINCES="
hanoi hcm saigon haiphong danang cantho
angiang bacgiang backan baclieu bacninh bariavungtau
bentre binhdinh binhduong binhphuoc binhthuan
camau caobang daklak daknong dienbien
dongnai dongthap gialai hagiang haiduong
hanam hatinh haugiang hoabinh hungyen
khanhhoa kiengiang kontum laichau lamdong
langson laocai longan namdinh nghean
ninhbinh ninhthuan phuyen phutho quangbinh
quangnam quangngai quangninh quangtri soctrang
sonla tayninh thaibinh thainguyen thanhhoa
thuathienheue tiengiang travinh tuyenquang
vinhlong vinhphuc yenbai backan
"

for city in $ALL_PROVINCES; do
    for word in shop mart mall store muasam ban mua logistics express van; do
        echo "${city}${word}.vn" >> raw_data/ultra_domains.txt
        echo "${word}${city}.vn" >> raw_data/ultra_domains.txt
    done
done

# 4. 年份/日期组合
for year in 2020 2021 2022 2023 2024 2025; do
    echo "shop${year}.vn" >> raw_data/ultra_domains.txt
    echo "mall${year}.vn" >> raw_data/ultra_domains.txt
done

# 5. 品牌/连锁词
CHAINS="
mini mega super top best pro max plus elite premium
vip gold silver diamond platinum
new hot sale deal discount
smart quick fast express rapid
easy simple cheap value
online digital
"

for chain in $CHAINS; do
    for base in shop mall store market; do
        echo "${chain}${base}.vn" >> raw_data/ultra_domains.txt
        echo "${base}${chain}.vn" >> raw_data/ultra_domains.txt
    done
done

# 6. 组合词（三个词）
for a in mua ban; do
    for b in hang san pham; do
        for c in online nhanh giare; do
            echo "${a}${b}${c}.vn" >> raw_data/ultra_domains.txt
        done
    done
done

# 7. 缩写组合
for abbr in vn sg hn dn; do
    for word in shop mall store market; do
        echo "${abbr}${word}.vn" >> raw_data/ultra_domains.txt
        echo "${word}${abbr}.vn" >> raw_data/ultra_domains.txt
    done
done

# 去重
sort -u raw_data/ultra_domains.txt -o raw_data/ultra_domains.txt

echo "[✅] 超级扩展完成: $(wc -l < raw_data/ultra_domains.txt)"
