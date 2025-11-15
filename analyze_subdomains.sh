#!/bin/bash
# 精确区分主域名和子域名

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🌐 主域名与子域名分析"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# 定义主域名列表
declare -A MAIN_DOMAINS=(
    ["ems.com.vn"]="EMS集团"
    ["emsone.com.vn"]="EMS One"
    ["vnpost.vn"]="VNPost"
    ["viettelpost.vn"]="Viettelpost"
    ["viettel.com.vn"]="Viettel集团"
    ["zaloapp.com"]="Zalo"
    ["mapbox.com"]="Mapbox"
    ["songkhoe.vn"]="Songkhoe"
    ["zing.vn"]="Zing"
    ["mkit.vn"]="Mkit"
    ["keeng.vn"]="Keeng"
    ["tinngan.vn"]="TinNgan"
    ["crashlytics.com"]="Crashlytics"
    ["realm.io"]="Realm"
    ["firebaseio.com"]="Firebase"
    ["movecrop.com"]="Movecrop"
    ["easyhrm.vn"]="EasyHRM"
    ["somee.com"]="Somee"
    ["zalo.me"]="Zalo.me"
)

# 统计子域名
declare -A SUBDOMAIN_COUNT

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📋 按主域名分类的子域名"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

TOTAL_SUBDOMAINS=0
MAIN_DOMAIN_COUNT=0

# 遍历每个主域名
for domain in "${!MAIN_DOMAINS[@]}"; do
    echo "【${MAIN_DOMAINS[$domain]}】 $domain"
    
    # 查找该主域名的子域名
    subdomains=$(cat /workspace/all_domains.txt | grep "\.$domain$" | grep -v "^$domain$")
    count=$(echo "$subdomains" | grep -v "^$" | wc -l)
    
    if [ $count -gt 0 ]; then
        echo "$subdomains" | nl
        SUBDOMAIN_COUNT[$domain]=$count
        TOTAL_SUBDOMAINS=$((TOTAL_SUBDOMAINS + count))
    else
        echo "  (无子域名)"
    fi
    
    # 检查主域名本身是否在列表中
    if grep -q "^$domain$" /workspace/all_domains.txt; then
        echo "  ✓ 主域名本身也在列表中"
        MAIN_DOMAIN_COUNT=$((MAIN_DOMAIN_COUNT + 1))
    fi
    
    echo ""
done

# 添加报告中提到但未被提取的域名
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📝 补充域名（报告中有但提取脚本未捕获）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

ADDITIONAL=(
    "srv.mp3.zing.vn:Zing:zing.vn"
    "www.zalo-webhook.somee.com:Somee:somee.com"
)

ADDITIONAL_COUNT=0
for item in "${ADDITIONAL[@]}"; do
    subdomain=$(echo $item | cut -d':' -f1)
    org=$(echo $item | cut -d':' -f2)
    main=$(echo $item | cut -d':' -f3)
    echo "  $subdomain ($org)"
    ADDITIONAL_COUNT=$((ADDITIONAL_COUNT + 1))
    
    # 更新统计
    if [ -n "${SUBDOMAIN_COUNT[$main]}" ]; then
        SUBDOMAIN_COUNT[$main]=$((${SUBDOMAIN_COUNT[$main]} + 1))
    else
        SUBDOMAIN_COUNT[$main]=1
    fi
done

TOTAL_SUBDOMAINS=$((TOTAL_SUBDOMAINS + ADDITIONAL_COUNT))

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 统计结果"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# 显示每个主域名的子域名数量
echo "按主域名分类的子域名数量："
echo "───────────────────────────────────────"
for domain in "${!SUBDOMAIN_COUNT[@]}"; do
    printf "%-30s %2d个子域名\n" "$domain" "${SUBDOMAIN_COUNT[$domain]}"
done | sort -k2 -rn

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "主域名总数：     ${#MAIN_DOMAINS[@]}个"
echo "子域名总数：     $TOTAL_SUBDOMAINS个"
echo "主域名本身：     $MAIN_DOMAIN_COUNT个"
echo "───────────────────────────────────────"
GRAND_TOTAL=$((${#MAIN_DOMAINS[@]} + TOTAL_SUBDOMAINS))
echo "域名资产总计：   $GRAND_TOTAL个"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
