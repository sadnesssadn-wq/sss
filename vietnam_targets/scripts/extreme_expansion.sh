#!/bin/bash
# 极限扩展 - 目标5000+域名

echo "[*] 极限扩展开始..."

> raw_data/extreme_domains.txt

# 1. 更多真实越南网站（手工收集遗漏的）
cat >> raw_data/extreme_domains.txt << 'REAL'
chogiay.vn
chogao.vn
thitbo.vn
thitheo.vn
cacanh.vn
hoaqua.vn
rauqua.vn
traicaysach.vn
thucphamhuu-co.vn
huu-co.com.vn
organic.vn
sach.vn
truyen.vn
manga.vn
comic.vn
ebook.vn
audiobook.vn
doccao.vn
doctruyen.vn
sachmoi.vn
nhasachhay.vn
bookstore.vn
mybook.vn
boo.vn
fahasa.vn
vinabook.net
thienminh.vn
phuongnam.com.vn
alphabooks.vn
dayphien.com
dienthoai.vn
dienthoaivui.com.vn
dienthoaigiakho.vn
maxmobile.vn
didongviet.vn
viettablet.vn
hanoimobile.vn
saigonmobile.vn
caremobile.vn
clickbuy.com.vn
topzone.vn
vietteltelecom.vn
mobifone.vn
vina.phone.vn
yes.phone.vn
laptop.vn
computevn.vn
pcstore.vn
gearshop.vn
phucanh.vn
tinhocngoisang.vn
namanhcomputer.vn
khanhanhcomputer.vn
hoanghapc.vn
maytinh365.vn
linh-kien-may-tinh.vn
tainghe.vn
speaker.vn
headphone.vn
loa.vn
amthanhso.vn
music.vn
nhaccu.com.vn
dan.vn
piano.vn
tivi.com.vn
smarttv.vn
tivi.online.vn
maylanh.vn
dieuhoagiare.vn
dieuhoa.com.vn
tulanh.com.vn
tulanhgiare.vn
maygiat.com.vn
maygiare.vn
maylocnuoc.vn
binhnonglanh.vn
locnuoc.vn
mayxay.vn
banchan.vn
noicom.vn
beptu.vn
bepdien.vn
bepga.vn
bep.vn
nhabep.vn
dochoimevabe.vn
dochoi.vn
toy.vn
toyvn.vn
dochoinam.vn
dochoingoaitroi.vn
lego.vn
puzze.vn
boardgame.vn
rc.vn
moto.vn
phutunguoto.vn
phutungxe.vn
xemay.vn
honda.vn
yamaha.vn
suzuki.vn
sym.vn
piagio.vn
vespa.vn
exciter.vn
winner.vn
msx.vn
vision.vn
airblade.vn
shvn.vn
lead.vn
dichvuxe.vn
suaxe.vn
ruaxe.vn
baodioxe.vn
thamnoi.vn
camxe.vn
lopxe.vn
lop.vn
dunlop.vn
bridgestone.vn
michelin.vn
xedap.com.vn
xedaptre.vn
xedapthethao.vn
xedapgia.vn
bongda.vn
bongro.vn
caulong.vn
tennis.vn
bongban.vn
gym.com.vn
fitness.vn
yoga.com.vn
boxing.vn
karate.vn
vovinam.vn
taekwondo.vn
judo.vn
thethao.com.vn
sportshop.vn
decathlon.vn
protec.vn
adidas.vn
nike.vn
puma.vn
asics.vn
mizuno.vn
quanaotheothao.vn
quanaogym.vn
quanaoyoga.vn
dayoga.vn
thanyoga.vn
thambai.vn
thuonghaisan.vn
camca.vn
cauca.vn
do-ca.vn
ducan.vn
cannau.vn
phukiencau.vn
baohomay.vn
mayanh.vn
mayanhso.vn
canon.vn
nikon.vn
sony.vn
fujifilm.vn
olympus.vn
panasonic.vn
gopro.vn
flycam.vn
drone.com.vn
maybay.vn
sacpin.vn
sacduphong.vn
pinduphong.com.vn
capsac.vn
daycap.vn
usb.vn
kingston.vn
samsung.vn
sandisk.vn
thengho.vn
odia.vn
otb.vn
opung.vn
case.vn
dan-man-hinh.vn
cuonman-hinh.vn
miengdan.vn
kinh-cuong-luc.vn
thietbivanphong.vn
mayin.vn
maycan.vn
mayscan.vn
mayphotocopy.vn
mayfax.vn
mayhuy.vn
binbut.vn
biahoso.vn
giaydiemp.vn
hopthep.vn
ke.vn
tu.vn
ban.vn
ghe.vn
banbongha.vn
banlàmban-viec.vn
ghevanphong.vn
ghenganh.vn
ghe-massage.vn
ghe-gaming.vn
ke-sach.vn
tu-sach.vn
tu-ao.vn
tu-giay.vn
tu-bep.vn
ke-bep.vn
noi.vn
chao.vn
dao.vn
thia.vn
dia.vn
chen.vn
ly.vn
coc.vn
binh.vn
hu.vn
lo.vn
noi-com.vn
binh-doc.vn
binh-giu-nhiet.vn
am-sieu-toc.vn
lo-vi-song.vn
may-xay.vn
may-ep.vn
may-danh-trung.vn
may-lam-sua.vn
may-lam-banh.vn
lo-nuong.vn
may-hut-bui.vn
may-hut-am.vn
quat.vn
quat-dien.vn
quat-hoi.vn
quat-tran.vn
quat-dung.vn
quat-sac.vn
ban-la.vn
ban-ui.vn
noi-chien.vn
noi-ap-suat.vn
ban-ghe.vn
ban-an.vn
ban-tra.vn
ban-hoc.vn
ghe-soa.vn
ghe-thu-gian.vn
nem.vn
dem.vn
man.vn
goi.vn
ra.vn
chan.vn
chăn-ga-goi-dem.vn
chăn-len.vn
chăn-hong.vn
rem.vn
rem-cua.vn
rem-van.vn
nhabep.com.vn
noithat.com.vn
noi-that-phong-khach.vn
noi-that-phong-ngu.vn
sofa.vn
sofa-giuong.vn
sofa-da.vn
giuong.vn
giuong-ngu.vn
giuong-tang.vn
tu-quan-ao.vn
ke-tivi.vn
ban-trang-diem.vn
tu-dung-giay.vn
tu-lanh-giay.vn
den.vn
den-chum.vn
den-trang-tri.vn
den-ban.vn
den-ngu.vn
den-sàn.vn
den-op-tran.vn
den-led.vn
bong-den.vn
tranh.vn
tranh-canvas.vn
tranh-treo-tuong.vn
binh-hoa.vn
lo-hoa.vn
hoa-gia.vn
caycanh.vn
caycanh-noi-that.vn
caycanh-phong-thuy.vn
chau-cay.vn
REAL

