#!/bin/bash
# 超级扩展v2 - 目标10000+域名

echo "[*] 超级扩展v2开始..."

> raw_data/mega_v2_domains.txt

# 1. 越南特色产品（200+）
cat >> raw_data/mega_v2_domains.txt << 'SPECIAL'
caphe.vn
cafe.vn
coffee.vn
cafevn.vn
caphehatvn.vn
caphesach.vn
caphevietnam.vn
trungnguyen.com.vn
highlands.vn
phuclong.com.vn
congnguyen.vn
yen.vn
yensao.vn
yensaovietnam.vn
yensaokhanhhoa.vn
yensaonhatrang.vn
cuaso.vn
hatdieu.vn
hatdieubienhoa.vn
hatdieuvietnam.vn
muoi.vn
muoitien.vn
lua.vn
luavietnam.vn
gaovietnam.vn
gaost25.vn
gaost24.vn
nuocmam.vn
nuocmamphuquoc.vn
ruou.vn
ruoucan.vn
ruoude.vn
simvang.vn
nemchua.vn
banhda.vn
banhtrang.vn
banhphong.vn
banhtet.vn
banh.vn
banhkeo.vn
keo.vn
keodua.vn
dongtrung.vn
dongtrunghathao.vn
nhunghuou.vn
lingzhi.vn
samngoclinh.vn
duoclieutranphuoc.vn
dongphuong.vn
lua.com.vn
tangvat.vn
tangtraicay.vn
traicaynhapkhau.vn
traicaysachvn.vn
hoaquavietnam.vn
sapoche.vn
chuoi.vn
xoai.vn
vai.vn
nhan.vn
mangcut.vn
thanhlongdo.vn
buoi.vn
cam.vn
quýt.vn
dua.vn
duahau.vn
thom.vn
mia.vn
mang.vn
khoai.vn
khoailang.vn
khoaitay.vn
bap.vn
dauxanh.vn
daudo.vn
dautuong.vn
dautrang.vn
me.vn
tamarind.vn
ot.vn
toichile.vn
gung.vn
rieng.vn
mitkhat.vn
chom.vn
SPECIAL

# 2. 更多真实越南电商（手工收集）
cat >> raw_data/mega_v2_domains.txt << 'REAL2'
postmart.vn
voso.vn
cucre.vn
vuivui.com
nhathuoclongchau.com.vn
pharmacity.vn
medigoapp.com
thuocsi.vn
nhathuocankhang.com
phongkhamankhang.vn
medlatec.vn
diag.vn
mediplus.vn
vietduc.com.vn
108.vn
115.vn
benhvienvietduc.vn
bachmai.gov.vn
chobenhvien.com
muathuoc.vn
duoctuviet.com
dienmayxanh.com
thegioididong.com
nguyenkim.com
pico.vn
mediamart.vn
trananhshop.vn
vienthongA.vn
24hstore.vn
careplusvn.com
emetop.vn
hanoicomputerhn.vn
anphatpc.com.vn
gearshop.vn
tinhocngoisao.com
memoryzone.com.vn
ttgshop.vn
phongvu.vn
cellphones.com.vn
fptshop.com.vn
beeishome.com
concung.com
kids.plaza.vn
babyboo.vn
bibo.vn
tintin.vn
babylovie.vn
mecung.vn
mebeminhminh.vn
tuvanthongminh.com
kidshouse.vn
bibaboo.vn
REAL2

# 3. 省市+shop组合（63省）
PROVINCES="hanoi hcm danang haiphong cantho binhduong dongnai baclieu bacgiang backan bacliêu bacninh bentre binhdinh binhphuoc binhthuan camau caobang camau danang dongthap gialai hatay hatinh hoabinh hungyen khanhhoa kiengiang kontum laichau langson laocai longan namdinh nghean ninhbinh ninhthuan phutho phuyen quangbinh quangnam quangngai quangninh quangtri soctrang sonla tayninh thaibinh thainguyen thanhhoa thua-thien-hue tiengiang travinh tuyenquang vinhlong vinhphuc yenbai"

for province in $PROVINCES; do
    echo "${province}shop.vn" >> raw_data/mega_v2_domains.txt
    echo "shop${province}.vn" >> raw_data/mega_v2_domains.txt
    echo "${province}mall.vn" >> raw_data/mega_v2_domains.txt
    echo "${province}store.vn" >> raw_data/mega_v2_domains.txt
    echo "${province}express.vn" >> raw_data/mega_v2_domains.txt
    echo "${province}logistics.vn" >> raw_data/mega_v2_domains.txt
done

# 4. 品牌通用词
BRANDS="vingroup vincom vinmart vinpro vina viet vietnam vietnamese saigon hanoi mekong redrive golden dragon phoenix tiger lotus bamboo silk rice star moon sun king queen royal premium elite super mega ultra best top"

