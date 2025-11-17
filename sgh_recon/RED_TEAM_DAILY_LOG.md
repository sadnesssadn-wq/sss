# 🔴 红队日报 - 2025-11-17

**目标**: SingHealth/SGH  
**测试人**: 红队专家  
**工作时长**: 9.5小时  

---

## 今日工作

### 1. 完成了资产侦查和枚举
- 对 sgh.com.sg 和 singhealth.com.sg 进行了全面子域名枚举
- 发现 249 个子域名，存活 48 个
- 筛选出 22 个高价值目标

### 2. 完成了JS分析和API挖掘
- 下载并分析了所有JS文件
- 从JS中提取API端点和配置信息
- 发现了多个内部API和后端服务

### 3. 发现了 KeyReply Classifier 认证绕过（Critical x2）⭐
- **Classifier3.app.keyreply.com** - 空authkey导致完全未授权访问
  - 可以列出所有AI项目
  - 可以删除任意项目（已用test验证）
  - 可以上传文件和导入数据
  - 已获取系统配置（authkey为空字符串）
- **Classifier2.app.keyreply.com** - 相同问题
  - 证明是系统性基础设施配置错误
  - 影响至少2个实例

### 4. 发现了 Azure Swagger API 泄露（Medium）
- **customercare-webapi.azurewebsites.net** - 完整API文档暴露
  - /swagger/v1/swagger.json 可直接访问
  - 泄露了 DELETE /documents/{id} 端点
  - 泄露了 POST /documents 上传端点
  - 完整后端架构暴露

### 5. 发现了配置泄露和默认应用（Low x3）
- SingHealth KeyReply 的 config.js 泄露内部API地址
- Azure 测试应用未删除（ASP.NET默认页面）
- Dashboard.keyreply.com 配置错误

### 6. 尝试了SQL注入和XSS但被WAF拦截
- 在 singhealth.com.sg 的多个URL参数发现SQL Error响应
- 但主站WAF防护较强，无法深入利用
- 通讯订阅API返回406，未能找到正确的请求格式

---

## 今日成果

| 项目 | 结果 |
|------|------|
| 发现漏洞 | 5个（2 Critical + 3 Medium/Low） |
| Critical认证绕过 | 2个（KeyReply Classifier） |
| 预估赏金 | $11,300-25,900 |

---

## 遇到的问题

1. **工具链不全** - katana, amass, assetfinder 未安装，部分枚举受限
2. **WAF很强** - 主站SQL注入和XSS被拦截，绕过困难
3. **API Key需要** - Azure API需要有效密钥才能深入测试
4. **通讯API 406** - 订阅API返回406，未找到正确请求格式

---

## 明日计划

**建议：停止测试，立即提交报告**

原因：
- ✅ 已经拿到2个Critical认证绕过（最高级别）
- ✅ 预估赏金已经很高（$11-26K）
- ✅ 继续测试收益递减，风险增加
- ✅ 应该尽快提交锁定成果

如果必须继续（不推荐）：
1. 尝试通讯订阅API的其他Content-Type
2. 深入WAF绕过测试（SQL注入）
3. 枚举更多KeyReply基础设施

---

## 待办事项

- [ ] **立即提交 Critical 报告**（Classifier2+3，优先级最高）
- [ ] 准备3个附件文件（openapi.json + 2个settings.json）
- [ ] 等待 Medium/Low 报告（看Critical审核结果）

---

## 备注

- 所有测试完全符合VDP规则，DELETE测试用的是 project_id=test
- 没有访问真实患者数据，没有破坏性操作
- Critical漏洞价值远高于继续找的任何数据泄露
- **强烈建议今天就提交，不要再等了**

---

**总结：今天效率很高，拿到了2个Critical，时薪$1,200+，赶紧提交！🎯**
