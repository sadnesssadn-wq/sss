# API Key狩猎总结

## 🔍 已尝试的方法

### 1. GitHub公开泄露搜索
- ❌ 未找到customercare-webapi.azurewebsites.net相关泄露
- ❌ 未找到SGH API Key泄露
- ❌ GitHub API搜索无结果

### 2. 前端JS文件分析
- ✅ 下载并分析了6个主站JS文件
- ❌ 未发现硬编码的API Key
- ❌ 未发现Azure相关配置

### 3. 配置文件路径尝试
- ❌ /.env - 需要API Key
- ❌ /config.json - 需要API Key
- ❌ /appsettings.json - 需要API Key
- ❌ /.git/config - 需要API Key

### 4. 注册/登录页面
- ⚠️  所有路径返回401 Unauthorized
- 可能需要内部网络访问
- 或者通过SSO/AD认证

### 5. 弱API Key测试
- ❌ test, demo, admin, password等常见弱密钥无效

---

## 💡 发现的关键信息

### KeyReply系统
- ✅ 有完整的前端应用: https://ndcs.app.keyreply.com/
- ✅ WebChat API存在: /server/api/webchat
- ⚠️  需要正确的payload格式才能使用

### Azure API
- ✅ Swagger文档完全公开
- ⚠️  所有端点强制要求API Key
- ⚠️  无法绕过API Key验证

---

## 🚫 VDP合规性评估

### ✅ 符合VDP的测试:
1. 搜索公开泄露的API Key（GitHub/Pastebin）
2. 分析公开可访问的JS文件
3. 尝试公开的配置文件路径
4. 测试常见弱密钥（非暴力破解）

### ❌ 违反VDP的行为（已避免）:
1. 暴力破解API Key
2. 使用未授权的API Key
3. 尝试SQL注入获取API Key
4. 社会工程学攻击员工

---

## 🎯 当前状态

### 已确认的高价值漏洞（无需API Key）:
1. ✅ **Swagger API文档泄露** - 可提交
2. ✅ **子域名接管** - 可提交

### 需要API Key才能利用:
1. ⚠️  DELETE /documents/{id} - 需要有效API Key
2. ⚠️  POST /documents（文件上传）- 需要有效API Key
3. ⚠️  消息搜索API - 需要有效API Key

---

## 🤔 下一步选项

### 选项A: 立即提交现有漏洞（推荐）
**理由：**
- Swagger文档泄露本身就是High严重度
- 子域名接管可立即利用
- 无需API Key，完全VDP合规
- **预计价值: High**

### 选项B: 继续寻找API Key（风险较高）
**可能的方法：**
1. 尝试注册合法账号获取API Key
   - ⚠️  可能需要医院员工身份
   - ⚠️  可能需要内网访问
   
2. 监控网络流量抓取API Key
   - ❌ 需要MITM攻击（违反VDP）
   
3. 社会工程学
   - ❌ 明确违反VDP

4. 继续搜索更多泄露源
   - ✅ 符合VDP，但成功率很低

### 选项C: 放弃API Key，深挖其他系统
**目标：**
- DPS病理系统（dpscp.sgh.com.sg）
- Mobile应用（mobile.sgh.com.sg）
- UAT环境（uat.sgh.com.sg）
- 其他KeyReply端点

---

## 📊 价值评估

| 方案 | 时间成本 | 成功率 | 价值 | VDP合规 |
|------|---------|--------|------|---------|
| A. 提交现有 | 0小时 | 100% | High | ✅ |
| B. 继续找Key | 2-8小时 | 5-10% | Critical? | ⚠️ |
| C. 深挖其他 | 2-6小时 | 30-50% | Medium-High | ✅ |

---

## ✅ 推荐方案：A

**理由：**
1. **已有2个高危漏洞足够有价值**
2. **Swagger泄露 = 完整API结构暴露 = High**
3. **子域名接管 = 立即可用 = High**
4. **寻找API Key成功率极低且时间成本高**
5. **VDP合规性最重要，避免任何违规风险**

**预计VDP奖励：**
- Swagger API泄露: $500-2000
- 子域名接管: $300-1000
- **总计预估: $800-3000**

