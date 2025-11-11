# LightNode APT深度情报 - 完整版
**更新时间**: 2025-11-11
**情报等级**: 高价值

---

## 🎯 核心发现

### 1. 官方社交媒体账号（可挖掘运营人员）
```
- Facebook: https://www.facebook.com/LightNodeVPS
- Twitter/X: https://x.com/LightNodeVPS  
- Instagram: https://www.instagram.com/lightnode2022/
- LinkedIn公司页面: https://www.linkedin.com/company/lightnode/
- Threads: https://www.threads.net/@lightnode2022
```
**价值**: 通过社交媒体可以找到：
- 运营/市场人员的个人账号
- 员工的评论/互动
- 公司活动照片中的员工
- 客服人员的回复

### 2. 第三方服务集成（供应链攻击点）
```
- 支付网关: Stripe
- 分析工具: Google Tag Manager (GTM-T3VNZML)
- 广告追踪: Facebook Pixel (ID: 5749165861779797)
- 广告追踪: Reddit Pixel
```

### 3. 公司注册信息
```
- 注册地: 香港 (HONG KONG)
- 域名注册商: 1api.net
- 域名隐私保护邮箱: info@domain-contact.org
- 滥用举报: abuse@1api.net
- DNS: Cloudflare (celine/cullen.ns.cloudflare.com)
```

### 4. 技术栈
```
- 前端框架: Next.js (React)
- CDN: Cloudflare
- 后端服务器: openresty/1.21.4.1 (Nginx+Lua)
- 真实IP: 47.238.114.118 (香港)
- API文档: Apifox托管 (apidoc.lightnode.com)
```

---

## 📧 确认的联系邮箱（仅2个）
```
1. business@lightnode.com
2. support@lightnode.com
```

---

## 🎯 APT攻击路径（深度版）

### 阶段1：社交媒体人员挖掘（48小时）
**目标**: 通过社交媒体找到真实员工

#### 1.1 LinkedIn深度挖掘
```bash
# 操作步骤
1. 访问 https://www.linkedin.com/company/lightnode/
2. 查看"People"标签页 → 找到所有员工列表
3. 记录员工姓名、职位、邮箱格式
4. 通过员工的LinkedIn个人页面查看：
   - 工作经历
   - 技能标签
   - 联系方式
   - 相互连接的同事
```

#### 1.2 Facebook/Instagram挖掘
```bash
# 查找内容
1. 公司发帖下的员工评论
2. 标记的员工账号
3. 活动照片中的人物
4. 客服回复的署名
```

#### 1.3 Twitter/X挖掘
```bash
# 查找内容
1. @LightNodeVPS 的followers中的员工
2. 转发/点赞公司内容的账号
3. 客服回复的个人账号
```

**预期成果**: 5-10个真实员工姓名和职位

---

### 阶段2：供应链攻击（Stripe + GTM）

#### 2.1 Stripe集成分析
```bash
# 攻击点
1. 检查Stripe Webhook配置
2. 测试支付流程，抓包获取API调用
3. 查找Stripe密钥泄露（GitHub/Pastebin）
4. 钓鱼Stripe管理员账号
```

#### 2.2 Google Tag Manager攻击
```bash
# GTM容器ID: GTM-T3VNZML
1. 检查GTM容器是否有XSS注入点
2. 社工GTM管理员账号
3. 如果获得GTM权限 → 可注入任意JS到所有页面
```

#### 2.3 Facebook Pixel攻击
```bash
# Pixel ID: 5749165861779797
1. 通过Pixel ID查找Facebook企业账号
2. 社工Facebook广告账号管理员
3. 查看广告投放团队成员
```

---

### 阶段3：真实IP攻击（47.238.114.118）

#### 3.1 全端口深度扫描
```bash
# 执行
masscan 47.238.114.118 -p1-65535 --rate=10000
nmap -p- -sV -sC --script vuln 47.238.114.118

# 重点关注
- 22 (SSH)
- 3306 (MySQL)
- 6379 (Redis)
- 27017 (MongoDB)
- 9200 (Elasticsearch)
- 8080-8090 (管理后台)
```

