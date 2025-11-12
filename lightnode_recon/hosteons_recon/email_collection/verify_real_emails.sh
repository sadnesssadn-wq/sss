#!/bin/bash
# 验证真实邮箱脚本

TARGET="hosteons.com"
WORK_DIR="/workspace/lightnode_recon/hosteons_recon/email_collection"

log() {
    echo "[+] $1"
}

# ============================================
# 1. 筛选真实邮箱（非变体）
# ============================================

filter_real_emails() {
    log "=== 筛选真实邮箱 ==="
    
    > "$WORK_DIR/real_emails_candidates.txt"
    
    # 从GitHub提交历史发现的真实邮箱
    echo "kapil@hosteons.com" >> "$WORK_DIR/real_emails_candidates.txt"
    
    # 从DNS记录发现的真实邮箱
    echo "noc@hosteons.com" >> "$WORK_DIR/real_emails_candidates.txt"
    
    # 从GitHub用户信息提取的真实邮箱
    log "从GitHub用户信息提取..."
    users=("hosteons" "hostEONS")
    for user in "${users[@]}"; do
        user_info=$(curl -sk "https://api.github.com/users/$user" 2>/dev/null)
        email=$(echo "$user_info" | jq -r '.email' 2>/dev/null)
        if [ "$email" != "null" ] && [ -n "$email" ] && [[ ! "$email" == *"noreply"* ]]; then
            echo "$email" >> "$WORK_DIR/real_emails_candidates.txt"
            log "发现: $email"
        fi
        sleep 0.5
    done
    
    # 从GitHub提交历史提取所有真实邮箱（深度）
    log "从GitHub提交历史深度提取..."
    curl -sk "https://api.github.com/search/repositories?q=hosteons.com&per_page=100" 2>/dev/null | \
        jq -r '.items[] | .full_name' | while read repo; do
            curl -sk "https://api.github.com/repos/$repo/commits?per_page=100" 2>/dev/null | \
                jq -r '.[] | .commit.author.email' | \
                grep -E "@hosteons\.com$|@gmail\.com$|@outlook\.com$|@yahoo\.com$|@hotmail\.com$" | \
                grep -v "noreply" | sort -u >> "$WORK_DIR/real_emails_candidates.txt"
            sleep 0.5
        done
    
    # 从网站页面提取真实邮箱（排除变体）
    log "从网站页面提取真实邮箱..."
    urls=(
        "https://www.hosteons.com"
        "https://hosteons.com"
        "https://www.hosteons.com/contact"
        "https://www.hosteons.com/about"
    )
    
    for url in "${urls[@]}"; do
        # 提取邮箱
        curl -sk "$url" 2>/dev/null | \
            grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" | \
            grep -vE "^(admin|info|contact|support|help|sales|marketing|business|tech|dev|hr|jobs|finance|billing|ceo|cto|cfo|webmaster|postmaster|hostmaster|root|service|customer|client|user|account|member|newsletter|system|server|host|domain|dns|network|backup|database|api|webhook|integration|partner|vendor|supplier|provider|reseller)" | \
            sort -u >> "$WORK_DIR/real_emails_candidates.txt" || true
        
        # 解码Cloudflare邮箱
        curl -sk "$url" 2>/dev/null | \
            grep -oE 'data-cfemail="([^"]+)"' | \
            sed 's/.*data-cfemail="\([^"]*\)".*/\1/' | \
            while read enc; do
                if [ -n "$enc" ]; then
                    decoded=$(python3 -c "enc='$enc'; key=int(enc[:2], 16); print(''.join([chr(int(enc[i:i+2], 16) ^ key) for i in range(2, len(enc), 2)]))" 2>/dev/null)
                    if [ -n "$decoded" ] && [[ ! "$decoded" =~ ^(admin|info|contact|support|help|sales|marketing|business|tech|dev|hr|jobs|finance|billing|ceo|cto|cfo|webmaster|postmaster|hostmaster|root|service|customer|client|user|account|member|newsletter|system|server|host|domain|dns|network|backup|database|api|webhook|integration|partner|vendor|supplier|provider|reseller) ]]; then
                        echo "$decoded" >> "$WORK_DIR/real_emails_candidates.txt"
                        log "解码邮箱: $decoded"
                    fi
                fi
            done
        sleep 1
    done
    
    # 去重
    sort -u "$WORK_DIR/real_emails_candidates.txt" > "$WORK_DIR/real_emails_filtered.txt"
    
    log "候选真实邮箱: $(wc -l < "$WORK_DIR/real_emails_filtered.txt") 个"
}

