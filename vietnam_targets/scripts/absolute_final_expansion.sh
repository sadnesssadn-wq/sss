#!/bin/bash
# 绝对终极扩展

echo "[*] 绝对终极扩展开始..."

> raw_data/absolute_final.txt

# 1. 先保留1529个中除了明确外资的所有
cat processed/final_mega_alive.txt | \
grep -viE "(lazada|shopee\.vn|grab\.com|be\.com\.vn|gojek|booking\.com|agoda\.com|traveloka)" \
> raw_data/absolute_base.txt

echo "[✅] 基础保留: $(wc -l < raw_data/absolute_base.txt)"

# 2. 更多越南语电商词
VIETNAMESE_ECOM="muasam muaban muahang banhang sieuthionline choonline muaonline banonline muare mua ban cho sieu thi hang hoa san pham dich vu cua hang cuahang tiem buon ban mua sam ban le ban si thi truong thuong mai dientu muabanchung giaodich kinh doanh"

for word in $VIETNAMESE_ECOM; do
    echo "${word}.vn" >> raw_data/absolute_final.txt
    echo "${word}.com.vn" >> raw_data/absolute_final.txt
    echo "${word}online.vn" >> raw_data/absolute_final.txt
    echo "${word}24h.vn" >> raw_data/absolute_final.txt
    echo "${word}nhanh.vn" >> raw_data/absolute_final.txt
    echo "${word}giare.vn" >> raw_data/absolute_final.txt
    echo "${word}tot.vn" >> raw_data/absolute_final.txt
    echo "${word}uy-tin.vn" >> raw_data/absolute_final.txt
done

# 3. 更多产品类别（越南语）
PRODUCTS="thitbo thitheo thitga thitlon cacanh tom ca sua trung gao lua bun pho mi banh keo keo-dua thach mut hat dieu hat sen hat hoa qua trai cay rau cu qua khoai san-dai cam quyt xoai thanh-long vai nhan chuoi dua-hau sapoche buoi bo hong-xiem mang-cut durian mit bo-ket cherry tao nho le dao dao-tien man quy dao xuan-dao thom dua oi vu-sua hong-gion vu sua-chua yogurt phommai banh-mi banh-quy banh-bong-lan cookies keo-cao-su tra cafe sua-dau ruou bia nuoc-giai-khat si-ro kem"

for product in $PRODUCTS; do
    echo "${product}.vn" >> raw_data/absolute_final.txt
    echo "${product}.com.vn" >> raw_data/absolute_final.txt
    echo "mua${product}.vn" >> raw_data/absolute_final.txt
    echo "ban${product}.vn" >> raw_data/absolute_final.txt
done

# 4. 更多行业词（越南语）
INDUSTRIES="thoitrang thoitrangnam thoitrangnu thoitrangtrecon aoquan aophong aosomi quandai quansooc damnu damcoc vay giaydep giaynam giaunu giaytre dep-guoc tuixach balo capmypham lam-dep son-moi son-nuoc kem-duong sua-rua-mat nuoc-hoa shampo xa-duong sua-tam sua-duong kem-chong-nang mi-mat moi tay-trang suc-khoe thuoc-bao-ve-suc-khoe thuc-pham-chuc-nang vitamin khoang-chat duong-vat dochoi oyster do-choi-tre-em bup-be xe-dap xe-may xe-hoi o-to xe-dien laptop computer may-tinh may-tinh-bang dien-thoai di-dong smartphone tablet phu-kien phu-kien-dien-thoai op-lung mieng-dan sac-du-phong cap-sac tai-nghe loa ampli amply may-anh camera may-quay drone flycam may-in may-scan thiet-bi-van-phong do-dung-van-phong but viet giay in biahoso ke-ho-so ke-sach tu-sach ghe-van-phong ban-lam-viec noi-that noi-that-phong-khach noi-that-phong-ngu noi-that-bep tu-lanh may-giat may-lanh dieu-hoa quat-dien lo-vi-song noi-com noi-chien noi-ap-suat binh-nong-lanh may-loc-nuoc"

for industry in $INDUSTRIES; do
    echo "${industry}.vn" >> raw_data/absolute_final.txt
    echo "${industry}.com.vn" >> raw_data/absolute_final.txt
    echo "${industry}vn.vn" >> raw_data/absolute_final.txt
done

# 5. 数字组合（更多）
for i in {1..1000}; do
    echo "shop${i}.vn" >> raw_data/absolute_final.txt
done

# 6. 双字母+shop
for a in {a..z}; do
    for b in {a..z}; do
        echo "${a}${b}shop.vn" >> raw_data/absolute_final.txt
    done
done

# 7. 物流词（更全）
LOGISTICS="vanchuyennhanh vanchuyen giaohang giaohangnhanh giaohangtietkiem giaohang247 giaohangsieutoc chuyenphat chuyenphatnhanh chuyenphatnhanh247 chuyenphatsieutoc ship shipnhanh shiphanghoa shipre shiphere shiptucti express expresspost expresslogistics logistics logisticsvn cargo cargologistics freight transport transportation delivery deliveryservice courier courierservice post postvn postexpress ems emsvn"

for word in $LOGISTICS; do
    echo "${word}.vn" >> raw_data/absolute_final.txt
    echo "${word}.com.vn" >> raw_data/absolute_final.txt
done

sort -u raw_data/absolute_final.txt -o raw_data/absolute_final.txt

echo "[✅] 新生成域名: $(wc -l < raw_data/absolute_final.txt)"

# 存活检查
echo "[*] 大规模存活检查..."
> processed/absolute_alive.txt

check_domain() {
    domain=$1
    code=$(timeout 5 curl -sk -o /dev/null -w "%{http_code}" --connect-timeout 1 --max-time 2 "https://${domain}" 2>/dev/null)
    if [ "$code" -ge 200 ] && [ "$code" -lt 500 ]; then
        echo "https://${domain}"
        return 0
    fi
    code=$(timeout 5 curl -sk -o /dev/null -w "%{http_code}" --connect-timeout 1 --max-time 2 "http://${domain}" 2>/dev/null)
    if [ "$code" -ge 200 ] && [ "$code" -lt 500 ]; then
        echo "http://${domain}"
        return 0
    fi
}

export -f check_domain

cat raw_data/absolute_final.txt | xargs -P 80 -I {} bash -c 'check_domain "{}"' > processed/absolute_alive.txt

ALIVE=$(wc -l < processed/absolute_alive.txt)

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 绝对终极扩展完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "新生成域名: $(wc -l < raw_data/absolute_final.txt)"
echo "新存活: $ALIVE"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
