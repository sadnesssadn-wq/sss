#!/bin/bash
# 已知的越南电商/物流网站列表

cat > ../raw_data/known_sites.txt << 'SITES'
# ===== 电商平台 =====
tiki.vn
sendo.vn
shopee.vn
lazada.vn
thegioididong.com
fptshop.com.vn
nguyenkim.com
dienmayxanh.com
bachhoaxanh.com
concung.com
vinid.net
adayroi.com
yes24.vn
fahasa.com
vinabook.com
hanoicomputer.vn
gearvn.com
cellphones.com.vn
memoryzone.com.vn
mediamart.vn
phongvu.vn
tgdd.vn
hc.com.vn
ankhang.vn
metastore.vn

# ===== 快递物流 =====
ghn.vn
giaohangtietkiem.vn
viettelpost.com.vn
vnpost.vn
ahamove.com
grab.com
ninjavan.vn
jtexpress.vn
best-inc.vn
kerryexpress.com
nhattinlogistics.com.vn
voso.vn
shipchung.vn
giaohangnhanh.vn
vneshipping.com

# ===== 直播电商/社交电商 (2025新兴) =====
tiktokshop.vn
shopeelive.vn
lazlive.vn

# ===== 垂直电商 =====
hasaki.vn
guardian.vn
watsons.vn
medicare.vn
pharmacity.vn
doctorcare.vn
beautytalk.vn
lotte.vn
aeon.vn
coopmart.com.vn
bigc.vn
winmart.vn
saigonco-op.com.vn
bitis.com.vn
canifa.com
routine.vn
coolmate.me
yody.vn
owen.vn
elise.vn
ninomaxx.com
kidsplaza.vn
SITES

echo "[✅] 已收集 $(wc -l < ../raw_data/known_sites.txt) 个已知网站"
