#!/bin/bash
# 员工信息深度收集脚本

TARGET="lightnode.com"
WORK_DIR="/workspace/lightnode_recon/comprehensive"
mkdir -p "$WORK_DIR"

log() {
    echo "[+] $1"
}

# ============================================
# 1. 从GitHub收集员工信息
# ============================================

collect_github_employees() {
    log "从GitHub收集员工信息..."
    
    # 检查11个GitHub用户的所有仓库
    github_users=(
        "lightnode"
        "LightNode2022"
        "LightNodeStaking"
        "lightnodelightnode-oss"
        "lightnodesas1"
        "lightnode2000"
        "lightnodesas"
        "lightNodeEcho"
        "LightNodes"
        "LightNode-Cloud"
        "douglightnode"
    )
    
    for user in "${github_users[@]}"; do
        log "检查用户: $user"
        
        # 获取用户信息
        curl -sk "https://api.github.com/users/$user" | \
            jq -r '"\(.login)|\(.name)|\(.email)|\(.bio)|\(.company)|\(.blog)"' >> "$WORK_DIR/github_users_info.txt" 2>/dev/null || true
        
        # 获取用户的仓库
        curl -sk "https://api.github.com/users/$user/repos?per_page=100" | \
            jq -r '.[].full_name' >> "$WORK_DIR/github_repos_all.txt" 2>/dev/null || true
        
        # 获取仓库的contributors
        curl -sk "https://api.github.com/users/$user/repos?per_page=100" | \
            jq -r '.[].full_name' | while read repo; do
                curl -sk "https://api.github.com/repos/$repo/contributors" | \
                    jq -r '.[] | "\(.login)|\(.html_url)"' >> "$WORK_DIR/github_contributors.txt" 2>/dev/null || true
            done
        
        sleep 1  # 避免API限制
    done
    
    # 提取所有贡献者
    cat "$WORK_DIR/github_contributors.txt" 2>/dev/null | cut -d'|' -f1 | sort -u > "$WORK_DIR/github_all_contributors.txt"
    
    log "发现贡献者: $(wc -l < "$WORK_DIR/github_all_contributors.txt" 2>/dev/null || echo 0) 个"
}

# ============================================
# 2. 从证书透明度收集邮箱
# ============================================

collect_cert_emails() {
    log "从证书透明度收集邮箱..."
    
    # crt.sh查询
    curl -sk "https://crt.sh/?q=%.${TARGET}&output=json" | \
        jq -r '.[].name_value' | \
        grep -iE "@${TARGET}" | \
        sort -u > "$WORK_DIR/cert_emails_all.txt" 2>/dev/null || true
    
    log "从证书发现邮箱: $(wc -l < "$WORK_DIR/cert_emails_all.txt" 2>/dev/null || echo 0) 个"
    
    # 显示发现的邮箱
    if [ -s "$WORK_DIR/cert_emails_all.txt" ]; then
        echo "发现的邮箱:"
        cat "$WORK_DIR/cert_emails_all.txt"
    fi
}

# ============================================
# 3. 从WHOIS收集联系信息
# ============================================

collect_whois_info() {
    log "从WHOIS收集联系信息..."
    
    whois "$TARGET" > "$WORK_DIR/whois_full.txt" 2>/dev/null || true
    
    # 提取邮箱
    grep -iE "@${TARGET}" "$WORK_DIR/whois_full.txt" | sort -u > "$WORK_DIR/whois_emails.txt" 2>/dev/null || true
    
    # 提取姓名（如果存在）
    grep -iE "name|contact|admin" "$WORK_DIR/whois_full.txt" | head -20 >> "$WORK_DIR/whois_contacts.txt" 2>/dev/null || true
    
    log "WHOIS信息已保存"
}

# ============================================
# 4. 从GitHub提交历史提取作者
# ============================================

collect_commit_authors() {
    log "从GitHub提交历史提取作者..."
    
    # 检查已知仓库
    repos=("aurora423/next-lightnode-frontend")
    
    for repo in "${repos[@]}"; do
        log "检查仓库: $repo"
        
        # 获取提交作者
        curl -sk "https://api.github.com/repos/$repo/commits?per_page=100" | \
            jq -r '.[] | "\(.commit.author.name)|\(.commit.author.email)|\(.author.login)"' | \
            sort -u >> "$WORK_DIR/commit_authors.txt" 2>/dev/null || true
        
        sleep 1
    done
    
    # 提取邮箱
    cat "$WORK_DIR/commit_authors.txt" 2>/dev/null | cut -d'|' -f2 | \
        grep -iE "@${TARGET}" | sort -u > "$WORK_DIR/commit_emails.txt" 2>/dev/null || true
    
    log "从提交历史发现邮箱: $(wc -l < "$WORK_DIR/commit_emails.txt" 2>/dev/null || echo 0) 个"
}

