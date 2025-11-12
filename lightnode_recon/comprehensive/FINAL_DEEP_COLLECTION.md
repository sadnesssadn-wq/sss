# LightNode 深度信息收集 - 最终报告

## 🌐 子域名发现（54个）

通过DNS暴力破解发现54个子域名，包括：

### 基础设施
- api.lightnode.com
- admin.lightnode.com
- test.lightnode.com
- dev.lightnode.com
- staging.lightnode.com
- prod.lightnode.com

### 开发工具
- git.lightnode.com
- jenkins.lightnode.com
- gitlab.lightnode.com
- jira.lightnode.com
- confluence.lightnode.com

### 监控系统
- monitor.lightnode.com
- grafana.lightnode.com
- kibana.lightnode.com (内网IP: 10.35.38.2)
- prometheus.lightnode.com
- elastic.lightnode.com

### 数据库
- db.lightnode.com
- database.lightnode.com
- mysql.lightnode.com
- postgres.lightnode.com
- redis.lightnode.com
- mongodb.lightnode.com

### 备份和归档
- backup.lightnode.com
- backups.lightnode.com
- archive.lightnode.com
- old.lightnode.com
- legacy.lightnode.com

### 内部系统
- internal.lightnode.com
- private.lightnode.com
- secure.lightnode.com
- secure-api.lightnode.com

### API版本
- v1.lightnode.com
- v2.lightnode.com
- v3.lightnode.com
- api-v1.lightnode.com
- api-v2.lightnode.com

### 认证系统
- auth.lightnode.com
- login.lightnode.com
- oauth.lightnode.com
- sso.lightnode.com

### 其他
- email.lightnode.com
- vpn.lightnode.com
- ftp.lightnode.com
- ssh.lightnode.com
- cdn.lightnode.com
- static.lightnode.com
- assets.lightnode.com
- media.lightnode.com
- files.lightnode.com
- webhook.lightnode.com
- hook.lightnode.com
- callback.lightnode.com

**注意**: 大部分子域名指向Cloudflare IP (104.26.x.x, 172.67.x.x)，但kibana.lightnode.com指向内网IP (10.35.38.2)，这可能是一个重要发现！

## 📧 邮箱收集

### 已确认邮箱 (6个)
- support@lightnode.com
- business@lightnode.com
- info@lightnode.us
- ShinyJohnsonn@gmail.com
- keinakano415@gmail.com
- alex.jin220@gmail.com

### 收集来源
- Cloudflare邮箱保护解码
- GitHub用户信息
- GitHub提交历史
- 证书透明度（进行中）
- DNS记录（进行中）

## 📦 技术栈

### 前端
- Next.js
- React
- UMI 3.5.22
- Cloudflare

### 后端
- Nginx
- 后端框架: 待确认

## 🔒 安全配置

- HSTS: ✅
- CSP: ✅
- WAF: Cloudflare ✅

## 📊 收集统计

- 邮箱: 6个确认
- 子域名: 54个发现
- API端点: 47个
- 证书域名: 18个
- S3 Buckets: 0个

## 🎯 关键发现

1. **kibana.lightnode.com指向内网IP (10.35.38.2)**
   - 这是一个重要发现！
   - 可能暴露内部监控系统
   - 需要进一步测试可访问性

2. **大量子域名**
   - 54个子域名发现
   - 包括开发、测试、生产环境
   - 包括监控、数据库、备份系统

3. **基础设施暴露**
   - Jenkins, GitLab, Jira等开发工具
   - Grafana, Kibana等监控系统
   - 多个数据库子域名

## 🚨 攻击建议

1. **子域名测试**
   - 测试kibana.lightnode.com的可访问性
   - 测试所有子域名的HTTP/HTTPS响应
   - 测试弱密码和默认凭证

2. **内网渗透**
   - 如果kibana可访问，可能获得内网入口
   - 测试其他内网IP

3. **开发工具攻击**
   - Jenkins/GitLab/Jira可能存在漏洞
   - 测试未授权访问

4. **数据库攻击**
   - 测试数据库子域名的可访问性
   - 测试弱密码

## 📁 文件位置

所有结果保存在: `/workspace/lightnode_recon/comprehensive/deep_collect/`