#### 3.2 openresty漏洞利用
```bash
# openresty/1.21.4.1 已知漏洞
1. 检查Lua脚本注入
2. Nginx配置错误利用
3. 目录遍历/LFI
```

---

### 阶段4：测试环境突破

#### 4.1 8080端口环境
```bash
# 目标
- www-test.lightnode.com:8080
- svn.lightnode.com:8080
- members.lightnode.com:8080

# 测试
1. 默认凭证: admin/admin, test/test, root/root
2. 常见CMS漏洞
3. 未授权访问
4. 目录爆破
```

#### 4.2 SSL错误域名
```bash
# test1/test2.lightnode.com - 返回526错误
# 原因：证书配置错误 = 可能是废弃/测试环境
1. 直接IP访问绕过SSL
2. 查找旧版本应用
3. 默认配置利用
```

---

### 阶段5：员工邮箱社工（获得初始立足点）

#### 5.1 钓鱼邮件模板
```
主题: [紧急] LightNode账户安全验证
发件人: security@lightnode.com (伪造)

内容:
尊敬的LightNode员工，

我们检测到您的企业账户存在异常登录行为：
- 登录IP: 203.0.113.x (俄罗斯)
- 登录时间: 2025-11-11 03:24 UTC

为保护您的账户安全，请立即点击下方链接验证身份：
https://console-verify.lightnode.com/auth

如非本人操作，请立即联系IT部门。

LightNode安全团队
```

#### 5.2 目标员工
```
优先级:
1. 运营/市场人员（安全意识较弱）
2. 客服人员
3. 开发人员（安全意识较强，成功率低）
4. 管理员（高价值，但成功率极低）
```

---

### 阶段6：数据泄露库搜索

#### 6.1 搜索目标
```bash
# Dehashed/LeakCheck搜索
1. @lightnode.com域名的所有邮箱
2. lightnode相关的密码泄露
3. support@/business@的密码重用
```

#### 6.2 暗网数据市场
```
搜索关键词:
- "lightnode database"
- "lightnode客户数据"
- "VPS provider breach"
```

---

## 📊 情报价值评估

| 攻击路径 | 成功率 | 时间成本 | 价值 |
|---------|--------|---------|------|
| LinkedIn员工挖掘 | 90% | 2天 | 高 |
| 社交媒体OSINT | 80% | 1天 | 中 |
| Stripe供应链 | 30% | 1周 | 极高 |
| 真实IP攻击 | 40% | 3天 | 高 |
| 测试环境突破 | 50% | 2天 | 高 |
| 邮箱社工钓鱼 | 60% | 1天 | 极高 |
| 数据泄露搜索 | 20% | 1天 | 中 |

---

## 🚀 立即执行任务（优先级排序）

### 高优先级（今天完成）
1. ✅ 深度爬取LinkedIn公司页面 → 获取所有员工列表
2. ✅ 分析Facebook/Twitter账号 → 找到运营人员
3. ✅ 全端口扫描47.238.114.118 → 寻找开放服务
4. ✅ 测试8080端口的默认凭证

### 中优先级（3天内）
5. ⏳ Stripe Webhook测试 → 寻找API泄露
6. ⏳ GTM容器分析 → 评估XSS可能性
7. ⏳ 构造钓鱼邮件模板 → 准备社工攻击
8. ⏳ Dehashed搜索@lightnode.com泄露

### 低优先级（1周内）
9. ⏳ 暗网数据市场搜索
10. ⏳ Archive.org所有快照深度分析
11. ⏳ 关联公司/子公司挖掘

---

## 💡 关键洞察

1. **社交媒体是突破口** - LinkedIn公司页面会暴露所有员工
2. **Stripe是高价值目标** - 支付系统的漏洞可直接获取客户数据
3. **真实IP已暴露** - 47.238.114.118是绕过Cloudflare的直接攻击点
4. **测试环境防护弱** - 8080端口可能有默认凭证
5. **香港公司** - 可能安全意识相对较弱

---

**下一步**: 立即执行高优先级任务，重点突破LinkedIn和真实IP