# ============================================
# 5. 生成邮箱变体（基于发现的姓名）
# ============================================

generate_email_variants() {
    log "生成邮箱变体..."
    
    # 从各种来源收集的姓名（示例，需要实际数据）
    names=()
    
    # 从commit_authors提取姓名
    if [ -f "$WORK_DIR/commit_authors.txt" ]; then
        cat "$WORK_DIR/commit_authors.txt" | cut -d'|' -f1 | sort -u | while read name; do
            if [ -n "$name" ] && [ "$name" != "null" ]; then
                names+=("$name")
            fi
        done
    fi
    
    # 从GitHub用户信息提取姓名
    if [ -f "$WORK_DIR/github_users_info.txt" ]; then
        cat "$WORK_DIR/github_users_info.txt" | cut -d'|' -f2 | sort -u | while read name; do
            if [ -n "$name" ] && [ "$name" != "null" ]; then
                names+=("$name")
            fi
        done
    fi
    
    # 生成邮箱变体
    domain="$TARGET"
    email_formats=(
        "{first}.{last}@{domain}"
        "{first}_{last}@{domain}"
        "{first}{last}@{domain}"
        "{f}.{last}@{domain}"
        "{first}.{l}@{domain}"
        "{first}{l}@{domain}"
    )
    
    > "$WORK_DIR/email_variants_generated.txt"
    
    for name in "${names[@]}"; do
        if [[ $name =~ ^[A-Za-z]+[[:space:]]+[A-Za-z]+ ]]; then
            first=$(echo "$name" | awk '{print $1}' | tr '[:upper:]' '[:lower:]')
            last=$(echo "$name" | awk '{print $NF}' | tr '[:upper:]' '[:lower:]')
            f=${first:0:1}
            l=${last:0:1}
            
            for fmt in "${email_formats[@]}"; do
                email=$(echo "$fmt" | sed "s/{first}/$first/g" | sed "s/{last}/$last/g" | sed "s/{f}/$f/g" | sed "s/{l}/$l/g" | sed "s/{domain}/$domain/g")
                echo "$email" >> "$WORK_DIR/email_variants_generated.txt"
            done
        fi
    done
    
    sort -u "$WORK_DIR/email_variants_generated.txt" > "$WORK_DIR/email_variants_final.txt"
    
    log "生成邮箱变体: $(wc -l < "$WORK_DIR/email_variants_final.txt" 2>/dev/null || echo 0) 个"
}

# ============================================
# 6. 合并所有邮箱
# ============================================

merge_all_emails() {
    log "合并所有邮箱..."
    
    > "$WORK_DIR/all_emails_merged.txt"
    
    # 已知邮箱
    echo "support@${TARGET}" >> "$WORK_DIR/all_emails_merged.txt"
    echo "business@${TARGET}" >> "$WORK_DIR/all_emails_merged.txt"
    
    # 从证书透明度
    [ -f "$WORK_DIR/cert_emails_all.txt" ] && cat "$WORK_DIR/cert_emails_all.txt" >> "$WORK_DIR/all_emails_merged.txt"
    
    # 从WHOIS
    [ -f "$WORK_DIR/whois_emails.txt" ] && cat "$WORK_DIR/whois_emails.txt" >> "$WORK_DIR/all_emails_merged.txt"
    
    # 从提交历史
    [ -f "$WORK_DIR/commit_emails.txt" ] && cat "$WORK_DIR/commit_emails.txt" >> "$WORK_DIR/all_emails_merged.txt"
    
    # 生成的变体
    [ -f "$WORK_DIR/email_variants_final.txt" ] && cat "$WORK_DIR/email_variants_final.txt" >> "$WORK_DIR/all_emails_merged.txt"
    
    # 去重
    sort -u "$WORK_DIR/all_emails_merged.txt" > "$WORK_DIR/all_emails_final.txt"
    
    log "总邮箱数: $(wc -l < "$WORK_DIR/all_emails_final.txt" 2>/dev/null || echo 0) 个"
    
    # 显示前20个
    echo ""
    echo "发现的邮箱（前20个）:"
    head -20 "$WORK_DIR/all_emails_final.txt" 2>/dev/null || echo "无"
}

# ============================================
# 主执行
# ============================================

main() {
    log "=== 员工信息深度收集开始 ==="
    
    collect_github_employees
    collect_cert_emails
    collect_whois_info
    collect_commit_authors
    generate_email_variants
    merge_all_emails
    
    log "=== 员工信息收集完成 ==="
    log "结果保存在: $WORK_DIR/"
}

main "$@"
