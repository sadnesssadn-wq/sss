#!/bin/bash
# 工具集成代理池脚本

source /workspace/proxy_manager.sh

# 1. nuclei集成代理
nuclei_proxy() {
    local target=$1
    
    proxy=$(get_random_proxy)
    proxy_url=$(format_proxy "$proxy")
    
    export HTTP_PROXY="$proxy_url"
    export HTTPS_PROXY="$proxy_url"
    
    nuclei -u "$target" \
        -t ~/nuclei-templates/cves/ \
        -severity critical,high \
        -silent \
        -H "User-Agent: Mozilla/5.0" \
        -H "X-Forwarded-For: $(shuf -i 1-255 -n 1).$(shuf -i 1-255 -n 1).$(shuf -i 1-255 -n 1).$(shuf -i 1-255 -n 1)"
    
    unset HTTP_PROXY HTTPS_PROXY
}

# 2. sqlmap集成代理
sqlmap_proxy() {
    local url=$1
    
    proxy=$(get_random_proxy)
    ip=$(echo $proxy | cut -d: -f1)
    port=$(echo $proxy | cut -d: -f2)
    user=$(echo $proxy | cut -d: -f3)
    pass=$(echo $proxy | cut -d: -f4)
    
    sqlmap -u "$url" \
        --proxy="http://$ip:$port" \
        --proxy-cred="$user:$pass" \
        --batch \
        --tamper=space2comment,between
}

# 3. ffuf集成代理
ffuf_proxy() {
    local url=$1
    local wordlist=$2
    
    proxy=$(get_random_proxy)
    proxy_url=$(format_proxy "$proxy")
    
    ffuf -u "$url/FUZZ" \
        -w "$wordlist" \
        -mc 200,301,302,403 \
        -H "User-Agent: Mozilla/5.0" \
        -x "$proxy_url" \
        -t 50
}

# 4. katana集成代理
katana_proxy() {
    local url=$1
    
    proxy=$(get_random_proxy)
    proxy_url=$(format_proxy "$proxy")
    
    export HTTP_PROXY="$proxy_url"
    export HTTPS_PROXY="$proxy_url"
    
    katana -u "$url" -js-crawl -silent
    
    unset HTTP_PROXY HTTPS_PROXY
}

# 5. httpx集成代理
httpx_proxy() {
    local target=$1
    
    proxy=$(get_random_proxy)
    proxy_url=$(format_proxy "$proxy")
    
    httpx -u "$target" \
        -proxy "$proxy_url" \
        -title \
        -tech-detect \
        -status-code
}

# 6. 批量扫描（自动轮换代理）
batch_scan_with_proxy() {
    local targets_file=$1
    
    cat "$targets_file" | while read target; do
        # 每个目标用不同代理
        proxy=$(get_random_proxy)
        proxy_url=$(format_proxy "$proxy")
        
        export HTTP_PROXY="$proxy_url"
        export HTTPS_PROXY="$proxy_url"
        
        # 执行扫描
        nuclei -u "$target" -t ~/nuclei-templates/cves/ -severity critical,high -silent
        
        unset HTTP_PROXY HTTPS_PROXY
        
        # 随机延迟
        sleep $(shuf -i 2-5 -n 1)
    done
}