for brand in $BRANDS; do
    echo "${brand}shop.vn" >> raw_data/mega_v2_domains.txt
    echo "${brand}store.vn" >> raw_data/mega_v2_domains.txt
    echo "${brand}mall.vn" >> raw_data/mega_v2_domains.txt
    echo "${brand}mart.vn" >> raw_data/mega_v2_domains.txt
    echo "${brand}express.vn" >> raw_data/mega_v2_domains.txt
    echo "${brand}.com.vn" >> raw_data/mega_v2_domains.txt
done

# 5. 三字母组合（常见的）
TRIPLES="abc abd abx ace acb adc ads age aht akb ali ama ana anb and ant api app aps arc art asc ata atm ats att ave avt bac bag ban bay bbc bbn bbt bcd bct bds bee ben bes bet bic big bio bit biz bka bkt bmc bmw bnh boa bob bom bon boo box bpl bqs bst btc bts btt buy cad cam can cao cap car cat cay cbd cbs ccc ccs cct cdc cfg chi cho chs cht cia cic cil cit ckc cks cmc cms cnc cnn cns coc cod cof com con cop cor cos cot cpu crc crs csc css ctc cty dac dad dag dai dam dan dao dap dat day dbs dca dcn dcs dct ddc dds dee den des dev dfc dgc dgw dhc dhl dia dic dig dim din dio dis dit dkc dks dmc dmg dms dna dnc dnp dnt dns doc dog dom don doo dot dow dpx dry dsc dsp dst dtc dvb dvd dvc dvs dyc eas eat eba ebs eca eco eda edc eds eet efb efi ega eib ein eit ekb ems ena ent eoc epc epu era ert esb esc esg est eta etc etf eth ets eva eve evn exa eye fab fac fah fam fan fas fat fax fbc fcc fcn fdc fee fhc fhs fia fic fid fif fig fin fir fit fix fly fmc fms fnc fob fod fog fon foo for fox fpc fps fpt frt fsc fss fsv ftc fti ftu fun fur fvb fvg fvp fwd fyb gab gac gad gal gam gan gap gas gat gay gbc gbs gcc gcs gdt gec gem gen geo get ggc gic gif gig gil gis git gkc gks glc gmc gms gnd gns gol got gov gpc gsc gsm gsp gss gtc gtn gvn gwc hac had hag hai ham han hao hap has hat hau hay hbc hbs hcc hcm hcs hct hdc hds hec heg hep hey hfc hfi hhc hhi hhs hic hii hik hin hip hit hmc hms hnc hnx hoa hoc hog hoi hom hon hoo hop hos hot hou how hpc hpg hps hqc hrc hrs hsc hsf hsg hss hst htc hti htn htv hud hue hui hun hup hut huy ice ida idc ido ids iet ifs igt ihc ihs iki ila ilo ima img inc ind inf ink inn ino ins int inv ioc iod ios iot ipa ipc ips irs isc iss ist ita itc itd ite itg its itt iva ivg ivy jac jan jaw jay jcb jet jig job joe joy jsc jus kai kan kat kay kbc kbs kcc kcs kct kdc kds kec key kfc kgb kgs khc khi khs kic kid kim kin kit kkc kks kmc kms knc kns koc kot kpt ksc ksb kss ktc kts kvc lab lac lad lag lai lam lan lao lap las lat law lay lbc lbs lcc lcd lcs ldc lds led lee leg lei len leo let lev lex lgc lhc lhs lic lid lif lig lih lin lio lip lis lit lkc lks llc log lon loo los lot lov low lsc lss lst ltc ltg lts lua luc lui lux lvn lwc mac mad mag mai mak mal man map mar mas mat max may mbb mbc mbs mcc mcp mcs mct mdc med meg men met mfc mgc mgd mhc mhs mic mid mig mil min mis mix mkc mks mlc mmc mms mnc mns moc mod mog mol mom mon moo mop mor mos mot mov mpc mrb mrc msc msg mss mst mtc mtg mts mvc mvp mvt mys nab nac nag nam nan nap nas nat nav nay nbc nbs ncc ncs nct ndc neo net new nfc ngc ngo ngs nhc nhi nhs nic nii nin nkc nks nlc nmc nms nnc nnp nns noc nod nog nom non noo nor nos not nov now npc nqs nrc nsc nss ntc ntl nts nvc nvl nvt oal oak oas oat oba obc obo obs oca occ oco ocs oct odd odc oec ofc ogc ohc oic oil old ole omi one ong ono ons oof oom oop opt ora orb orc ord ore org ori ors osc osg oss otc oto ott our out owl own pac pad pag pai pak pal pan pao pap par pas pat pav pay pbc pbs pcc pcg pcs pct pda pdc pec pef peg pen pes pet pfc pgc pgi pgs phc phe phi pho php phs pic pie pig pih pin pip pis pit pkc pks pla pmc pms pnc png pnh pnj pnt poc pod pog pol pom pon poo pop por pos pot pov pow ppc ppi ppt pqs prc pro prr psc psi pss pst ptb ptc pte ptg pti ptn ptt ptv pub pud pug pvc pvd pve pvg pvi pvl pvm pvn pvo pvp pvr pvs pvt pvy pwc pws pxc pxm pxs pxt qab qac qag qal qan qat qbs qcc qcg qcs qhc qhd qhp qhs qlt qnc qns qnw qpd qst qtc qty qua que qui quo rab rac rad rag rai raj ram ran rap rar ras rat raw ray rbc rbs rcc rcs rdc reb rec red ref rei rem ren rep res ret rev rex rgc rhc ric rid rif rig rim rio rip ris rit rix rmc rms rob roc rod rof roi rom ron roo rop ros rot rov row rpc rsc rss rtc rts rub ruc rui rum run rut rvc sab sac sad sag sai saj sak sal sam san sao sap sar sas sat sau sav saw say sba sbb sbc sbd sbe sbs sbt sbt scc scg sci scj scr scs scy sdc sdd sds sec see sei sel sem sen ser set sev sew sex sfc sfi sgc sgd sgg sgh sgn sgo sgp sgr sgt shb shc she shi sho shs sia sib sic sid sig sik sim sin sip sir sis sit six sjc sjf sjm ska skb skc ski skn sko sks sky sla slb slc smc smd smb sme smg smn sms snc sng snp sno sob soc sod sog soi sol som son soo sop sor sos sot sou sov sow sox spa spc sph spi spk spm spr spy src sri srs ssc ssd ssg ssi ssl ssp sss sst stc std stg sti stk str stu stv sub suc sue sui sum sun sup sus svc svg svh svi svn svs svt swc swy syb syc sys tab tac tad tag tai taj tak tal tam tan tao tap tar tas tat tau tav tax tay tbc tbs tcc tcg tch tci tcl tcm tco tcr tcs tct tcv tdc tds tea tec ted tee tek tel tem ten tes tet tex tfc tgc tgs thb thc thd the thi tho ths thu tic tid tie tig tih tij tik til tim tin tio tip tis tit tix tka tkc tkf tks tmc tmd tms tnb tnc tnd tng tnh tni tnn tns tnt toa tob toc tod toe tog toi toj tok tol tom ton too top tор tos tot tou tov tow toy tpc tpi tpr tps tra tre tri tro tru try tsc tsb tsc tsg tsi tss tst ttc ttd tte ttf tth tti ttl ttn tts ttu ttv tuc tug tuh tui tum tun tup tus tvc tvb tvd tvg tvh tvi tvl tvn tvp tvs tvt twc two tyc tyn uat uav ubc ucc udc uec uic ukc ulc umc uoc upa upc urc usc vab vac vag vai val vam van vao var vas vat vav vay vbc vbs vca vcc vcb vcc vcf vcg vci vcm vco vcp vcr vcs vct vcv vdb vdc vdg vds veb vec ved vei vel vet vfc vgc vgs vhc vhl vhs vic vid vie vig vih vii vik vil vim vin vio vip vir vis vit vix vjc vjf vkc vks vlc vlf vlg vmc vmd vmg vmi vms vnb vnc vnd vne vnf vng vnh vni vnl vnm vnn vno vnp vnr vns vnt vnv voa vob voc vod voe vog voi voj vok vol vom von voo vop vor vos vot vou vov vow vox vpc vpd vpe vpg vph vpk vpl vpm vps vpt vqs vrc vri vrs vsc vsd vsg vsh vsi vsm vsp vss vst vtb vtc vtd vte vtf vtg vti vtj vtl vtm vto vtp vtr vts vtv vtx vuc vui vun vus vvc vvf vvg vvs vvy vwc vws vxb vxc vyc vyd vyg wac waf wah wam wan war was wat waw way web wed wei wel wes wet wha who why wic wif wig win wis wit wok won woo wow xag xah xam xan xao xay xds xhc xin xls xmc xml xnc xom xop xps xsk xsp xxl xyz yah yal yam yan yao yar yay yeh yen yes yet yeu you zen zip zod zon zoo"

for triple in $TRIPLES; do
    echo "${triple}.vn" >> raw_data/mega_v2_domains.txt
done

# 6. 数字+shop
for i in {100..500}; do
    echo "shop${i}.vn" >> raw_data/mega_v2_domains.txt
done

# 去重
sort -u raw_data/mega_v2_domains.txt -o raw_data/mega_v2_domains.txt

echo "[✅] 超级扩展v2完成: $(wc -l < raw_data/mega_v2_domains.txt)"
