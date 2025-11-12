# LightNode 邮箱收集最终报告

生成时间: 2024-11-12

## 📧 邮箱收集结果

### 收集方法
1. GitHub深度挖掘（贡献者、提交历史、Issues、PRs、Gists）
2. 证书透明度（所有证书的issuer和subject）
3. DNS记录（SPF、DMARC、MX）
4. 网站页面（HTML提取、Cloudflare解码）
5. WHOIS记录（主域名和子域名）
6. 社交媒体（GitHub事件、Releases）
7. 邮箱变体生成（基于已知名字和常见格式）

### 邮箱统计
查看: `email_collection/all_emails_valid.txt`

### 各来源统计
查看: `email_collection/EMAIL_COLLECTION_SUMMARY.txt`

## 🎯 关键发现

1. **GitHub来源**
   - 从所有相关仓库提取
   - 包括贡献者、提交者、Issues/PRs作者

2. **证书透明度**
   - 从所有证书提取邮箱
   - 包括issuer和subject字段

3. **网站页面**
   - 从HTML提取可见邮箱
   - 解码Cloudflare保护的邮箱

4. **邮箱变体**
   - 基于已知名字生成
   - 常见邮箱前缀组合

## 📁 文件位置

所有邮箱收集结果保存在: `/workspace/lightnode_recon/comprehensive/email_collection/`
