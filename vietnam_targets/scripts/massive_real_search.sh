#!/bin/bash
# 大规模真实电商搜索

echo "[*] 大规模真实电商搜索..."

> raw_data/massive_real.txt

# 1. 更多越南品牌（服装/鞋/食品/电子）
BRANDS="bitis canifa owen ivy routine coolmate yody pnj doji sjc juno elise pierre ninomaxx blueexchange k-mall gumac supersports gosports vnexpress bachhoaxanh winmart coopmart bigc satrafoods annam hapro klever mevabe kidsplaza babyboo bibomart mytour vntrip ivivu vexere gotadi phongvu hacom gearvn hanoicomputer memoryzone vinabook nhasachphuongnam tintin babylovie guardian pharmacity nhathuoclongchau thuocsi alphabooks shoptretho chonhanh yes24 nhanam robins postmart vuivui cucre adayroi webtretho mientay hotdeal nhommua muare vatgia chotot rongbay"

for brand in $BRANDS; do
    echo "${brand}.vn" >> raw_data/massive_real.txt
    echo "${brand}.com.vn" >> raw_data/massive_real.txt
done

# 2. 行业+越南语词（更多）
INDUSTRIES="thoitrang giaydep tuixach dienthoai maytinh laptop dochoi sach truyen mypham lamdep dienmay noithat dogiadung thucpham doan douong mevabe embe banhkeo trasua caphe cahophe nuocgiaikai thegame danhgolf choimoto xemay oto phuongtienmaypha dacu kinh thuyet phamviet vohoc quatang hoadep caycanhnt thucung kemxoi thitbo thu-san haicho luabao muoitieu noichien yenbao truyenviet saoyeu thoicong danbangu ngusao khuvui karaoke"

for industry in $INDUSTRIES; do
    echo "${industry}.vn" >> raw_data/massive_real.txt
    echo "${industry}.com.vn" >> raw_data/massive_real.txt
    echo "mua${industry}.vn" >> raw_data/massive_real.txt
    echo "ban${industry}.vn" >> raw_data/massive_real.txt
    echo "${industry}online.vn" >> raw_data/massive_real.txt
done

# 3. shop/store/mall + 关键词
KEYWORDS="online 24h sieu tiet kiem tot nhat uy tin chat luong re dep hay moi nhat tot nhat chinh hang giam gia khuyen mai"

for kw in $KEYWORDS; do
    echo "shop${kw}.vn" >> raw_data/massive_real.txt
    echo "store${kw}.vn" >> raw_data/massive_real.txt
    echo "mall${kw}.vn" >> raw_data/massive_real.txt
done

# 4. 电商通用词（越南语）
ECOM_VN="muasam muaban muahang banhang sieuthionline choonline muaonline banonline muare mua chotot choonline sieuthi cuahang cua-hang ch-hang shop-viet mua-sam ban-hang giao-hang mua-online"

for word in $ECOM_VN; do
    echo "${word}.vn" >> raw_data/massive_real.txt
    echo "${word}.com.vn" >> raw_data/massive_real.txt
    echo "${word}24h.vn" >> raw_data/massive_real.txt
done

# 5. 物流全词
LOGISTICS="chuyenphatnhanh giaohangnhanh vanchuyen giaohang chuyenphat vancon giaohangtietkiem vanchuyen nhanh giaohang247 ship shipnhanh shipre shiphere vanchuyen247 express-vn logistics-vn post viettelpost vnpost"

for word in $LOGISTICS; do
    echo "${word}.vn" >> raw_data/massive_real.txt
    echo "${word}.com.vn" >> raw_data/massive_real.txt
done

# 6. 城市 + shop/mall
CITIES="hanoi hcm danang haiphong cantho vungtau nhatrang dalat hue quangninh binhduong dongnai longan"

for city in $CITIES; do
    echo "${city}shop.vn" >> raw_data/massive_real.txt
    echo "${city}mall.vn" >> raw_data/massive_real.txt
    echo "${city}store.vn" >> raw_data/massive_real.txt
    echo "shop${city}.vn" >> raw_data/massive_real.txt
done

sort -u raw_data/massive_real.txt -o raw_data/massive_real.txt

echo "[✅] 生成域名: $(wc -l < raw_data/massive_real.txt)"

# 存活检查
echo "[*] 存活检查（大规模并发）..."
> processed/massive_alive.txt

check_domain() {
    domain=$1
    code=$(timeout 5 curl -sk -o /dev/null -w "%{http_code}" --connect-timeout 2 --max-time 3 "https://${domain}" 2>/dev/null)
    if [ "$code" -ge 200 ] && [ "$code" -lt 500 ]; then
        echo "https://${domain}"
        return 0
    fi
    code=$(timeout 5 curl -sk -o /dev/null -w "%{http_code}" --connect-timeout 2 --max-time 3 "http://${domain}" 2>/dev/null)
    if [ "$code" -ge 200 ] && [ "$code" -lt 500 ]; then
        echo "http://${domain}"
        return 0
    fi
}

export -f check_domain

cat raw_data/massive_real.txt | xargs -P 50 -I {} bash -c 'check_domain "{}"' > processed/massive_alive.txt

ALIVE=$(wc -l < processed/massive_alive.txt)

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 大规模搜索完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "生成域名: $(wc -l < raw_data/massive_real.txt)"
echo "存活网站: $ALIVE"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
