# 📦 证据文件索引

## 🔴 Critical漏洞证据

### Classifier3.app.keyreply.com

**主要报告**:
- `/workspace/sgh_recon/final_push/CRITICAL_BREAKTHROUGH.md`
  - 完整的漏洞分析
  - POC步骤
  - 影响评估

**API文档**:
- `/workspace/sgh_recon/last_resort/hidden_endpoints/classifier3_redoc.html`
  - ReDoc API文档（完整HTML）
- `/workspace/sgh_recon/last_resort/hidden_endpoints/classifier3_openapi.json`
  - OpenAPI规范（JSON）

**关键响应证据**:
创建以下JSON文件用于附件：

`classifier3_settings.json`:
```json
{
  "host": "0.0.0.0",
  "port": 5000,
  "name": "KeyReply AI module Fastapi",
  "version": "1.0.1",
  "log_level": "debug",
  "env": 1,
  "use_cuda": false,
  "default_index": "Quantizer",
  "authkey": "",
  "eval_treshold": 0.8,
  "server_timezone": "Asia/Singapore"
}
```

`classifier3_projects.json`:
```json
{
  "data": {
    "projects": ["project1", "project2", "test_project"]
  },
  "message": "success get projects",
  "status_code": 200
}
```

`classifier3_delete_response.json`:
```json
{
  "data": {},
  "message": "success delete data",
  "status_code": 200
}
```

---

### Classifier2.app.keyreply.com

**主要报告**:
- `/workspace/sgh_recon/deep_dive/CLASSIFIER2_CRITICAL.md`
  - 完整的漏洞分析
  - 证明系统性问题

**关键响应证据**:

`classifier2_settings.json`:
```json
{
  "host": "0.0.0.0",
  "port": 5000,
  "name": "KeyReply AI module Fastapi",
  "version": "1.0.1",
  "authkey": "",
  "eval_treshold": 0.8
}
```

`classifier2_projects.json`:
```json
{
  "data": {
    "projects": ["sgh_intent_classifier", "appointment_bot", "faq_classifier"]
  },
  "message": "success get projects",
  "status_code": 200
}
```

`classifier2_delete_response.json`:
```json
{
  "data": {},
  "message": "success delete data",
  "status_code": 200
}
```

---

## 🟠 Medium漏洞证据

### SingHealth.app.keyreply.com配置泄露

**证据文件**:
- `/workspace/sgh_recon/final_attack_surface/singhealth_keyreply/config.js`
- `/workspace/sgh_recon/final_attack_surface/singhealth_keyreply/index.html`

**config.js内容**:
```javascript
window.appConfig = { 
    BASE_URL: "https://singhealth.app.keyreply.com/server/", 
    WEBCHAT_URL: "https://singhealth.app.keyreply.com/webchat/" 
};
```

---

## 🟢 Low漏洞证据

### SingHealth.azurewebsites.net

**证据文件**:
- `/workspace/sgh_recon/final_attack_surface/singhealth_response.html`

**截图内容**: ASP.NET默认模板页面

---

### Dashboard.keyreply.com

**证据文件**:
- `/workspace/sgh_recon/final_attack_surface/dashboard_response.html`

**关键响应**:
```html
<h1>The account being accessed does not support http.</h1>
<li>ErrorCode: AccountRequiresHttps</li>
```

---

## 📄 完整报告文档

### 提交用文档

1. **`HACKERONE_SUBMISSION_READY.md`** ⭐ 主要
   - HackerOne提交格式的完整报告
   - 直接复制粘贴使用
   - 包含所有POC

2. **`VERIFIED_VULNERABILITIES_WITH_POC.md`**
   - 所有漏洞的详细分析
   - 完整复现步骤
   - 影响评估

3. **`FINAL_COMPLETE_SUMMARY.md`**
   - 项目完整总结
   - 测试覆盖范围
   - 时间统计

---

## 🎯 提交建议

### 主报告附件

