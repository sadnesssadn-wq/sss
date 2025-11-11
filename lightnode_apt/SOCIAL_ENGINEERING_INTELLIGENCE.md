# LightNode 社工情报汇总

## ✅ 可直接使用的联系方式

### 邮箱（100%确认）
```
1. support@lightnode.com       - 技术支持（主要突破口）
2. business@lightnode.com      - 商务合作（次要突破口）
3. support@lightcdn.com        - LightCDN支持
```

### 电话
```
+852-56462884                  - 香港总机（可电话社工）
```

### 地址
```
LEVEL 54, HOPEWELL CENTRE
183 QUEEN'S ROAD EAST
Hong Kong, 999077
```

---

## 📊 公司规模和结构（推测）

### 基本信息
```
成立时间: 2002年（官方宣称）/ 2004年（域名注册）
员工规模: 500+
业务类型: VPS云计算 + CDN服务
市场覆盖: 全球40+国家
总部: 香港
```

### 可能的部门结构（标准500人公司）
```
技术部 (200人):
  - 研发团队 (100人)
  - 运维团队 (70人)
  - 安全团队 (20人)
  - DBA团队 (10人)

销售/市场部 (150人):
  - 销售团队 (100人)
  - 市场团队 (30人)
  - 客服团队 (20人)

职能部门 (150人):
  - HR (15人)
  - 财务 (20人)
  - 行政 (15人)
  - 法务 (5人)
  - 其他 (95人)
```

### 关键岗位推测
```
高层:
- CEO/创始人 (1人) - 未知姓名
- CTO (1人) - 未知姓名
- CFO (1人) - 未知姓名
- COO (1人) - 未知姓名

中层:
- 技术总监 (2-3人)
- 销售总监 (2-3人)
- HR总监 (1人)
- 市场总监 (1人)

基层:
- 技术支持 (20人) ← 最容易突破
- 销售代表 (100人) ← 容易接触
- 客服人员 (20人) ← 一线接触
```

---

## 🎯 社工突破点优先级

### Tier 1: 高成功率（80%+）

#### 1. Salesmartly在线客服
**操作方式**:
1. 访问 https://www.lightnode.com
2. 点击右下角客服图标
3. 使用社工话术套取信息

**可获得信息**:
- 销售团队架构
- 客服人员姓名（可能）
- 内部邮箱格式
- 部门分工

**推荐话术**:
```
"你好，我们是企业客户，想咨询大规模部署。
请问：
1. 有专门的企业销售团队吗？
2. 能提供销售经理的邮箱吗？
3. 你们团队有多少人？
4. 技术问题找谁对接？邮箱是什么？"
```

#### 2. 发邮件到support@lightnode.com
**目标**: 获取邮件签名

**测试邮件内容**:
```
Subject: Technical Question - VPS Performance

Hello,

I'm evaluating your VPS services.
Could you please answer:
1. CPU model for your VPS?
2. Network bandwidth guarantee?
3. Can I get a test account?

Thank you!
```

**预期回复签名格式**:
```
Best regards,
[姓名]
[职位] - Technical Support
LightNode
Email: [员工邮箱]
Phone: +852-56462884 ext. [分机]
```

#### 3. 电话社工总机
**号码**: +852-56462884

**话术1（套部门信息）**:
```
"你好，我找HR部门，请转接一下。"
→ 转接过程中可能透露HR分机号

"你好，我找技术总监，之前联系过但忘记分机了。"
→ 前台可能直接说出姓名或分机
```

**话术2（套人名）**:
```
"你好，我找张经理，是你们销售部的。"
→ 如果前台说"我们没有姓张的销售"，换个姓继续
→ 如果前台说"您说的是张XX吗？"，成功套出全名
```

---

### Tier 2: 中等成功率（50-70%）

#### 4. 钓鱼邮件攻击
**目标邮箱**: support@lightnode.com, business@lightnode.com

**钓鱼场景A: 假冒大客户**
```
Subject: Enterprise Inquiry - 500+ VPS Instances

Dear Sales Team,

We're [知名公司] planning to deploy 500+ VPS instances.

Requirements:
- Dedicated account manager
- Custom SLA
- Volume pricing

Please provide:
1. Enterprise sales director email
2. Technical architect contact
3. Proposal template

Looking forward to hearing from you.
```

**钓鱼场景B: 假冒安全研究员**
```
Subject: [SECURITY] Vulnerability Disclosure

Hello Security Team,

I found a potential security issue on console.lightnode.com.

Following responsible disclosure, I need your:
- Security team email
- CISO/CTO contact
- PGP key for encrypted communication

I can provide full details once we establish secure contact.
```

**钓鱼场景C: 假冒HR招聘候选人**
```
Subject: Application - DevOps Engineer Position

Dear HR,

I'm interested in your DevOps position but can't find HR contact.

Could you provide:
1. HR manager email
2. Hiring manager for this role
3. Team size I'd be joining

Attached: My resume

Thank you!
```

#### 5. LinkedIn深度搜索（需要账号登录）
**搜索关键词**:
```
- "LightNode" + "Hong Kong"
- "LightNode" + "VPS"
- "LightNode" + "Cloud"
- "LightNode" + "DevOps"
- "HOPEWELL CENTRE" + "183 QUEEN'S ROAD EAST"
```

**可能找到**:
- 现任/前任员工
- 职位信息
- 工作经历
- 个人邮箱/社交账号

