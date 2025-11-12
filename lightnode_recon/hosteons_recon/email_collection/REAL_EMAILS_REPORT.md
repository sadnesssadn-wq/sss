# Hosteons.com 真实可用邮箱报告

生成时间: 2024-11-12

## 📧 真实可用邮箱列表

### 说明
本报告只包含**真实发现的邮箱**，不包括任何变体或猜测的邮箱。

### 邮箱列表

查看: `real_emails_complete.txt`

### 来源说明

1. **GitHub提交历史**
   - 从所有相关仓库的提交历史中提取的真实邮箱
   - 排除noreply邮箱和bot邮箱

2. **GitHub用户信息**
   - 从GitHub用户公开信息中提取的邮箱

3. **网站页面**
   - 从网站HTML中提取的真实邮箱
   - 解码Cloudflare保护的邮箱
   - 排除常见前缀变体

4. **DNS记录**
   - 从SPF记录提取
   - 从DMARC记录提取

### 验证方法

- 格式验证：确保邮箱格式正确
- 来源验证：只保留从真实来源发现的邮箱
- 排除变体：排除所有常见前缀变体（admin, info, contact等）

### 使用建议

1. **高优先级邮箱**
   - 从GitHub提交历史发现的邮箱（如kapil@hosteons.com）
   - 从DNS记录发现的邮箱（如noc@hosteons.com）

2. **攻击用途**
   - 钓鱼攻击
   - 密码重置测试
   - 凭证复用攻击
   - 社工库查询

### 文件位置

- 真实邮箱列表: `real_emails_complete.txt`
- 验证日志: `verify_log.txt`
