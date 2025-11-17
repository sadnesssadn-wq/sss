# 🎯 订单/预约数据获取分析报告

## 任务目标
寻找可以未授权获取订单/预约/患者数据的API端点

---

## 🔍 发现的端点分析

### 1. Azure API - /messages 端点
**URL**: `https://customercare-webapi.azurewebsites.net/messages`
**方法**: GET
**测试结果**: 待确认

**可能包含**：
- 患者咨询消息
- 预约确认信息
- 订单通知
- 医疗报告

### 2. Azure API - /messages/search 端点
**URL**: `https://customercare-webapi.azurewebsites.net/messages/search`
**方法**: POST
**测试结果**: 待确认

**风险**：
- 如果无需认证 → 可搜索所有消息
- 如果有IDOR → 可访问其他患者消息
- 可能包含敏感医疗信息

### 3. Azure API - /documents 端点
**URL**: `https://customercare-webapi.azurewebsites.net/documents`
**方法**: GET
**测试结果**: 待确认

**可能包含**：
- 医疗报告文档
- 处方单
- 检查结果
- 账单/发票

### 4. Classifier3 - 项目数据
**URL**: `https://classifier3.app.keyreply.com/ie/`
**测试结果**: 117个项目已暴露

**可能包含预约相关项目**：
- 搜索关键词：appointment, booking, patient, order
- 如果有相关项目 → 可能包含训练数据（真实预约记录）

---

## 🎯 高价值测试场景

### 场景1：未授权访问消息列表
```bash
curl https://customercare-webapi.azurewebsites.net/messages
```
**期望**：返回API Key required
**如果成功**：Critical - 所有患者消息泄露

### 场景2：IDOR - 通过ID访问其他患者消息
```bash
curl https://customercare-webapi.azurewebsites.net/messages/{id}
```
**测试**：枚举ID 1-1000
**如果成功**：High - 可访问任意患者数据

### 场景3：搜索功能未授权
```bash
curl -X POST https://customercare-webapi.azurewebsites.net/messages/search \
  -d '{"query": "*"}'
```
**如果成功**：Critical - 可搜索所有数据

### 场景4：文档未授权下载
```bash
curl https://customercare-webapi.azurewebsites.net/documents/{id}
```
**如果成功**：Critical - 医疗文档泄露

---

## 🔬 需要进一步测试

### 优先级P1（立即测试）：
1. ✅ `/messages` - GET请求
2. ✅ `/messages/search` - POST搜索
3. ✅ `/documents` - GET列表
4. ⏳ `/documents/{id}` - 获取单个文档（需要知道ID格式）

### 优先级P2（如果P1成功）：
5. 枚举消息ID（如果发现ID模式）
6. 枚举文档ID
7. 测试搜索功能的注入

---

## 💰 潜在价值

### 如果发现未授权访问患者数据：

| 漏洞 | 严重度 | CVSS | 预计奖励 |
|------|--------|------|---------|
| 未授权访问所有患者消息 | Critical | 9.5 | $3000-8000 |
| IDOR访问任意患者数据 | High | 8.8 | $2000-5000 |
| 未授权下载医疗文档 | Critical | 9.5 | $3000-8000 |
| 未授权搜索患者记录 | Critical | 9.3 | $2500-6000 |

**如果找到任何一个 → 这是比Classifier3更高价值的漏洞！**

**原因**：
1. 直接暴露患者隐私（医疗数据）
2. 违反HIPAA/PDPA法规
3. 可能导致集体诉讼
4. 医院声誉严重受损

---

## ⚠️ 法律&VDP合规

**必须遵守**：
- ❌ 不要下载真实患者数据
- ❌ 不要保存任何敏感信息
- ❌ 不要枚举超过10个ID
- ✅ 如果看到真实数据 → 立即停止
- ✅ 只测试是否可访问
- ✅ 立即报告，不深入利用

**医疗数据极其敏感，必须100%VDP合规！**

---

## 🚀 下一步行动

根据测试结果决定：

### 如果Azure API需要认证（预期）：
- 记录为Medium（API文档泄露，但端点有认证）
- 不继续深入

### 如果Azure API无需认证：
- 🚨 立即停止测试
- 🚨 立即提交P0报告
- 🚨 标记为Critical
- 🚨 不要查看真实数据内容

### 如果有IDOR：
- 测试2-3个ID验证
- 立即提交High报告
- 不要批量枚举

---

## 📊 当前测试状态

- [ ] `/messages` GET测试
- [ ] `/messages/search` POST测试
- [ ] `/documents` GET测试
- [ ] Classifier3项目搜索

**等待测试结果...**