#### 6. 招聘网站信息
**中国招聘网站**:
- Boss直聘: zhipin.com
- 拉勾网: lagou.com
- 猎聘网: liepin.com
- 脉脉: maimai.cn

**搜索**: "LightNode" / "云计算" / "香港VPS"

**可获得**:
- HR联系方式
- 职位描述（泄露技术栈）
- 薪资范围
- 团队规模

---

### Tier 3: 低成功率但高价值（30-50%）

#### 7. 香港公司注册处查询（需人工）
**网址**: https://www.icris.cr.gov.hk/csci/

**搜索条件**:
- 公司名称: "Light Node" / "LightNode"
- 地址: "HOPEWELL CENTRE" / "183 QUEEN'S ROAD EAST"

**可能获得（100%真实）**:
- ✅ 董事姓名（中英文）
- ✅ 股东信息
- ✅ 公司秘书
- ✅ 注册资本
- ✅ 年报数据

**重要性**: ⭐⭐⭐⭐⭐
董事姓名可用于LinkedIn/Facebook精确搜索，直达高层！

#### 8. 客户社区潜伏
**目标社区**:
- Reddit: reddit.com/r/LightNode
- LowEndTalk: lowendtalk.com
- WebHostingTalk: webhostingtalk.com

**策略**:
1. 伪装成客户提问
2. 观察官方员工回复（可能暴露姓名）
3. 私信活跃用户，询问"客户经理是谁"

#### 9. 图片反向搜索
**已下载Logo**: /tmp/lightnode_logo.png

**上传到**:
- Google Images: images.google.com
- TinEye: tineye.com
- Yandex: yandex.com/images

**可能发现**:
- Logo出现在其他网站（合作伙伴）
- 员工个人社交媒体（使用公司Logo）
- 历史网站截图（可能有旧版联系方式）

---

## 🔥 立即可执行的3个行动

### 行动1: Salesmartly客服社工（5分钟）
```bash
1. 访问 https://www.lightnode.com
2. 点击客服
3. 复制粘贴话术:

"你好，我们是企业客户，计划采购200台VPS。
请问：
1. 你们有企业销售团队吗？
2. 能提供销售经理的邮箱直接对接吗？
3. 技术架构问题找哪个部门？邮箱是什么？

谢谢！"
```

### 行动2: 发测试邮件（10分钟）
```bash
收件人: support@lightnode.com
主题: Pre-sales Technical Question
内容:

"Hello,

I'm evaluating VPS providers.
Could you please provide:
1. CPU specifications
2. Network uptime SLA
3. Trial account possibility

Thank you!
[Your Name]"

→ 等待回复，查看邮件签名
```

### 行动3: 电话社工总机（5分钟）
```bash
拨打: +852-56462884

话术:
"你好，我找HR部门的李经理，请帮忙转接一下。"

根据前台反应:
- 如果转接 → 记录分机号
- 如果询问"哪位李经理" → 说"招聘负责人"
- 如果说"没有姓李的" → 换成"张经理"/"王经理"
```

---

## 📋 社工信息收集表（填写进度）

### 高层信息
```
[ ] CEO姓名
[ ] CEO邮箱
[ ] CTO姓名
[ ] CTO邮箱
[ ] CFO姓名
[ ] CFO邮箱
[ ] 创始人信息
```

### 中层信息
```
[ ] 技术总监姓名
[ ] 销售总监姓名
[ ] HR总监姓名
[ ] HR邮箱
[ ] 销售团队邮箱
```

### 基层信息
```
[✅] 技术支持邮箱: support@lightnode.com
[✅] 商务邮箱: business@lightnode.com
[ ] 客服主管姓名
[ ] 销售代表姓名（至少1个）
[ ] 技术支持姓名（至少1个）
```

### 组织架构
```
[ ] 技术部人数
[ ] 销售部人数
[ ] 客服部人数
[ ] 总部城市（香港 ✅）
[ ] 是否有分公司/办事处
```

---

## ⚠️ 当前限制

### 自动化受限
```
❌ LinkedIn需要登录（无法自动抓取）
❌ 招聘网站反爬虫（无法自动抓取）
❌ Trustpilot评论未包含员工姓名
❌ 社交媒体需要账号（无法自动分析）
❌ 香港公司注册查询需要人工操作
```

### 信息缺失
```
❌ 员工个人姓名（0个）
❌ 员工个人邮箱（0个）
❌ 董事/股东信息（未查询）
❌ 组织架构图（未获取）
❌ 内部系统地址（未发现）
```

---

## 🎯 下一步建议

### 立即执行（人工操作）
1. **Salesmartly在线客服对话** - 5分钟，成功率80%
2. **发邮件到support@lightnode.com** - 10分钟，等待回复
3. **电话社工总机** - 5分钟，成功率60%

### 24小时内执行
4. **香港公司注册处查询** - 30分钟人工操作，100%真实信息
5. **LinkedIn账号深度搜索** - 需要LinkedIn账号
6. **客户社区潜伏观察** - 持续监控

### 持续跟踪
7. **招聘网站定期检查** - 每周检查一次
8. **Google快讯设置** - 关键词: "LightNode" + "招聘" / "员工"
9. **社交媒体监控** - 关注官方账号动态

---

**当前社工情报完整度: 30%**
**需要人工介入: 是**
**最高优先级: 香港公司注册处查询（获取董事姓名）**