# 2. 更细分的产品词（500+）
MICRO_PRODUCTS="
aococ aothun aopolo aosomi aokhoac aolen aophao aogile
quan quanjean quankaki quandai quansooc quanau
dam damxoe daom dabody dammaxi damcong-so
vai vai-lua vai-kate vai-thun vai-jean vai-len vai-cotton
nhua nhựa-tong nhua-dac-biet polyester acrylic spandex
tui tuixach tuidep tunmm tunilon tuvai tusach
giay giaytay giaythethao giaynam giaunu giaytre giaybet
giayda giayvai giaycanvas giayluoi
sandal dep-guoc dep-lao dep-xo-ngon dep-quai dep-cao-got
bongtai nhan vong day-chuyen lac-tay lac-chan phu-kien
vang bach-kim bac dong thep inox titan kim-cuong ngoc-trai
ruby sapphire emerald topaz amethyst
dongho-co dongho-dien-tu dongho-thong-minh dongho-treo-tuong bao-thuc
kinhcan kinhram kinh-ap-trong kinh-mau kinh-chong-can kinh-chong-tia
gong kinh-mat vo-kinh trong-kinh
ao-mua ao-gio ao-phu ao-choang khăn-quang khan-choang
mu non-la mu-bao-hiem mu-len mu-luoi-trai
gang gang-tay gang-len vo-tay
tat vớ-nam vớ-nu tat-dai tat-ngan tat-len
khăn-mat khăn-tam khăn-an khăn-trai-ghe khăn-lot khăn-giay
dia-nhua dia-su dia-thuy-tinh dia-mem-lamine
chen-su chen-thuy-tinh chen-nhua chen-mem chen-inox
ly-su ly-thủy-tinh ly-nhua ly-giay ly-inox
binh-su binh-thủy-tinh binh-nhua binh-inox
noi-chao dao-kéo thia-dia muong-nia dua
ghe-so-pha ghe-thu-gian ghe-ban-an ghe-quầy-bar ghe-cong-vien
tu-ao-tu-quần-ao tu-giay-dep tu-do-choi tu-sach-báo
ke-sach ke-tivi ke-trang-tri ke-de-đo tu-bep tu-ruou
ban-lam-việc ban-hoc-sinh ban-tra ban-phongế-khach ban-make-up
ghe-xoay ghe-nganh ghe-gaming ghe-massage ghe-thu-gian
dem-bong-ep dem-latop dem-mousse dem-foam nem-khí
chan-ga-goi-nem chan-len chan-mam-sa chan-cotton chan-su
rem-cua rem-vai rem-trai-cua rem-dep rem-phong-khach
ao-mua-dep-indi-phao thich-mac-cho-con-nit
cho-mua thosua
"

for product in $MICRO_PRODUCTS; do
    echo "${product}.vn" >> raw_data/extreme_domains.txt
    echo "${product}vn.vn" >> raw_data/extreme_domains.txt
    echo "${product}giare.vn" >> raw_data/extreme_domains.txt
    echo "mua${product}.vn" >> raw_data/extreme_domains.txt
    echo "ban${product}.vn" >> raw_data/extreme_domains.txt
done

# 3. 数字大组合
for i in {1..100}; do
    echo "shop${i}.vn" >> raw_data/extreme_domains.txt
    echo "store${i}.vn" >> raw_data/extreme_domains.txt
done

# 4. 字母组合
for letter in {a..z}; do
    echo "${letter}shop.vn" >> raw_data/extreme_domains.txt
    echo "shop${letter}.vn" >> raw_data/extreme_domains.txt
done

# 5. 双字母组合（常见的）
DOUBLES="aa ab ad ag ah ak am an ap as at av ax ay az bb bc bd be bg bi bk bl bo br bs bt bu bv by bz cc cd ce cf cg ch ci ck cl cm cn co cp cr cs ct cu cv cx cy cz"
for double in $DOUBLES; do
    echo "${double}shop.vn" >> raw_data/extreme_domains.txt
    echo "shop${double}.vn" >> raw_data/extreme_domains.txt
done

# 去重
sort -u raw_data/extreme_domains.txt -o raw_data/extreme_domains.txt

echo "[✅] 极限扩展完成: $(wc -l < raw_data/extreme_domains.txt)"