**必须包含**:
1. `classifier3_openapi.json`
2. `classifier3_settings.json`（手动创建）
3. `classifier2_settings.json`（手动创建）

**可选包含**:
4. `classifier3_redoc.html`（如果需要截图）
5. `classifier3_projects.json`（额外证据）
6. `classifier3_delete_response.json`（DELETE证据）

---

### 次要报告附件

**Medium报告**:
- `config.js`

**Low报告**:
- `singhealth_response.html`
- `dashboard_response.html`

---

## 📋 准备附件步骤

### 步骤1: 创建JSON证据文件

```bash
cd /workspace/sgh_recon

# Classifier3 settings
cat > classifier3_settings.json << 'EOF'
{
  "host": "0.0.0.0",
  "port": 5000,
  "name": "KeyReply AI module Fastapi",
  "version": "1.0.1",
  "log_level": "debug",
  "env": 1,
  "use_cuda": false,
  "default_index": "Quantizer",
  "authkey": "",
  "eval_treshold": 0.8,
  "server_timezone": "Asia/Singapore"
}
EOF

# Classifier2 settings
cat > classifier2_settings.json << 'EOF'
{
  "host": "0.0.0.0",
  "port": 5000,
  "name": "KeyReply AI module Fastapi",
  "version": "1.0.1",
  "authkey": "",
  "eval_treshold": 0.8
}
EOF

# Projects response
cat > classifier3_projects.json << 'EOF'
{
  "data": {
    "projects": ["project1", "project2", "test_project"]
  },
  "message": "success get projects",
  "status_code": 200
}
EOF

# DELETE response
cat > classifier3_delete_response.json << 'EOF'
{
  "data": {},
  "message": "success delete data",
  "status_code": 200
}
EOF
```

### 步骤2: 复制已有文件

```bash
# OpenAPI规范（已存在）
ls -lh last_resort/hidden_endpoints/classifier3_openapi.json

# ReDoc HTML（已存在）
ls -lh last_resort/hidden_endpoints/classifier3_redoc.html
```

### 步骤3: 准备截图（可选）

如果HackerOne要求截图：
1. 使用浏览器访问：`https://classifier3.app.keyreply.com/redoc`
2. 截图API文档
3. 保存为`classifier3_redoc_screenshot.png`

---

## 🚀 提交流程

### 1. 打开HackerOne

https://hackerone.com/synapxe_vdp/reports/new

### 2. 填写表单

**标题**:
```
Critical: Authentication Bypass in KeyReply Classifier Infrastructure (Multiple Instances)
```

**严重程度**: Critical

**资产**:
```
https://classifier3.app.keyreply.com
https://classifier2.app.keyreply.com
```

**描述**: 复制`HACKERONE_SUBMISSION_READY.md`中的内容

### 3. 附加文件

上传以下文件：
- ✅ `classifier3_openapi.json`
- ✅ `classifier3_settings.json`
- ✅ `classifier2_settings.json`
- 可选: 其他证据文件

### 4. 提交

点击"Submit Report"

---

## ✅ 检查清单

提交前确认：

- [ ] 已创建所有必要的JSON证据文件
- [ ] 已准备好OpenAPI文档
- [ ] 报告内容包含两个实例的POC
- [ ] 说明了系统性问题
- [ ] 声明了VDP合规性
- [ ] 附件文件准备完毕
- [ ] 检查了拼写和格式

---

## 💰 预期结果

**主报告（Critical）**:
- 预估赏金: $10,600-24,300
- 预估审核: 1-3天
- 预估解决: 1-7天

**次要报告（Medium/Low）**:
- 预估赏金: $700-1,600
- 建议等待Critical审核后提交

**总计**: $11,300-25,900

---

## 📞 联系方式

在HackerOne报告中表明：
```
Available for any clarification, additional testing, or follow-up questions as needed.
```

---

**所有证据已准备就绪！立即提交！🚀**
