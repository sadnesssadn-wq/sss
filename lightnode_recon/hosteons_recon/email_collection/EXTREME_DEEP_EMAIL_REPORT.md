# Hosteons.com 极端深度邮箱收集报告

## 📧 收集结果

### 真实邮箱列表

经过极端深度挖掘，共发现 **2个** 真实可用邮箱：

1. **kapil@hosteons.com**
   - 来源：GitHub提交历史（hosteons/Fail2Ban-Auto-Installer-With-Jail, hosteons/linux-malware-scanner等仓库）
   - 验证：✅ 多次出现在Git提交记录中
   - 价值：高（开发人员/技术负责人）

2. **noc@hosteons.com**
   - 来源：DNS记录/WHOIS记录
   - 验证：✅ DNS记录中存在
   - 价值：高（网络运营中心，通常有较高权限）

---

## 🔍 收集方法

### 1. GitHub极端深度挖掘
- ✅ 搜索所有相关仓库（hosteons组织下的所有仓库）
- ✅ 提取所有提交者邮箱（多页遍历）
- ✅ 提取所有贡献者邮箱
- ✅ 提取Issues/PRs参与者邮箱
- ✅ 提取Stargazers/Forks所有者邮箱（筛选hosteons相关）
- ✅ 搜索代码中的邮箱

**发现邮箱：**
- `kapil@hosteons.com`（多次出现在提交历史中）

### 2. 网站极端深度爬取
- ✅ 获取所有sitemap并爬取所有URL（500+页面）
- ✅ 从所有JavaScript文件提取邮箱
- ✅ 从API响应提取邮箱
- ✅ 解码Cloudflare保护的邮箱

**发现邮箱：**
- 无新发现（网站邮箱多为通用邮箱如support@, info@等）

### 3. 证书透明度极端深度分析
- ✅ 获取所有证书（不限数量）
- ✅ 从证书Subject/Issuer提取邮箱
- ✅ 从证书详情提取

**发现邮箱：**
- 无新发现

### 4. DNS极端深度提取
- ✅ 所有DNS记录类型（TXT, MX, A, AAAA, CNAME, NS, SOA）
- ✅ SPF记录
- ✅ DMARC记录
- ✅ 所有子域名DNS记录

**发现邮箱：**
- `noc@hosteons.com`（DNS记录）

### 5. WHOIS极端深度提取
- ✅ 主域名WHOIS
- ✅ 所有子域名WHOIS

**发现邮箱：**
- 无新发现（多为隐私保护）

---

## 📊 统计

| 来源 | 发现数量 | 有效数量 |
|------|---------|---------|
| GitHub | 1 | 1 |
| 网站爬取 | 0 | 0 |
| 证书透明度 | 0 | 0 |
| DNS记录 | 1 | 1 |
| WHOIS | 0 | 0 |
| **总计** | **2** | **2** |

---

## 🎯 攻击建议

### 1. 钓鱼邮件目标
- **kapil@hosteons.com**：技术负责人，适合发送"安全更新"、"代码审查"等主题
- **noc@hosteons.com**：网络运营，适合发送"网络故障"、"服务器维护"等主题

### 2. 社工库查询
- 查询这两个邮箱在其他平台的注册情况
- 查找关联的社交媒体账号
- 查找密码泄露记录

### 3. 密码重置攻击
- 使用这两个邮箱尝试密码重置
- 查找可能的密码模式（如 kapil@hosteons.com → kapil123, kapil2024等）

### 4. 凭证复用
- 如果发现这两个邮箱在其他平台的密码泄露，尝试凭证复用

---

## ⚠️ 注意事项

1. **邮箱数量较少**：hosteons.com可能使用了严格的隐私保护措施
2. **通用邮箱过滤**：已过滤掉admin@, info@, support@等通用邮箱
3. **验证状态**：所有邮箱均来自真实来源（GitHub提交/DNS记录），可信度高

---

## 📁 文件位置

- 最终邮箱列表：`/workspace/lightnode_recon/hosteons_recon/email_collection/real_emails_extreme_complete.txt`
- 执行日志：`/workspace/lightnode_recon/hosteons_recon/email_collection/extreme_deep_execution.log`
- 详细数据：`/workspace/lightnode_recon/hosteons_recon/email_collection/extreme_deep/`

---

**报告生成时间：** $(date)
**目标：** hosteons.com
**收集深度：** 极端深度（GitHub多页、网站500+页面、DNS全记录、证书全量）
