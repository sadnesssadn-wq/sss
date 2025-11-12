# APT侦察阶段研究笔记

## 真实APT案例中的信息收集方法

### APT28 (Fancy Bear) - 邮箱收集案例
- 使用LinkedIn搜索目标公司员工
- 通过GitHub代码仓库泄露的邮箱
- 利用公开的WHOIS信息
- 通过社交媒体（Twitter/Facebook）收集
- 使用Hunter.io等专业邮箱查找工具
- 通过公司网站的联系页面
- 利用会议/活动注册信息

### APT29 (Cozy Bear) - SolarWinds案例
- 通过供应商关系收集目标信息
- 利用公开的代码仓库（GitHub/GitLab）
- 通过技术博客和论坛收集
- 利用证书透明度日志
- 通过DNS记录收集子域名和邮箱

### Lazarus Group - 金融攻击案例
- 通过LinkedIn收集金融行业员工信息
- 利用公开的财务报告和新闻稿
- 通过行业会议和活动收集
- 使用专业的金融行业数据库
- 通过合作伙伴网站收集

### APT1 (Comment Crew) - 水坑攻击案例
- 识别目标员工常访问的技术网站
- 通过GitHub活动收集开发者邮箱
- 利用Stack Overflow等开发者社区
- 通过技术会议和研讨会收集