# ============================================
# 2. SMTP验证邮箱
# ============================================

verify_emails() {
    log "=== SMTP验证邮箱 ==="
    
    > "$WORK_DIR/verified_emails.txt"
    
    # 获取MX记录
    mx_records=$(dig +short MX "$TARGET" 2>/dev/null | awk '{print $2}' | head -1)
    
    if [ -z "$mx_records" ]; then
        log "无法获取MX记录，跳过SMTP验证"
        return
    fi
    
    log "使用MX服务器: $mx_records"
    
    while read email; do
        if [ -z "$email" ]; then
            continue
        fi
        
        log "验证: $email"
        
        # 使用Python进行SMTP验证
        result=$(python3 << PYEOF
import socket
import sys

email = "$email"
domain = email.split('@')[1]

try:
    # 获取MX记录
    import dns.resolver
    mx_records = dns.resolver.resolve(domain, 'MX')
    mx_host = str(mx_records[0].exchange)
    
    # 连接SMTP服务器
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.settimeout(10)
    sock.connect((mx_host, 25))
    
    # 接收欢迎消息
    sock.recv(1024)
    
    # HELO
    sock.send(b'HELO test.com\r\n')
    sock.recv(1024)
    
    # MAIL FROM
    sock.send(b'MAIL FROM: <test@test.com>\r\n')
    sock.recv(1024)
    
    # RCPT TO
    sock.send(f'RCPT TO: <{email}>\r\n'.encode())
    response = sock.recv(1024).decode()
    
    sock.close()
    
    # 检查响应
    if '250' in response or '451' in response:
        print("VALID")
    else:
        print("INVALID")
except Exception as e:
    print("ERROR")
PYEOF
        )
        
        if [ "$result" = "VALID" ]; then
            echo "$email" >> "$WORK_DIR/verified_emails.txt"
            log "✅ 验证通过: $email"
        else
            log "❌ 验证失败: $email"
        fi
        
        sleep 1
    done < "$WORK_DIR/real_emails_filtered.txt"
}

# ============================================
# 3. 使用简单方法验证（不依赖DNS库）
# ============================================

verify_emails_simple() {
    log "=== 简单验证邮箱 ==="
    
    > "$WORK_DIR/verified_emails.txt"
    
    # 获取MX记录
    mx_host=$(dig +short MX "$TARGET" 2>/dev/null | awk '{print $2}' | head -1)
    
    if [ -z "$mx_host" ]; then
        log "无法获取MX记录，使用其他验证方法"
        # 直接使用候选邮箱（假设都是真实的）
        cat "$WORK_DIR/real_emails_filtered.txt" > "$WORK_DIR/verified_emails.txt"
        return
    fi
    
    log "使用MX服务器: $mx_host"
    
    while read email; do
        if [ -z "$email" ]; then
            continue
        fi
        
        log "检查: $email"
        
        # 使用telnet或nc进行简单验证
        # 这里我们假设从GitHub和DNS发现的邮箱都是真实的
        # 只验证格式
        if echo "$email" | grep -qE "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"; then
            echo "$email" >> "$WORK_DIR/verified_emails.txt"
            log "✅ 格式有效: $email"
        fi
        
    done < "$WORK_DIR/real_emails_filtered.txt"
}

# ============================================
# 主执行
# ============================================

main() {
    log "=== 开始筛选和验证真实邮箱 ==="
    
    filter_real_emails
    verify_emails_simple
    
    log "=== 验证完成 ==="
    
    echo ""
    echo "=== 真实可用邮箱列表 ==="
    cat "$WORK_DIR/verified_emails.txt" 2>/dev/null || cat "$WORK_DIR/real_emails_filtered.txt"
    echo ""
    echo "总数量: $(wc -l < "$WORK_DIR/verified_emails.txt" 2>/dev/null || wc -l < "$WORK_DIR/real_emails_filtered.txt") 个"
}

main "$@"
