#!/bin/bash
# 代理池管理器 + WAF绕过

PROXY_FILE="/workspace/proxy_pool.txt"
PROXY_COUNT=$(wc -l < $PROXY_FILE)

# 1. 测试代理可用性
test_proxy() {
    local proxy=$1
    local ip=$(echo $proxy | cut -d: -f1)
    local port=$(echo $proxy | cut -d: -f2)
    local user=$(echo $proxy | cut -d: -f3)
    local pass=$(echo $proxy | cut -d: -f4)
    
    timeout 5 curl -sk --proxy "http://$user:$pass@$ip:$port" \
        --proxy-anyauth \
        "https://httpbin.org/ip" > /dev/null 2>&1
    
    [ $? -eq 0 ] && echo "$proxy" >> working_proxies.txt
}

# 2. 批量测试代理
echo "[+] 测试代理可用性..."
cat $PROXY_FILE | while read proxy; do
    test_proxy "$proxy" &
    [ $(jobs -r | wc -l) -ge 20 ] && wait -n
done
wait

WORKING_COUNT=$(wc -l < working_proxies.txt 2>/dev/null || echo "0")
echo "[+] 可用代理: $WORKING_COUNT/$PROXY_COUNT"

# 3. 随机获取代理
get_random_proxy() {
    shuf -n 1 working_proxies.txt 2>/dev/null || head -1 $PROXY_FILE
}

# 4. 格式化代理（curl格式）
format_proxy() {
    local proxy=$1
    local ip=$(echo $proxy | cut -d: -f1)
    local port=$(echo $proxy | cut -d: -f2)
    local user=$(echo $proxy | cut -d: -f3)
    local pass=$(echo $proxy | cut -d: -f4)
    
    echo "http://$user:$pass@$ip:$port"
}

# 5. 使用代理请求（自动轮换）
proxy_request() {
    local url=$1
    local proxy=$(get_random_proxy)
    local proxy_url=$(format_proxy "$proxy")
    
    curl -sk --proxy "$proxy_url" \
        --proxy-anyauth \
        --max-time 10 \
        "$url"
}
