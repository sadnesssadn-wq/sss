#!/bin/bash
# 代理管理器 - v10.7
# 功能：代理轮换、测试、选择

PROXY_POOL="/workspace/proxy_pool.txt"
PROXY_INDEX_FILE="/tmp/proxy_index.txt"
PROXY_TEST_URL="http://httpbin.org/ip"

# 初始化代理索引
init_proxy_index() {
    if [ ! -f "$PROXY_INDEX_FILE" ]; then
        echo "0" > "$PROXY_INDEX_FILE"
    fi
}

# 获取代理总数
get_proxy_count() {
    grep -v "^#" "$PROXY_POOL" | grep -v "^$" | wc -l
}

# 获取下一个代理（轮换）
get_next_proxy() {
    init_proxy_index
    local index=$(cat "$PROXY_INDEX_FILE")
    local count=$(get_proxy_count)
    
    if [ "$count" -eq 0 ]; then
        echo ""
        return
    fi
    
    local proxy=$(grep -v "^#" "$PROXY_POOL" | grep -v "^$" | sed -n "$((index + 1))p")
    
    # 更新索引（循环）
    index=$(((index + 1) % count))
    echo "$index" > "$PROXY_INDEX_FILE"
    
    echo "$proxy"
}

# 测试代理是否可用
test_proxy() {
    local proxy=$1
    if [ -z "$proxy" ]; then
        return 1
    fi
    
    # 解析代理格式
    local ip_port=$(echo "$proxy" | cut -d: -f1-2)
    local user_pass=$(echo "$proxy" | cut -d: -f3-4)
    
    if [ -n "$user_pass" ] && [ "$user_pass" != "$ip_port" ]; then
        local user=$(echo "$user_pass" | cut -d: -f1)
        local pass=$(echo "$user_pass" | cut -d: -f2)
        curl -s --max-time 5 --proxy "$ip_port" --proxy-user "$user:$pass" "$PROXY_TEST_URL" > /dev/null 2>&1
    else
        curl -s --max-time 5 --proxy "$ip_port" "$PROXY_TEST_URL" > /dev/null 2>&1
    fi
}

# 获取可用代理（自动测试）
get_working_proxy() {
    local max_attempts=10
    local attempt=0
    
    while [ $attempt -lt $max_attempts ]; do
        local proxy=$(get_next_proxy)
        if [ -z "$proxy" ]; then
            echo ""
            return 1
        fi
        
        if test_proxy "$proxy"; then
            echo "$proxy"
            return 0
        fi
        
        attempt=$((attempt + 1))
    done
    
    echo ""
    return 1
}

# 格式化代理为curl可用格式
format_proxy() {
    local proxy=$1
    if [ -z "$proxy" ]; then
        echo ""
        return
    fi
    
    local ip_port=$(echo "$proxy" | cut -d: -f1-2)
    local user_pass=$(echo "$proxy" | cut -d: -f3-4)
    
    if [ -n "$user_pass" ] && [ "$user_pass" != "$ip_port" ]; then
        local user=$(echo "$user_pass" | cut -d: -f1)
        local pass=$(echo "$user_pass" | cut -d: -f2)
        echo "$ip_port|$user|$pass"
    else
        echo "$ip_port"
    fi
}

# 导出函数
export -f get_next_proxy
export -f get_working_proxy
export -f test_proxy
export -f format_proxy
